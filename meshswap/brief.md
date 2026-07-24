# Agentic Audit Brief: Meshswap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Meshswap (`meshswap`)
- Website: [https://meshswap.fi](https://meshswap.fi)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: polygon
- Contract surface: 112 unique implementations (112 raw deployments)
- Coverage basis: 3/8 confirmed own live verified implementations (37.5%); conservative 37.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $337,020.26
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Meshswap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across polygon. Structural roles: 6 core, 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: core (6), supporting (2)
- Contract kinds: contract (8)
- Detected standards: none
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x06d057bc1129e6be214e53f04e07f1a6dcc8e390`, chain 137)
- UnnamedContract (`0x51a4b6556b21aec229f4ca372044a505fe16ce19`, chain 137)
- UnnamedContract (`0x705b40af8cecd59406cf630ab7750055c9b137b9`, chain 137)
- UnnamedContract (`0xf61e4ede9128a9fa9a128cb7d161f4e73bd464da`, chain 137)
- EcoPotVotingImpl (`0x13c5c5a5d418b5365fb30ca1ec8a9fb2a6f622d1`, chain 137)
- FactoryImpl (`0x9f3044f7f9fc8bc9ed615d54845b4577b833282d`, chain 137)
- FactoryProxy (`0x504722a6eabb3d1573bada9abd585ae177d52e7a`, chain 137)
- MESH (`0x82362ec182db3cf7829014bc61e9be8a2e82868a`, chain 137)
- RouterImpl (`0x10f4a785f458bc144e3706575924889954946639`, chain 137)
- UChildERC20Proxy (`0x2791bca1f2de4661ed88a30c99a7a9449aa84174`, chain 137)
- VotingMESHImpl (`0x176b29289f66236c65c7ac5db2400abb5955df13`, chain 137)
- WMATIC (`0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 8; live-surface rows included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/8 (37.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 99 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 12 of 112 unique; 100 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/32
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 80
- Unique implementations: 112
- Raw deployments: 112
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Theori | Tier 2 | 3 | 9.4% | 2022-05 |
| Move Labs | Tier 2 | 1 | 3.1% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FactoryImpl | unknown | project_anchor | own_supporting | 1 | polygon | unit-246455 | `0x9f3044f7f9fc8bc9ed615d54845b4577b833282d` | ✅ Audited |
| MESH | unknown | project_anchor | own_supporting | 0 | polygon | unit-246449 | `0x82362ec182db3cf7829014bc61e9be8a2e82868a` | ✅ Audited |
| RouterImpl | unknown | project_anchor | own_supporting | 1 | polygon | unit-246456 | `0x10f4a785f458bc144e3706575924889954946639` | ✅ Audited |

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ChildChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x195fe6ee6639665cceb15bcceb9980fc445dfa0b` | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafeea1de9d660d3cb53031cfe1a58de40b171ce8` | ⚠️ Unaudited |
| ChildERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0c68c638235ee32657e8f720a23cec1bfc77c77` | ⚠️ Unaudited |
| ChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f` | ⚠️ Unaudited |
| ChildERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6ebeac13f6403d19c95b6b75008b12fd21a93aab` | ⚠️ Unaudited |
| ChildMintableERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4888fab8bd39a663b63161f5ee1eae31a25b653` | ⚠️ Unaudited |
| DragonLair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf28164a485b0b2c90639e47b0f377b4a438a16b1` | ⚠️ Unaudited |
| EcoPotVotingImpl | unknown | project_anchor | own_supporting | 1 | polygon | unit-246454 | `0x13c5c5a5d418b5365fb30ca1ec8a9fb2a6f622d1` | ⚠️ Unaudited |
| ExchangeImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe13f021df700b35bb3dde0fa050c72ee71e26479` | ⚠️ Unaudited |
| FactoryProxy | unknown | project_anchor | own_supporting | 1 | polygon | unit-246452 | `0x504722a6eabb3d1573bada9abd585ae177d52e7a` | ⚠️ Unaudited |
| FxChild | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8397259c983751daf40400790063935a11afa28a` | ⚠️ Unaudited |
| GovernanceImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0e85821697009edcc94f8ae46777ac9f961bccad` | ⚠️ Unaudited |
| Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8fed083364938080dc126e32290907296e57af49` | ⚠️ Unaudited |
| MaticWETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ceb23fd6bc0add59e62ac25578270cff1b9f619` | ⚠️ Unaudited |
| MultiSigWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x06d28ab0f52b7762e7091430dabda81f4fb09abd` | ⚠️ Unaudited |
| PoolVotingImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x222dcc2d51c686c8e2116370e8fc517ae6a246d7` | ⚠️ Unaudited |
| Quick | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x831753dd7087cac61ab5644b308642cc1c33dc13` | ⚠️ Unaudited |
| QuickConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x38e8d77f4b651fb989c8b5ad274346dd5b5239ea` | ⚠️ Unaudited |
| SinglePoolFactoryImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4e5b43ae063ed7b91e00a7aa5156b5cbc51fa3fa` | ⚠️ Unaudited |
| SinglePoolImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9e84610370729a05931da5f6807c59ef82f10b39` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02a2d80ce5c021a40aec9062a6273bbc33537e1c` | ⚠️ Unaudited |
| UChildDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x490e379c9cff64944be82b849f8fd5972c7999a7` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0735a62b0b6e837fa67130589988436fd26f0e12` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02daefc2e8aad089d094579499508398e3057966` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | project_anchor | own_supporting | 1 | polygon | unit-246457 | `0x2791bca1f2de4661ed88a30c99a7a9449aa84174` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xc2132d05d31c914a87c6611c10748aeb04b58e8f` | ⚠️ Unaudited |
| VamToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1512d268a94ce119eacbf80139ad7910eb9cfbc8` | ⚠️ Unaudited |
| VotingMESHImpl | unknown | project_anchor | own_supporting | 1 | polygon | unit-246453 | `0x176b29289f66236c65c7ac5db2400abb5955df13` | ⚠️ Unaudited |
| WMATIC | unknown | project_anchor | own_supporting | 0 | polygon | unit-246446 | `0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (80)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01ab97a209298653b15d1fe98be5e725eba6a73e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x036bcd70fba687969934c1014e5919fed2f7e977` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03a74ee0c10456816dae1747782ef76b57518495` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-246445 | `0x06d057bc1129e6be214e53f04e07f1a6dcc8e390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x077eec8c55fd42584e53bfe3ba4ecf68aa4ca008` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x09462f86b93d06b5e0244a2bc620ae9d4d2f4929` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0a8da853e63bd1dee364e5428926e1cce4212c85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0e5731be11633d61a8118f7db192e4d37cef2d5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0fcf1640a6ffe56192ca897ed5c2125c2d93be79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x102876a55370439dcf6e8e0ff9de20719098b991` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x116d90b2bf1f3c49f87305ed2ed19f1bddfc4d2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1abda7c99520d4ce108ac294cb0917e1fcd32e06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1f42fed9cfff2177131f9823654d69b4573b69dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2150211ae9c04baa1b42f9c963f759c5202b5eaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x24d5ac256099844786ffac7e0f2483d257e64286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x298ad52db692e513e70238ee43ed45eee50ac2f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2f4228d4c4696591abd54b312a923acd5a1fd190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x305b45abd30f94afd9516b1091914f90d466deed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x30b9a23c4bf6fcf8c73c5c8d8e95df4c52b0aa5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x435c76e122152621a54908a10e57126430e51e15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4673eb9d6eef485000e2b94814694d493bd17629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4bc84aa15e19f2182fb5f8466feb40846ae34059` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-246447 | `0x51a4b6556b21aec229f4ca372044a505fe16ce19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x52ac80877667beac304f7cbc105ec3ec276d4db0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x52b17c3f81f806b66fb0350a23af26d3730ceb4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x543bee2f42cffb7d81ddd37972754eadf89e368f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5995d8046f431e8d4aff2ba000545143d7923b54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5edac74e6b39f050bfa8001984cc9677d1721893` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5eeb2989dd5e1c0d178e60f2bc3a9fbd82a2b504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x650a6938ec6f96f8b62ae712e5f4ad9c3fffe956` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x67ec072df571d5d6b020cd775301a5e0087ac4a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6e12ff4fa4b2039c760aa28b920796b8cbb8cf4f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-246448 | `0x705b40af8cecd59406cf630ab7750055c9b137b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x73f6df2852838cbae6b4c01a92ea5fe592246d65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x74231e3a97670f60a78f8f78b71eb40b53715f69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7c16c13b2540cda08e9f710088a17233ca1e1fca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x898561a7cab08b60ce8eeebd19987f4a41d65f5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x89d59d6a78c4dca17941d003a69fb092fa2033fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8b89f0cc37c4b16f0c516152a1fc95400674afe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9866f4312cfa0710406fa1de4df0fec5fb261bd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9880b2d41304891e5b9d5c30795d9aeb5422bbdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9a08dfd9ea8d5c59b9d70653ea43ccccb821db6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9cc9f6cb78375f9a60cb42521d5c0af8d0e9c6a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9f23c6ddce30a79eb5e25f6ab9de987e53308212` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa32c4975cff232f6c803ac6080d1e6e39fe3fb34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa63f88f0c22430f163f2fb174407cd6f192e80db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa74eb592ac87c4859981c3ac5d8327bf2737c50b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xabe1dfaec8c48625363161a8d9d1ba89438bcd90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xae0213dce834cc13b905bc7d66b95ef190518722` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb1b4dd88464c2d4470dedfc5a276264786508524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb2759e96e306ea4f0fc044ccae24433aa64f9d19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb587fb3aaa93d0f9d2229a547905e301a7a3da3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb629ab3ba6ba62badc247ff3251d91bc4bfdda16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbceb95a0bb81f8b3561b7cc5779f52b0b51e6b25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc178959d422eedd097eb1f88d3a15c38480deee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc7293772159f9a0e8f76a334fa78c87f308bb0ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc37ff13bb54fe9f225bfc5e72f24587280b4cb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcf087b1f3acc1d654796291649e68e1e77be9170` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcf988abc4afb06558e200b810313c53a16b3bb8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd08e8951061ca736b6e519560fb4aa2a15855a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd1097b3b5332ff6ecbc498f2bea948e997f46da4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd1773d54d07ee24b325ef0430dc94025ce7a1824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd1cb4ba24d8d68959c90657820f6cb40415d6b1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd377cd29ca99ee57957be0c30d5fb2e3a49ff15f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd5968e06853a2a8dfa824ba1d46b7407629450fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd5cd537cef51b2167fd5d96296d5b9a6b8a33aaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd9276178f79631c3804f96b634c0250293ce8172` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdcfcfb00f8161c62fe904e12262824bb5bedf2eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdd02c492868650218b0897223d09a9b772b635d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe3e0457a111561cc41cc5a27c18f6a7d8928673c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe4430dacfb1740625930b1e6412034f26d6b2a78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe5d8e6747194772b0b9c60179e106c392dc1cf5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe93ff692120e3ad375489373ba3a74cf106a33fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf00bc8c7db3c7e81bb49450792548cd847f91742` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf21e433c7da56477e4acf35e5cf6890b37cbec12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-246451 | `0xf61e4ede9128a9fa9a128cb7d161f4e73bd464da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf75d20fbbfad317dfada16855d3a399654cf023a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfd4016ec629de5d8eaba4d97658c8069766314b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xff059ce0f94c442ca4a0010e89bdeb7bcfe3effd` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 75
- Live contracts: 0
- Unknown liveness contracts: 75
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=75

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| polygon | unverified unclassified | UnnamedContract<br>`0x01ab97a209298653b15d1fe98be5e725eba6a73e` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x036bcd70fba687969934c1014e5919fed2f7e977` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x03a74ee0c10456816dae1747782ef76b57518495` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x077eec8c55fd42584e53bfe3ba4ecf68aa4ca008` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x09462f86b93d06b5e0244a2bc620ae9d4d2f4929` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0e5731be11633d61a8118f7db192e4d37cef2d5a` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0fcf1640a6ffe56192ca897ed5c2125c2d93be79` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x102876a55370439dcf6e8e0ff9de20719098b991` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x116d90b2bf1f3c49f87305ed2ed19f1bddfc4d2c` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1f42fed9cfff2177131f9823654d69b4573b69dc` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2150211ae9c04baa1b42f9c963f759c5202b5eaf` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x24d5ac256099844786ffac7e0f2483d257e64286` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x298ad52db692e513e70238ee43ed45eee50ac2f1` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x30b9a23c4bf6fcf8c73c5c8d8e95df4c52b0aa5f` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x435c76e122152621a54908a10e57126430e51e15` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4bc84aa15e19f2182fb5f8466feb40846ae34059` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x52ac80877667beac304f7cbc105ec3ec276d4db0` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x52b17c3f81f806b66fb0350a23af26d3730ceb4b` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x543bee2f42cffb7d81ddd37972754eadf89e368f` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5995d8046f431e8d4aff2ba000545143d7923b54` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5edac74e6b39f050bfa8001984cc9677d1721893` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5eeb2989dd5e1c0d178e60f2bc3a9fbd82a2b504` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x650a6938ec6f96f8b62ae712e5f4ad9c3fffe956` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x67ec072df571d5d6b020cd775301a5e0087ac4a5` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x6e12ff4fa4b2039c760aa28b920796b8cbb8cf4f` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x73f6df2852838cbae6b4c01a92ea5fe592246d65` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x74231e3a97670f60a78f8f78b71eb40b53715f69` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x7c16c13b2540cda08e9f710088a17233ca1e1fca` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x898561a7cab08b60ce8eeebd19987f4a41d65f5a` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x89d59d6a78c4dca17941d003a69fb092fa2033fb` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8b89f0cc37c4b16f0c516152a1fc95400674afe3` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9880b2d41304891e5b9d5c30795d9aeb5422bbdf` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9a08dfd9ea8d5c59b9d70653ea43ccccb821db6b` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9cc9f6cb78375f9a60cb42521d5c0af8d0e9c6a9` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9f23c6ddce30a79eb5e25f6ab9de987e53308212` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa63f88f0c22430f163f2fb174407cd6f192e80db` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa74eb592ac87c4859981c3ac5d8327bf2737c50b` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xabe1dfaec8c48625363161a8d9d1ba89438bcd90` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xae0213dce834cc13b905bc7d66b95ef190518722` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb587fb3aaa93d0f9d2229a547905e301a7a3da3d` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb629ab3ba6ba62badc247ff3251d91bc4bfdda16` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xbceb95a0bb81f8b3561b7cc5779f52b0b51e6b25` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc178959d422eedd097eb1f88d3a15c38480deee7` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc7293772159f9a0e8f76a334fa78c87f308bb0ec` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xcc37ff13bb54fe9f225bfc5e72f24587280b4cb9` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xcf087b1f3acc1d654796291649e68e1e77be9170` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xcf988abc4afb06558e200b810313c53a16b3bb8a` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd08e8951061ca736b6e519560fb4aa2a15855a81` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd1097b3b5332ff6ecbc498f2bea948e997f46da4` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd1773d54d07ee24b325ef0430dc94025ce7a1824` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd1cb4ba24d8d68959c90657820f6cb40415d6b1f` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd377cd29ca99ee57957be0c30d5fb2e3a49ff15f` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd5968e06853a2a8dfa824ba1d46b7407629450fe` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd5cd537cef51b2167fd5d96296d5b9a6b8a33aaf` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd9276178f79631c3804f96b634c0250293ce8172` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xdcfcfb00f8161c62fe904e12262824bb5bedf2eb` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xdd02c492868650218b0897223d09a9b772b635d1` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe3e0457a111561cc41cc5a27c18f6a7d8928673c` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe4430dacfb1740625930b1e6412034f26d6b2a78` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe5d8e6747194772b0b9c60179e106c392dc1cf5d` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe93ff692120e3ad375489373ba3a74cf106a33fc` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf00bc8c7db3c7e81bb49450792548cd847f91742` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf21e433c7da56477e4acf35e5cf6890b37cbec12` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf75d20fbbfad317dfada16855d3a399654cf023a` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0xff059ce0f94c442ca4a0010e89bdeb7bcfe3effd` | non_address_book | unknown | unknown | unverified | n/a | `0xb9e8e1e6440b3120aadd12cfff292d91a1a48d23` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0a8da853e63bd1dee364e5428926e1cce4212c85` | non_address_book | unknown | unknown | unverified | n/a | `0xeeb72446c2e98b8c4a102db5a7ec5baaae499eae` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1abda7c99520d4ce108ac294cb0917e1fcd32e06` | non_address_book | unknown | unknown | unverified | n/a | `0xeeb72446c2e98b8c4a102db5a7ec5baaae499eae` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2f4228d4c4696591abd54b312a923acd5a1fd190` | non_address_book | unknown | unknown | unverified | n/a | `0xeeb72446c2e98b8c4a102db5a7ec5baaae499eae` |
| polygon | unverified unclassified | UnnamedContract<br>`0x305b45abd30f94afd9516b1091914f90d466deed` | non_address_book | unknown | unknown | unverified | n/a | `0xeeb72446c2e98b8c4a102db5a7ec5baaae499eae` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4673eb9d6eef485000e2b94814694d493bd17629` | non_address_book | unknown | unknown | unverified | n/a | `0xeeb72446c2e98b8c4a102db5a7ec5baaae499eae` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9866f4312cfa0710406fa1de4df0fec5fb261bd3` | non_address_book | unknown | unknown | unverified | n/a | `0xeeb72446c2e98b8c4a102db5a7ec5baaae499eae` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa32c4975cff232f6c803ac6080d1e6e39fe3fb34` | non_address_book | unknown | unknown | unverified | n/a | `0xeeb72446c2e98b8c4a102db5a7ec5baaae499eae` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb1b4dd88464c2d4470dedfc5a276264786508524` | non_address_book | unknown | unknown | unverified | n/a | `0xeeb72446c2e98b8c4a102db5a7ec5baaae499eae` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb2759e96e306ea4f0fc044ccae24433aa64f9d19` | non_address_book | unknown | unknown | unverified | n/a | `0xeeb72446c2e98b8c4a102db5a7ec5baaae499eae` |
| polygon | unverified unclassified | UnnamedContract<br>`0xfd4016ec629de5d8eaba4d97658c8069766314b7` | non_address_book | unknown | unknown | unverified | n/a | `0xeeb72446c2e98b8c4a102db5a7ec5baaae499eae` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [[Theori]_meshswap_audit_rev1.0.pdf](https://github.com/meshswap-fi/meshswap/blob/main/audit/%5BTheori%5D_meshswap_audit_rev1.0.pdf) | Theori | Audit | 2022-05 | stale | Direct | contract_name | matched | 3 | 2 | 0 | 5 | high |
| [[MoveLabs]_Security_Analysis_Report_Final.pdf](https://github.com/meshswap-fi/meshswap/blob/main/audit/%5BMoveLabs%5D_Security_Analysis_Report_Final.pdf) | Move Labs | Audit | 2023-04 | stale | Direct | contract_name | matched | 2 | 1 | 0 | 8 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21398] [Theori]_meshswap_audit_rev1.0.pdf — matched: Extracted contract names from findings and scope section. Audit date from cover page.
- [21399] [MoveLabs]_Security_Analysis_Report_Final.pdf — matched: Scope section only mentions repository and commit hash, no specific contract files listed. Contract names extracted from findings and recommendations.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| [Theori]_meshswap_audit_rev1.0.pdf | Exchange | unmatched — not counted | — | mentioned in findings and scope | no |
| [Theori]_meshswap_audit_rev1.0.pdf | Factory | own proxy deployment | FactoryImpl (proxy) (selected) `0x9f3044f7f9fc8bc9ed615d54845b4577b833282d` — deployed 2022-05-02 11:02:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [Theori]_meshswap_audit_rev1.0.pdf | MESH | own contract | MESH (selected) `0x82362ec182db3cf7829014bc61e9be8a2e82868a` — deployed 2022-04-25 12:35:17+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [Theori]_meshswap_audit_rev1.0.pdf | MESHswapRouter | own proxy deployment | RouterImpl (proxy) (selected) `0x10f4a785f458bc144e3706575924889954946639` — deployed 2022-05-02 11:02:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [Theori]_meshswap_audit_rev1.0.pdf | PlusPool | unmatched — not counted | — | mentioned in findings | no |
| [Theori]_meshswap_audit_rev1.0.pdf | BuybackFund | unmatched — not counted | — | mentioned in findings | no |
| [Theori]_meshswap_audit_rev1.0.pdf | Governance | unmatched — not counted | — | mentioned in findings | no |
| [Theori]_meshswap_audit_rev1.0.pdf | SinglePool | unmatched — not counted | — | mentioned in findings | no |
| [MoveLabs]_Security_Analysis_Report_Final.pdf | ConcentratedFactory | unmatched — not counted | — | mentioned in Issue 1 | no |
| [MoveLabs]_Security_Analysis_Report_Final.pdf | BuybackFund | unmatched — not counted | — | mentioned in Recommendation 1 | no |
| [MoveLabs]_Security_Analysis_Report_Final.pdf | MESHswapOracle | unmatched — not counted | — | mentioned in Recommendation 1 | no |
| [MoveLabs]_Security_Analysis_Report_Final.pdf | MESHswapRouter | own proxy deployment | RouterImpl (proxy) (selected) `0x10f4a785f458bc144e3706575924889954946639` — deployed 2022-05-02 11:02:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [MoveLabs]_Security_Analysis_Report_Final.pdf | EIP2771Recipient | unmatched — not counted | — | mentioned in Recommendation 1 | no |
| [MoveLabs]_Security_Analysis_Report_Final.pdf | MESHswapLibrary | unmatched — not counted | — | mentioned in Recommendation 1 | no |
| [MoveLabs]_Security_Analysis_Report_Final.pdf | LeveragedUser | unmatched — not counted | — | mentioned in Recommendation 2 | no |
| [MoveLabs]_Security_Analysis_Report_Final.pdf | Exchange | unmatched — not counted | — | mentioned in Scenario 1 | no |
| [MoveLabs]_Security_Analysis_Report_Final.pdf | PoolVoting | own contract | 0x705b40… (selected) `0x705b40af8cecd59406cf630ab7750055c9b137b9` — deployed 2022-05-02 11:02:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [MoveLabs]_Security_Analysis_Report_Final.pdf | PlusPool | unmatched — not counted | — | mentioned in Scenario 2 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0x13c5c5a5d418b5365fb30ca1ec8a9fb2a6f622d1` | EcoPotVotingImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x504722a6eabb3d1573bada9abd585ae177d52e7a` | FactoryProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x2791bca1f2de4661ed88a30c99a7a9449aa84174` | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x176b29289f66236c65c7ac5db2400abb5955df13` | VotingMESHImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270` | WMATIC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 80 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 13 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: unique_name=5

Fork inheritance lineage and inherited audits are included when available.
