# Agentic Audit Brief: Mezo Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 9 (0 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Mezo Bridge (`mezo-bridge`)
- Website: [https://mezo.org](https://mezo.org)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, bsc, ethereum, sepolia
- Contract surface: 79 unique implementations (95 raw deployments)
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
- Outside the address book: 17 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 48 of 79 unique; 31 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/28
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 51
- Unique implementations: 79
- Raw deployments: 95
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

### ❓ Unverified (51)

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389038 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389039 | `0xaac423edc4e3ee9ef81517e8093d52737165b71f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389040 | `0xc96de26018a54d51c097160568752c4e3bd6c364` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389041 | `0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389043 | `0xd7097af27b14e204564c057c636022fae346fe60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389044 | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389045 | `0xdd468a1ddc392dcdbef6db6e34e89aa338f9f186` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389046 | `0xdf6542260a9f768f07030e4895083f804241f4c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389047 | `0xdf708431162ba247ddae362d2c919e0fbafcf9de` | ❓ Unverified |
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
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389051 | `0x2de0566a26b74dcd501ff5c3b213bf5a01ac3ac1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389052 | `0x3a3bae133739f92a885070dbf3300d61b232497c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389053 | `0x517f2982701695d4e52f1ecfbef3ba31df470161` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389054 | `0x5581c79ac00164d04de090eb72a9b0b08f89643d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389055 | `0x6617c61355ca32141950b8f6610c40c613ca7f38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389056 | `0x6978e3e11b8bc34ea836c1706fc742ac4cb6b0db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389057 | `0x7205535961649c4f94e1b4bafbe26d23e2bbdd84` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389058 | `0x93c4e8eb2813fd3c13254c31b43a30a9ca9693ec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389059 | `0x9aa2e895abb717822fb72feeb64010db6739d720` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389060 | `0x9b1a7fe5a16a15f2f9475c5b231750598b113403` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389061 | `0xab940ce533883a521f467b872a8ed699311c7d86` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389062 | `0xb5679de944a79732a75ce556191df11f489448d5` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sepolia | unit-389063 | `0xdc5558c2873c6375d5a90551c9d0f853794d357d` | ❓ Unverified |

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
| needs_review | 51 |

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
