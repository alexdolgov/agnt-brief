# Agentic Audit Brief: SYNO Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: SYNO Finance (`syno-finance`)
- Website: [https://syno.finance/](https://syno.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, ethereum, optimism, scroll
- Contract surface: 202 unique implementations (208 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $375,912.71
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for SYNO Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Address-book implementation classification: 0 own, 6 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 196 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/45
- Verified + Unaudited implementations: 45
- Verified by bytecode match: 0
- Unverified implementations: 157
- Unique implementations: 202
- Raw deployments: 208
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (45)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AggregatorV3SynonymPriceSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e0cbe3860c54038efa91d80ce62ec82ca2f07f4` | ⚠️ Unaudited |
| AssetRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6510d7705df7ad4923b9699a1af4c72894087631` | ⚠️ Unaudited |
| ChainedPriceSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0671fef91a8ee34c1b5eb5e98fa90063105eda58` | ⚠️ Unaudited |
| CommonAccountingLogic | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257823 | `0x6e0e8c78d7b894beff66ade8b27b089a53cf4d04` | ⚠️ Unaudited |
| CommonAccountingLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00187bac5bc1097c4e65b47da8978b3e1f742c3a` | ⚠️ Unaudited |
| CommonOptimisticFinalityLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09f81ddd95bb0689fa3f43c9128d01b7b54d9285` | ⚠️ Unaudited |
| Hub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c01cecf2c8fa6cf6cdedfe2568fdbbf62858509` | ⚠️ Unaudited |
| HubAccountingLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c59ad468dfac8528036c5a5b9c306ae13492649` | ⚠️ Unaudited |
| HubHelperViews | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0a47405de652fce6b34d919e1bb06e5bfef3f0d2` | ⚠️ Unaudited |
| HubOptimisticFinalityLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09fc4a4856cf4fc41b4f39559f382f81d0c4ae12` | ⚠️ Unaudited |
| HubPriceUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01056ae89c53de4bbd6db29c0e9d9d08391d56af` | ⚠️ Unaudited |
| HubStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x47e96ffedb40b1b4f721d5f56d91cf3a54f12f36` | ⚠️ Unaudited |
| InterestLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63f15cbf4dc0f41d0d16a89abcbb01308ff40f71` | ⚠️ Unaudited |
| LiquidationCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x76e766336068b0f699d24002c368a4891a4dbcf3` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f578c4bc4d4f43902f24feda90e430f778f6aba` | ⚠️ Unaudited |
| LiquidatorFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1849cc9ecfcaa09ba4279a283745c9f6a2b1a3de` | ⚠️ Unaudited |
| MigrationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08913a7dedf488ab91a9dbbe2fc03020484772dc` | ⚠️ Unaudited |
| MoneyMarketSynoDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0d5d409afc67a2715f3e61968ff3b0e608a1eb1c`; arbitrum `0x462c5bf69bdc8447a7a0b7911264d1af3c3ff3f2` | ⚠️ Unaudited |
| PiecewiseInterestRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x099c0e514129a94d26decba743ea293ebbcb202c` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x33dd4040ab48ffbf5b208909efe5ee301ed0e84b` | ⚠️ Unaudited |
| PythSynonymPriceSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48a7cbc91354333eb1c0d54c3d2f149f9d9b82e0` | ⚠️ Unaudited |
| rCT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xe29578c5aef73b045d0baabee52b223d5cf02443`; arbitrum `0xffe52f091e6c51f264694f7c173222bac06a01f3` | ⚠️ Unaudited |
| RewardAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2f81d55a3f306c11a640bad7ee0f051eaaf3be61`; arbitrum `0xf06dc926a1009ff9ee1fe48fd4c17e9a38ad9d51` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02dffe40fafa4dcd8867240610c88619d93fa40d` | ⚠️ Unaudited |
| Spoke | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cb91374624a5ec81ef205db379861b7154d49c3` | ⚠️ Unaudited |
| Spoke | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257827 | `0xc2ed21709d6d8d8ba24e9b1e8165604f6130a246` | ⚠️ Unaudited |
| Spoke | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257828 | `0xdb4b829d5596405023e7efbcfdb4ce156096887d` | ⚠️ Unaudited |
| SpokeAccountingLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09ad4b3bb2f0a24515391377a69b7fb2a919bf2a` | ⚠️ Unaudited |
| SpokeOptimisticFinalityLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x350e13f38b0665f776545d83bc38d7ab1e35312d` | ⚠️ Unaudited |
| SpokeOptimisticFinalityLogic | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257829 | `0xe29578c5aef73b045d0baabee52b223d5cf02443` | ⚠️ Unaudited |
| sSYNO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0db592b2cc4b05cffa6224a4ee04c9d168408bbc` | ⚠️ Unaudited |
| SSynoSynoDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x047deeb2fac901442a0e8535bb08f59390673408`; arbitrum `0x6d5455f3d90e67f79b4ad15e31435fc160430fc8` | ⚠️ Unaudited |
| SYNO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14ca27a509397323d2d6c2f84b7abc65f240075e` | ⚠️ Unaudited |
| SynoBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3008bae2e2e3d41d58710ff364d101d6dfd7a387` | ⚠️ Unaudited |
| SynonymPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x091fa3704f80f60cac654d15cf14e5c51a76176e` | ⚠️ Unaudited |
| TokenBridgeUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ad78518eef039d97fa6523c215bd7aded7475fa` | ⚠️ Unaudited |
| TokenConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x67de8310f082cc3e7fffdd4e13d39312860c2aaa`; arbitrum `0x844c797fc0693bbf1507448e3af9d1093d4d5ebc` | ⚠️ Unaudited |
| tSYNO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xc2ed21709d6d8d8ba24e9b1e8165604f6130a246`; arbitrum `0xeea15177f5101561a2edfb8a80a22887956afdba` | ⚠️ Unaudited |
| TunnelMessageBuilder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x411ac3fadf6f428efc40eabf5e85eba6ded7f0c5` | ⚠️ Unaudited |
| ValidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03523dcd92207880ff66ead9ee63c5000b3596df` | ⚠️ Unaudited |
| vlSYNO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1380a59ce7adaf50d351f750a3fb4747a469e44f` | ⚠️ Unaudited |
| VlSynoSynoDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d77203f67aac70450239dcb58bb962adf66bd13` | ⚠️ Unaudited |
| WormholeRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xe291a3a0466d2aa189f6c773701fdf391daadf70` | ⚠️ Unaudited |
| WormholeTunnel | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x03e4c6bc38264f993759c09678ebceb91c766f90` | ⚠️ Unaudited |
| WormholeTunnel | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-257818 | `0x54c767a5198fdca089112026285f333c0fa14599` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (157)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20b5fba3ca9bace7b3fc421846cb76d0ded4ab93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3882ebdc68d14d78f31ffc1d71d3a78df8aa1d7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c06b13873915d0beeeb8289eed0b8912de55dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ad694be1a1b75438ed056c4170a5ad3450b22e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4de4caa016dafe648a4a6efc6f57820fb90227bc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257821 | `0x67de8310f082cc3e7fffdd4e13d39312860c2aaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x732f1b6f02114d33d7012aa119a01b3bda7cddd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f797855daede5bffd1e442c86435eb62a958c10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82e81ef6fbc9464c2fd28c1fc9f01c166d32425a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93f5c828553968c659db847d5ccea61836efd72d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab3b1c8ef95b46ba72c49ad4e6bff34ba4b06ac1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb33d976ba011c5c619397e8e71db8307211fa4d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdaf285712e46a9ecdab72f1aa18672383112d1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4d3337be8793118f7570b70ff20a447c40e2c25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd367051613979d1ec894233df9ede31591d0e5ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe786fbc993d7b8b264061402b4ade9f5f0fde8ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3667da28fa9730fb7529cca151c80929de40ce4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf93353f929b19b82a7f01b61b02844cabf76c764` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc30b8789882c5e8a9ce43a29c8a06251626fe5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe1d41af5867a0d7f653dd13908d985d6d3c415a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffe52f091e6c51f264694f7c173222bac06a01f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1a1dba964e9510666dbc00e07f193fbf6249ab7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x365dc768e62287bb47fa9efbcd25e8dacfc2cff1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3882ebdc68d14d78f31ffc1d71d3a78df8aa1d7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3c06b13873915d0beeeb8289eed0b8912de55dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x455e18de763520a48f0727c4681acad8a37c8b2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4e053ccac42b0c3d277f192cd0421b4085e1a5ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x54c767a5198fdca089112026285f333c0fa14599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x577fd586c9e6ba7f2e85e025d5824dbe19896656` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x66a05045cc97157ed62df3fac7561621b2640746` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6e0e8c78d7b894beff66ade8b27b089a53cf4d04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x767eaac122147de6b078b24359683b3d5049b000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7bc765d9bca6016cb40ec244b768ab1cb8d1b632` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x82e81ef6fbc9464c2fd28c1fc9f01c166d32425a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x93f5c828553968c659db847d5ccea61836efd72d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x96d594cd7136cec962d3030773cc0ef4509ab190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa845e9a2f6b940926d8801d9320f7a24e3da023c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa9f5b7131b59e768ae4eb085a7e57efb904279e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaeb47096197a239f4a482a3df9a7ac22a19328b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb6111dae5e9a8b669449dc100d262eca438dcf92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbdaf285712e46a9ecdab72f1aa18672383112d1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe786fbc993d7b8b264061402b4ade9f5f0fde8ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf00a1843523ecf009c6fd7a86d84fdf515c5c7dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf3667da28fa9730fb7529cca151c80929de40ce4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf93353f929b19b82a7f01b61b02844cabf76c764` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfc30b8789882c5e8a9ce43a29c8a06251626fe5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfe1d41af5867a0d7f653dd13908d985d6d3c415a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d157865068669ceab9e5e9cfcfa1de6f10572d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ed850dc162aac0dcff3d4e8d7145eecde24a8e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f0e7d30f34470b22524d2b5aab0d9475a25dfdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f79425f0cbe6885069e04358e80b23dc9dccf37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13251c2da66221c1765436cba5af9b00c0bfb356` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18d948dd1e07c0b409bc3195efe5f1385d4cf17f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b6257105ed7112cfc52a4d82d6f0e27a0d59d1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1bf526634cc4aca1582ed099b39dce35063b51cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1cc991b3846c56b5ad59506ff43d6b5ae25b02ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e3f1f1ca8c62aabcb3b78d87223e988dfa3780e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x20b5fba3ca9bace7b3fc421846cb76d0ded4ab93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21dd05dc71c34e9f519176c28fea3982bbe1d08b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x274cf394b7a7abeff359f73f37793b81230515ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29c18b0acfe2cafed63e2f324fa1f81e53b3571a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2e31601efcb2cc472e5ffac28e4856cab39b5fa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32f5ac1fc67195a2b9a8f61e413bef9035b68cde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x342f37a11e10b98eb73903013fdfd8f3850a07cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x359c17c1e30f7a67e2ed09bb7c7dccb0f2712768` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x365e7facee9afc4d83f339409150808a604c88a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x36ad80a2b3677c6e4717cc3bc02197650681f1a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x37d706be37b9681ad7a64fc83f4478f05198d5e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x388a7537cfdffcd1ff3faf2d39e766fb6f3f49d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3907b6cba6c925d089d8ef16682b925e8c923fbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39259cd1207e801fb9a290cf1580d35236de633b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3ad67792753013f5526fabb69b4c9514233d7800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b16b45ed0177ddf6000e02d13235031465581b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c4014ed2bfb6ad140489817be8eac0f51e57106` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3cbea47dba235c503f8af47f08265ecb2cf48921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4283be5e56e286c8570de9ce22a0e2197c58d91b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x433ff88bff42de15bb5e99c66151c2c72b0a62a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44b5f5ff0131e910024b554ad7542af7be486379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x49f10e3a1911eef8d2d39886d88285783c604af2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c1432f951fc124f9c153b66e1bdb0e027231b46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c37282d40f6c1d785cfec0e11fd3a0ab3f0ca44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4fc11df9c70bd704642c2cde3f1555c1bada8df4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50d04c0fa7851664a13db16a6ee68999254afa21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x51a35d25e916f3451cdfd9ae0f0e2167f5454af0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x54c767a5198fdca089112026285f333c0fa14599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x577fd586c9e6ba7f2e85e025d5824dbe19896656` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5852d03223da78f3bb980a0b3b9a486fb8425e74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c5be05b4f733069e13fd34f765969d09fa22622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c96dfff0da981962e726382e65b8a1f24eed908` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5fa99811ba3bf9424004bacac02eaf4dcedb553b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x65c2fdc0d6cb96b8cea5be6e741395164bc703ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6685b8fb1d4833c91da38d65691c183e70f2a663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x696e5a4687b515d5d84cac226e0b7bcfdc894b8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x699c610438afb53c12ca7dbd7a306a32bd5832b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b0517ffa2eb65359b10ce68dd8975d41cddb49f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e0e8c78d7b894beff66ade8b27b089a53cf4d04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f22b80b8ae0d14e434e06eac4117279b1774a15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7224ba422a78fa13e917d263c34f7387f2eee92c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x732f1b6f02114d33d7012aa119a01b3bda7cddd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x73eba3f55c271140c6242bf9bb32c6c2c736846f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x757d98f1e28cd790c4bcbe85634ba0104eb33629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ab33cc6d62a0817847f00bc798373916370135d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7c1521b3f739d1cefa75c2fc3fe42db0a9459340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7d2d160421f3e779d449672bb0529448c088e22a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7e2cad7894bebccc95d31c1cdbf8e6a05e6fc505` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7e61b16fbd734475b56f29410a81621bf1374e1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81d86fedd7667f3754a7216baa76916dce601219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x845fe58a292a3e91a5a46944f3bc375526ce31f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89556318defdab0caa19356d536ef1ac590f39ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8dfab4cf368d94c24c17ed11f58e8bf1fb562950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x923fc0139806eb64be3ed5be627e9b31753c92c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x92d7d2113da4b4fd75fc29dfbaa0ee75a22fce9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x964767749fe74b248c119a6141950736b2c7ac96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x972efa426d2f7c9be40da453227ecdfbceb67655` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x978ef8fdc31a423b4164e0ece02ac37bcf7e1ee5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9acc825000f5d406feda0155fd328dde461f93ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa0ea2f0e0f15f0efe283ed4ae34807720065684d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa3c9cf24469f5f1424a2c8d4cff2e1772eeb3d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa845e9a2f6b940926d8801d9320f7a24e3da023c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae3606536de7752f40fb5d21f44914fcc09c6fee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb107ad73c8bae2894a40ec523b5c224f15b54a3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6111dae5e9a8b669449dc100d262eca438dcf92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb90c0b45b59b47e47474dcb40738ead51e372a16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb944d679ab26f1897a6b66b2491754d950cfcfc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbbbcf116f646e02e2b92d7bf5d0420bde61d4167` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbdaf285712e46a9ecdab72f1aa18672383112d1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc21748da85866d749485da3b79fe35686c32fdc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc3f6b84c2dea087c886a7485bede08a3a5d5fa3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc436c8873c82ff8e95a64e4b5f5cf1c056621c84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc48bc4e70439ab62c404035b185e5071306db084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4d3337be8793118f7570b70ff20a447c40e2c25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc596698dc80e05ec8af67726ca6a1c8151ee78bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc669f375a4d5a65869f1cf2401a8bded92b603f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcb4636de564593ac8ca425c0912b70e988f47eab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc7fe04ca88bd12d9d82d226f7edb53daf757b38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcd8e5b2a0d10ac13368759ccd5155e995430d481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd0b56a4db37b209b7d2f73ea2f8283d7f25ae166` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd2375cddade38548b20f5d9a8a765aa957000297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd23858065587272dd1103125b5b42f916a5fe608` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd70033f9ee7fc2615bc9e55e1acc95d57e0fe300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda10edb7e7006494c4de868f7a936f0864bcad4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdb41120656a02aeb73fffb4b64eb36414bcff609` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdf435da09023fdb099794f73f84a7364d724199b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1b3e03e9722a3e3b11c6feb40c5eb9b8b20049f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe3d618d602a6571d7ec77a208182d696d1edf76b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe523fcb5da13b149c92bf4e87bfef744ca14e1f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe57019bf64e1dc7d8b0997908d3d983d6bd242be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe7bb56b174d24040a18092c3a3fa2204cb7524b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe89677a16803352696970b3e648824ef6c1b5af2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf08f0542253403c31367a95e048d24a9fd25573e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf286439fb926b57ce3591ba411952ab3a06b32e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4e47c63d901b7ba5e1cda61cd6ae9528a501ac0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf577c13b1c6ca6226daa4c987739bb812a95bc0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf6d594b009686f0e0fdc8beee4ef5d0be9cb8de5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf93353f929b19b82a7f01b61b02844cabf76c764` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf94dfa7909333b5544e99cfb0a2b35a59b6c73c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe2134bfc775fe8b28a12030220ab3762b486524` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 162
- Live contracts: 0
- Unknown liveness contracts: 162
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=162

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x20b5fba3ca9bace7b3fc421846cb76d0ded4ab93` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x3882ebdc68d14d78f31ffc1d71d3a78df8aa1d7e` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x3c06b13873915d0beeeb8289eed0b8912de55dd4` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x43ad694be1a1b75438ed056c4170a5ad3450b22e` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x4de4caa016dafe648a4a6efc6f57820fb90227bc` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x732f1b6f02114d33d7012aa119a01b3bda7cddd8` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x7f797855daede5bffd1e442c86435eb62a958c10` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x82e81ef6fbc9464c2fd28c1fc9f01c166d32425a` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x93f5c828553968c659db847d5ccea61836efd72d` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xab3b1c8ef95b46ba72c49ad4e6bff34ba4b06ac1` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xb33d976ba011c5c619397e8e71db8307211fa4d1` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xbdaf285712e46a9ecdab72f1aa18672383112d1d` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xc4d3337be8793118f7570b70ff20a447c40e2c25` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xd367051613979d1ec894233df9ede31591d0e5ff` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xe786fbc993d7b8b264061402b4ade9f5f0fde8ea` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xf3667da28fa9730fb7529cca151c80929de40ce4` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xf93353f929b19b82a7f01b61b02844cabf76c764` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xfc30b8789882c5e8a9ce43a29c8a06251626fe5e` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xfe1d41af5867a0d7f653dd13908d985d6d3c415a` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xffe52f091e6c51f264694f7c173222bac06a01f3` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x1a1dba964e9510666dbc00e07f193fbf6249ab7e` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x365dc768e62287bb47fa9efbcd25e8dacfc2cff1` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x3882ebdc68d14d78f31ffc1d71d3a78df8aa1d7e` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x3c06b13873915d0beeeb8289eed0b8912de55dd4` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x455e18de763520a48f0727c4681acad8a37c8b2a` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x4e053ccac42b0c3d277f192cd0421b4085e1a5ce` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x54c767a5198fdca089112026285f333c0fa14599` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x577fd586c9e6ba7f2e85e025d5824dbe19896656` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x66a05045cc97157ed62df3fac7561621b2640746` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x6e0e8c78d7b894beff66ade8b27b089a53cf4d04` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x767eaac122147de6b078b24359683b3d5049b000` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x7bc765d9bca6016cb40ec244b768ab1cb8d1b632` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x82e81ef6fbc9464c2fd28c1fc9f01c166d32425a` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x93f5c828553968c659db847d5ccea61836efd72d` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x96d594cd7136cec962d3030773cc0ef4509ab190` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xa845e9a2f6b940926d8801d9320f7a24e3da023c` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xa9f5b7131b59e768ae4eb085a7e57efb904279e1` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xaeb47096197a239f4a482a3df9a7ac22a19328b0` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xb6111dae5e9a8b669449dc100d262eca438dcf92` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xbdaf285712e46a9ecdab72f1aa18672383112d1d` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xe786fbc993d7b8b264061402b4ade9f5f0fde8ea` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xf00a1843523ecf009c6fd7a86d84fdf515c5c7dc` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xf3667da28fa9730fb7529cca151c80929de40ce4` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xf93353f929b19b82a7f01b61b02844cabf76c764` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xfc30b8789882c5e8a9ce43a29c8a06251626fe5e` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xfe1d41af5867a0d7f653dd13908d985d6d3c415a` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x0d157865068669ceab9e5e9cfcfa1de6f10572d1` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x0ed850dc162aac0dcff3d4e8d7145eecde24a8e6` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x0f0e7d30f34470b22524d2b5aab0d9475a25dfdf` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x0f79425f0cbe6885069e04358e80b23dc9dccf37` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x13251c2da66221c1765436cba5af9b00c0bfb356` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x18d948dd1e07c0b409bc3195efe5f1385d4cf17f` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x1b6257105ed7112cfc52a4d82d6f0e27a0d59d1e` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x1bf526634cc4aca1582ed099b39dce35063b51cc` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x1cc991b3846c56b5ad59506ff43d6b5ae25b02ad` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x1e3f1f1ca8c62aabcb3b78d87223e988dfa3780e` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x20b5fba3ca9bace7b3fc421846cb76d0ded4ab93` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x21dd05dc71c34e9f519176c28fea3982bbe1d08b` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x274cf394b7a7abeff359f73f37793b81230515ad` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x29c18b0acfe2cafed63e2f324fa1f81e53b3571a` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x2e31601efcb2cc472e5ffac28e4856cab39b5fa7` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x32f5ac1fc67195a2b9a8f61e413bef9035b68cde` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x342f37a11e10b98eb73903013fdfd8f3850a07cc` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x359c17c1e30f7a67e2ed09bb7c7dccb0f2712768` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x365e7facee9afc4d83f339409150808a604c88a4` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x36ad80a2b3677c6e4717cc3bc02197650681f1a7` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x37d706be37b9681ad7a64fc83f4478f05198d5e6` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x388a7537cfdffcd1ff3faf2d39e766fb6f3f49d1` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x3907b6cba6c925d089d8ef16682b925e8c923fbb` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x39259cd1207e801fb9a290cf1580d35236de633b` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x3ad67792753013f5526fabb69b4c9514233d7800` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x3b16b45ed0177ddf6000e02d13235031465581b8` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x3c4014ed2bfb6ad140489817be8eac0f51e57106` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x3cbea47dba235c503f8af47f08265ecb2cf48921` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x4283be5e56e286c8570de9ce22a0e2197c58d91b` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x433ff88bff42de15bb5e99c66151c2c72b0a62a4` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x44b5f5ff0131e910024b554ad7542af7be486379` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x462c5bf69bdc8447a7a0b7911264d1af3c3ff3f2` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x49f10e3a1911eef8d2d39886d88285783c604af2` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x4c1432f951fc124f9c153b66e1bdb0e027231b46` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x4c37282d40f6c1d785cfec0e11fd3a0ab3f0ca44` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x4fc11df9c70bd704642c2cde3f1555c1bada8df4` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x50d04c0fa7851664a13db16a6ee68999254afa21` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x51a35d25e916f3451cdfd9ae0f0e2167f5454af0` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x54c767a5198fdca089112026285f333c0fa14599` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x577fd586c9e6ba7f2e85e025d5824dbe19896656` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x5852d03223da78f3bb980a0b3b9a486fb8425e74` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x5c5be05b4f733069e13fd34f765969d09fa22622` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x5c96dfff0da981962e726382e65b8a1f24eed908` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x5fa99811ba3bf9424004bacac02eaf4dcedb553b` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x65c2fdc0d6cb96b8cea5be6e741395164bc703ee` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x6685b8fb1d4833c91da38d65691c183e70f2a663` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x696e5a4687b515d5d84cac226e0b7bcfdc894b8c` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x699c610438afb53c12ca7dbd7a306a32bd5832b3` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x6b0517ffa2eb65359b10ce68dd8975d41cddb49f` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x6d5455f3d90e67f79b4ad15e31435fc160430fc8` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x6e0e8c78d7b894beff66ade8b27b089a53cf4d04` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x6f22b80b8ae0d14e434e06eac4117279b1774a15` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x7224ba422a78fa13e917d263c34f7387f2eee92c` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x732f1b6f02114d33d7012aa119a01b3bda7cddd8` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x73eba3f55c271140c6242bf9bb32c6c2c736846f` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x757d98f1e28cd790c4bcbe85634ba0104eb33629` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x7ab33cc6d62a0817847f00bc798373916370135d` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x7c1521b3f739d1cefa75c2fc3fe42db0a9459340` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x7d2d160421f3e779d449672bb0529448c088e22a` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x7e2cad7894bebccc95d31c1cdbf8e6a05e6fc505` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x7e61b16fbd734475b56f29410a81621bf1374e1a` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x81d86fedd7667f3754a7216baa76916dce601219` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x844c797fc0693bbf1507448e3af9d1093d4d5ebc` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x845fe58a292a3e91a5a46944f3bc375526ce31f7` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x89556318defdab0caa19356d536ef1ac590f39ef` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x8dfab4cf368d94c24c17ed11f58e8bf1fb562950` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x923fc0139806eb64be3ed5be627e9b31753c92c4` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x92d7d2113da4b4fd75fc29dfbaa0ee75a22fce9f` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x964767749fe74b248c119a6141950736b2c7ac96` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x972efa426d2f7c9be40da453227ecdfbceb67655` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x978ef8fdc31a423b4164e0ece02ac37bcf7e1ee5` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0x9acc825000f5d406feda0155fd328dde461f93ec` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xa0ea2f0e0f15f0efe283ed4ae34807720065684d` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xa3c9cf24469f5f1424a2c8d4cff2e1772eeb3d5e` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xa845e9a2f6b940926d8801d9320f7a24e3da023c` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xae3606536de7752f40fb5d21f44914fcc09c6fee` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xb107ad73c8bae2894a40ec523b5c224f15b54a3f` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xb6111dae5e9a8b669449dc100d262eca438dcf92` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xb90c0b45b59b47e47474dcb40738ead51e372a16` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xb944d679ab26f1897a6b66b2491754d950cfcfc6` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xbbbcf116f646e02e2b92d7bf5d0420bde61d4167` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xbdaf285712e46a9ecdab72f1aa18672383112d1d` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xc21748da85866d749485da3b79fe35686c32fdc7` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xc3f6b84c2dea087c886a7485bede08a3a5d5fa3e` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xc436c8873c82ff8e95a64e4b5f5cf1c056621c84` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xc48bc4e70439ab62c404035b185e5071306db084` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xc4d3337be8793118f7570b70ff20a447c40e2c25` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xc596698dc80e05ec8af67726ca6a1c8151ee78bc` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xc669f375a4d5a65869f1cf2401a8bded92b603f1` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xcb4636de564593ac8ca425c0912b70e988f47eab` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xcc7fe04ca88bd12d9d82d226f7edb53daf757b38` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xcd8e5b2a0d10ac13368759ccd5155e995430d481` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xd0b56a4db37b209b7d2f73ea2f8283d7f25ae166` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xd2375cddade38548b20f5d9a8a765aa957000297` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xd23858065587272dd1103125b5b42f916a5fe608` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xd70033f9ee7fc2615bc9e55e1acc95d57e0fe300` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xda10edb7e7006494c4de868f7a936f0864bcad4e` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xdb41120656a02aeb73fffb4b64eb36414bcff609` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xdf435da09023fdb099794f73f84a7364d724199b` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xe1b3e03e9722a3e3b11c6feb40c5eb9b8b20049f` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xe3d618d602a6571d7ec77a208182d696d1edf76b` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xe523fcb5da13b149c92bf4e87bfef744ca14e1f8` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xe57019bf64e1dc7d8b0997908d3d983d6bd242be` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xe7bb56b174d24040a18092c3a3fa2204cb7524b9` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xe89677a16803352696970b3e648824ef6c1b5af2` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xeea15177f5101561a2edfb8a80a22887956afdba` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xf06dc926a1009ff9ee1fe48fd4c17e9a38ad9d51` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xf08f0542253403c31367a95e048d24a9fd25573e` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xf286439fb926b57ce3591ba411952ab3a06b32e2` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xf4e47c63d901b7ba5e1cda61cd6ae9528a501ac0` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xf577c13b1c6ca6226daa4c987739bb812a95bc0d` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xf6d594b009686f0e0fdc8beee4ef5d0be9cb8de5` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xf93353f929b19b82a7f01b61b02844cabf76c764` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xf94dfa7909333b5544e99cfb0a2b35a59b6c73c9` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xfe2134bfc775fe8b28a12030220ab3762b486524` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |
| unverified unclassified | UnnamedContract<br>`0xffe52f091e6c51f264694f7c173222bac06a01f3` | non_address_book | unknown | unknown | unverified | n/a | `0x0362c2f89a548e9c246c27d5846a77421a2b7e44` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Synonym-audit-report.pdf](https://raw.githubusercontent.com/runtimeverification/publications/main/reports/smart-contracts/Synonym-audit-report.pdf) | Runtime Verification | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 32 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21464] Synonym-audit-report.pdf — no match: All contracts listed in the Scope section of the audit report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Synonym-audit-report.pdf | BaseInterestRate | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | LinearInterestRate | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | PiecewiseInterestRate | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | AssetRegistry | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | Hub | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | HubHelperViews | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | HubInterestUtilities | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | HubPriceUtilities | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | HubState | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | Spoke | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | SpokeGetters | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | SpokeState | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | SpokeUtilities | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | LiquidationCalculator | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | TokenReceiverWithCCTP | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | HubSpokeEvents | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | HubSpokeStructs | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | IAssetRegistry | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | IERC20decimals | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | IHub | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | IHubPriceUtilities | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | InterestRateCalculator | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | ILiquidationCalculator | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | Disclaimer | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | Interest | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | DelegateAddress | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | rCT | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | RewardsDistributor | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | SYNO | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | TokenConverter | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | tSYNO | unmatched — not counted | — | listed in scope | no |
| Synonym-audit-report.pdf | vlSyno | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 37 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 162 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 32 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [21464] Synonym-audit-report.pdf

Fork inheritance lineage and inherited audits are included when available.
