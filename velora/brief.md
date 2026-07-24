# Agentic Audit Brief: Velora

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Velora (`velora`)
- Website: [https://app.velora.xyz](https://app.velora.xyz)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, gnosis, optimism, polygon, unichain
- Contract surface: 143 unique implementations (299 raw deployments)
- Coverage basis: 0/9 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $226,515.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Velora. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, gnosis, optimism, polygon, unichain. Structural roles: 9 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (9)
- Contract kinds: contract (9)
- Detected standards: ownable (2), erc20 (1), erc20permit (1), pausable (1)
- Frameworks: openzeppelin (7), solady (2), permit2 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 41 contracts are derived from known codebases. 41 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0000000000bbf5c5fd284e657f01bd000933c96d`, chain 10)
- UnnamedContract (`0x00700052c0608f670705380a4900e0a8080010cc`, chain 10)
- UnnamedContract (`0x0927fd43a7a87e3e8b81df2c44b03c4756849f6d`, chain 10)
- UnnamedContract (`0x0a0d53b6684c7b32b4cbef5fe8483bfcc8406742`, chain 10)
- UnnamedContract (`0x6a000f20005980200259b80c5102003040001068`, chain 10)
- UnnamedContract (`0x0000000000bbf5c5fd284e657f01bd000933c96d`, chain 56)
- UnnamedContract (`0x00700052c0608f670705380a4900e0a8080010cc`, chain 56)
- UnnamedContract (`0x0a0d53b6684c7b32b4cbef5fe8483bfcc8406742`, chain 56)
- UnnamedContract (`0x6a000f20005980200259b80c5102003040001068`, chain 56)
- UnnamedContract (`0x00700052c0608f670705380a4900e0a8080010cc`, chain 100)
- UnnamedContract (`0x6a000f20005980200259b80c5102003040001068`, chain 100)
- UnnamedContract (`0x92ead5bacf6f0e995fa46ad8215a9b11f67ca241`, chain 100)
- UnnamedContract (`0x0000000000bbf5c5fd284e657f01bd000933c96d`, chain 130)
- UnnamedContract (`0x00700052c0608f670705380a4900e0a8080010cc`, chain 130)
- UnnamedContract (`0x0a0d53b6684c7b32b4cbef5fe8483bfcc8406742`, chain 130)
- UnnamedContract (`0x6a000f20005980200259b80c5102003040001068`, chain 130)
- UnnamedContract (`0x92ead5bacf6f0e995fa46ad8215a9b11f67ca241`, chain 130)
- UnnamedContract (`0x0000000000bbf5c5fd284e657f01bd000933c96d`, chain 137)
- UnnamedContract (`0x00700052c0608f670705380a4900e0a8080010cc`, chain 137)
- UnnamedContract (`0x0a0d53b6684c7b32b4cbef5fe8483bfcc8406742`, chain 137)
- UnnamedContract (`0x6a000f20005980200259b80c5102003040001068`, chain 137)
- UnnamedContract (`0x0000000000bbf5c5fd284e657f01bd000933c96d`, chain 8453)
- UnnamedContract (`0x00700052c0608f670705380a4900e0a8080010cc`, chain 8453)
- UnnamedContract (`0x0a0d53b6684c7b32b4cbef5fe8483bfcc8406742`, chain 8453)
- UnnamedContract (`0x6a000f20005980200259b80c5102003040001068`, chain 8453)
- UnnamedContract (`0x0000000000bbf5c5fd284e657f01bd000933c96d`, chain 42161)
- UnnamedContract (`0x00700052c0608f670705380a4900e0a8080010cc`, chain 42161)
- UnnamedContract (`0x0927fd43a7a87e3e8b81df2c44b03c4756849f6d`, chain 42161)
- UnnamedContract (`0x0a0d53b6684c7b32b4cbef5fe8483bfcc8406742`, chain 42161)
- UnnamedContract (`0x6a000f20005980200259b80c5102003040001068`, chain 42161)
- UnnamedContract (`0x00700052c0608f670705380a4900e0a8080010cc`, chain 43114)
- UnnamedContract (`0x6a000f20005980200259b80c5102003040001068`, chain 43114)
- Adapter (`0x0000000000bbf5c5fd284e657f01bd000933c96d`, chain 1)
- AugustusFeeVault (`0x00700052c0608f670705380a4900e0a8080010cc`, chain 1)
- AugustusRFQ (`0xe92b586627cca7a83dc919cc7127196d70f55a06`, chain 1)
- AugustusRFQ (`0x8dcdfe88ef0351f27437284d0710cd65b20288bb`, chain 56)
- AugustusRFQ (`0xf3cd476c3c4d3ac5ca2724767f269070ca09a043`, chain 137)
- AugustusRFQ (`0xa003dfba51c9e1e56c67ae445b852bded7ac5eed`, chain 8453)
- AugustusRFQ (`0x34302c4267d0da0a8c65510282cc22e9e39df51f`, chain 43114)
- AugustusV6 (`0x6a000f20005980200259b80c5102003040001068`, chain 1)
- DeltaWrappedNative (`0x0a0d53b6684c7b32b4cbef5fe8483bfcc8406742`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 41/41 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/9 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 41 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 102 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 41 of 143 unique; 102 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/61
- Verified + Unaudited implementations: 61
- Verified by bytecode match: 0
- Unverified implementations: 82
- Unique implementations: 143
- Raw deployments: 299
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (61)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Adapter01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9be264469ef954c139da4a45cf76cbcc5e3a6a73`; ethereum `0xbdd13a9dd364e5557e0710fc1d2ac145b5e8f3be` | ⚠️ Unaudited |
| Adapter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fa7a0e0ac0fa2c321e87429ff7351376af81304` | ⚠️ Unaudited |
| Adapter03 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x43dad56947b20d5808fdb5d0913639cdadc8cca2`; ethereum `0x79359292ffd5c3307084084b5b7c3e81d733ee98`; ethereum `0xe5993623ff3ecd1f550124059252ddff804b3879`; ethereum `0xe609aeab29245b235f63ddc23a34ed911524818a`; ethereum `0xe6a36f977844eb6ae1609686682698d20e4b0c26` | ⚠️ Unaudited |
| Adapter04 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x21ab8aeb35bfc0b3fd84ca810b0aa85938357be2`; ethereum `0x92bc947dbfc0e38990abc61e8b5177cc378caa8b` | ⚠️ Unaudited |
| Adapter05 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1555105ee707e19481a36e1fa67bf0480ef132f8`; ethereum `0x221cf6d7569b35726e73e5f329bad2ee3836c4fc`; ethereum `0x3329dfa55a40b450952fbe0203167ae6908e656d`; ethereum `0x4bdfff39a4b4f31a0b12a070d66b457e2366ba39` | ⚠️ Unaudited |
| AlgebraStateMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x23d574867597c7a980024d8b83a74b6ca6e08a7b`; base `0xe4b8d18bc99058151c7c0138e536013a48b45b2f` | ⚠️ Unaudited |
| AugustusFeeVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-395680 | `0x00700052c0608f670705380a4900e0a8080010cc` | ⚠️ Unaudited |
| AugustusRFQ | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395683 | `0xe92b586627cca7a83dc919cc7127196d70f55a06` | ⚠️ Unaudited |
| AugustusRFQ | unknown | project_anchor | own_supporting | 0 | bsc | unit-395714 | `0x8dcdfe88ef0351f27437284d0710cd65b20288bb` | ⚠️ Unaudited |
| AugustusRFQ | unknown | project_anchor | own_supporting | 0 | polygon | unit-395701 | `0xf3cd476c3c4d3ac5ca2724767f269070ca09a043` | ⚠️ Unaudited |
| AugustusRFQ | unknown | project_anchor | own_supporting | 0 | base | unit-395719 | `0xa003dfba51c9e1e56c67ae445b852bded7ac5eed` | ⚠️ Unaudited |
| AugustusRFQ | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395708 | `0x34302c4267d0da0a8c65510282cc22e9e39df51f` | ⚠️ Unaudited |
| AugustusRFQRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64f72fcfd9c624e3e471223f043060981c83aafc` | ⚠️ Unaudited |
| AugustusSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: polygon `0x64f72fcfd9c624e3e471223f043060981c83aafc`; polygon `0xbd09504819a604ca503f30d2cc9d0ef4c76dac33`; base `0x59c7c832e96d2568bea6db468c1aadcbbda08a52`; base `0x793a0bb089c6787e84277f08179dac594edb9443` | ⚠️ Unaudited |
| AugustusV6 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395682 | `0x6a000f20005980200259b80c5102003040001068` | ⚠️ Unaudited |
| AvalancheAdapter01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 8 deployments: avalanche `0x23e9bb567d664ac1f4f3b8f5f3fede03bf27e6b0`; avalanche `0x2df17455b96dde3618fd6b1c3a9aa06d6ab89347`; avalanche `0x5b99094c3c2129f17b78ce5ebd1cd8adb887b340`; avalanche `0x5f7cf10348a7d53709f13bba1d6b47c2628c1bb9`; avalanche `0x6e8b66cc92fcd7fe1332664182beb1161dbfc82d`; avalanche `0x749015effb59fcb9b826d854f3ca5c5c2f192147`; avalanche `0xb41ec6e014e2ad12ae8514216eab2592b74f19e7`; avalanche `0xc79cf51b0951418cb7b010e38c3ceb8801e53184` | ⚠️ Unaudited |
| AvalancheBuyAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe92b586627cca7a83dc919cc7127196d70f55a06` | ⚠️ Unaudited |
| BscAdapter01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x27eb327b7255a2bf666ebb4d60ab4752da4611b9`; bsc `0x7ee3c983ca38c370f296fe14a31beac5b1c9a9fe`; bsc `0xc9229eec07b176acc448be33177c2834c9575ec5` | ⚠️ Unaudited |
| BscAdapter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e09f0f5a1d1de32b56ab8d16a6f687ed763e0e8` | ⚠️ Unaudited |
| BscBuyAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf52523b9d788f4e2dd256dc5077879af0448c37a` | ⚠️ Unaudited |
| BuyAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x737e642eec6e5bd675022adc6d726eb19ff74383`; ethereum `0x760870be538e7b4e2110e2890473cc17adb1fdc1`; ethereum `0xd8b2760230bbf3aa9777e175ec1c9720eb499eba`; ethereum `0xe56823ac543c81f747ed95f3f095b5a19224bd3a` | ⚠️ Unaudited |
| CumulativeMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 10 deployments: ethereum `0x2cf552a87adae03b1f53a760f81c0c0b5fb36892`; ethereum `0xea6cc6949c1df315af93ab82d567a8fcee41016d`; optimism `0x26efeb368e19eac38d08340f3f30594f798458d8`; optimism `0x73564a4854b826d14b60c5eb0f6a16dc309231b1`; optimism `0x7e202c9423a6e4ae4c0458f464a0391dd0d1cd4a`; optimism `0x7eda336bab052fef04e5b9216d2e97688483a5a0`; optimism `0x963aed2289863fcab0880b0d6dfd56404b550ec2`; optimism `0xa769ddfacccc894312788f48c0504004fb211686`; optimism `0xeb1ec6c0bfe5682cdb93977e429c978eae4c30f1`; optimism `0xf2eb5d826d97d8abc1751abd52807b2927d70e2a` | ⚠️ Unaudited |
| DeltaWrappedNative | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395681 | `0x0a0d53b6684c7b32b4cbef5fe8483bfcc8406742` | ⚠️ Unaudited |
| DirectSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0xdffd706ee98953d3d25a3b8440e34e3a2c9beb2c`; base `0x3a43e3ac12b641715fce97ccb50bbde06b22ba24`; base `0xed4e008425575b0f9f2cf3eb3ba3554706d3c311` | ⚠️ Unaudited |
| DistributorController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: ethereum `0x8d8673eb599610518a13d9e99daf7d8426897cdb`; optimism `0x17e29ff036f3a4feb18393cc0df53619be3cb739`; optimism `0x23e4afacaee020b0deac30ebfead7b01b1fb0e5c`; optimism `0x75d199efb540e47d27d52c62da3e7dac2b9e834f`; optimism `0xf455d404254aeb8003f5bfda8d4c2716822db328` | ⚠️ Unaudited |
| DystopiaExchangeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5b39e7a1c706464f5b3956b21cd22a43f0db0eac`; bsc `0xc2b5a8082d2e1867a9cbbf41b625e3ae9df81f8b`; polygon `0xc8db3501281c192ffe9697a1b905b161ca0cd64d` | ⚠️ Unaudited |
| ERC165 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: ethereum `0x2a1b5da9e380314602579ad269a99981dd01409c`; bsc `0x0310983446288e08f1dd973148f194a685ea551f`; polygon `0x3c51175d822c6f7984919380f76a00134134dcfb`; polygon `0xd76d3fff6ddb8af2647f198c0b882d43fc1b7f32`; base `0x23f4129a91c3ebe4eddc00f34071a2cc6315338a`; base `0xc4401b1cfbacada8e90037bf9d0b22173cac9165`; avalanche `0xc2b5a8082d2e1867a9cbbf41b625e3ae9df81f8b` | ⚠️ Unaudited |
| ERC20BalanceProbeUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6904a375520a9d2a3e9ce781ed6cac0eb07e8fa7`; optimism `0xe37ea254c9486031e1e4ed4a55caf068584ccd1b` | ⚠️ Unaudited |
| Faucet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x793a0bb089c6787e84277f08179dac594edb9443` | ⚠️ Unaudited |
| FeeClaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: ethereum `0xef13101c5bbd737cfb2bf00bbd38c626ad6952f7`; bsc `0x2df17455b96dde3618fd6b1c3a9aa06d6ab89347`; polygon `0x8b5cf413214ca9348f047d1af402db1b4e96c060`; polygon `0x8dcdfe88ef0351f27437284d0710cd65b20288bb`; polygon `0xabb58098a7b5172a9b0b38a1925a522dbf0b4fc3`; base `0x6c33c7f6cbb4a428fe9ee31ca500a787c9f1525b`; base `0x9aab4b24541af30fd72784ed98d8756ac0efb3c7`; avalanche `0xbfcd68fd74b4b458961495f3392bf96f46a29e67` | ⚠️ Unaudited |
| L2StandardERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd3594e879b358f430e20f82bea61e83562d49d48` | ⚠️ Unaudited |
| MerkleRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x2a192c2b8342a4e5ada593ff93a10bd3997fbe99`; optimism `0xd57fd755f53666ce2d3ed8c862a8d06e38c21ce6` | ⚠️ Unaudited |
| MultiPath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 9 deployments: ethereum `0xb41ec6e014e2ad12ae8514216eab2592b74f19e7`; ethereum `0xbd7b550d2e7571383d84acf597a00d341e5c406e`; bsc `0x4f14fe8c86a00d6dfb9e91239738499fc0f587de`; polygon `0x2df17455b96dde3618fd6b1c3a9aa06d6ab89347`; polygon `0x45d70baca3fbf6d3c518c9a9d7cea87b042322e0`; polygon `0x7719cc060a3348229db764c9464b7738e4172e19`; base `0x8eeeb2e3e9748adab1317693c448701a2b783f54`; base `0xd5717e078bfccfcf8db4d8c280ac2e78f57159fa`; avalanche `0x0310983446288e08f1dd973148f194a685ea551f` | ⚠️ Unaudited |
| OnERC1155Received | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: ethereum `0x56a14a1954b5d5fd7c636a24137a93742ba708b9`; bsc `0xbfcd68fd74b4b458961495f3392bf96f46a29e67`; polygon `0x21f9a836fde8f9428aa80317272c85b0e0fbf9f4`; polygon `0xbe01391a514d332a0b949a74ae701102e018f421`; base `0x1bc9c77b2334879f411397911c7f8ce46037d2c1`; base `0x5648846a0dde832e6fcfec423cfea4a777c4336e`; avalanche `0x5e09f0f5a1d1de32b56ab8d16a6f687ed763e0e8` | ⚠️ Unaudited |
| OnERC721Received | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: ethereum `0x564b759c1a7976476649452e804a13b963610065`; bsc `0x34302c4267d0da0a8c65510282cc22e9e39df51f`; polygon `0x0e87b7d4a55b0c8fd3940e833c614dfc5e291550`; polygon `0xd3131a72256dce18ec687a33f30e7ee3989729b0`; base `0x3080d639341b62d870dc0a1220cd198c24b5cae7`; base `0x6152a41f6e8cab97a58d7cc8f07b1578006fa956`; avalanche `0x27eb327b7255a2bf666ebb4d60ab4752da4611b9` | ⚠️ Unaudited |
| ParaswapToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x200345a5821dd742bf135cb6520fd38a7e523e38` | ⚠️ Unaudited |
| PolygonAdapter01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x564b759c1a7976476649452e804a13b963610065`; polygon `0x88d392140498ded539c3b2a5a8aa428d1e0b5244`; polygon `0xa41b5ab708fe1fe11cd6121006497b8549e8a695`; polygon `0xe44769f42e1e9592f86b82f206407a8f7c84b4ed` | ⚠️ Unaudited |
| PolygonAdapter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: polygon `0x475928fe50a9e9adb706d6f5624fb97ee2ac087d`; polygon `0x74ef12c4acb03d131bb7cf2ff5ce7d03675d91fa`; polygon `0x97768fd3a529ee29b433cbb5e45e63f3bfff0a93`; polygon `0xad1732884cf5aab27b293707757a9b9011611be6`; polygon `0xb5e59e865fa40a17ecf87fb4111e91f8213bbac9`; polygon `0xc69849f77644d4629260e00e494d8cc8bb543299`; polygon `0xe56823ac543c81f747ed95f3f095b5a19224bd3a` | ⚠️ Unaudited |
| PolygonBuyAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: polygon `0x2a1b5da9e380314602579ad269a99981dd01409c`; polygon `0x40e11ae88a9402a34208d05bfb7e88171d2f58a0`; polygon `0x9aa1b161ddb7775dcd94a370ed7611182fee3ac3`; polygon `0xd7d3e2491cc495faaa9a770cbdc7535fd1446d8c`; polygon `0xdc514c500db446f5a7ab80872baf3addefd00174` | ⚠️ Unaudited |
| PolygonZkEvmAdapter01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x3b75cd9f8d2f88127655faa5bb3686baf4097979`; base `0x963aed2289863fcab0880b0d6dfd56404b550ec2`; base `0x9f77bb28e97f093aa6cbe37ce095c18605d98af2`; base `0xdf07baa012fde38fda20a49e1d9e297b0d08fa4e`; base `0xe6d078fc1220c72be812df6030e734e52bf4c570` | ⚠️ Unaudited |
| PolygonZkEvmBuyAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x8de036910e34b0d8447dd0d34c742636de1ddfeb`; base `0xaa26f55ac49caed6feea1a2b6884d92dd9bf8cdf` | ⚠️ Unaudited |
| PreSignatureModule | unknown | project_anchor | own_supporting | 1 | ethereum | unit-395720 | `0x0000000000bbf5c5fd284e657f01bd000933c96d` | ⚠️ Unaudited |
| ProtectedMultiPath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: ethereum `0x1120dd8772c1cbd4e3f0bc141ab1bc7eeafbdaf0`; ethereum `0x4f7484cf4db16782456d05e41ec6f31a8cc7e2d7`; ethereum `0xab8e3b12d71b248b6de1e688be6e1f80845e478a`; bsc `0x0927fd43a7a87e3e8b81df2c44b03c4756849f6d`; bsc `0x23e9bb567d664ac1f4f3b8f5f3fede03bf27e6b0`; polygon `0x0927fd43a7a87e3e8b81df2c44b03c4756849f6d`; polygon `0x34302c4267d0da0a8c65510282cc22e9e39df51f`; polygon `0x737e642eec6e5bd675022adc6d726eb19ff74383`; polygon `0xd12a55bbadac324f09674e58b500b275374cccec`; base `0x64c856fafe4c83a818514cbdfd661a3563a71b98`; base `0xbe5d5aa9e61b48ec6d81daf0b15086bd67465080`; avalanche `0x0927fd43a7a87e3e8b81df2c44b03c4756849f6d`; avalanche `0x9a61002219e354a6e02331a510f0651a6d31edf5` | ⚠️ Unaudited |
| ProtectedSimpleSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x5b99094c3c2129f17b78ce5ebd1cd8adb887b340`; ethereum `0x749015effb59fcb9b826d854f3ca5c5c2f192147`; ethereum `0xd37a6778e18216a13e920ade3dfa27e0c87dae6a`; bsc `0xa655d02670be0cec6b8b6b83c68ed5375a2f5028`; bsc `0xe75accea9386eae218e06f9855bbd876a130ea8a`; polygon `0x79359292ffd5c3307084084b5b7c3e81d733ee98`; polygon `0xa655d02670be0cec6b8b6b83c68ed5375a2f5028`; polygon `0xc2b5a8082d2e1867a9cbbf41b625e3ae9df81f8b`; polygon `0xdbd6f42489131a37cbeee082d53798b035e7cad8`; base `0x742ed90dc579f3a9c725a1a0a042f30e3cf77968`; base `0xf1a5e2dfbc536476c976ab35a2cbe1a17bada7a1`; avalanche `0xa655d02670be0cec6b8b6b83c68ed5375a2f5028`; avalanche `0xf52523b9d788f4e2dd256dc5077879af0448c37a` | ⚠️ Unaudited |
| PSP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcafe001067cdef266afb7eb5a286dcfd277f3de5` | ⚠️ Unaudited |
| PSPStakingMigratorV1 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81df863e89429b0d4230a2a922de4f37f718eed3` | ⚠️ Unaudited |
| PSPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbdba695be29a043881c74d288797f50e0dc4259` | ⚠️ Unaudited |
| RewardVestingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7cbb13197bd9e92ecad6adfd3a9d8e0fdda5fd23`; ethereum `0xef970b73e7d32afce0486387650a6ebece340fe9` | ⚠️ Unaudited |
| sePSP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: ethereum `0x716fbc68e0c761684d9280484243ff094cc5ffab`; optimism `0x6c33c7f6cbb4a428fe9ee31ca500a787c9f1525b`; optimism `0x8c934b7dbc782568d14ceabbeaedf37cb6348615`; optimism `0x8eeeb2e3e9748adab1317693c448701a2b783f54`; optimism `0xaee2b8d4a154e36f479daece3fb3e6c3c03d396e` | ⚠️ Unaudited |
| sePSP2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: ethereum `0x593f39a4ba26a9c8ed2128ac95d109e8e403c485`; optimism `0x26ee65874f5dbefa629eb103e7bbb2deaf4fb2c8`; optimism `0x7160f736c52e1e78e92fd4ee4d73e21a7cf4f950`; optimism `0xf1a5e2dfbc536476c976ab35a2cbe1a17bada7a1` | ⚠️ Unaudited |
| sePSPStakingMigratorV1 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x18e1a8431ce39cbfe95958207da2d68a7ef8c583`; optimism `0xed4e008425575b0f9f2cf3eb3ba3554706d3c311` | ⚠️ Unaudited |
| SimpleSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: ethereum `0x66c1c25d7d2bd4a32ed33501e202b275030f402c`; ethereum `0x6e8b66cc92fcd7fe1332664182beb1161dbfc82d`; ethereum `0xa655d02670be0cec6b8b6b83c68ed5375a2f5028`; bsc `0x1120dd8772c1cbd4e3f0bc141ab1bc7eeafbdaf0`; bsc `0xc79cf51b0951418cb7b010e38c3ceb8801e53184`; polygon `0x1120dd8772c1cbd4e3f0bc141ab1bc7eeafbdaf0`; polygon `0x2674a5e9fddcd775b466c312441942bd5278e513`; polygon `0xc9229eec07b176acc448be33177c2834c9575ec5`; polygon `0xe609aeab29245b235f63ddc23a34ed911524818a`; base `0x1d2fd92a1942a92a51198168efcd626ed441cec0`; base `0x50731c00e38eb1517ed08b7d9d9fe86bf790de4e`; avalanche `0x1120dd8772c1cbd4e3f0bc141ab1bc7eeafbdaf0`; avalanche `0xc9229eec07b176acc448be33177c2834c9575ec5` | ⚠️ Unaudited |
| SimpleSwapHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x63f96d5bfa348fb2b3a61f183c88c5ef47dd3b76`; polygon `0xef13101c5bbd737cfb2bf00bbd38c626ad6952f7`; base `0x92c08987a9f150694c3d088e9085004d8a8bcd9f`; base `0xa769ddfacccc894312788f48c0504004fb211686` | ⚠️ Unaudited |
| SimpleSwapNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: ethereum `0x93d2611eb8b85be4fdea9d94ce9913d90072ec0f`; ethereum `0xc7f71c1067a29a4bb96810648969eafb90b98dc2`; bsc `0x9a61002219e354a6e02331a510f0651a6d31edf5`; polygon `0x610ad0790549f652d35870f93675cfdea15cc06e`; polygon `0xcfccd548d2c20a6873dc8c2f7560d19227ca2da7`; base `0x2a192c2b8342a4e5ada593ff93a10bd3997fbe99`; base `0x97b86e4d651ea6bc9c68f5bac2000ce29b79c4eb`; avalanche `0xd81771fb483ddee2b58cbf1e712483407cfcff2f` | ⚠️ Unaudited |
| StakedTokenBptRev2NoCooldown | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c3cab05a988b5ab3cd8c1f3e83c5205fc4330fd` | ⚠️ Unaudited |
| StakedTokenBptRev2NoCooldownNoStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2d4fe5f0794be86ac1f69cf2c333d76cdadc66b` | ⚠️ Unaudited |
| TestToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa003dfba51c9e1e56c67ae445b852bded7ac5eed` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0da2ad0ff3088c66cb0d27bba51024a95f72c484`; ethereum `0x348aa814a72970e76d5756a2cda16e7e8f245aab`; ethereum `0x51d2f2c65d043118eb4329fcbc738943f494609f`; ethereum `0x65a097c9b232a151b5c4df06f2ccc65d4d51f0bc`; ethereum `0x6a3cca09b1c2b83834124c8646a68b9bad2a07b9`; ethereum `0xb074094d2e858b25d129989644248f9f6946e081` | ⚠️ Unaudited |
| WeightedPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: ethereum `0xcb0e14e96f2cefa8550ad8e4aea344f211e5061d`; optimism `0x11f0b5cca01b0f0a9fe6265ad6e8ee3419c68440` | ⚠️ Unaudited |
| ZeroxV2Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc71781b5a7c7f1c8853dde052c9f575fe0bd04b5` | ⚠️ Unaudited |
| ZeroxV4Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8ded60086f3d06b8dd67b9bf6dd9ed7a4204ce8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (82)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3582115f96279a9ccf8856273da62d0e5b12336f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe46be36654f0859a943bfa1ae26667f85228e053` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395684 | `0x0000000000bbf5c5fd284e657f01bd000933c96d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395685 | `0x00700052c0608f670705380a4900e0a8080010cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395686 | `0x0927fd43a7a87e3e8b81df2c44b03c4756849f6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395687 | `0x0a0d53b6684c7b32b4cbef5fe8483bfcc8406742` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395688 | `0x6a000f20005980200259b80c5102003040001068` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395710 | `0x0000000000bbf5c5fd284e657f01bd000933c96d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395711 | `0x00700052c0608f670705380a4900e0a8080010cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395712 | `0x0a0d53b6684c7b32b4cbef5fe8483bfcc8406742` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395713 | `0x6a000f20005980200259b80c5102003040001068` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395689 | `0x00700052c0608f670705380a4900e0a8080010cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1df2b53734664906f51cc172929b6e4810b1a4d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1f17aa87e656d1044677c4941f4b3ca9a3fa882d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x49c46f7f88110cca234ef27cd664510f7bbf5998` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x58d8ab268237f7a49708a04231a0a1d8d8973ed2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x61ab356a686958fb878b0dee6e87b1b4fc36d553` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395690 | `0x6a000f20005980200259b80c5102003040001068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6bea1377f615cee6015707217a2e45419b2a0704` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7dc70208626186264636d1bdaadb97a28dd4b3f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395691 | `0x92ead5bacf6f0e995fa46ad8215a9b11f67ca241` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa1686ee049a745211d64ef2b305495d9425e7bd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa59426dde02291678ac3655f4c5b1dc0b9798a91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xcad03805c7e3e838cd216a140ce4146a0469cfe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xcd8875014ac31fcbea5890d79834c90033518192` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd16f4d752247e05adcabf10ff7e6c19cec026eca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-395692 | `0x0000000000bbf5c5fd284e657f01bd000933c96d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-395693 | `0x00700052c0608f670705380a4900e0a8080010cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x08db82a7bc2a0032885ca44a2a634e57edea9bdd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-395694 | `0x0a0d53b6684c7b32b4cbef5fe8483bfcc8406742` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x1a41ebbaa06d290654ce899cc2acd074e7a76a5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x1df2b53734664906f51cc172929b6e4810b1a4d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x1f17aa87e656d1044677c4941f4b3ca9a3fa882d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x35db9ac2ff3c5a86fde165bd26d43d303417942e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x58d8ab268237f7a49708a04231a0a1d8d8973ed2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x624415b8de09fd6e3a10d8ed4c970a8312153b8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x64ab4dd9d48712e9739d33ffd45d2200fad51b70` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-395695 | `0x6a000f20005980200259b80c5102003040001068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x6bea1377f615cee6015707217a2e45419b2a0704` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x74e095fa0af2ef74523ff6f679fff3941341348c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x7770e64e199c571bb1ed7a342050bb667e700576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x7aae69c1cb24ec92eeca9b80097932d28084dcc1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-395696 | `0x92ead5bacf6f0e995fa46ad8215a9b11f67ca241` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xa59426dde02291678ac3655f4c5b1dc0b9798a91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xb5253c895361678ff5d0ffdda81dd02f1f7a81d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xb5517d30cbf02b6d505525b7ad58fc012ecf0023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xcad03805c7e3e838cd216a140ce4146a0469cfe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xd16f4d752247e05adcabf10ff7e6c19cec026eca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xf20dbbffd21d117d8f09be265bdf25c89cd7dd67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xf5e3d4f3a0c40562760d24ff39ee00dbe3a5ae36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xfa0eb1d8cd202a9ae2bb77b416add00a115f6dd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xfa39c1c670b48956eef9fd0bbd0e81a290326330` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-395697 | `0x0000000000bbf5c5fd284e657f01bd000933c96d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-395698 | `0x00700052c0608f670705380a4900e0a8080010cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-395699 | `0x0a0d53b6684c7b32b4cbef5fe8483bfcc8406742` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-395700 | `0x6a000f20005980200259b80c5102003040001068` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395715 | `0x0000000000bbf5c5fd284e657f01bd000933c96d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395716 | `0x00700052c0608f670705380a4900e0a8080010cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395717 | `0x0a0d53b6684c7b32b4cbef5fe8483bfcc8406742` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395718 | `0x6a000f20005980200259b80c5102003040001068` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395702 | `0x0000000000bbf5c5fd284e657f01bd000933c96d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395703 | `0x00700052c0608f670705380a4900e0a8080010cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395704 | `0x0927fd43a7a87e3e8b81df2c44b03c4756849f6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395705 | `0x0a0d53b6684c7b32b4cbef5fe8483bfcc8406742` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1120dd8772c1cbd4e3f0bc141ab1bc7eeafbdaf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f49705f2e10c8c77727d4f790dae444147d6903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x27eb327b7255a2bf666ebb4d60ab4752da4611b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x45d70baca3fbf6d3c518c9a9d7cea87b042322e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x56a14a1954b5d5fd7c636a24137a93742ba708b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b99094c3c2129f17b78ce5ebd1cd8adb887b340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f7cf10348a7d53709f13bba1d6b47c2628c1bb9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395706 | `0x6a000f20005980200259b80c5102003040001068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x749015effb59fcb9b826d854f3ca5c5c2f192147` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8dcdfe88ef0351f27437284d0710cd65b20288bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9a61002219e354a6e02331a510f0651a6d31edf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b02ca178b7ebd5ef7dbf6a184c779c0aca5d6dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa655d02670be0cec6b8b6b83c68ed5375a2f5028` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb41ec6e014e2ad12ae8514216eab2592b74f19e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc79cf51b0951418cb7b010e38c3ceb8801e53184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd8b2760230bbf3aa9777e175ec1c9720eb499eba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395707 | `0x00700052c0608f670705380a4900e0a8080010cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395709 | `0x6a000f20005980200259b80c5102003040001068` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 240
- Live contracts: 1
- Unknown liveness contracts: 239
- Source-verified contracts: 190
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate auto own=1, candidate review=32, contamination review=27, source verified unclassified=130, unverified unclassified=50

Showing first 200 of 240 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1120dd8772c1cbd4e3f0bc141ab1bc7eeafbdaf0` | non_address_book | unknown | unknown | unverified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1f49705f2e10c8c77727d4f790dae444147d6903` | non_address_book | unknown | unknown | unverified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x27eb327b7255a2bf666ebb4d60ab4752da4611b9` | non_address_book | unknown | unknown | unverified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x45d70baca3fbf6d3c518c9a9d7cea87b042322e0` | non_address_book | unknown | unknown | unverified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x56a14a1954b5d5fd7c636a24137a93742ba708b9` | non_address_book | unknown | unknown | unverified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5b99094c3c2129f17b78ce5ebd1cd8adb887b340` | non_address_book | unknown | unknown | unverified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5f7cf10348a7d53709f13bba1d6b47c2628c1bb9` | non_address_book | unknown | unknown | unverified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x749015effb59fcb9b826d854f3ca5c5c2f192147` | non_address_book | unknown | unknown | unverified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8dcdfe88ef0351f27437284d0710cd65b20288bb` | non_address_book | unknown | unknown | unverified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9a61002219e354a6e02331a510f0651a6d31edf5` | non_address_book | unknown | unknown | unverified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9b02ca178b7ebd5ef7dbf6a184c779c0aca5d6dc` | non_address_book | unknown | unknown | unverified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa655d02670be0cec6b8b6b83c68ed5375a2f5028` | non_address_book | unknown | unknown | unverified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb41ec6e014e2ad12ae8514216eab2592b74f19e7` | non_address_book | unknown | unknown | unverified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc79cf51b0951418cb7b010e38c3ceb8801e53184` | non_address_book | unknown | unknown | unverified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd8b2760230bbf3aa9777e175ec1c9720eb499eba` | non_address_book | unknown | unknown | unverified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| avalanche | candidate review | AvalancheAdapter01<br>`0x5b99094c3c2129f17b78ce5ebd1cd8adb887b340` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| avalanche | candidate review | AvalancheAdapter01<br>`0x5f7cf10348a7d53709f13bba1d6b47c2628c1bb9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| avalanche | candidate review | AvalancheAdapter01<br>`0x6e8b66cc92fcd7fe1332664182beb1161dbfc82d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| avalanche | candidate review | AvalancheAdapter01<br>`0xb41ec6e014e2ad12ae8514216eab2592b74f19e7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| avalanche | candidate review | AvalancheBuyAdapter<br>`0xe92b586627cca7a83dc919cc7127196d70f55a06` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| avalanche | contamination review | AvalancheAdapter01<br>`0x23e9bb567d664ac1f4f3b8f5f3fede03bf27e6b0` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| avalanche | contamination review | MultiPath<br>`0x0310983446288e08f1dd973148f194a685ea551f` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| avalanche | source verified unclassified | AvalancheAdapter01<br>`0x2df17455b96dde3618fd6b1c3a9aa06d6ab89347` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| avalanche | source verified unclassified | AvalancheAdapter01<br>`0x749015effb59fcb9b826d854f3ca5c5c2f192147` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| avalanche | source verified unclassified | AvalancheAdapter01<br>`0xc79cf51b0951418cb7b010e38c3ceb8801e53184` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| avalanche | source verified unclassified | ERC165<br>`0xc2b5a8082d2e1867a9cbbf41b625e3ae9df81f8b` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| avalanche | source verified unclassified | OnERC1155Received<br>`0x5e09f0f5a1d1de32b56ab8d16a6f687ed763e0e8` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| avalanche | source verified unclassified | OnERC721Received<br>`0x27eb327b7255a2bf666ebb4d60ab4752da4611b9` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| avalanche | source verified unclassified | ProtectedMultiPath<br>`0x0927fd43a7a87e3e8b81df2c44b03c4756849f6d` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| avalanche | source verified unclassified | ProtectedMultiPath<br>`0x9a61002219e354a6e02331a510f0651a6d31edf5` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| avalanche | source verified unclassified | ProtectedSimpleSwap<br>`0xa655d02670be0cec6b8b6b83c68ed5375a2f5028` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| avalanche | source verified unclassified | ProtectedSimpleSwap<br>`0xf52523b9d788f4e2dd256dc5077879af0448c37a` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| avalanche | source verified unclassified | SimpleSwap<br>`0x1120dd8772c1cbd4e3f0bc141ab1bc7eeafbdaf0` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| avalanche | source verified unclassified | SimpleSwap<br>`0xc9229eec07b176acc448be33177c2834c9575ec5` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| avalanche | source verified unclassified | SimpleSwapNFT<br>`0xd81771fb483ddee2b58cbf1e712483407cfcff2f` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| base | candidate auto own | AugustusRFQ<br>`0xa003dfba51c9e1e56c67ae445b852bded7ac5eed` | project_anchor | unknown | live | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | candidate review | AugustusSwapper<br>`0x793a0bb089c6787e84277f08179dac594edb9443` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | candidate review | FeeClaimer<br>`0x6c33c7f6cbb4a428fe9ee31ca500a787c9f1525b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | contamination review | AlgebraStateMulticall<br>`0x23d574867597c7a980024d8b83a74b6ca6e08a7b` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | contamination review | DirectSwap<br>`0x3a43e3ac12b641715fce97ccb50bbde06b22ba24` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | contamination review | OnERC1155Received<br>`0x1bc9c77b2334879f411397911c7f8ce46037d2c1` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | contamination review | PolygonZkEvmAdapter01<br>`0x3b75cd9f8d2f88127655faa5bb3686baf4097979` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | contamination review | PolygonZkEvmBuyAdapter<br>`0x8de036910e34b0d8447dd0d34c742636de1ddfeb` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | contamination review | SimpleSwapNFT<br>`0x2a192c2b8342a4e5ada593ff93a10bd3997fbe99` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | source verified unclassified | AlgebraStateMulticall<br>`0xe4b8d18bc99058151c7c0138e536013a48b45b2f` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | source verified unclassified | DirectSwap<br>`0xed4e008425575b0f9f2cf3eb3ba3554706d3c311` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | source verified unclassified | ERC165<br>`0x23f4129a91c3ebe4eddc00f34071a2cc6315338a` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | source verified unclassified | ERC165<br>`0xc4401b1cfbacada8e90037bf9d0b22173cac9165` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | source verified unclassified | MultiPath<br>`0x8eeeb2e3e9748adab1317693c448701a2b783f54` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | source verified unclassified | MultiPath<br>`0xd5717e078bfccfcf8db4d8c280ac2e78f57159fa` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | source verified unclassified | OnERC1155Received<br>`0x5648846a0dde832e6fcfec423cfea4a777c4336e` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | source verified unclassified | OnERC721Received<br>`0x3080d639341b62d870dc0a1220cd198c24b5cae7` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | source verified unclassified | OnERC721Received<br>`0x6152a41f6e8cab97a58d7cc8f07b1578006fa956` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | source verified unclassified | PolygonZkEvmAdapter01<br>`0x963aed2289863fcab0880b0d6dfd56404b550ec2` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | source verified unclassified | PolygonZkEvmAdapter01<br>`0x9f77bb28e97f093aa6cbe37ce095c18605d98af2` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | source verified unclassified | PolygonZkEvmAdapter01<br>`0xdf07baa012fde38fda20a49e1d9e297b0d08fa4e` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | source verified unclassified | PolygonZkEvmAdapter01<br>`0xe6d078fc1220c72be812df6030e734e52bf4c570` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | source verified unclassified | PolygonZkEvmBuyAdapter<br>`0xaa26f55ac49caed6feea1a2b6884d92dd9bf8cdf` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | source verified unclassified | ProtectedMultiPath<br>`0x64c856fafe4c83a818514cbdfd661a3563a71b98` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | source verified unclassified | ProtectedMultiPath<br>`0xbe5d5aa9e61b48ec6d81daf0b15086bd67465080` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | source verified unclassified | ProtectedSimpleSwap<br>`0x742ed90dc579f3a9c725a1a0a042f30e3cf77968` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | source verified unclassified | ProtectedSimpleSwap<br>`0xf1a5e2dfbc536476c976ab35a2cbe1a17bada7a1` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | source verified unclassified | SimpleSwap<br>`0x1d2fd92a1942a92a51198168efcd626ed441cec0` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | source verified unclassified | SimpleSwap<br>`0x50731c00e38eb1517ed08b7d9d9fe86bf790de4e` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | source verified unclassified | SimpleSwapHelper<br>`0x92c08987a9f150694c3d088e9085004d8a8bcd9f` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | source verified unclassified | SimpleSwapHelper<br>`0xa769ddfacccc894312788f48c0504004fb211686` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| base | source verified unclassified | SimpleSwapNFT<br>`0x97b86e4d651ea6bc9c68f5bac2000ce29b79c4eb` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| bsc | candidate review | BscAdapter01<br>`0x27eb327b7255a2bf666ebb4d60ab4752da4611b9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| bsc | candidate review | BscAdapter01<br>`0xc9229eec07b176acc448be33177c2834c9575ec5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| bsc | candidate review | BscBuyAdapter<br>`0xf52523b9d788f4e2dd256dc5077879af0448c37a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| bsc | contamination review | BscAdapter02<br>`0x5e09f0f5a1d1de32b56ab8d16a6f687ed763e0e8` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| bsc | contamination review | ERC165<br>`0x0310983446288e08f1dd973148f194a685ea551f` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| bsc | contamination review | ProtectedMultiPath<br>`0x0927fd43a7a87e3e8b81df2c44b03c4756849f6d` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| bsc | contamination review | SimpleSwap<br>`0x1120dd8772c1cbd4e3f0bc141ab1bc7eeafbdaf0` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| bsc | source verified unclassified | BscAdapter01<br>`0x7ee3c983ca38c370f296fe14a31beac5b1c9a9fe` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| bsc | source verified unclassified | DystopiaExchangeRouter<br>`0xc2b5a8082d2e1867a9cbbf41b625e3ae9df81f8b` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| bsc | source verified unclassified | MultiPath<br>`0x4f14fe8c86a00d6dfb9e91239738499fc0f587de` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| bsc | source verified unclassified | OnERC1155Received<br>`0xbfcd68fd74b4b458961495f3392bf96f46a29e67` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| bsc | source verified unclassified | OnERC721Received<br>`0x34302c4267d0da0a8c65510282cc22e9e39df51f` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| bsc | source verified unclassified | ProtectedMultiPath<br>`0x23e9bb567d664ac1f4f3b8f5f3fede03bf27e6b0` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| bsc | source verified unclassified | ProtectedSimpleSwap<br>`0xa655d02670be0cec6b8b6b83c68ed5375a2f5028` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| bsc | source verified unclassified | ProtectedSimpleSwap<br>`0xe75accea9386eae218e06f9855bbd876a130ea8a` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| bsc | source verified unclassified | SimpleSwap<br>`0xc79cf51b0951418cb7b010e38c3ceb8801e53184` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| bsc | source verified unclassified | SimpleSwapNFT<br>`0x9a61002219e354a6e02331a510f0651a6d31edf5` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| ethereum | candidate review | Adapter03<br>`0x43dad56947b20d5808fdb5d0913639cdadc8cca2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| ethereum | candidate review | Adapter03<br>`0x79359292ffd5c3307084084b5b7c3e81d733ee98` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| ethereum | candidate review | Adapter03<br>`0xe5993623ff3ecd1f550124059252ddff804b3879` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| ethereum | candidate review | Adapter03<br>`0xe609aeab29245b235f63ddc23a34ed911524818a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| ethereum | candidate review | AugustusRFQRouter<br>`0x64f72fcfd9c624e3e471223f043060981c83aafc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| ethereum | candidate review | BuyAdapter<br>`0x737e642eec6e5bd675022adc6d726eb19ff74383` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| ethereum | candidate review | BuyAdapter<br>`0xe56823ac543c81f747ed95f3f095b5a19224bd3a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| ethereum | contamination review | Adapter01<br>`0x9be264469ef954c139da4a45cf76cbcc5e3a6a73` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| ethereum | contamination review | ProtectedSimpleSwap<br>`0x5b99094c3c2129f17b78ce5ebd1cd8adb887b340` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| ethereum | contamination review | ZeroxV2Router<br>`0xc71781b5a7c7f1c8853dde052c9f575fe0bd04b5` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| ethereum | contamination review | ZeroxV4Router<br>`0xc8ded60086f3d06b8dd67b9bf6dd9ed7a4204ce8` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| ethereum | source verified unclassified | Adapter01<br>`0xbdd13a9dd364e5557e0710fc1d2ac145b5e8f3be` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| ethereum | source verified unclassified | Adapter03<br>`0xe6a36f977844eb6ae1609686682698d20e4b0c26` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| ethereum | source verified unclassified | BuyAdapter<br>`0xd8b2760230bbf3aa9777e175ec1c9720eb499eba` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| ethereum | source verified unclassified | ERC165<br>`0x2a1b5da9e380314602579ad269a99981dd01409c` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| ethereum | source verified unclassified | MultiPath<br>`0xb41ec6e014e2ad12ae8514216eab2592b74f19e7` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| ethereum | source verified unclassified | OnERC1155Received<br>`0x56a14a1954b5d5fd7c636a24137a93742ba708b9` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| ethereum | source verified unclassified | OnERC721Received<br>`0x564b759c1a7976476649452e804a13b963610065` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| ethereum | source verified unclassified | ProtectedMultiPath<br>`0x1120dd8772c1cbd4e3f0bc141ab1bc7eeafbdaf0` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| ethereum | source verified unclassified | ProtectedMultiPath<br>`0xab8e3b12d71b248b6de1e688be6e1f80845e478a` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| ethereum | source verified unclassified | ProtectedSimpleSwap<br>`0x749015effb59fcb9b826d854f3ca5c5c2f192147` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| ethereum | source verified unclassified | SimpleSwap<br>`0x6e8b66cc92fcd7fe1332664182beb1161dbfc82d` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| ethereum | source verified unclassified | SimpleSwap<br>`0xa655d02670be0cec6b8b6b83c68ed5375a2f5028` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| ethereum | source verified unclassified | SimpleSwapNFT<br>`0x93d2611eb8b85be4fdea9d94ce9913d90072ec0f` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| ethereum | source verified unclassified | ParaswapToken<br>`0x200345a5821dd742bf135cb6520fd38a7e523e38` | non_address_book | unknown | unknown | verified | n/a | `0x490ce4616672e93b1c8f5e43aa80312fd73dee8c` |
| ethereum | source verified unclassified | PSPToken<br>`0xbbdba695be29a043881c74d288797f50e0dc4259` | non_address_book | unknown | unknown | verified | n/a | `0x490ce4616672e93b1c8f5e43aa80312fd73dee8c` |
| ethereum | source verified unclassified | TokenVesting<br>`0x0da2ad0ff3088c66cb0d27bba51024a95f72c484` | non_address_book | unknown | unknown | verified | n/a | `0x490ce4616672e93b1c8f5e43aa80312fd73dee8c` |
| ethereum | source verified unclassified | TokenVesting<br>`0x348aa814a72970e76d5756a2cda16e7e8f245aab` | non_address_book | unknown | unknown | verified | n/a | `0x490ce4616672e93b1c8f5e43aa80312fd73dee8c` |
| ethereum | source verified unclassified | TokenVesting<br>`0x51d2f2c65d043118eb4329fcbc738943f494609f` | non_address_book | unknown | unknown | verified | n/a | `0x490ce4616672e93b1c8f5e43aa80312fd73dee8c` |
| ethereum | source verified unclassified | TokenVesting<br>`0x65a097c9b232a151b5c4df06f2ccc65d4d51f0bc` | non_address_book | unknown | unknown | verified | n/a | `0x490ce4616672e93b1c8f5e43aa80312fd73dee8c` |
| ethereum | source verified unclassified | TokenVesting<br>`0x6a3cca09b1c2b83834124c8646a68b9bad2a07b9` | non_address_book | unknown | unknown | verified | n/a | `0x490ce4616672e93b1c8f5e43aa80312fd73dee8c` |
| ethereum | source verified unclassified | TokenVesting<br>`0xb074094d2e858b25d129989644248f9f6946e081` | non_address_book | unknown | unknown | verified | n/a | `0x490ce4616672e93b1c8f5e43aa80312fd73dee8c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3582115f96279a9ccf8856273da62d0e5b12336f` | non_address_book | unknown | unknown | unverified | n/a | `0x490ce4616672e93b1c8f5e43aa80312fd73dee8c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe46be36654f0859a943bfa1ae26667f85228e053` | non_address_book | unknown | unknown | unverified | n/a | `0x490ce4616672e93b1c8f5e43aa80312fd73dee8c` |
| ethereum | candidate review | BuyAdapter<br>`0x760870be538e7b4e2110e2890473cc17adb1fdc1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ac840fb4738c36467ac673e87aafa26c9397dcd` |
| ethereum | contamination review | Adapter02<br>`0x8fa7a0e0ac0fa2c321e87429ff7351376af81304` | non_address_book | unknown | unknown | verified | n/a | `0x5ac840fb4738c36467ac673e87aafa26c9397dcd` |
| ethereum | contamination review | Adapter04<br>`0x21ab8aeb35bfc0b3fd84ca810b0aa85938357be2` | non_address_book | unknown | unknown | verified | n/a | `0x5ac840fb4738c36467ac673e87aafa26c9397dcd` |
| ethereum | contamination review | Adapter05<br>`0x1555105ee707e19481a36e1fa67bf0480ef132f8` | non_address_book | unknown | unknown | verified | n/a | `0x5ac840fb4738c36467ac673e87aafa26c9397dcd` |
| ethereum | contamination review | DystopiaExchangeRouter<br>`0x5b39e7a1c706464f5b3956b21cd22a43f0db0eac` | non_address_book | unknown | unknown | verified | n/a | `0x5ac840fb4738c36467ac673e87aafa26c9397dcd` |
| ethereum | contamination review | ERC20BalanceProbeUtils<br>`0x6904a375520a9d2a3e9ce781ed6cac0eb07e8fa7` | non_address_book | unknown | unknown | verified | n/a | `0x5ac840fb4738c36467ac673e87aafa26c9397dcd` |
| ethereum | contamination review | RewardVestingHelper<br>`0x7cbb13197bd9e92ecad6adfd3a9d8e0fdda5fd23` | non_address_book | unknown | unknown | verified | n/a | `0x5ac840fb4738c36467ac673e87aafa26c9397dcd` |
| ethereum | source verified unclassified | Adapter04<br>`0x92bc947dbfc0e38990abc61e8b5177cc378caa8b` | non_address_book | unknown | unknown | verified | n/a | `0x5ac840fb4738c36467ac673e87aafa26c9397dcd` |
| ethereum | source verified unclassified | Adapter05<br>`0x221cf6d7569b35726e73e5f329bad2ee3836c4fc` | non_address_book | unknown | unknown | verified | n/a | `0x5ac840fb4738c36467ac673e87aafa26c9397dcd` |
| ethereum | source verified unclassified | Adapter05<br>`0x3329dfa55a40b450952fbe0203167ae6908e656d` | non_address_book | unknown | unknown | verified | n/a | `0x5ac840fb4738c36467ac673e87aafa26c9397dcd` |
| ethereum | source verified unclassified | Adapter05<br>`0x4bdfff39a4b4f31a0b12a070d66b457e2366ba39` | non_address_book | unknown | unknown | verified | n/a | `0x5ac840fb4738c36467ac673e87aafa26c9397dcd` |
| ethereum | source verified unclassified | CumulativeMerkleDistributor<br>`0xea6cc6949c1df315af93ab82d567a8fcee41016d` | non_address_book | unknown | unknown | verified | n/a | `0x5ac840fb4738c36467ac673e87aafa26c9397dcd` |
| ethereum | source verified unclassified | DirectSwap<br>`0xdffd706ee98953d3d25a3b8440e34e3a2c9beb2c` | non_address_book | unknown | unknown | verified | n/a | `0x5ac840fb4738c36467ac673e87aafa26c9397dcd` |
| ethereum | source verified unclassified | DistributorController<br>`0x8d8673eb599610518a13d9e99daf7d8426897cdb` | non_address_book | unknown | unknown | verified | n/a | `0x5ac840fb4738c36467ac673e87aafa26c9397dcd` |
| ethereum | source verified unclassified | MultiPath<br>`0xbd7b550d2e7571383d84acf597a00d341e5c406e` | non_address_book | unknown | unknown | verified | n/a | `0x5ac840fb4738c36467ac673e87aafa26c9397dcd` |
| ethereum | source verified unclassified | ProtectedMultiPath<br>`0x4f7484cf4db16782456d05e41ec6f31a8cc7e2d7` | non_address_book | unknown | unknown | verified | n/a | `0x5ac840fb4738c36467ac673e87aafa26c9397dcd` |
| ethereum | source verified unclassified | ProtectedSimpleSwap<br>`0xd37a6778e18216a13e920ade3dfa27e0c87dae6a` | non_address_book | unknown | unknown | verified | n/a | `0x5ac840fb4738c36467ac673e87aafa26c9397dcd` |
| ethereum | source verified unclassified | RewardVestingHelper<br>`0xef970b73e7d32afce0486387650a6ebece340fe9` | non_address_book | unknown | unknown | verified | n/a | `0x5ac840fb4738c36467ac673e87aafa26c9397dcd` |
| ethereum | source verified unclassified | SimpleSwap<br>`0x66c1c25d7d2bd4a32ed33501e202b275030f402c` | non_address_book | unknown | unknown | verified | n/a | `0x5ac840fb4738c36467ac673e87aafa26c9397dcd` |
| ethereum | source verified unclassified | SimpleSwapNFT<br>`0xc7f71c1067a29a4bb96810648969eafb90b98dc2` | non_address_book | unknown | unknown | verified | n/a | `0x5ac840fb4738c36467ac673e87aafa26c9397dcd` |
| ethereum | source verified unclassified | StakedTokenBptRev2NoCooldown<br>`0x3c3cab05a988b5ab3cd8c1f3e83c5205fc4330fd` | non_address_book | unknown | unknown | verified | n/a | `0x5ac840fb4738c36467ac673e87aafa26c9397dcd` |
| ethereum | source verified unclassified | StakedTokenBptRev2NoCooldownNoStake<br>`0xf2d4fe5f0794be86ac1f69cf2c333d76cdadc66b` | non_address_book | unknown | unknown | verified | n/a | `0x5ac840fb4738c36467ac673e87aafa26c9397dcd` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x1df2b53734664906f51cc172929b6e4810b1a4d4` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e24a49944f7972ceb826c7557580658f9c3303` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x1f17aa87e656d1044677c4941f4b3ca9a3fa882d` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e24a49944f7972ceb826c7557580658f9c3303` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x49c46f7f88110cca234ef27cd664510f7bbf5998` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e24a49944f7972ceb826c7557580658f9c3303` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x58d8ab268237f7a49708a04231a0a1d8d8973ed2` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e24a49944f7972ceb826c7557580658f9c3303` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x61ab356a686958fb878b0dee6e87b1b4fc36d553` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e24a49944f7972ceb826c7557580658f9c3303` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x6bea1377f615cee6015707217a2e45419b2a0704` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e24a49944f7972ceb826c7557580658f9c3303` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x7dc70208626186264636d1bdaadb97a28dd4b3f6` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e24a49944f7972ceb826c7557580658f9c3303` |
| gnosis | unverified unclassified | UnnamedContract<br>`0xa1686ee049a745211d64ef2b305495d9425e7bd3` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e24a49944f7972ceb826c7557580658f9c3303` |
| gnosis | unverified unclassified | UnnamedContract<br>`0xa59426dde02291678ac3655f4c5b1dc0b9798a91` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e24a49944f7972ceb826c7557580658f9c3303` |
| gnosis | unverified unclassified | UnnamedContract<br>`0xcad03805c7e3e838cd216a140ce4146a0469cfe2` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e24a49944f7972ceb826c7557580658f9c3303` |
| gnosis | unverified unclassified | UnnamedContract<br>`0xcd8875014ac31fcbea5890d79834c90033518192` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e24a49944f7972ceb826c7557580658f9c3303` |
| gnosis | unverified unclassified | UnnamedContract<br>`0xd16f4d752247e05adcabf10ff7e6c19cec026eca` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e24a49944f7972ceb826c7557580658f9c3303` |
| optimism | contamination review | Faucet<br>`0x793a0bb089c6787e84277f08179dac594edb9443` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| optimism | source verified unclassified | CumulativeMerkleDistributor<br>`0x26efeb368e19eac38d08340f3f30594f798458d8` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| optimism | source verified unclassified | CumulativeMerkleDistributor<br>`0x73564a4854b826d14b60c5eb0f6a16dc309231b1` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| optimism | source verified unclassified | CumulativeMerkleDistributor<br>`0x7eda336bab052fef04e5b9216d2e97688483a5a0` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| optimism | source verified unclassified | CumulativeMerkleDistributor<br>`0x963aed2289863fcab0880b0d6dfd56404b550ec2` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| optimism | source verified unclassified | CumulativeMerkleDistributor<br>`0xa769ddfacccc894312788f48c0504004fb211686` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| optimism | source verified unclassified | CumulativeMerkleDistributor<br>`0xeb1ec6c0bfe5682cdb93977e429c978eae4c30f1` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| optimism | source verified unclassified | CumulativeMerkleDistributor<br>`0xf2eb5d826d97d8abc1751abd52807b2927d70e2a` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| optimism | source verified unclassified | DistributorController<br>`0x17e29ff036f3a4feb18393cc0df53619be3cb739` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| optimism | source verified unclassified | DistributorController<br>`0x23e4afacaee020b0deac30ebfead7b01b1fb0e5c` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| optimism | source verified unclassified | DistributorController<br>`0x75d199efb540e47d27d52c62da3e7dac2b9e834f` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| optimism | source verified unclassified | DistributorController<br>`0xf455d404254aeb8003f5bfda8d4c2716822db328` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| optimism | source verified unclassified | ERC20BalanceProbeUtils<br>`0xe37ea254c9486031e1e4ed4a55caf068584ccd1b` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| optimism | source verified unclassified | MerkleRedeem<br>`0x2a192c2b8342a4e5ada593ff93a10bd3997fbe99` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| optimism | source verified unclassified | sePSP<br>`0x6c33c7f6cbb4a428fe9ee31ca500a787c9f1525b` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| optimism | source verified unclassified | sePSP<br>`0x8eeeb2e3e9748adab1317693c448701a2b783f54` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| optimism | source verified unclassified | sePSP<br>`0xaee2b8d4a154e36f479daece3fb3e6c3c03d396e` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| optimism | source verified unclassified | sePSP2<br>`0x7160f736c52e1e78e92fd4ee4d73e21a7cf4f950` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| optimism | source verified unclassified | sePSP2<br>`0xf1a5e2dfbc536476c976ab35a2cbe1a17bada7a1` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| optimism | source verified unclassified | sePSPStakingMigratorV1<br>`0xed4e008425575b0f9f2cf3eb3ba3554706d3c311` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| optimism | source verified unclassified | TestToken<br>`0xa003dfba51c9e1e56c67ae445b852bded7ac5eed` | non_address_book | unknown | unknown | verified | n/a | `0x90dd83e62396d7385b1d70166aafb8a9e528e813` |
| polygon | candidate review | AugustusSwapper<br>`0x64f72fcfd9c624e3e471223f043060981c83aafc` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| polygon | candidate review | AugustusSwapper<br>`0xbd09504819a604ca503f30d2cc9d0ef4c76dac33` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| polygon | candidate review | FeeClaimer<br>`0x8dcdfe88ef0351f27437284d0710cd65b20288bb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| polygon | candidate review | FeeClaimer<br>`0xabb58098a7b5172a9b0b38a1925a522dbf0b4fc3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| polygon | candidate review | PolygonAdapter02<br>`0x475928fe50a9e9adb706d6f5624fb97ee2ac087d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| polygon | candidate review | PolygonAdapter02<br>`0x74ef12c4acb03d131bb7cf2ff5ce7d03675d91fa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| polygon | candidate review | PolygonAdapter02<br>`0x97768fd3a529ee29b433cbb5e45e63f3bfff0a93` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| polygon | candidate review | PolygonAdapter02<br>`0xad1732884cf5aab27b293707757a9b9011611be6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| polygon | candidate review | PolygonAdapter02<br>`0xb5e59e865fa40a17ecf87fb4111e91f8213bbac9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| polygon | candidate review | PolygonAdapter02<br>`0xc69849f77644d4629260e00e494d8cc8bb543299` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| polygon | candidate review | PolygonBuyAdapter<br>`0x40e11ae88a9402a34208d05bfb7e88171d2f58a0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| polygon | candidate review | PolygonBuyAdapter<br>`0x9aa1b161ddb7775dcd94a370ed7611182fee3ac3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| polygon | candidate review | PolygonBuyAdapter<br>`0xd7d3e2491cc495faaa9a770cbdc7535fd1446d8c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| polygon | candidate review | PolygonBuyAdapter<br>`0xdc514c500db446f5a7ab80872baf3addefd00174` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| polygon | contamination review | OnERC721Received<br>`0x0e87b7d4a55b0c8fd3940e833c614dfc5e291550` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| polygon | contamination review | PolygonAdapter01<br>`0x564b759c1a7976476649452e804a13b963610065` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| polygon | contamination review | PolygonBuyAdapter<br>`0x2a1b5da9e380314602579ad269a99981dd01409c` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| polygon | contamination review | SimpleSwapHelper<br>`0x63f96d5bfa348fb2b3a61f183c88c5ef47dd3b76` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| polygon | source verified unclassified | DystopiaExchangeRouter<br>`0xc8db3501281c192ffe9697a1b905b161ca0cd64d` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| polygon | source verified unclassified | ERC165<br>`0x3c51175d822c6f7984919380f76a00134134dcfb` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| polygon | source verified unclassified | ERC165<br>`0xd76d3fff6ddb8af2647f198c0b882d43fc1b7f32` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| polygon | source verified unclassified | MultiPath<br>`0x2df17455b96dde3618fd6b1c3a9aa06d6ab89347` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| polygon | source verified unclassified | MultiPath<br>`0x45d70baca3fbf6d3c518c9a9d7cea87b042322e0` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| polygon | source verified unclassified | MultiPath<br>`0x7719cc060a3348229db764c9464b7738e4172e19` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| polygon | source verified unclassified | OnERC1155Received<br>`0x21f9a836fde8f9428aa80317272c85b0e0fbf9f4` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| polygon | source verified unclassified | OnERC1155Received<br>`0xbe01391a514d332a0b949a74ae701102e018f421` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |
| polygon | source verified unclassified | OnERC721Received<br>`0xd3131a72256dce18ec687a33f30e7ee3989729b0` | non_address_book | unknown | unknown | verified | n/a | `0x22f3bdd1135e62ba7ee980ed53ded634e412869c` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audit Report - ParaSwap [20.01.2021].pdf](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20ParaSwap%20%5B20.01.2021%5D.pdf) | unknown | Audit | 2021-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14112] Audit Report - ParaSwap [20.01.2021].pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit Report - ParaSwap [20.01.2021].pdf | AugustusSwapper | unmatched — not counted | — | — | no |
| Audit Report - ParaSwap [20.01.2021].pdf | Partner | unmatched — not counted | — | — | no |
| Audit Report - ParaSwap [20.01.2021].pdf | PartnerRegistry | unmatched — not counted | — | — | no |
| Audit Report - ParaSwap [20.01.2021].pdf | TokenTransferProxy | unmatched — not counted | — | — | no |
| Audit Report - ParaSwap [20.01.2021].pdf | UniswapV3Lib | unmatched — not counted | — | — | no |
| Audit Report - ParaSwap [20.01.2021].pdf | UniswapV3Router | unmatched — not counted | — | — | no |
| Audit Report - ParaSwap [20.01.2021].pdf | Utils | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x00700052c0608f670705380a4900e0a8080010cc` | AugustusFeeVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe92b586627cca7a83dc919cc7127196d70f55a06` | AugustusRFQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8dcdfe88ef0351f27437284d0710cd65b20288bb` | AugustusRFQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xf3cd476c3c4d3ac5ca2724767f269070ca09a043` | AugustusRFQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa003dfba51c9e1e56c67ae445b852bded7ac5eed` | AugustusRFQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x34302c4267d0da0a8c65510282cc22e9e39df51f` | AugustusRFQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6a000f20005980200259b80c5102003040001068` | AugustusV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0a0d53b6684c7b32b4cbef5fe8483bfcc8406742` | DeltaWrappedNative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0000000000bbf5c5fd284e657f01bd000933c96d` | PreSignatureModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 61 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 82 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 7 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14112] Audit Report - ParaSwap [20.01.2021].pdf

Fork inheritance lineage and inherited audits are included when available.
