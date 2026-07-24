# Agentic Audit Brief: Mezo Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 9 (0 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Mezo Bridge (`mezo-bridge`)
- Website: [https://mezo.org](https://mezo.org)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, bsc, ethereum, sepolia
- Contract surface: 581 unique implementations (597 raw deployments)
- Coverage basis: 0/11 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $13,707,134.41
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Mezo Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across base, bsc, ethereum, sepolia. Structural roles: 7 supporting, 2 core, 2 unclassified. 7 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: supporting (7), core (2), unclassified (2)
- Contract kinds: contract (11)
- Detected standards: erc1967proxy (6), ownable (2), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (8), openzeppelin-upgradeable (7)
- Upgradeable-pattern rows: 7

## Fork Analysis

0 of 48 contracts are derived from known codebases. 48 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x04b94f55780682478c8d8329368aaafd320f4d32`, chain 1)
- UnnamedContract (`0x1531b6e3d51bf80f634957df81a990b92da4b154`, chain 1)
- UnnamedContract (`0x18084fba666a33d37592fa2633fd49a74dd93a88`, chain 1)
- UnnamedContract (`0x1d50d75933b7b7c8ad94dbfb748b5756e3889c24`, chain 1)
- UnnamedContract (`0x29fa8f46cbb9562b87773c8f50a7f9f27178261c`, chain 1)
- UnnamedContract (`0x2dfdeb833c199ba5d166c90a3b25b0e72288076b`, chain 1)
- UnnamedContract (`0x3d282cc0d69e27fbd4aa59dfd08d6a72b45ce889`, chain 1)
- UnnamedContract (`0x4c9edd5852cd905f086c759e8383e09bff1e68b3`, chain 1)
- UnnamedContract (`0x52317a47585a6acdfbd7a29b494c3e2baae96abc`, chain 1)
- UnnamedContract (`0x5e4861a80b55f035d899f66772117f00fa0e8e7b`, chain 1)
- UnnamedContract (`0x6a7cd8e1384d49f502b4a4ce9ac9eb320835c5d7`, chain 1)
- UnnamedContract (`0x6b175474e89094c44da98b954eedeac495271d0f`, chain 1)
- UnnamedContract (`0x7a56e1c57c7475ccf742a1832b028f0456652f97`, chain 1)
- UnnamedContract (`0x812fcc0bb8c207fd8d6165a7a1173037f43b2db8`, chain 1)
- UnnamedContract (`0x82f08041f1bc1aa399320743f33f75cca482b25a`, chain 1)
- UnnamedContract (`0x8db2350d78abc13f5673a411d4700bcf87864dde`, chain 1)
- UnnamedContract (`0x8e4cbbcc33db6c0a18561fde1f6ba35906d4848b`, chain 1)
- UnnamedContract (`0x9c070027cdc9dc8f82416b2e5314e11dfb4fe3cd`, chain 1)
- UnnamedContract (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- UnnamedContract (`0xaac423edc4e3ee9ef81517e8093d52737165b71f`, chain 1)
- UnnamedContract (`0xc96de26018a54d51c097160568752c4e3bd6c364`, chain 1)
- UnnamedContract (`0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf`, chain 1)
- UnnamedContract (`0xd7097af27b14e204564c057c636022fae346fe60`, chain 1)
- UnnamedContract (`0xdac17f958d2ee523a2206206994597c13d831ec7`, chain 1)
- UnnamedContract (`0xdd468a1ddc392dcdbef6db6e34e89aa338f9f186`, chain 1)
- UnnamedContract (`0xdf6542260a9f768f07030e4895083f804241f4c4`, chain 1)
- UnnamedContract (`0xdf708431162ba247ddae362d2c919e0fbafcf9de`, chain 1)
- UnnamedContract (`0xf6680ea3b480ca2b72d96ea13ccaf2cfd8e6908c`, chain 1)
- UnnamedContract (`0x09959798b95d00a3183d20fac298e4594e599eab`, chain 56)
- UnnamedContract (`0x8e4cbbcc33db6c0a18561fde1f6ba35906d4848b`, chain 56)
- UnnamedContract (`0xa10ad2570ea7b93d19fdae6bd7189ff4929bc747`, chain 56)
- UnnamedContract (`0x0c46f496c410465975a427e34a976fc15a2ede4f`, chain 8453)
- UnnamedContract (`0x15c465e7df34f8ca06fdcae0569206cedf3f4467`, chain 8453)
- UnnamedContract (`0x27321f84704a599ab740281e285cc4463d89a3d5`, chain 8453)
- UnnamedContract (`0x3eb418bdbe95b4b9cf465ecfbd8424685acd1bc1`, chain 8453)
- UnnamedContract (`0x8e4cbbcc33db6c0a18561fde1f6ba35906d4848b`, chain 8453)
- UnnamedContract (`0xdd468a1ddc392dcdbef6db6e34e89aa338f9f186`, chain 8453)
- BeaconProxy (`0xd9d920aa40f578ab794426f5c90f6c731d159def`, chain 1)
- ERC1967Proxy (`0x13916d0dab357dcbaa1600b594d62c641840686a`, chain 1)
- ERC1967Proxy (`0x5293158bf7a81ed05418da497a80f7e6dbf4477e`, chain 1)
- ERC1967Proxy (`0x76ddb3f1dde02391ef0a28664499b74c29d18d3e`, chain 1)
- ERC1967Proxy (`0x920871af2d4106e76d204fea7122fa129c9283b1`, chain 1)
- GnosisSafeProxy (`0x98d8899c3030741925be630c710a98b57f397c7a`, chain 1)
- ProxyAdmin (`0x260ca2abef5d38181e2562f00fa92ad1dc681734`, chain 1)
- ProxyAdmin (`0x66ce24b68d9feb092bc8e6c47c0fa318e48f1267`, chain 1)
- ProxyAdmin (`0xef619b73f424506b8ada0e05c2935ab36ec096a2`, chain 1)
- T (`0xcdf7028ceab81fa0c6971208e83fa7872994bee5`, chain 1)
- TransparentUpgradeableProxy (`0xab13b8eecf5aa2460841d75da5d5d861fd5b8a39`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 48/75 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/11 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 48 own, 14 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 519 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 48 of 581 unique; 533 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/28
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 553
- Unique implementations: 581
- Raw deployments: 597
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 4 fresh, 3 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ActivePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4dbcb0cff525b91e8b9d18b224c1b45fef008549`; ethereum `0xe922b5591da479a559b25261bd6dc8f89ca1a29d` | ⚠️ Unaudited |
| BAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1f490764473eb1013461d6079f827db95d8b4dc5`; ethereum `0x920623acba785ed9a70d33acab53631e1e834675` | ⚠️ Unaudited |
| BLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x65222d72f13860913fef03f088c385cbfc11a50c`; ethereum `0xf21acb3c2e8418fc5466bc794f9970df7255ae28` | ⚠️ Unaudited |
| BorrowerOperations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x874a8ee5b4cc0b9973c7c002fa891fc28666caa9`; ethereum `0xf5e4ffeb7d2183b61753aa4074d72e51873c1d0a` | ⚠️ Unaudited |
| CollSurplusPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3bec529c86317c64305dc161998fb7f40078f200`; ethereum `0x67dbd2ad541c61d37f17b0515d2e452e04597a36` | ⚠️ Unaudited |
| DefaultPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa8bdab0f0d3f5cd04d29df5f4ba6b43d7cdb7ba9`; ethereum `0xbe037954b419676904117f0d7d7e15f78ff1bf4b` | ⚠️ Unaudited |
| GasPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x34fbfd06cb537abd1a75e91a9cf7f5b61b47eca6`; ethereum `0x8a7c0b18fb80bd0a1d3530262b15264278e5f64d` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-389085 | `0x98d8899c3030741925be630c710a98b57f397c7a` | ⚠️ Unaudited |
| HintHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2249e86a4b99eccc081600c11b2b30ff64202f55`; ethereum `0xf3da35dd10ed653fd66eb03d349edfd139521df5` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8836b66727bbde25974110442bb46b7a4805b36c`; ethereum `0xd74dffdc614b84610329af4707d8dcc484c735d0` | ⚠️ Unaudited |
| NttManager | governance | project_anchor | own_supporting | 1 | ethereum | unit-389084 | `0x13916d0dab357dcbaa1600b594d62c641840686a` | ⚠️ Unaudited |
| NttManager | governance | project_anchor | own_supporting | 1 | ethereum | unit-389080 | `0x5293158bf7a81ed05418da497a80f7e6dbf4477e` | ⚠️ Unaudited |
| PCV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x097f1ee62e63acfc3bf64c1a61d96b3771dd06cb`; ethereum `0x1a4739509f50e683927472b03e251e36d07dd872` | ⚠️ Unaudited |
| Portal | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389083 | `0xab13b8eecf5aa2460841d75da5d5d861fd5b8a39` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x684645ccab4d55863a149c52ec3176051cdb732d`; ethereum `0x83ae3931c5d03773755311372c0737f856657a43` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | ethereum | unit-389019 | `0x260ca2abef5d38181e2562f00fa92ad1dc681734` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | ethereum | unit-389027 | `0x66ce24b68d9feb092bc8e6c47c0fa318e48f1267` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | ethereum | unit-389049 | `0xef619b73f424506b8ada0e05c2935ab36ec096a2` | ⚠️ Unaudited |
| SolvBTCYieldTokenV3_1 | token | project_anchor | own_supporting | 1 | ethereum | unit-389082 | `0xd9d920aa40f578ab794426f5c90f6c731d159def` | ⚠️ Unaudited |
| SortedTroves | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa5626cba9a4448019e73ce59784bd22736986711`; ethereum `0xe5ada07ace9412a623b0a282cd67d16a3a094e17` | ⚠️ Unaudited |
| StabilityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa18ab4fa9a44a72c58e64bfb33d425ec48475a9f`; ethereum `0xf6374aefb1e69a21ee516ea4b803b2ea96d06f29` | ⚠️ Unaudited |
| T | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389042 | `0xcdf7028ceab81fa0c6971208e83fa7872994bee5` | ⚠️ Unaudited |
| TellorCaller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0278ac7067f66a66a91466cd420f6f8efae15c32`; ethereum `0xd1acc73e5617ea6a4676c534b266193ac633dea2` | ⚠️ Unaudited |
| THUSDOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x033951c469e54ef19be43b19c70a4dd273026468`; ethereum `0x883fc0b2ef845603a5c9012172e7f8c34c28d632` | ⚠️ Unaudited |
| THUSDToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfc5bd99915aaa815401c5a41a927ab7a38d29cf` | ⚠️ Unaudited |
| TroveManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x27d7d02aed6c4f95ada2faf02dccb9666d3abb8c`; ethereum `0xfc7d41a684b7db7c817a9ddd028f9a31c2f6f893` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389081 | `0x76ddb3f1dde02391ef0a28664499b74c29d18d3e` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389086 | `0x920871af2d4106e76d204fea7122fa129c9283b1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (553)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389013 | `0x04b94f55780682478c8d8329368aaafd320f4d32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389015 | `0x1531b6e3d51bf80f634957df81a990b92da4b154` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389016 | `0x18084fba666a33d37592fa2633fd49a74dd93a88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389017 | `0x1d50d75933b7b7c8ad94dbfb748b5756e3889c24` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-389018 | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389020 | `0x29fa8f46cbb9562b87773c8f50a7f9f27178261c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389021 | `0x2dfdeb833c199ba5d166c90a3b25b0e72288076b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389022 | `0x3d282cc0d69e27fbd4aa59dfd08d6a72b45ce889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640574aa764763291ed733672d3a105107ac5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389023 | `0x4c9edd5852cd905f086c759e8383e09bff1e68b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389024 | `0x52317a47585a6acdfbd7a29b494c3e2baae96abc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389026 | `0x5e4861a80b55f035d899f66772117f00fa0e8e7b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389028 | `0x6a7cd8e1384d49f502b4a4ce9ac9eb320835c5d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389029 | `0x6b175474e89094c44da98b954eedeac495271d0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389030 | `0x7a56e1c57c7475ccf742a1832b028f0456652f97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389033 | `0x812fcc0bb8c207fd8d6165a7a1173037f43b2db8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389034 | `0x82f08041f1bc1aa399320743f33f75cca482b25a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389035 | `0x8db2350d78abc13f5673a411d4700bcf87864dde` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389036 | `0x8e4cbbcc33db6c0a18561fde1f6ba35906d4848b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389037 | `0x9c070027cdc9dc8f82416b2e5314e11dfb4fe3cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d39a5de30e57443bff2a8307a4256c8797a3497` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389038 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389039 | `0xaac423edc4e3ee9ef81517e8093d52737165b71f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389040 | `0xc96de26018a54d51c097160568752c4e3bd6c364` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389041 | `0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389043 | `0xd7097af27b14e204564c057c636022fae346fe60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389044 | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389045 | `0xdd468a1ddc392dcdbef6db6e34e89aa338f9f186` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389046 | `0xdf6542260a9f768f07030e4895083f804241f4c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389047 | `0xdf708431162ba247ddae362d2c919e0fbafcf9de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389050 | `0xf6680ea3b480ca2b72d96ea13ccaf2cfd8e6908c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-389064 | `0x09959798b95d00a3183d20fac298e4594e599eab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-389068 | `0x8e4cbbcc33db6c0a18561fde1f6ba35906d4848b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-389069 | `0xa10ad2570ea7b93d19fdae6bd7189ff4929bc747` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389071 | `0x0c46f496c410465975a427e34a976fc15a2ede4f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389072 | `0x15c465e7df34f8ca06fdcae0569206cedf3f4467` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389073 | `0x27321f84704a599ab740281e285cc4463d89a3d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389074 | `0x3eb418bdbe95b4b9cf465ecfbd8424685acd1bc1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389078 | `0x8e4cbbcc33db6c0a18561fde1f6ba35906d4848b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389079 | `0xdd468a1ddc392dcdbef6db6e34e89aa338f9f186` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x004faa5c1178cd4ada60d9872c8bfab6c719db21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x01ce632bd4777e8fab4c2c100798bf02bd9c1252` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x02116e253536945f1dec2d0772c0da18eb5e9633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x02326f0b6db4c99aa044e1230959c5c4b3342814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x027fa1adb4cf67558112df7c4f83c6cfe9e0b7ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x02cba6d77cf9fb019e322c55b34c9d42f2ef4d74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x03deca18e6d880af85f595d73f90d1486d236bbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x04538fe2c481070f788b0d985f48bf986a6597b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x045f494e29b54c215bfc9af74d5328f674897d09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0652c020ef91023611cccd65681c9beda82bb1d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0672276d7ac52afa6e75acaa20a3f05902173897` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x06fa185dd0b36b9ed2e92e5e26d6b20a2b7d61dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x07387fb7e2dda7de543a0167553bb5aeae32437f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0754935436b7dc24b62bc8a01054a108a784d0f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x07f40dbc0644f3895776816823b7a745c31989b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x07fcf6368d34d430aafdc64435517842775fbf1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x089c01a3ffbefb60a27c2dc8aa7e792466effc6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0961517805a0aa9e995a5ff18912de90cf3c0468` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0ac38cf6e4661138c2a0d88e52f2de6ea21a7c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0ad2fc8a77c6527df41083bacd4efd359cb9c4f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0b82e51164720543db3fb13043876f37e9a19a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0b8b549553ca9b7dd59833e4e9285d6566a08321` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0c5e36731008f4afc1af5da2c4d5e07ee4a3eb69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0cedd8265d65bf770198746707a21c997252b5b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0e5aeae060ddbd6af56c5fb75912a2f56fa6c09b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0e9e65b117604de16e549efcd880341f9e9fe626` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0f092e3bd92751fdae3765bce3f6aebe5881c499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0f0c81ece084b72cd8d0f667f2636ec75c342e70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0f19436cf72d677cc65cb7275146fa7012da22df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0f68fa233e72fdd1189bc4d0e444f11e8b9a69c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0ff2612e09df8b26047c0dd8a9531d42e99bb8de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x10ecbdd96bd804d4fca1183b7d72c8f0b2176a45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1195d3689413291c1a24b4343a5e69e4e9062607` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x14647aa8a7e1c43382b9c00d873c3df2a6b3766b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x15e316bee71080313928bebe54842aa072afedab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x16917a72a7ab3a93a763be1dc19319de68824016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x16bbc1e7ea567895a2a3f39cfc48a2474cafe4f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x189f188436b3b6d53f33ca68bffef77548dc328d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x18ece0538fc831f5de4982d44460c15f5974e295` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x193096824f7618b49e8742651d9656e977c756d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1943a53b7e43421373f6a72c9ac7b939c197ccfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x19da265a76afe0f24918025481521d7cc1d071c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1a53759de2eadf73bd0b05c07a4f1f5b7912da3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1af278ae93ee5b47a4bb245d1851e41a0118883b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1b11f1f1b7b9e96c236e50e29fea715dc01bf3f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1b5e4ba92e0b8c98f2cceadfab1d6791004fe752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1c19bbf9afafe5e8ea4f78c1178752ce62683694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1c7752a30fb5155f8118864e0e1709bebbf48300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1cc0cd6dd52820d1b7dc6155ab1869c69494fa27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1d489eb3066786738df2226e94bbc85466d3e136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1dd66d068a8489daf29c591e6cfc0cf70269bc73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1de482ba0b4d2b9494aaa51534bb3526e3d21a7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1e9e56acdb2987dce23eb6e751c22d4f89296a06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1ecd87c8d510a7390a561ae0ac54fbe7e5125bcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1ee56002c2fe115314ce197e19e46d25e19e8d1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1f6d618a8ddc71407d71f471bb33f50af7d89ced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1fb86047844611a307978051470abaf5dbfbd741` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x20faea18b6a1d0fcdbccfffe3d164314744baf30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x21455e7cd821c1f54fe545a746099bdbe82914f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x219b0b14b961b703f5cfd07f83c9d911f181e2ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x21eb46af48705a52f122931ddb8e9df036d8f2c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x22647ffae391540d584599818ca22fdf18890753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2278caae0009e8a325a346fea573ef23c5756dbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2289c922c94da6bcf0ec9195ae54c45ae4235faf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2375902cfd686ec51a652d8da2f4fab6e240b604` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x247a726c536986c3ff3044544403b88af7b131e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x249dcc5268d127380e333e392c1e544321eb3efc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x253f91f821516c2f83f76ede65d0d6a7ae8edffc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x254439dd2b841e19161bd050d4805029196e29c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x25965984dd78ef19e3795901717ff3b2dc72c646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x25c5af106c04e17d7097617c5d74e23717fb6286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x262ebc86de40157f2c68c4f0eacb6e3a3f942c67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x26ad7515f34e9b15ba5827302433d33fc5004d16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x26ccaaca86f43bb081198fccec6578ca9d525412` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x26d987d08811ff7143f335d42aef412fba2c0506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x278d6eab8c25f2b5fc66f468e747df6fbaa532b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x288979ff4099b443f2d908de927664e4431aa80a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x28e44fef4e6c35a901594bd2cd26e9f298bef205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2906b95b3de35acd019b757b53405ec9e6996ff2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2a077044343e893a68e4a3d186c24baab6d97505` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2a2b232b189fc03bd918d547e74635cca1bbfa0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2a2e6c3b5b135a6128a9ef454a058c1f9dbfab44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2a4ee23bdedfc5f15f4844423f6ac9e30f26606c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2a5a20ecbb1b5dc693234a839c2ea1b86c1fbaf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2a7d373b22783720d4f6a27cbf34b638c896d6c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2bb407686ef989044cb3b2bbb51ecabdffae827a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2ca5e6f310f96f6ebd0e5fe9d1576d78d64d4b23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2d1e91e1a1109baef8e15b25d517c516a70e3b5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2d40250ad5dacdc8350a1b0a3975bdd8473bf3f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2d95a74936a9be6848e12f0a4b0f6e295e3e15ce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389051 | `0x2de0566a26b74dcd501ff5c3b213bf5a01ac3ac1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2dee9e2ac7c361ab50c5d19111d2b60743c9e9b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2dfc89675ab5fb5be7c2a86d373daac3e795fc25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2e62fd07dad85dbef9661981e3ac442b9d47c480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2e6890750a18b7570c14934d1fde808933fe9e14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2ee9f779850c8a31c7d77af0b8d0c91af2ea25fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2f345c0c5af45728f00824503a676811e289b1f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2f80d5be01395dc7fffcaf5e953e35a5b062654e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2f85e597bfb6e41242e6604dd95ea2ec3e8ecd63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x30de8b7ef1c21d428f3e598456851c6bc0f8033b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x30f5cfcfec6626f52fb254fa70fe6c6713d521c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x32498b20c542ead1207006bdae8d9d0085c6cd39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x328c957c4d696fe340bfffd0418ae99540bee5af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x32be1eab30ccf66779cb67b92cd275f25870a925` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x33c8eea7bc7b160742a5b373b1e2e16d7481a51e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x33d7816a1c356f2d36c8cba5d449f9c46306f818` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3430e9a9d3b0268285e760615af45d6f64bb97b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x349fba7252ca923518c4c0ab421d1d1cb020584e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x34d198f215f314d4e8e5c135041ca928e44ef77b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x359908facaf02791c7b91f7432b97784d00d5261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x35b2e0425fcb77644ac626aab5e0ff6d43a27f2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x35c9a33ab5b309ac02533c14888e1acc19dfb25e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3601abdbc476ffa3d733f73c6244dc064b1ac449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x367c502008004dcc0c08a55ad46670248ea9ab76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x368f4ead1fe2e6b4bfa1f1384184b83f59a5dfa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x36f83562569357cb602e8a8af105e51ebc101d78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x38cf632a41411e45d1c55a8f8e2586c8a69b2bb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x38f11874ac1f4ebc7fab2da9aca0efbd7fdf2d6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x395bb82a39503439834c0b751b8c4bd317d1125a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x39ab795d11fcc6ce1c340fbdc308cf1d42ca8f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x39db577590b48d0df027e3adbea0662ccc296089` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x39f60b25c4598caf7e922d6fc063e9002db45845` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3a2fa1927154749f70d065d120618aebe52c8566` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389052 | `0x3a3bae133739f92a885070dbf3300d61b232497c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3a9f4baf96b03f6b1b5c93628927266af68495cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3aebdbfb9978fed94de439d629d594060d3835c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3b1d0cab99ad9cb790efdf7cfa7e4180d09c1ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3b515509d01756832d1fe455761bf26c5e238679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3b6824c8a29d6b46dc4cfc4b82c9925b7516c232` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3b8d5500ad6dc6bccde4fe352254b12479369f70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3bae32be0b96ba0cb2214bef6185fa81842af3bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3bc9a80a3ed44a9d14162992cce040efac5a3682` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3bde77bf345de030cee100e478dc58b4e54355b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3c5afda36026760697f8a2fcb22dc26ecd4d7cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3d0b87f775b8bf2e7fe809c6414ef211b352d2f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3d4cb85c0e3c5bd1667b7e30f3e86b3fab878ff8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3dd2c0413f390cc4f5f41804bb41b9cb8b2dcb04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3ed24756fe3ed03448ddd1324d76a73193a9a79d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3f14399dc2379ea0efbaddeb69a713d8c97e8900` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x40001da279b176230d4593179689a9628ce5e86f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x413889be591b5b24ee75bbc828a389b214ae7a2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x413ff6bb6e12df17d99c1b12cbed276c51eac900` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4190107e77f049d774053e29077bb51c3c853a9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x42873205b36101d84e3ced5d055054beacfa7f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x428f669699bafaa29f9dfb454a35a4326270e0e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4290043b97e1e08dcc560fdc57bb979c55760966` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x43047213fa758bcb4d693138435eaf7a280aa480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x438e2a4d97916dbf86882a17b4eb5b71e73988d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x43c502edb524d5a1e8813dcfc6c7ab4012deb958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4520b9fc4e325e2421434b60da408732d18bc7c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x456b96249ed8d1e77e91d8dbc764f374ca49b5d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x45a129c6f7043e6702c412d693aa5bd2e9ed86ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x461e2ff959ab71bc6c1fb3b699ffa30f2bb1e5c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4621a14bbb5a53f79ea532bdc032b8acc383b153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x463d180865c0f808d300c7caaf6e4227caabd561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x465445cc704db1f2d2084d5751e03bddbfae0b06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x46868fe71d456c39d7cab19009d5d0a352c13d5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x46abdf5ad1726ba700794539c3db8fe591854729` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x47177176beec4182f4b26fd91f02642f2370ee41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x471ea40981d278fb3cb55587e94ac549aad1aca9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x47316ce67c30ded05bcba2a26176c83963936bc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x48f66fcfe86552d46d5c14ff23ef6825fd997596` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4918fd33a22e7e2948b7444cbdd68efaa9e6a087` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4947243cc818b627a5d06d14c4ece7398a23ce1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x49a6572e06ae805bb4d021acb198f197ad900edc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x49aff37f7d4e0a0ee54d8ca3477fe78025764519` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x49c7cec3f1ae5bfcddf03fd93d896c7438379059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4abe632d4fb69b895a242616b09c5596d6d8de7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4b2ba566706f04ee23c9209da56a08f77e4a6254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4b43b73aa4167dba0ff6806c5f7b8bb23a31464c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4c566084046be6fd8f2e49474f386dc15f7f9491` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4d1f50c1e4a22beb8980f08cd143da59bad5028d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4d7e5b28f018c60ed662017b381eed553cfa8fbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4d8fc972e9d75bbb927c8b364a2ed01c79ae8f96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4da0f50fceeb36c340567764c66485e6fc3d7acc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4e6cfb556143381070b17825707b3de7f3148fac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4f06d16082a49d74957e4094fc6e9ce21a6f0190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4f47e3dcc8eb2aaec808a3bcb5aa58155c5386e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4f72f73c904f70b08488b738fcd36f7ab1b7d8fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4fec692aa093032cac518f5d165f778dabec63be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4ff50ea16403a244593bb878ffde04628d87b899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x504f1a207f8517161f1a3f816808c8b2f63f73c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x50d6f2ebaa07bf6eb5e333bd4ac583bd2e3ffd92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x50ea58658f2139766bc80694f30005413997e743` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x511dc2904da87895439be0bcb4411b3e1cf04c93` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389053 | `0x517f2982701695d4e52f1ecfbef3ba31df470161` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x525e60e4b2e077bdb93c7c52a76fd588ee0b1bb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x52d48d08e687a346194c5e14b8bfd76fd42f4adf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x535c7b802c2da6f27342e72963060e4ecaaf10e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x53ba28ff74b96baa1e8a817bd8922b9d8cdaec0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x546ae2aaf67218129ab420053696933491df568b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x54e79720b5b0affe5d582afad2b526329774dcf0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389054 | `0x5581c79ac00164d04de090eb72a9b0b08f89643d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5715c576fdfaa77d469ddd2cc36c2dd8ed8cb74d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x57b5fedd0e8105a5ee130b65eb852815980fb1a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x59db30ad39580037d7a933c9fcfda1833217e826` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x59dcf5b9f5c5f00c6edacd80d88fc1a2f8536787` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5bd259ec65ea3ee213634cf75403c00d3136cd2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5bd37811daea439b94b62b7178fe574f94bcb5bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5c064b6d9528cc91290c6d259fa9a4f34d10109d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5cbc9df636553cc42f408d728f3daf96593274d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5d211217d8311e2dee17ae3f06ce473922d1a7a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5d8e618f44a59dd528cce58d00801f4c8e5cfa8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5d988c281ec62f1167e1c685b48bcf3edd7baa81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5e12cec97b01d1d73f3471d15a9bd42d5e31ac56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5f7a6fac333f82cf771c2459dfc392947698c41d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5fa3d34f6c1537a0393098f0e124064b66ce8e24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5fb63d9e076a314023f2d1ab5dbfd7045c281eba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x61db8e954315e0872a1e55fbf99bc02db0d107ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x61f3139f1e5866522c992ee5b3fb13b43c476919` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x626df517bfb8a3a47737d38de2de71cf1c1494d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x629320719a6190bd145c277226fd45e7648f950a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x62afaacd5375b52f9e50485ad52309c0c1673185` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x62c2de0f54749d414974484e992cd9449f221d78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x63ae21b699434a2e87a720d8ec8349954221f3f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x64005faf819386619f9ea352c66b1a71f6ac4407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6449a4ef3c33e901caed599bbc6dbb66b8261f95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6449f4381f3d63bdfb36b3bdc375724ad3cd4621` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x64d92c98793c4a55b9a88c2bb9e356650d0d83f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x64f78ca737d7942e757a76c1c434b390b8131e0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6555793e925241d50bbcb7d131f3b0d5b557944f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x65935dab5d33d48f6e3712cdd602793ad38c8b75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x65d7ffa76e1d4e6df4e74e7fa46fa1c2fb4bc570` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389055 | `0x6617c61355ca32141950b8f6610c40c613ca7f38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x66dba6a67c833d7d14aa23356c335ec8fdb4a69b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x675e1e0111f8336bd9a19cb4bc5c05d302163a60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x68163f4fb4131523581f1abb94d8554c26b7c806` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6918594a24eae8529985d588cc55187398e2996a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x69558f13bf7ab1c77feb25fcf4e03837cabb58ae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389056 | `0x6978e3e11b8bc34ea836c1706fc742ac4cb6b0db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x69c89c7daea0d60b672a0a7809a8952c311fd471` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6aebf0f4039d5ca73e8d45a6ed5e3790fb8149b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6c525c4e682e09ee0ddf0a9635aef7fd88d88241` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6d2a65783c37a36b33d2e18fd913ebc8b0f807b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6d353340a9c24a740cca4b8de598b9da2bebd321` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6d7d59a410b8415d7976f48f99f86261e304e80e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6f9a6bb00c01435bcb945610ef3dfd082ab60fe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x702102e6a4810429c5f213a3c693356ed0248b05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x70324782cda44eb16a4e3ec4578c35ba013f5730` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7149bc2d6f090fbcdc44303f0752ae34d77f6d71` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389057 | `0x7205535961649c4f94e1b4bafbe26d23e2bbdd84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x720cb49a8b3c03e199075544f7f1f4d772dd6d06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x73a63e2be2d911dc7efac189bfdf48fbb6532b5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x73cd9efe147d2d12d2cb5783bb3e8456ce870819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x741b30fa2e94d7a2ec6732b997d150a298284c1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x749d9a85fc0871f6c6c40a8c2621cf4ac041806f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x74b4c71ae86c95d054c208adbe98253d633b19a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x74f5d9b46ce064f22147629977dbfafbc32fe559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x75c04279e0dffb4f600ac5690255dc20ba45a7db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x75eb93ab755d89851656805c32e174759688c93b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x762b5e9de8b3cf81d71cc6f5ea1a9a7b7eb7b8cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7641f007de71e849c1b75a3e430e8ca13d4bf646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x76e9ad0d6b132c336e758d04a95e488dd9c319a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x77814fe94c750e8f2e41f423603dd42d6dbce7cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x783349cd20f26ce12e747b1a17bc38d252c9e119` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7868c01f943f0556df523c3fc9595d3bd1bfd6ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x79b80a3cd454b600c3737f1ae52c69a78641ba2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x79bda4949d19a085b0505ba7c51693c15e3c8907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7b4087e9db6567c093fdf19176e962e2ed4598a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7b5a4fbfb7991abe7d1b78e7bd9b48088df2a670` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7be9d707f6e9364e340bd5e89ddcda6f53405703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7cdefc1dc69312e5dbfef6117bcf63f671cb6eab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7e150d586702a1f5018a77bab3fe21aa6d6ad22a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x801ada7d1788856026ba72e59e5f3451dce4aa31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x802400cf1b42e161acdad238b2abf336b9954d6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x805336b10809e945302f6ddcdd07e61ecdfb2e08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x805ff4312f99f01f8cc4138858d62c10f35ea4df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8086213b97284149cd02748a0bba1c4fa06e5bf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x80c929f7f24b4ac2fe7ab50f314e73750e9d21d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x822c7ad67f19c0f467322481729d2c20c6a37260` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8341e41e5be1d665e5c6137b2c7f0309d06be113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8371fa1403bb773a35cd5b6d66001869578d55da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x83f0af61478bc76edae0ddc819ce36540289d92f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8420404dc5e9a9f920280b2e0e08988cc7008459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x84c349b76426ab200cffadb387ec7e9f9be8b813` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x85572deb49cb588618bb28b9dbf6a2db082712cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8562d01c9c0f1a8173360e48f50f6b9879c98dc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x85727f4725a4b2834e00db1aa8e1b843a188162f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x86cff30d6377e357a98265e3344627554423abbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x86eb88e6c2a0bf57a43fa34c42708f90548146ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x86ff5d0cbb1ab6ed8c707a22af52149d91d4fa43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8883236e97d9bd420b622484dbe01f1cf0a6ce17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x88beef1f01cd6c74063e398da1114eb4b8c985a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x88d0ccac65ce4110ede01e29c5e70626378ae425` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x88fcebfab814e7434edfa1e66e268d09d538057c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x890c80e65719f3fb0df6b8ed5da541e9b7770dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8a1fe437a982284558e0ca409a31f4dbdf257ba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8bb9f4cbbeb902eb35f1ece54ff0b0470f5a61dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8cb6314f56d026792bbfbaa12a39aabc254b33c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8d6539f4799881b8d68116875318d5fa3c2effb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8dc887a1db14b686113ea7558d169b2cf74d5212` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8e52789f98da6d55c5f6fb644eb7060ae89b5ae1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8e66f6852e102ecc41f5131bdb43e6cdc6366003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8f1c5ff2814d39bcb1698db8187f80ba45563fc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x903aa036623923db5fbbe4aa762600e1a6a453f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x90b6c4e51f11761330099a5441f175682a6eda0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x91fe7128f74dbd4f031ea3d90fc5ea4dcfd81818` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x92af1abcd96dacbd8904dddfcb18fc54e7b5f81f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x93accf14d143132da0f592552baad5af0d14cdf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x93c042cda387cc9129d76ee3d10c5a3fbfebdfc0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389058 | `0x93c4e8eb2813fd3c13254c31b43a30a9ca9693ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x95991352f353a4ccc4115e0c7bca64c9f992b8da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x963b15cc6304622a5e948c896efa083b95167918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x975e80c20780384509f61c472ee11a172b2b7c7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x97857fd7f5189c1a23534d269dec73b22e1a8f71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x98a942dd227841a325c05b6ac1f0021443e919ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x998d17122da4ed98e558198665984e08d1ceaa8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9a743075a833dc97cfaaa60585b0acf22dc94a26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9a82be743f0120fa24893b1631b6b2817fd94b1d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389059 | `0x9aa2e895abb717822fb72feeb64010db6739d720` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9b1792c59b015ef736c67e21f217cdd5bae19d3a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389060 | `0x9b1a7fe5a16a15f2f9475c5b231750598b113403` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9bef455bc7a33fe9054eb52c69dc76da647338cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9dc7a4fd3b2dc64e387253d9c75a63e0150ecfb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9e1c45d3efecefabefdaea8eca0397845be47e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9e56a3c3b826a463ed8d9c1725e86507ca0c5a85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9e6e730fd479221e195f8396c3166557f04acde2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9e6f0bb61f235304522e5fe3c27a6424f5182c3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa051c5d6a12b8d631264e09fa68cf4c978adfbcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa07f4e37c2e7089ea3afffbe51a6a281833a4d14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa0bfa83adb6c53b1df90a5b0a5e2213fbb52d2be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa14a9607dede925c7f7acfb27ce192771f8f6fa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa166885a0b24ad149c8d66f3c845498655d93e74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa207ef1abe6e1a06680926f615928cb98907664d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa23ea7aedfcbfd1a87dfde36ee164a9765270d64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa2470a74a09622b28d62e0655cc1e6357141847f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa313c75ae0bbaad5b3a82c2f5416bd7566fe2941` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa3342b591a21d898ccd06a763d63c177b516fd38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa374c52ad7a5789f82386ec6e01699662b7d3e02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa40a7d51e81980172a0ba0a2e0756e07eb32be6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa46e7e2e356ebf5969579c628ada5023d97f4371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa5157fcd7067d93e037f85b35ce2598fb1fb7bed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa53139aa697ca273b86e6c816ca972f5c07229b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa669ac294bcf04ceeb5ebc26d9e1bf4fc4574e06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa71d3e51669674ffcbde9164e19a6d041285d9b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa73bd3d54ad328977e5a2799e4c0dac0b9b44722` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa7bd3465a9bf618ee6f692bddf59db0684682f65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa7dfe0260216284113c1867e46178067491ea05a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa8ac2d93afa048beff84c08e09b97282c5ad8cee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa8fc7f45a1cc342b3cce6fd440acfe3904430641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa90078d2631f67f785ef04b56e39a2feefa84daa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa912ecd63d808fb5b26a699bda9bc295165fe583` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa95c5e1876fe9b6ff73b8c208e0e11fa2d071bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa97dc308607b7d912a01f8b93468187f46a7cdf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa9ea9dfddfd8ae35752ad5038f9fd794604424bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xab483718b7810bc616a75a3fafd3e3a9a852a816` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389061 | `0xab940ce533883a521f467b872a8ed699311c7d86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xabb6d7e6fb4970f32222ad11c5157a1ffba2e1fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xac382eb81ba5ce5c39600a0c608e08959f0691ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xac695deac54bfe7f2f0e1b1f6c23d343bf4fa730` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xace37767d828b8ee7e40591c6b5c5399ce586d85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xad3915dead48accd2db48439277a8342f3e9a5a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xad39ed2d3af448c14b960746f1f63451d366000c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xad83f62ad063b5af9f9e3f2f6772108473c0f03b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xadf78eb37fde0f3cbf59d11f0df54b1170a3937b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xae0a3fdfc51718e0952b3bcc03f672eb13917558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xae569a81716f896a4f84d62239f99db6f332d409` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaec87fd09bcb6e8d2089ac62186c70cdc0de15c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaee95086192de60a23807193304a44b62f0d90dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb359904a7481ca0a9dc8ecc7f1a0971a668d0ffc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb3765c9d93e20552c036d18bc3061c0dda3aed02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb3fbf63e3ceaa66e2efcfc03f36be21bb10a99c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb50ddb425612fcc6bb65a9f4886b06a38554be3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb524ad29170be41881e4deaa8485364061ea961f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389062 | `0xb5679de944a79732a75ce556191df11f489448d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb586cb5b95bc8f56dcfc75864966343e7cd73c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb594987cbea96b612724ba92951bee5628f091a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb73905a830ee1a86c6355e6229245a42768c2e1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb7837fa9e9021b64bb2d7a2c51e87f2e3ce52807` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb7ac7dcf5520b3e5a22170a8e3e5d1b263048bb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb8327e529de85e27ac05fbe1ff5968485705b5e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb8bfcbabb6f5b43d5149448efb8763aa06905e4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb8f31a249bcb45267d06b9e51252c4793b917cd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb90aea01cdbb6994bca2239d42b9829018ccb1b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb90b04cb658f5bc50a6d8bb7d1d3b30778e8fbe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb91f472219a44959f3562f15c2d3e6d83459bab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb9cd067b78b4d9769837a46486464638893d4c70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xba84b4ca4aca27b1d53df96bad513028540de00d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbae114d40ff015224c55470de7b850172bb487f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbb0bc88a5ffcfc3da5eec95b4638f6caaea7202e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbb9b1e617d739ec3034537a48f8cb62f80a181c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbbe10526f4a6379264cbfc9323160f91b7d50876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbcd7917282e529baa6f232dddc75f3901245a492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbcf5f797b9c61f6ac4ff9e2b36cd86466a69cf5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbd45529bb4aad74c76361ce81eff4064a1f8e72f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbd8bcd0ba42385186095445acd4103a92ce30ff1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbf115c9b450ee98efc26feeaaa8600b3cc0fed5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbf138155d789007c43dda3cc39b75fb70991e7e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbf766d7b60f5fa02fa6c615a77be87b5793c3ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc0be8df8cff22276cd886ffd7fae8abbfbb9c15e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc158d1b864ad7205d854f6356d2fe28520a22a5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc1cee2b8dfcc4d3bd315f2cd44a9ee77ec3b808e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc271c4773abd4ce98c772c9eef82393439f90f32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc316c9d57ae0966e5155bf03007464c3f88da4fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc36b69d134972e4409f7648047099d2b300f7234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc36c77b46d791f3e1791398d546205e480cc29ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc3bd9ce767534ee4932a4c6fad4b911094e41cf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc3d46e0266d95215589de639cc4e93b79f88fc6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc4a57a71c39920148661f1b57231e254c21004dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc4f105b57fa904363c4ea9893915d78cf2cd51b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc56fdd4f7d85e80497706c7711a3b9e957a330f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc5c176a9c6fc1b2b4e4e48304c8758ec2531f04f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc619c936b430cf8268a8426a5d203865381de7cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc6575086563f835a86cf1fb5d354670d9cdc2bb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc764f88e569c73a85adb5854ad651b2f8b96fb66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc76d536324f8aa9b40d3fccfb176257a60634f8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc841d75b5a7e2096ab72d8f91cdbc933dfecb97d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc87cab79758ba22261760eedd320fe9247bd46df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc95358cf4190b95b5c53108eef7b42fa378ec459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc9e3237bc8fc397de79edc7d7b1a6a38c786ebf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcb35de9c749b85f66433568f364bec66186bc5bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcc6075f4d8e8889cb9a924b468e9c048dabf3136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcd17163bebc6f9877bf1dabcef429374ca0ddfe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcd304fa5b6135fed82b7a10e0dfa31fd56aa24e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xce68cea51c7e91ae6b663b0b178e7e72da408dd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xce7b4cfa6060fd4b8d5e200ce3f3144e3036e3d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xce85405123ed0dc2596b4fcb9a2fe15bc59ff886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd1b84777dab7b58f8c16e7110bf5ec6da66af7fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd25ab643db2e503d5cca0f007037155d16a895ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd3062e9171aeb354938345f78432b93c88126b12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd3ba2034821785647b27e17355d66d244d170c8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd4b71c2034964a9bd207c39383fc52ab2816e622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd4ecac06ffca5ea5a71cb65876afd61bf4efac62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd55eb4364d56609dba70110fad162079ab8effdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd605ed1f13487c9d0c363525cfdda03c8fd6550e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd636b635630c42a474858b877ea2324afde796d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd651d9ca148a69e939eac8c091c0f77f9dd5ecb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd656aab7d3d9bdecc9ac4b8275d42e2ffc3ba235` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd7af8beb7f12db0d4d6dbb79566d22bc3a06893f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd8d54a8058464dacb72aa4844d94185edf8ba9f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd964ba5203e3d1817b83b6b173f33d058920d0f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd9a33b99de38ebc5ee8c85c2c0a1fe44102bf0ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xda30358f9437cba57971eb26d9520c9cde2fc90f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xda57b89dabd84422e7be3b40d55c69d31871031e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdb77bad833f858af925ecebef4f9bda971ee4640` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdb7851413df88fbce0040ece22e798269f9affda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdc1feca3181c5075d78a57600834b57b476edc54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdc514b68e0791a48ebb53c90ea3cdda90b1c9069` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sepolia | unit-389063 | `0xdc5558c2873c6375d5a90551c9d0f853794d357d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdd0007713cb99564b7835fd628a1718e8f9f9785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdd4eb80ade94b1c8c2e28fb5fff926eaf3c3b6b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdd8bf5aca0579bee7e6cd20ac7683e279a5f7d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xddeb745edca94fcc953e3dd4c8596698b8c17eb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xde6814208eca9c41754e4a9e301e3395c7fe17bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xde821de5fda82167e53e9467071597f3dcd24648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xde9735d190308b5a2b8660c9721d50a817e1467c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe034cfa4a59cd1e9cf223f5d42eb1cf498c0cac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe045008104f25c25e927319f7dfd707db009cdb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe1a8129125ecb078c0fe6870810072b4e4d2a6b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe22a6e503520f2d9332ab62878512542af8392ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe23819fc73a54f03dddc2110cd8c8901ffe29fd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe33233054ef8df427aceb3d34ef95da91c6c5e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe3987c38ad1b7d52499a81fcb66f8c0d1fc5ee5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe3e0511eebd87f08fbae4486419cb5dfb06e1343` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe511b3e5ddc2bda33b82f3c37ffcd0fb5b83be38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe53ec3b651eefa922dcc80c70426764af4f7efc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe60ffb5037ac31603b1aedef440ffad088df0a17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe65e4c75df3c446f477a0f1f2909fc2c49d5e238` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe68768918981a8645043663d480ad76564e2bf1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe6ed659ddcd458ffc8fbc71016649371c3c256e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe792f5bfb3b8829a127d1c286d3c269a976f49c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe835ce960da9c034c8bd47381453012a92538199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe8adaae9224fa971150a94c7f001bbdae83e8560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe8dc5dd0fcd6830f905a73236942985346ee67cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe94917bd8c51c91db36ec28fbab326d115ecc95e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe9e604214a052480f217691ed0644ae9b74c65aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xea9e4acfabd70eaef81bef8afdfe3b488d5e3895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeaa95421a1811e61a3ff5b8f34e855fd28431eee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeb7eceb468b6e74663a5ce8e6583f2e0f082d8e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeb9ad3ae726e0090286ac0550be5368b2b74a6cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xec5af17a97a0053ea8f02ebc30aa370e7fe8b539` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xecd71b971525929d64c3dd9bd78b4a75a82dea26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xed93e6ec680028be5725ebfb68496189baf29340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeddf18fc03fe2db2889e5213e7894c603466f9ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xee31ca19d3bd516acef9cf29817b54d84808bbf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xee6c75a9c1590dbda96be6fd299882423d11f791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf03fe2530e5cf0586819acc9b4bea7374b47a818` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf0cde285e536f96caeefd86baba88572009a90f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf0e88c15c21ffd116f3080aa2117a8631ad2edb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf1ea793d670cdc6ae3c1882bc1973d1385035795` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf222281578ea0dd70665339655339b86e06b1efb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf462eb47c6c4d677f0444735e6dfbe437b8a5ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf48bf6594815f5dbf811028daaaab44d4ea7d387` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf499dc9ae2fe6083bcd633075923df43890f9647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf54c7dee29a09a6f3af7e246a7fa03c552eadb2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf6127271211097a72142916c0cff507061998b2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf614ed3501a615a4d04f171f97f44f920da35ff8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf637ee2b9c698eafbda62189d64ebd42933ea7b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf6711d6eb899455c1eed192c1bd0c721b766b00f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf6a9d3b42615accc70a4e60b389c851c8fb1524d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf7bab29e5b3d99c505c05f017f5cf4e66b54b67d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf82d02375054905776072bab574cf47d3456f9a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf83290a3610615b4744ab4cbcc2b0992a24f28b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf874a08f00d8a8341256ac8dd9876a2a83f80914` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf8bceff8a317226af2d7adeac9a2e85fceaa9372` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf8ced249d0399e94a34bfe8f71162940dcfdc0a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf8f07f894b73d52a9e0206a5dd1b27b2ef95d796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfab0603f38432a72a83df47effd40f16e0f411f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfaecced33ce7be6f09e0dc07e896f130a0ddea9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfc2377c8b2735d0985c3cb8e819ff92b3d8cfb37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfc626c5b25e0f1763a970d9becd1b3e13cedd6a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfc8f34fc7e94c9728450a9785d488420a30f83e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfcb963add99bc379d3983a307bfcc450548bc41b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfd361576d68645dab34a7b9538d847069c75aa55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfd498a444815bfe9136bcfdb00dbfde5d0582f31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfd9f6ec009ed9770082e55fa3df0337048cc9566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfdf0f1c4df891732b586a85f062b7e8ebf65c428` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfe0080d619ba0df877560f60ae117e7634819116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfe6b7b0c497f990da59f334e5dcba3e3876d062a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfed9395e6ac28282af973649abaafb3148ab1ab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xff74cc5853aafccf6baebdae04e9d993f5e8f38f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 531
- Live contracts: 0
- Unknown liveness contracts: 531
- Source-verified contracts: 29
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=12, contamination review=1, source verified unclassified=16, unverified unclassified=502

Showing first 200 of 531 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | BLens<br>`0x65222d72f13860913fef03f088c385cbfc11a50c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| candidate review | BLens<br>`0xf21acb3c2e8418fc5466bc794f9970df7255ae28` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| candidate review | BorrowerOperations<br>`0x874a8ee5b4cc0b9973c7c002fa891fc28666caa9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| candidate review | MultiTroveGetter<br>`0x8836b66727bbde25974110442bb46b7a4805b36c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| candidate review | MultiTroveGetter<br>`0xd74dffdc614b84610329af4707d8dcc484c735d0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| candidate review | PCV<br>`0x097f1ee62e63acfc3bf64c1a61d96b3771dd06cb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| candidate review | PCV<br>`0x1a4739509f50e683927472b03e251e36d07dd872` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| candidate review | SortedTroves<br>`0xa5626cba9a4448019e73ce59784bd22736986711` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| candidate review | SortedTroves<br>`0xe5ada07ace9412a623b0a282cd67d16a3a094e17` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| candidate review | StabilityPool<br>`0xa18ab4fa9a44a72c58e64bfb33d425ec48475a9f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| candidate review | StabilityPool<br>`0xf6374aefb1e69a21ee516ea4b803b2ea96d06f29` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| candidate review | TroveManager<br>`0x27d7d02aed6c4f95ada2faf02dccb9666d3abb8c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| contamination review | TellorCaller<br>`0x0278ac7067f66a66a91466cd420f6f8efae15c32` | non_address_book | unknown | unknown | verified | n/a | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| source verified unclassified | ActivePool<br>`0x4dbcb0cff525b91e8b9d18b224c1b45fef008549` | non_address_book | unknown | unknown | verified | n/a | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| source verified unclassified | ActivePool<br>`0xe922b5591da479a559b25261bd6dc8f89ca1a29d` | non_address_book | unknown | unknown | verified | n/a | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| source verified unclassified | CollSurplusPool<br>`0x3bec529c86317c64305dc161998fb7f40078f200` | non_address_book | unknown | unknown | verified | n/a | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| source verified unclassified | CollSurplusPool<br>`0x67dbd2ad541c61d37f17b0515d2e452e04597a36` | non_address_book | unknown | unknown | verified | n/a | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| source verified unclassified | DefaultPool<br>`0xa8bdab0f0d3f5cd04d29df5f4ba6b43d7cdb7ba9` | non_address_book | unknown | unknown | verified | n/a | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| source verified unclassified | DefaultPool<br>`0xbe037954b419676904117f0d7d7e15f78ff1bf4b` | non_address_book | unknown | unknown | verified | n/a | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| source verified unclassified | GasPool<br>`0x34fbfd06cb537abd1a75e91a9cf7f5b61b47eca6` | non_address_book | unknown | unknown | verified | n/a | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| source verified unclassified | GasPool<br>`0x8a7c0b18fb80bd0a1d3530262b15264278e5f64d` | non_address_book | unknown | unknown | verified | n/a | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| source verified unclassified | HintHelpers<br>`0x2249e86a4b99eccc081600c11b2b30ff64202f55` | non_address_book | unknown | unknown | verified | n/a | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| source verified unclassified | HintHelpers<br>`0xf3da35dd10ed653fd66eb03d349edfd139521df5` | non_address_book | unknown | unknown | verified | n/a | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| source verified unclassified | PriceFeed<br>`0x684645ccab4d55863a149c52ec3176051cdb732d` | non_address_book | unknown | unknown | verified | n/a | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| source verified unclassified | PriceFeed<br>`0x83ae3931c5d03773755311372c0737f856657a43` | non_address_book | unknown | unknown | verified | n/a | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| source verified unclassified | TellorCaller<br>`0xd1acc73e5617ea6a4676c534b266193ac633dea2` | non_address_book | unknown | unknown | verified | n/a | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| source verified unclassified | THUSDOwner<br>`0x033951c469e54ef19be43b19c70a4dd273026468` | non_address_book | unknown | unknown | verified | n/a | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| source verified unclassified | THUSDOwner<br>`0x883fc0b2ef845603a5c9012172e7f8c34c28d632` | non_address_book | unknown | unknown | verified | n/a | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| source verified unclassified | THUSDToken<br>`0xcfc5bd99915aaa815401c5a41a927ab7a38d29cf` | non_address_book | unknown | unknown | verified | n/a | `0x49e3c5891588ea01fca974795c8d704a295f4d2b` |
| unverified unclassified | UnnamedContract<br>`0x3e8640574aa764763291ed733672d3a105107ac5` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| unverified unclassified | UnnamedContract<br>`0x9d39a5de30e57443bff2a8307a4256c8797a3497` | non_address_book | unknown | unknown | unverified | n/a | `0x8de54b1cefedeab1766b947c7d9a9963436e8fae` |
| unverified unclassified | UnnamedContract<br>`0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| unverified unclassified | UnnamedContract<br>`0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| unverified unclassified | UnnamedContract<br>`0x004faa5c1178cd4ada60d9872c8bfab6c719db21` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x01ce632bd4777e8fab4c2c100798bf02bd9c1252` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x02116e253536945f1dec2d0772c0da18eb5e9633` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x02326f0b6db4c99aa044e1230959c5c4b3342814` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x027fa1adb4cf67558112df7c4f83c6cfe9e0b7ad` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x02cba6d77cf9fb019e322c55b34c9d42f2ef4d74` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x03deca18e6d880af85f595d73f90d1486d236bbf` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x04538fe2c481070f788b0d985f48bf986a6597b9` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x045f494e29b54c215bfc9af74d5328f674897d09` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x0652c020ef91023611cccd65681c9beda82bb1d0` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x0672276d7ac52afa6e75acaa20a3f05902173897` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x06fa185dd0b36b9ed2e92e5e26d6b20a2b7d61dc` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x07387fb7e2dda7de543a0167553bb5aeae32437f` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x0754935436b7dc24b62bc8a01054a108a784d0f8` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x07f40dbc0644f3895776816823b7a745c31989b5` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x07fcf6368d34d430aafdc64435517842775fbf1b` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x089c01a3ffbefb60a27c2dc8aa7e792466effc6f` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x0961517805a0aa9e995a5ff18912de90cf3c0468` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x0ac38cf6e4661138c2a0d88e52f2de6ea21a7c6e` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x0ad2fc8a77c6527df41083bacd4efd359cb9c4f3` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x0b82e51164720543db3fb13043876f37e9a19a4a` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x0b8b549553ca9b7dd59833e4e9285d6566a08321` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x0c5e36731008f4afc1af5da2c4d5e07ee4a3eb69` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x0cedd8265d65bf770198746707a21c997252b5b1` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x0e5aeae060ddbd6af56c5fb75912a2f56fa6c09b` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x0e9e65b117604de16e549efcd880341f9e9fe626` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x0f092e3bd92751fdae3765bce3f6aebe5881c499` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x0f0c81ece084b72cd8d0f667f2636ec75c342e70` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x0f19436cf72d677cc65cb7275146fa7012da22df` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x0f68fa233e72fdd1189bc4d0e444f11e8b9a69c7` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x0ff2612e09df8b26047c0dd8a9531d42e99bb8de` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x10ecbdd96bd804d4fca1183b7d72c8f0b2176a45` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x1195d3689413291c1a24b4343a5e69e4e9062607` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x14647aa8a7e1c43382b9c00d873c3df2a6b3766b` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x15e316bee71080313928bebe54842aa072afedab` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x16917a72a7ab3a93a763be1dc19319de68824016` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x16bbc1e7ea567895a2a3f39cfc48a2474cafe4f8` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x189f188436b3b6d53f33ca68bffef77548dc328d` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x18ece0538fc831f5de4982d44460c15f5974e295` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x193096824f7618b49e8742651d9656e977c756d1` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x1943a53b7e43421373f6a72c9ac7b939c197ccfc` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x19da265a76afe0f24918025481521d7cc1d071c7` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x1a53759de2eadf73bd0b05c07a4f1f5b7912da3d` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x1af278ae93ee5b47a4bb245d1851e41a0118883b` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x1b11f1f1b7b9e96c236e50e29fea715dc01bf3f5` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x1b5e4ba92e0b8c98f2cceadfab1d6791004fe752` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x1c19bbf9afafe5e8ea4f78c1178752ce62683694` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x1c7752a30fb5155f8118864e0e1709bebbf48300` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x1cc0cd6dd52820d1b7dc6155ab1869c69494fa27` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x1d489eb3066786738df2226e94bbc85466d3e136` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x1dd66d068a8489daf29c591e6cfc0cf70269bc73` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x1de482ba0b4d2b9494aaa51534bb3526e3d21a7e` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x1e9e56acdb2987dce23eb6e751c22d4f89296a06` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x1ecd87c8d510a7390a561ae0ac54fbe7e5125bcf` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x1ee56002c2fe115314ce197e19e46d25e19e8d1c` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x1f6d618a8ddc71407d71f471bb33f50af7d89ced` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x1fb86047844611a307978051470abaf5dbfbd741` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x20faea18b6a1d0fcdbccfffe3d164314744baf30` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x21455e7cd821c1f54fe545a746099bdbe82914f1` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x219b0b14b961b703f5cfd07f83c9d911f181e2ae` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x21eb46af48705a52f122931ddb8e9df036d8f2c1` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x22647ffae391540d584599818ca22fdf18890753` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x2278caae0009e8a325a346fea573ef23c5756dbf` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x2289c922c94da6bcf0ec9195ae54c45ae4235faf` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x2375902cfd686ec51a652d8da2f4fab6e240b604` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x247a726c536986c3ff3044544403b88af7b131e3` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x249dcc5268d127380e333e392c1e544321eb3efc` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x253f91f821516c2f83f76ede65d0d6a7ae8edffc` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x254439dd2b841e19161bd050d4805029196e29c4` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x25965984dd78ef19e3795901717ff3b2dc72c646` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x25c5af106c04e17d7097617c5d74e23717fb6286` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x262ebc86de40157f2c68c4f0eacb6e3a3f942c67` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x26ad7515f34e9b15ba5827302433d33fc5004d16` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x26ccaaca86f43bb081198fccec6578ca9d525412` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x26d987d08811ff7143f335d42aef412fba2c0506` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x278d6eab8c25f2b5fc66f468e747df6fbaa532b7` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x288979ff4099b443f2d908de927664e4431aa80a` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x28e44fef4e6c35a901594bd2cd26e9f298bef205` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x2906b95b3de35acd019b757b53405ec9e6996ff2` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x2a077044343e893a68e4a3d186c24baab6d97505` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x2a2b232b189fc03bd918d547e74635cca1bbfa0c` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x2a2e6c3b5b135a6128a9ef454a058c1f9dbfab44` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x2a4ee23bdedfc5f15f4844423f6ac9e30f26606c` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x2a5a20ecbb1b5dc693234a839c2ea1b86c1fbaf1` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x2a7d373b22783720d4f6a27cbf34b638c896d6c0` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x2bb407686ef989044cb3b2bbb51ecabdffae827a` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x2ca5e6f310f96f6ebd0e5fe9d1576d78d64d4b23` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x2d1e91e1a1109baef8e15b25d517c516a70e3b5c` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x2d40250ad5dacdc8350a1b0a3975bdd8473bf3f2` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x2d95a74936a9be6848e12f0a4b0f6e295e3e15ce` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x2dee9e2ac7c361ab50c5d19111d2b60743c9e9b3` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x2dfc89675ab5fb5be7c2a86d373daac3e795fc25` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x2e62fd07dad85dbef9661981e3ac442b9d47c480` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x2e6890750a18b7570c14934d1fde808933fe9e14` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x2ee9f779850c8a31c7d77af0b8d0c91af2ea25fb` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x2f345c0c5af45728f00824503a676811e289b1f0` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x2f80d5be01395dc7fffcaf5e953e35a5b062654e` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x2f85e597bfb6e41242e6604dd95ea2ec3e8ecd63` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x30de8b7ef1c21d428f3e598456851c6bc0f8033b` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x30f5cfcfec6626f52fb254fa70fe6c6713d521c4` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x32498b20c542ead1207006bdae8d9d0085c6cd39` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x328c957c4d696fe340bfffd0418ae99540bee5af` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x32be1eab30ccf66779cb67b92cd275f25870a925` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x33c8eea7bc7b160742a5b373b1e2e16d7481a51e` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x33d7816a1c356f2d36c8cba5d449f9c46306f818` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x3430e9a9d3b0268285e760615af45d6f64bb97b3` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x349fba7252ca923518c4c0ab421d1d1cb020584e` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x34d198f215f314d4e8e5c135041ca928e44ef77b` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x359908facaf02791c7b91f7432b97784d00d5261` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x35b2e0425fcb77644ac626aab5e0ff6d43a27f2e` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x35c9a33ab5b309ac02533c14888e1acc19dfb25e` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x3601abdbc476ffa3d733f73c6244dc064b1ac449` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x367c502008004dcc0c08a55ad46670248ea9ab76` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x368f4ead1fe2e6b4bfa1f1384184b83f59a5dfa2` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x36f83562569357cb602e8a8af105e51ebc101d78` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x38cf632a41411e45d1c55a8f8e2586c8a69b2bb1` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x38f11874ac1f4ebc7fab2da9aca0efbd7fdf2d6b` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x395bb82a39503439834c0b751b8c4bd317d1125a` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x39ab795d11fcc6ce1c340fbdc308cf1d42ca8f86` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x39db577590b48d0df027e3adbea0662ccc296089` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x39f60b25c4598caf7e922d6fc063e9002db45845` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x3a2fa1927154749f70d065d120618aebe52c8566` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x3a9f4baf96b03f6b1b5c93628927266af68495cf` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x3aebdbfb9978fed94de439d629d594060d3835c7` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x3b1d0cab99ad9cb790efdf7cfa7e4180d09c1ed5` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x3b515509d01756832d1fe455761bf26c5e238679` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x3b6824c8a29d6b46dc4cfc4b82c9925b7516c232` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x3b8d5500ad6dc6bccde4fe352254b12479369f70` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x3bae32be0b96ba0cb2214bef6185fa81842af3bf` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x3bc9a80a3ed44a9d14162992cce040efac5a3682` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x3bde77bf345de030cee100e478dc58b4e54355b6` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x3c5afda36026760697f8a2fcb22dc26ecd4d7cd5` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x3d0b87f775b8bf2e7fe809c6414ef211b352d2f9` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x3d4cb85c0e3c5bd1667b7e30f3e86b3fab878ff8` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x3dd2c0413f390cc4f5f41804bb41b9cb8b2dcb04` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x3ed24756fe3ed03448ddd1324d76a73193a9a79d` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x3f14399dc2379ea0efbaddeb69a713d8c97e8900` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x40001da279b176230d4593179689a9628ce5e86f` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x413889be591b5b24ee75bbc828a389b214ae7a2a` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x413ff6bb6e12df17d99c1b12cbed276c51eac900` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x4190107e77f049d774053e29077bb51c3c853a9d` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x42873205b36101d84e3ced5d055054beacfa7f0a` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x428f669699bafaa29f9dfb454a35a4326270e0e2` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x4290043b97e1e08dcc560fdc57bb979c55760966` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x43047213fa758bcb4d693138435eaf7a280aa480` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x438e2a4d97916dbf86882a17b4eb5b71e73988d9` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x43c502edb524d5a1e8813dcfc6c7ab4012deb958` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x4520b9fc4e325e2421434b60da408732d18bc7c6` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x456b96249ed8d1e77e91d8dbc764f374ca49b5d3` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x45a129c6f7043e6702c412d693aa5bd2e9ed86ce` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x461e2ff959ab71bc6c1fb3b699ffa30f2bb1e5c6` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x4621a14bbb5a53f79ea532bdc032b8acc383b153` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x463d180865c0f808d300c7caaf6e4227caabd561` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x465445cc704db1f2d2084d5751e03bddbfae0b06` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x46868fe71d456c39d7cab19009d5d0a352c13d5d` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x46abdf5ad1726ba700794539c3db8fe591854729` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x47177176beec4182f4b26fd91f02642f2370ee41` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x471ea40981d278fb3cb55587e94ac549aad1aca9` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x47316ce67c30ded05bcba2a26176c83963936bc2` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x48f66fcfe86552d46d5c14ff23ef6825fd997596` | non_address_book | unknown | unknown | unverified | n/a | `0x6e80164ea60673d64d5d6228beb684a1274bb017` |
| unverified unclassified | UnnamedContract<br>`0x4918fd33a22e7e2948b7444cbdd68efaa9e6a087` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x4947243cc818b627a5d06d14c4ece7398a23ce1a` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x49a6572e06ae805bb4d021acb198f197ad900edc` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x49aff37f7d4e0a0ee54d8ca3477fe78025764519` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x49c7cec3f1ae5bfcddf03fd93d896c7438379059` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x4abe632d4fb69b895a242616b09c5596d6d8de7f` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |
| unverified unclassified | UnnamedContract<br>`0x4b2ba566706f04ee23c9209da56a08f77e4a6254` | non_address_book | unknown | unknown | unverified | n/a | `0x68ad60cc5e8f3b7cc53beab321cf0e6036962dbc` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audits](https://github.com/mezo-org/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2024-04-19 - Thesis Defense - Passport contracts.pdf](https://github.com/mezo-org/audits/blob/main/2024-04-19%20-%20Thesis%20Defense%20-%20Passport%20contracts.pdf) | Thesis Defense | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2024-10-18 - Halborn - mezod.pdf](https://github.com/mezo-org/audits/blob/main/2024-10-18%20-%20Halborn%20-%20mezod.pdf) | Halborn | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2025-01-31 - Halborn - mezod.pdf](https://github.com/mezo-org/audits/blob/main/2025-01-31%20-%20Halborn%20-%20mezod.pdf) | Halborn | Audit | 2025-01 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2025-03-18 - OtterSec - native bridge.pdf](https://github.com/mezo-org/audits/blob/main/2025-03-18%20-%20OtterSec%20-%20native%20bridge.pdf) | OtterSec | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2025-09-08 - Halborn - native bridge.pdf](https://github.com/mezo-org/audits/blob/main/2025-09-08%20-%20Halborn%20-%20native%20bridge.pdf) | Halborn | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2025-09-10 - Thesis Defense - native bridge.pdf](https://github.com/mezo-org/audits/blob/main/2025-09-10%20-%20Thesis%20Defense%20-%20native%20bridge.pdf) | Thesis Defense | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2026-01-30 - Thesis Defense - Earn.pdf](https://github.com/mezo-org/audits/blob/main/2026-01-30%20-%20Thesis%20Defense%20-%20Earn.pdf) | Thesis Defense | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2026-04-08 - Halborn - native bridge.pdf](https://github.com/mezo-org/audits/blob/main/2026-04-08%20-%20Halborn%20-%20native%20bridge.pdf) | Halborn | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 10 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [30121] Audits — no match: The provided text is a GitHub repository README listing audit reports by date and component, but does not include the actual audit report content. No specific contract names, source files, or scope sections are present.
- [30123] 2024-04-19 - Thesis Defense - Passport contracts.pdf — no match: Extracted from the audit report header and scope section. The report has two dates: initial report April 5, 2024 and final report April 19, 2024. The final report date is used.
- [30126] 2024-10-18 - Halborn - mezod.pdf — no match: Scope lists files under precompile/validatorpool/ and x/poa/keeper/. Contract names derived from directory names: validatorpool and poa. IValidatorPool.sol is an interface. Audit date is end of engagement period (October 18, 2024).
- [30127] 2025-01-31 - Halborn - mezod.pdf — no match: The scope section lists files and directories, but no specific smart contract names are identified. The report mentions precompiled contracts and smart contracts in the repository, but no contract names are explicitly listed as in scope.
- [30128] 2025-03-18 - OtterSec - native bridge.pdf — no match: Extracted contract names from scope description and findings. Mezo chain is a blockchain, not a contract. MezoBridge and BitcoinBridge are the only Solidity contracts explicitly mentioned.
- [30130] 2025-09-08 - Halborn - native bridge.pdf — no match: The scope section lists files but does not explicitly name contracts. However, the Introduction mentions 'the Solidity contract MezoBridgeV2' as in scope. The precompile file IAssetsBridge.sol is listed. The findings frequently reference 'MezoBridge' which appears to be the same as MezoBridgeV2. No other contract names are explicitly identified.
- [30131] 2025-09-10 - Thesis Defense - native bridge.pdf — no match: Only one contract in scope: MezoBridge.sol. Audit date is the final report date (September 10, 2025).
- [30133] 2026-01-30 - Thesis Defense - Earn.pdf — no match: Extracted contract names from findings locations and scope section. Audit date from cover page: 'Final Report // January 30, 2026'.
- [30134] 2026-04-08 - Halborn - native bridge.pdf — no match: Report is a fix validation report, not a standard audit. No explicit scope section; contracts inferred from code changes and test contracts. Date inferred from copyright year 2026, assumed end of year.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2024-04-19 - Thesis Defense - Passport contracts.pdf | BitcoinSafeOwner | unmatched — not counted | — | listed in scope and findings | no |
| 2024-04-19 - Thesis Defense - Passport contracts.pdf | OrangeKitSafeFactory | unmatched — not counted | — | listed in scope and findings | no |
| 2024-04-19 - Thesis Defense - Passport contracts.pdf | EmergencyGovernance | unmatched — not counted | — | listed in findings | no |
| 2024-04-19 - Thesis Defense - Passport contracts.pdf | LegacyERC1271 | unmatched — not counted | — | listed in findings | no |
| 2024-04-19 - Thesis Defense - Passport contracts.pdf | OrangeKitDeployer | unmatched — not counted | — | listed in findings | no |
| 2024-04-19 - Thesis Defense - Passport contracts.pdf | ERC1271 | unmatched — not counted | — | listed in findings | no |
| 2024-04-19 - Thesis Defense - Passport contracts.pdf | Proxy | unmatched — not counted | — | listed in findings | no |
| 2024-10-18 - Halborn - mezod.pdf | validatorpool | unmatched — not counted | — | listed in scope | no |
| 2024-10-18 - Halborn - mezod.pdf | IValidatorPool | unmatched — not counted | — | listed in scope | no |
| 2024-10-18 - Halborn - mezod.pdf | poa | unmatched — not counted | — | listed in scope | no |
| 2025-03-18 - OtterSec - native bridge.pdf | MezoBridge | unmatched — not counted | — | Scope section: 'The bridge’s pillar on Ethereum is implemented as a Solidity contract called MezoBridge.' | no |
| 2025-03-18 - OtterSec - native bridge.pdf | BitcoinBridge | unmatched — not counted | — | Finding OS-MZO-SUG-00 references 'BitcoinBridge::finalizeBTCBridging' and file path 'solidity/contracts/BitcoinBridge.sol'. | no |
| 2025-09-08 - Halborn - native bridge.pdf | MezoBridgeV2 | unmatched — not counted | — | mentioned in Introduction as the Solidity contract in scope | no |
| 2025-09-08 - Halborn - native bridge.pdf | IAssetsBridge | unmatched — not counted | — | listed in scope file list | no |
| 2025-09-08 - Halborn - native bridge.pdf | MezoBridge | unmatched — not counted | — | referenced in findings as the contract containing functions like attestBridgeOut, addBridgeValidator, etc. | no |
| 2025-09-10 - Thesis Defense - native bridge.pdf | MezoBridge | unmatched — not counted | — | listed in scope | no |
| 2026-01-30 - Thesis Defense - Earn.pdf | VotingEscrow | unmatched — not counted | — | mentioned in findings locations and scope | no |
| 2026-01-30 - Thesis Defense - Earn.pdf | ManagedNFT | unmatched — not counted | — | mentioned in findings locations | no |
| 2026-01-30 - Thesis Defense - Earn.pdf | BoostVoter | unmatched — not counted | — | mentioned in findings locations | no |
| 2026-01-30 - Thesis Defense - Earn.pdf | NonStakingVoter | unmatched — not counted | — | mentioned in findings locations | no |
| 2026-01-30 - Thesis Defense - Earn.pdf | Voter | unmatched — not counted | — | mentioned in findings locations | no |
| 2026-01-30 - Thesis Defense - Earn.pdf | Grant | unmatched — not counted | — | mentioned in findings locations | no |
| 2026-01-30 - Thesis Defense - Earn.pdf | MUSDSavingsRate | unmatched — not counted | — | mentioned in findings locations | no |
| 2026-04-08 - Halborn - native bridge.pdf | StateChange | unmatched — not counted | — | New type added in statedb.go | no |
| 2026-04-08 - Halborn - native bridge.pdf | StateDB | unmatched — not counted | — | commit() and CommittedStateChanges() methods | no |
| 2026-04-08 - Halborn - native bridge.pdf | Keeper | unmatched — not counted | — | ApplyMessage method signature change | no |
| 2026-04-08 - Halborn - native bridge.pdf | ApplyMessage | unmatched — not counted | — | Returns []statedb.StateChange | no |
| 2026-04-08 - Halborn - native bridge.pdf | ExecuteContractCall | unmatched — not counted | — | Returns []statedb.StateChange | no |
| 2026-04-08 - Halborn - native bridge.pdf | BurnERC20 | unmatched — not counted | — | Returns []statedb.StateChange | no |
| 2026-04-08 - Halborn - native bridge.pdf | BridgeOutMethod | unmatched — not counted | — | execute() method returns changes | no |
| 2026-04-08 - Halborn - native bridge.pdf | Contract | unmatched — not counted | — | Run() replays changes into outer StateDB | no |
| 2026-04-08 - Halborn - native bridge.pdf | ExploitContract | unmatched — not counted | — | Exploit contract used in testing | no |
| 2026-04-08 - Halborn - native bridge.pdf | EdgeCaseTest | unmatched — not counted | — | Edge case test contract | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x13916d0dab357dcbaa1600b594d62c641840686a` | NttManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5293158bf7a81ed05418da497a80f7e6dbf4477e` | NttManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xab13b8eecf5aa2460841d75da5d5d861fd5b8a39` | Portal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd9d920aa40f578ab794426f5c90f6c731d159def` | SolvBTCYieldTokenV3_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcdf7028ceab81fa0c6971208e83fa7872994bee5` | T | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 2 |
| standard_library | 4 |
| needs_review | 553 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 33 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, low=2, medium=1
- Match method counts: n/a

Zero-match audit list:

- [30121] Audits
- [30123] 2024-04-19 - Thesis Defense - Passport contracts.pdf
- [30126] 2024-10-18 - Halborn - mezod.pdf
- [30127] 2025-01-31 - Halborn - mezod.pdf
- [30128] 2025-03-18 - OtterSec - native bridge.pdf
- [30130] 2025-09-08 - Halborn - native bridge.pdf
- [30131] 2025-09-10 - Thesis Defense - native bridge.pdf
- [30133] 2026-01-30 - Thesis Defense - Earn.pdf
- [30134] 2026-04-08 - Halborn - native bridge.pdf

Fork inheritance lineage and inherited audits are included when available.
