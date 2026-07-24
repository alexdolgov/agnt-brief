# Agentic Audit Brief: TeleSwap

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

- Project: TeleSwap (`teleswap`)
- Website: [https://teleswap.xyz](https://teleswap.xyz)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, bsc, ethereum, optimism, polygon, unichain
- Contract surface: 93 unique implementations (129 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $242,282.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for TeleSwap in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x93ad6c8b3a273e0b4aeebd6cf03422c885217d3b`, chain 1)
- UnnamedContract (`0xec4a7d93750bbce2a07fd1bc748507ea645e9d52`, chain 10)
- UnnamedContract (`0x45e4d542c570fb6194467ffedf7cc09867279a96`, chain 130)
- UnnamedContract (`0x93ad6c8b3a273e0b4aeebd6cf03422c885217d3b`, chain 137)
- UnnamedContract (`0xec4a7d93750bbce2a07fd1bc748507ea645e9d52`, chain 8453)
- UnnamedContract (`0xec4a7d93750bbce2a07fd1bc748507ea645e9d52`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 87 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 14
- Confirmed-live implementations: 6 of 93 unique; 87 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/34
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 0
- Unverified implementations: 59
- Unique implementations: 93
- Raw deployments: 129
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (34)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BitcoinNFTMarketplace | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe2b360bd944ccafbfffefeb97dbd8c55fdd19ddb` | ⚠️ Unaudited |
| BitcoinRelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: polygon `0x7c5e6bbbcd70ae0eb5abcc81c3caa4c62cf9af38`; polygon `0x7deb66341b1d499d7e699589d0cf665de4132ea3`; polygon `0x984ccdb7461feb9b18dd73016764790c2624fcf4`; polygon `0xc7a7c6ab475138565fe0d2476ee4616862bf2467`; polygon `0xe880e70521c03d9f90c3805d47f0e148876917b0` | ⚠️ Unaudited |
| BitcoinRelayLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x013f6d7b4c6aa1a0573c7151d397695376676a29`; bsc `0xfcd688999c25d5493571543137ceeb4fbdb44d02` | ⚠️ Unaudited |
| BitcoinRelayLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa669d715e866647c98e1643532ca9bc9a6341ced` | ⚠️ Unaudited |
| Brc20RouterLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x3edec6617e62f055edc3ecbd410ba39e7c7adc17`; bsc `0x88641b535a36dcd403fa102295c59a154c6818f6` | ⚠️ Unaudited |
| Brc20RouterLogic | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xab82c4ae964bfbf257297ac55bb9fae0ad0084c7` | ⚠️ Unaudited |
| BscConnectorLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x90a50ae86698b52847d071e5f22d9e73d0741e53`; bsc `0xe36b16bc3aae26f2a0e936a2e2c18a4e72c9b6e7` | ⚠️ Unaudited |
| BurnRouterLogic | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x2787d48e0b74125597dd479978a5de09bb9a3c15` | ⚠️ Unaudited |
| BurnRouterLogic | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x0009876c47f6b2f0bcb41eb9729736757486c75f` | ⚠️ Unaudited |
| BurnRouterLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: bsc `0xdcbb3dc87aa39fe8d4e722a4e625ebe03bf74418`; polygon `0xaccb15511f8befdee5e5f0fad9ab7116a98dc974` | ⚠️ Unaudited |
| CCBurnRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 11 deployments: polygon `0x2c4400019583c1733d1fdb2a5074775f0e3e4843`; polygon `0x340ba3a368f888de5450ad2981a10127087f633d`; polygon `0x3b5dd6fd5fed1b9072439239c5eb470df7ff8648`; polygon `0x4a51c5be14d1f1264297d21d1ed77dfd4294f00e`; polygon `0x868a2a0fbd01128d9bde4f4bd7ca8ac2b190441f`; polygon `0x88f7e93585c2bb1414b7d61f2f3aea0317e28b93`; polygon `0x8a9ce669db89e1b2276e76d96763484553071010`; polygon `0xa474538dcc63deeef670598c7ee34418db74520d`; polygon `0xae469f09e0e09b5551223ce83875fc2a04d420ac`; polygon `0xc58a12537e47a6a118eb25fef6c40af7624c07be`; polygon `0xd4ea6fbce79ca5b9c14e1893881e898f2a9aaea6` | ⚠️ Unaudited |
| CCExchangeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb402441d960332d97ffcf67b09444d98ea92a1be` | ⚠️ Unaudited |
| CcExchangeRouterLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x521174a3a9596b484e952325670253388845e9b8`; polygon `0x7b07b8ca6f7adf3b2187a7431dfa1b0978e85e69` | ⚠️ Unaudited |
| CcExchangeRouterLogic | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xca5416364720c7324a547d39b1db496a2dcd4f0d` | ⚠️ Unaudited |
| CcExchangeRouterLogic | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xd1e9ff33ec28f9dd8d99e685a2b0f29dcaa095a3` | ⚠️ Unaudited |
| CCTransferRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x79a138c9c6eb56a0de28990ba92e3a568f372ec3` | ⚠️ Unaudited |
| CcTransferRouterLogic | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xa38ad0d52b89c20c2229e916358d2ceb45bec5ff` | ⚠️ Unaudited |
| CcTransferRouterLogic | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x04367d74332137908bef9acc0ab00a299a823707` | ⚠️ Unaudited |
| CcTransferRouterLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: bsc `0x3d6d7b13707abe6b127b130c0b5c0a294c6a632e`; polygon `0x117fc50a68f0972fe093588eb50f20edf1526f52` | ⚠️ Unaudited |
| CollateralPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x5cec6212e67a23c77b3fe0607077fa4ebb0e2da0`; polygon `0x8fc7a7f04a40dd816b1ea60f83daeb56e933d6d2`; polygon `0xc10a67f9744a8f31f9beed14efd92cdcac3bce6b` | ⚠️ Unaudited |
| InstantPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x1866057a63cab698d7354dfda0e336735e3aba3a`; polygon `0x534b40ba3e6ce5fbe1ce8a6e4cbc97cf3c29c41a`; polygon `0x6d0ad1455f05300023e076f780ce84990ca678fd` | ⚠️ Unaudited |
| InstantRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x80dd89ee0ce938ae41a167709a9ce166f7a5f8a7`; polygon `0xf75b11999a66d57ba0e121930ec27c5059351a01` | ⚠️ Unaudited |
| LiquidityMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xad1f97961a34412a4e774db1a81a080785587ebe` | ⚠️ Unaudited |
| LockersLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x31193dcf1683683d6c81cbcd9fc0d7b417c35493`; bsc `0x507f196da387f8ebe9246b54a62dfe247fc6740d`; bsc `0xe40ba19913e22cfd33e4af8feeca98ecd93a4fc3`; polygon `0x47d033c9ccc758a95770028d6235e5afe8c69985`; polygon `0x729c6c89581c4b79e5d8edba194154850bd3bf16`; polygon `0xaafdfdec6d1bebda0b27f72816b316567d3669ef` | ⚠️ Unaudited |
| LockersManagerLogic | governance | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x84f74e97ebab432cee185d601290ce0a483987a5` | ⚠️ Unaudited |
| LockersManagerLogic | governance | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xf5d6d369a7f4147f720aeadd4c4f903ae8046166` | ⚠️ Unaudited |
| PriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x7aabb0779782247384a1c91844211516e93b1d63`; polygon `0x96b76ab42289688b68882cdccd071b2c39b0165e` | ⚠️ Unaudited |
| TeleBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x515d720b9d219f1931205d5b8d842be1fe2febde` | ⚠️ Unaudited |
| TeleBTCLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x467e5a869b1d0435ef56335ef296687e01032bb9`; bsc `0xc58c1117da964aebe91fef88f6f5703e79bda574` | ⚠️ Unaudited |
| TeleOrdinalLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x1edcaf92eadc6cc0eb17a8160382ab78c192b54f` | ⚠️ Unaudited |
| TeleOrdinalLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x4b5f925c42afc56396f97b692054bbac8da73cce`; polygon `0x5cf9c256407fcfd5055f1d5bcacb6fa5740c514b`; polygon `0xf0b8d17baf22ea98a34ea39fe615e5e68aee4ae6`; polygon `0xf631368d79562c9a89e3e6ca0034c82b9b19186f` | ⚠️ Unaudited |
| UniswapV2Connector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: bsc `0x856d80f77349f675ea7e3477ad75ef57349e777b`; polygon `0x0c28968d8a3af022f47d493402d35cb42eff0597` | ⚠️ Unaudited |
| YieldFarmingLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x1d506292b0f1aac7d74624c00238f835b3d00e66` | ⚠️ Unaudited |
| YieldFarmingLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbff35072f0271008571cb555e3953b07eb52de02` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (59)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9151879408ab58e482d875014853c161ebd6deb9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258272 | `0x93ad6c8b3a273e0b4aeebd6cf03422c885217d3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x17310b6186ff728cae39fd5b4d5feb70ab729fd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1ef3fe339aed09c920836af4a9a532b5a814e80c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x201ee701ed76d29e91e81239496c97a81f90a62a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2cec0e85995489d53c4c3822c4f7f18595eee6b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x30470c6fcef964f6df0a22bdd74b5fb3b935ed2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x31db63bd0f5852701b82057423bc8d378547169e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x31f6340ec231116d00bd70949fa0ca53e2e7b4fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3887b8e7faa2d5751a5f477ccd612ffef50f6721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x423a067699ccf73cf1fe62ef93abecca48a67863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4e3e1807aa17aed8d1fc580dda552079d9427ece` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x63c7a24b933b1dfadc43cbc7ed7a6c44987f829d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x77f33fabc74e57424bae95146692a31674a5e5da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8b3d6e8b0d2a55db1fb435472c52277a223b13c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x984e6f340137df5811c2109a0f074c34eacddb3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xba43e76308517957612b9cc463418f907eef7937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdf7f55be71e6db010de6cfc92794d96223fd898c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-258274 | `0xec4a7d93750bbce2a07fd1bc748507ea645e9d52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10d3cd258ec981eba81715190660c56387f278d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23d7c68a4e27fd1cfe3788858252e26bf6ba3c8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50de2a6d91b78268b87eef300bf5171614774297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf539871a5b1a955fe45dcbd259dfe78c231e4ee5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x3c14c942713d8c38a02155be1aa746e85bb0e7f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x423a067699ccf73cf1fe62ef93abecca48a67863` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-258276 | `0x45e4d542c570fb6194467ffedf7cc09867279a96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x5ec9b809114d38b2dc43a0a3d822a6a795cc7392` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x7b067eb73cecfd04416282aa75d9101174e05d00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x82a7e2400029d2bef4fd8ff16dab8360ab6c33e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x84e2118b71aa5b300544eb387e635d7a0be61674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x9042b082a31343dff352412136fa52157ff7fdc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xc7bdbece57a8021a9a2137eea1474bf978832d69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xd724e5709df7dc4b4ddd14b644118774146b9492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xec4a7d93750bbce2a07fd1bc748507ea645e9d52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xfa1b28052bd8087b1cf64ee9429feb324e95b0ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x076484fa0e123b765a63ba1e0fd94233dfdc17d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ba43d71522b320072c082fbae3e99b22140dca5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x167d89a98f1e2f0fa908395beea3be66b3c60a0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1b94085c1cfb947ecf89fa953061704f5a0736e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x29aeab60ebcf9f5d1b54a6041ee9040cb1bf0065` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x51169142ee7a1d1bbb8e8b82dab763bb2ef95ecb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7fbf537cb51a50f0565cf8649eab4258caac80e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x82cdf1ef21dc088a5cc687d29c85adf8daaeffbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x88f1bced6aff60ca9a8e11b6d5a19d216cf32850` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9151879408ab58e482d875014853c161ebd6deb9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-258278 | `0x93ad6c8b3a273e0b4aeebd6cf03422c885217d3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa03b761d0b9edcbe6ad67666def6e13957e2bf46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa59bebb4d61729097f6869991a2b2afa8593282c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa62ae6812aae7d9b16eac576050e34f3eed3327b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa6a8d7ed2674003fed0438243f56dc605cc028d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa9e3173cb7d6851feaa0db1c28f0bec2a5b0b213` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xad557045e5ed05693982d4e7fd1bb3c92bd801f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc1465eaea99301260feca6fbd27b2a4579594f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc4720d51a966f9c221644d3b227ecfe435adb2f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc82cdcf79889d6947ab254ac0929fcda2ad1e1a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe2dc1afee166734a3d4fccc36b18d1cb77ca93c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf802e04f31d202fa74e8bb6af4c4a119136f8a2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-258282 | `0xec4a7d93750bbce2a07fd1bc748507ea645e9d52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-258280 | `0xec4a7d93750bbce2a07fd1bc748507ea645e9d52` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 108
- Live contracts: 0
- Unknown liveness contracts: 108
- Source-verified contracts: 55
- Currently scope-matched contracts retained as-is: 0
- Classification counts: source verified unclassified=55, unverified unclassified=53

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| source verified unclassified | BitcoinRelayLogic<br>`0x013f6d7b4c6aa1a0573c7151d397695376676a29` | non_address_book | unknown | unknown | verified | n/a | `0xf560bf3cc92903c4cb2534fc447ac4adffd49822` |
| source verified unclassified | BitcoinRelayLogic<br>`0xa669d715e866647c98e1643532ca9bc9a6341ced` | non_address_book | unknown | unknown | verified | n/a | `0xf560bf3cc92903c4cb2534fc447ac4adffd49822` |
| source verified unclassified | BitcoinRelayProxy<br>`0xfcd688999c25d5493571543137ceeb4fbdb44d02` | non_address_book | unknown | unknown | verified | n/a | `0xf560bf3cc92903c4cb2534fc447ac4adffd49822` |
| source verified unclassified | Brc20RouterLogic<br>`0x3edec6617e62f055edc3ecbd410ba39e7c7adc17` | non_address_book | unknown | unknown | verified | n/a | `0xf560bf3cc92903c4cb2534fc447ac4adffd49822` |
| source verified unclassified | Brc20RouterLogic<br>`0x88641b535a36dcd403fa102295c59a154c6818f6` | non_address_book | unknown | unknown | verified | n/a | `0xf560bf3cc92903c4cb2534fc447ac4adffd49822` |
| source verified unclassified | BscConnectorLogic<br>`0xe36b16bc3aae26f2a0e936a2e2c18a4e72c9b6e7` | non_address_book | unknown | unknown | verified | n/a | `0xf560bf3cc92903c4cb2534fc447ac4adffd49822` |
| source verified unclassified | BscConnectorProxy<br>`0x90a50ae86698b52847d071e5f22d9e73d0741e53` | non_address_book | unknown | unknown | verified | n/a | `0xf560bf3cc92903c4cb2534fc447ac4adffd49822` |
| source verified unclassified | BurnRouterLogic<br>`0xdcbb3dc87aa39fe8d4e722a4e625ebe03bf74418` | non_address_book | unknown | unknown | verified | n/a | `0xf560bf3cc92903c4cb2534fc447ac4adffd49822` |
| source verified unclassified | CcExchangeRouterLogic<br>`0x521174a3a9596b484e952325670253388845e9b8` | non_address_book | unknown | unknown | verified | n/a | `0xf560bf3cc92903c4cb2534fc447ac4adffd49822` |
| source verified unclassified | CcTransferRouterLogic<br>`0x3d6d7b13707abe6b127b130c0b5c0a294c6a632e` | non_address_book | unknown | unknown | verified | n/a | `0xf560bf3cc92903c4cb2534fc447ac4adffd49822` |
| source verified unclassified | LockersLogic<br>`0x31193dcf1683683d6c81cbcd9fc0d7b417c35493` | non_address_book | unknown | unknown | verified | n/a | `0xf560bf3cc92903c4cb2534fc447ac4adffd49822` |
| source verified unclassified | LockersLogic<br>`0x507f196da387f8ebe9246b54a62dfe247fc6740d` | non_address_book | unknown | unknown | verified | n/a | `0xf560bf3cc92903c4cb2534fc447ac4adffd49822` |
| source verified unclassified | LockersLogic<br>`0xe40ba19913e22cfd33e4af8feeca98ecd93a4fc3` | non_address_book | unknown | unknown | verified | n/a | `0xf560bf3cc92903c4cb2534fc447ac4adffd49822` |
| source verified unclassified | TeleBTCLogic<br>`0x467e5a869b1d0435ef56335ef296687e01032bb9` | non_address_book | unknown | unknown | verified | n/a | `0xf560bf3cc92903c4cb2534fc447ac4adffd49822` |
| source verified unclassified | TeleBTCProxy<br>`0xc58c1117da964aebe91fef88f6f5703e79bda574` | non_address_book | unknown | unknown | verified | n/a | `0xf560bf3cc92903c4cb2534fc447ac4adffd49822` |
| source verified unclassified | UniswapV2Connector<br>`0x856d80f77349f675ea7e3477ad75ef57349e777b` | non_address_book | unknown | unknown | verified | n/a | `0xf560bf3cc92903c4cb2534fc447ac4adffd49822` |
| source verified unclassified | YieldFarmingLogic<br>`0xbff35072f0271008571cb555e3953b07eb52de02` | non_address_book | unknown | unknown | verified | n/a | `0xf560bf3cc92903c4cb2534fc447ac4adffd49822` |
| source verified unclassified | BitcoinNFTMarketplace<br>`0xe2b360bd944ccafbfffefeb97dbd8c55fdd19ddb` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | BitcoinRelay<br>`0x7c5e6bbbcd70ae0eb5abcc81c3caa4c62cf9af38` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | BitcoinRelay<br>`0x984ccdb7461feb9b18dd73016764790c2624fcf4` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | BitcoinRelay<br>`0xc7a7c6ab475138565fe0d2476ee4616862bf2467` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | BitcoinRelay<br>`0xe880e70521c03d9f90c3805d47f0e148876917b0` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | BurnRouterLogic<br>`0xaccb15511f8befdee5e5f0fad9ab7116a98dc974` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | CCBurnRouter<br>`0x2c4400019583c1733d1fdb2a5074775f0e3e4843` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | CCBurnRouter<br>`0x340ba3a368f888de5450ad2981a10127087f633d` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | CCBurnRouter<br>`0x3b5dd6fd5fed1b9072439239c5eb470df7ff8648` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | CCBurnRouter<br>`0x4a51c5be14d1f1264297d21d1ed77dfd4294f00e` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | CCBurnRouter<br>`0x868a2a0fbd01128d9bde4f4bd7ca8ac2b190441f` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | CCBurnRouter<br>`0x88f7e93585c2bb1414b7d61f2f3aea0317e28b93` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | CCBurnRouter<br>`0x8a9ce669db89e1b2276e76d96763484553071010` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | CCBurnRouter<br>`0xa474538dcc63deeef670598c7ee34418db74520d` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | CCBurnRouter<br>`0xae469f09e0e09b5551223ce83875fc2a04d420ac` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | CCBurnRouter<br>`0xc58a12537e47a6a118eb25fef6c40af7624c07be` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | CCBurnRouter<br>`0xd4ea6fbce79ca5b9c14e1893881e898f2a9aaea6` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | CCExchangeRouter<br>`0xb402441d960332d97ffcf67b09444d98ea92a1be` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | CcExchangeRouterLogic<br>`0x7b07b8ca6f7adf3b2187a7431dfa1b0978e85e69` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | CCTransferRouter<br>`0x79a138c9c6eb56a0de28990ba92e3a568f372ec3` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | CcTransferRouterLogic<br>`0x117fc50a68f0972fe093588eb50f20edf1526f52` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | CollateralPoolFactory<br>`0x5cec6212e67a23c77b3fe0607077fa4ebb0e2da0` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | CollateralPoolFactory<br>`0x8fc7a7f04a40dd816b1ea60f83daeb56e933d6d2` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | CollateralPoolFactory<br>`0xc10a67f9744a8f31f9beed14efd92cdcac3bce6b` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | InstantPool<br>`0x1866057a63cab698d7354dfda0e336735e3aba3a` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | InstantPool<br>`0x534b40ba3e6ce5fbe1ce8a6e4cbc97cf3c29c41a` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | InstantPool<br>`0x6d0ad1455f05300023e076f780ce84990ca678fd` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | InstantRouter<br>`0x80dd89ee0ce938ae41a167709a9ce166f7a5f8a7` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | InstantRouter<br>`0xf75b11999a66d57ba0e121930ec27c5059351a01` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | LiquidityMining<br>`0xad1f97961a34412a4e774db1a81a080785587ebe` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | LockersLogic<br>`0x47d033c9ccc758a95770028d6235e5afe8c69985` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | LockersLogic<br>`0x729c6c89581c4b79e5d8edba194154850bd3bf16` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | LockersLogic<br>`0xaafdfdec6d1bebda0b27f72816b316567d3669ef` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | TeleOrdinalLogic<br>`0x4b5f925c42afc56396f97b692054bbac8da73cce` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | TeleOrdinalLogic<br>`0x5cf9c256407fcfd5055f1d5bcacb6fa5740c514b` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | TeleOrdinalLogic<br>`0xf0b8d17baf22ea98a34ea39fe615e5e68aee4ae6` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | TeleOrdinalLogic<br>`0xf631368d79562c9a89e3e6ca0034c82b9b19186f` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| source verified unclassified | UniswapV2Connector<br>`0x0c28968d8a3af022f47d493402d35cb42eff0597` | non_address_book | unknown | unknown | verified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| unverified unclassified | UnnamedContract<br>`0x9151879408ab58e482d875014853c161ebd6deb9` | non_address_book | unknown | unknown | unverified | n/a | `0x1c87d6f7dad81e1c2747e55c76eec396ae8242ef` |
| unverified unclassified | UnnamedContract<br>`0x17310b6186ff728cae39fd5b4d5feb70ab729fd4` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0x1ef3fe339aed09c920836af4a9a532b5a814e80c` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0x201ee701ed76d29e91e81239496c97a81f90a62a` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0x2cec0e85995489d53c4c3822c4f7f18595eee6b1` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0x30470c6fcef964f6df0a22bdd74b5fb3b935ed2f` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0x31db63bd0f5852701b82057423bc8d378547169e` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0x31f6340ec231116d00bd70949fa0ca53e2e7b4fa` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0x3887b8e7faa2d5751a5f477ccd612ffef50f6721` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0x423a067699ccf73cf1fe62ef93abecca48a67863` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0x4e3e1807aa17aed8d1fc580dda552079d9427ece` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0x63c7a24b933b1dfadc43cbc7ed7a6c44987f829d` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0x77f33fabc74e57424bae95146692a31674a5e5da` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0x8b3d6e8b0d2a55db1fb435472c52277a223b13c7` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0x984e6f340137df5811c2109a0f074c34eacddb3d` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0xba43e76308517957612b9cc463418f907eef7937` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0xdf7f55be71e6db010de6cfc92794d96223fd898c` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0x10d3cd258ec981eba81715190660c56387f278d0` | non_address_book | unknown | unknown | unverified | n/a | `0xf560bf3cc92903c4cb2534fc447ac4adffd49822` |
| unverified unclassified | UnnamedContract<br>`0x23d7c68a4e27fd1cfe3788858252e26bf6ba3c8d` | non_address_book | unknown | unknown | unverified | n/a | `0xf560bf3cc92903c4cb2534fc447ac4adffd49822` |
| unverified unclassified | UnnamedContract<br>`0x50de2a6d91b78268b87eef300bf5171614774297` | non_address_book | unknown | unknown | unverified | n/a | `0xf560bf3cc92903c4cb2534fc447ac4adffd49822` |
| unverified unclassified | UnnamedContract<br>`0xf539871a5b1a955fe45dcbd259dfe78c231e4ee5` | non_address_book | unknown | unknown | unverified | n/a | `0xf560bf3cc92903c4cb2534fc447ac4adffd49822` |
| unverified unclassified | UnnamedContract<br>`0x3c14c942713d8c38a02155be1aa746e85bb0e7f6` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0x423a067699ccf73cf1fe62ef93abecca48a67863` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0x5ec9b809114d38b2dc43a0a3d822a6a795cc7392` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0x7b067eb73cecfd04416282aa75d9101174e05d00` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0x82a7e2400029d2bef4fd8ff16dab8360ab6c33e9` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0x84e2118b71aa5b300544eb387e635d7a0be61674` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0x9042b082a31343dff352412136fa52157ff7fdc8` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0xc7bdbece57a8021a9a2137eea1474bf978832d69` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0xd724e5709df7dc4b4ddd14b644118774146b9492` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0xec4a7d93750bbce2a07fd1bc748507ea645e9d52` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0xfa1b28052bd8087b1cf64ee9429feb324e95b0ff` | non_address_book | unknown | unknown | unverified | n/a | `0x2d3e4aeb9347c224dae7f1dc1213be082f6fddec` |
| unverified unclassified | UnnamedContract<br>`0x076484fa0e123b765a63ba1e0fd94233dfdc17d1` | non_address_book | unknown | unknown | unverified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| unverified unclassified | UnnamedContract<br>`0x0ba43d71522b320072c082fbae3e99b22140dca5` | non_address_book | unknown | unknown | unverified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| unverified unclassified | UnnamedContract<br>`0x167d89a98f1e2f0fa908395beea3be66b3c60a0d` | non_address_book | unknown | unknown | unverified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| unverified unclassified | UnnamedContract<br>`0x1b94085c1cfb947ecf89fa953061704f5a0736e0` | non_address_book | unknown | unknown | unverified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| unverified unclassified | UnnamedContract<br>`0x29aeab60ebcf9f5d1b54a6041ee9040cb1bf0065` | non_address_book | unknown | unknown | unverified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| unverified unclassified | UnnamedContract<br>`0x51169142ee7a1d1bbb8e8b82dab763bb2ef95ecb` | non_address_book | unknown | unknown | unverified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| unverified unclassified | UnnamedContract<br>`0x7fbf537cb51a50f0565cf8649eab4258caac80e5` | non_address_book | unknown | unknown | unverified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| unverified unclassified | UnnamedContract<br>`0x82cdf1ef21dc088a5cc687d29c85adf8daaeffbd` | non_address_book | unknown | unknown | unverified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| unverified unclassified | UnnamedContract<br>`0x88f1bced6aff60ca9a8e11b6d5a19d216cf32850` | non_address_book | unknown | unknown | unverified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| unverified unclassified | UnnamedContract<br>`0x9151879408ab58e482d875014853c161ebd6deb9` | non_address_book | unknown | unknown | unverified | n/a | `0x1c87d6f7dad81e1c2747e55c76eec396ae8242ef` |
| unverified unclassified | UnnamedContract<br>`0xa03b761d0b9edcbe6ad67666def6e13957e2bf46` | non_address_book | unknown | unknown | unverified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| unverified unclassified | UnnamedContract<br>`0xa59bebb4d61729097f6869991a2b2afa8593282c` | non_address_book | unknown | unknown | unverified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| unverified unclassified | UnnamedContract<br>`0xa62ae6812aae7d9b16eac576050e34f3eed3327b` | non_address_book | unknown | unknown | unverified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| unverified unclassified | UnnamedContract<br>`0xa6a8d7ed2674003fed0438243f56dc605cc028d8` | non_address_book | unknown | unknown | unverified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| unverified unclassified | UnnamedContract<br>`0xa9e3173cb7d6851feaa0db1c28f0bec2a5b0b213` | non_address_book | unknown | unknown | unverified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| unverified unclassified | UnnamedContract<br>`0xad557045e5ed05693982d4e7fd1bb3c92bd801f9` | non_address_book | unknown | unknown | unverified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| unverified unclassified | UnnamedContract<br>`0xc1465eaea99301260feca6fbd27b2a4579594f80` | non_address_book | unknown | unknown | unverified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| unverified unclassified | UnnamedContract<br>`0xc4720d51a966f9c221644d3b227ecfe435adb2f0` | non_address_book | unknown | unknown | unverified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| unverified unclassified | UnnamedContract<br>`0xc82cdcf79889d6947ab254ac0929fcda2ad1e1a9` | non_address_book | unknown | unknown | unverified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| unverified unclassified | UnnamedContract<br>`0xe2dc1afee166734a3d4fccc36b18d1cb77ca93c6` | non_address_book | unknown | unknown | unverified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |
| unverified unclassified | UnnamedContract<br>`0xf802e04f31d202fa74e8bb6af4c4a119136f8a2b` | non_address_book | unknown | unknown | unverified | n/a | `0xbffc372e2e00a247c17bf0a9ed0b993bfe3607f5` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Quantstamp-Bitcoin-EVM.pdf](https://github.com/TeleportDAO/audits/blob/main/reports/Quantstamp-Bitcoin-EVM.pdf) | Quantstamp | Audit | 2023-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 20 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14003] Quantstamp-Bitcoin-EVM.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Quantstamp-Bitcoin-EVM.pdf | BitcoinHelper | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | BitcoinRelay | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | CCBurnRouter | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | CCExchangeRouter | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | CCTransferRouter | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | CollateralPool | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | CollateralPoolFactory | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | Context | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | ERC20 | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | InstantPool | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | InstantRouter | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | LockersLib | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | LockersLogic | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | PriceOracle | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | PriceProxy | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | SafeMath | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | TeleBTC | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | TypedMemView | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | UniswapV2Connector | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | WETH | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 59 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 20 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14003] Quantstamp-Bitcoin-EVM.pdf

Fork inheritance lineage and inherited audits are included when available.
