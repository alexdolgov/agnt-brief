# Agentic Audit Brief: Maverick Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Maverick Protocol (`maverick-protocol`)
- Website: [https://www.mav.xyz](https://www.mav.xyz)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, bsc, ethereum, goerli, scroll, zksync-era
- Contract surface: 148 unique implementations (178 raw deployments)
- Coverage basis: 0/21 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,717,046.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Maverick Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 21 contract row(s) across arbitrum, base, bsc, ethereum, goerli, scroll, zksync-era. Structural roles: 12 core, 5 supporting, 4 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 21
- Structural roles: core (12), supporting (5), unclassified (4)
- Contract kinds: contract (21)
- Detected standards: erc20 (6), multicall (6), ownable (6), erc165 (5), erc20permit (3), erc721 (2)
- Frameworks: openzeppelin (17), prb-math (6), layerzero (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 32 contracts are derived from known codebases. 32 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xeb6625d65a0553c9dbc64449e56abfe519bd9c9b`, chain 1)
- UnnamedContract (`0x76311728ff86054ad4ac52d2e9ca005bc702f589`, chain 56)
- UnnamedContract (`0x0e70ca6f0f1a96abaa4bfb2cd4ac113af3d4a5a3`, chain 324)
- UnnamedContract (`0x17132ce52d40248f5077f4f51c6e3bdf7682749f`, chain 324)
- UnnamedContract (`0x2c1a605f843a2e18b7d7772f0ce23c236accf7f5`, chain 324)
- UnnamedContract (`0x39e098a153ad69834a9dac32f0fca92066ad03f4`, chain 324)
- UnnamedContract (`0x57d47f505edaa8ae1efd807a860a79a28be06449`, chain 324)
- UnnamedContract (`0x787c09494ec8bcb24dcaf8659e7d5d69979ee508`, chain 324)
- UnnamedContract (`0x7edcb053d4598a145ddaf5260cf89a32263a2807`, chain 324)
- UnnamedContract (`0x852639ee9dd090d30271832332501e87d287106c`, chain 324)
- UnnamedContract (`0xfd54762d435a490405dda0fbc92b7168934e8525`, chain 324)
- UnnamedContract (`0x0d8127a01bdb311378ed32f5b81690dd917dba35`, chain 8453)
- UnnamedContract (`0x32aed3bce901da12ca8489788f3a99fce1056e14`, chain 8453)
- UnnamedContract (`0xb2855783a346735e4aae0c1eb894def861fa9b45`, chain 8453)
- MaverickToken (`0x7448c7456a97769f6cd04f1e83a4a23ccdc46abd`, chain 1)
- MaverickToken (`0xd691d9a68c887bdf34da8c36f63487333acfd103`, chain 56)
- MaverickToken (`0x64b88c73a5dfa78d1713fe1b4c69a22d7e0faaa7`, chain 8453)
- PoolInformation (`0xb3916179619eef2497c646e664be6e13cd1ab445`, chain 56)
- PoolPositionAndRewardFactorySlim (`0x4f24d73773fcce560f4fd641125c23a2b93fcb05`, chain 1)
- PoolPositionAndRewardFactorySlim (`0xfc328ea7700a86a9ccbe281d44c258385e26a9c0`, chain 56)
- PoolPositionManager (`0xe7583af5121a8f583efd82767cccfeb71069d93a`, chain 1)
- PoolPositionManager (`0x2d11545d36ffa0b8558e83c26e45cfaf14bdbab2`, chain 56)
- PoolPositionManager (`0xc402d13b0d04867649a632f17528c753d8f6fbd2`, chain 8453)
- Position (`0x4a3e49f77a2a5b60682a2d6b8899c7c5211eb646`, chain 1)
- Position (`0x23aeaf001e5df9d7410ee6c6916f502b7ac8e9d0`, chain 56)
- PositionInspector (`0x456a37144162900799f405be34f815de7c3da53c`, chain 1)
- PositionInspector (`0x70cd6087033e0b99e4e449d3b904fad194d888a0`, chain 56)
- Router (`0xbbf1ee38152e9d8e3470dc47947eaa65dca94913`, chain 1)
- Router (`0xd53a9f3fae2bd46d35e9a30ba58112a585542869`, chain 56)
- VotingEscrow (`0x4949ac21d5b2a0ccd303c20425eeb29dccba66d8`, chain 1)
- VotingEscrow (`0xe6108f1869d37e5076a56168c66a1607edb10819`, chain 56)
- VotingEscrow (`0xfccb5263148fbf11d58433af6feeff0cc49e0ea5`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 21; live-surface rows included: 21 (21 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 35/42 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/21 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 35 own, 7 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 106 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 35 of 148 unique; 113 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/41
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 107
- Unique implementations: 148
- Raw deployments: 178
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (41)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LockupDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x58adf9953e5a2d175a15dc5807aca3520bf46cb3`; ethereum `0xf4e8cbbf4baa4f7514f4fa918734ee77727dcf1d` | ⚠️ Unaudited |
| MaverickToken | token | project_anchor | own_supporting | 0 | ethereum | unit-246202 | `0x7448c7456a97769f6cd04f1e83a4a23ccdc46abd` | ⚠️ Unaudited |
| MaverickToken | token | project_anchor | own_supporting | 0 | bsc | unit-246225 | `0xd691d9a68c887bdf34da8c36f63487333acfd103` | ⚠️ Unaudited |
| MaverickToken | token | project_anchor | own_supporting | 0 | base | unit-246231 | `0x64b88c73a5dfa78d1713fe1b4c69a22d7e0faaa7` | ⚠️ Unaudited |
| MaverickV2RewardFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0x37232785acd3eaddfd784db3f9ecc1f8bcbd7ec7`; bsc `0x443b1f86d45c1ddc60b355d5a8a931656ab25267`; bsc `0x7573b601b2e4e0cdc8fbaa328e08e733c697c565`; base `0x1cdc67950a68256c5157987bbf700e94595807f8` | ⚠️ Unaudited |
| MaverickV2RewardRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc0c3bc532690af8922a2f260c6e1deb6cfab45a0` | ⚠️ Unaudited |
| MaverickV2RewardRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: bsc `0x5deb1bae837374f988d8a30cc0fbccbc63892bb3`; base `0xe7c73727c1b67a2fa47e63dcbaa4859777aef392`; arbitrum `0x293a7d159c5ad1b36b784998de5563fe36963460`; scroll `0xd837fcba68a6a5aa63f791ea51f258d30546d2c1` | ⚠️ Unaudited |
| MaverickV2Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | 5 deployments: ethereum `0x62e31802c6145a2d5e842eed8efe01fc224422fa`; bsc `0x374bfcc264678c67a582d067ad91f1951bc6b20f`; base `0x5eded0d7e76c563ff081ca01d9d12d6b404df527`; arbitrum `0x5c3b380e5aeec389d1014da3eb372fa2c9e0fc76`; scroll `0x15d5ff975c1181faf938cd33bd0633435bdfa18d` | ⚠️ Unaudited |
| MaverickV2VotingEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd5d8cb7569bb843c3b8fa98dbd5960d37e83ea8d` | ⚠️ Unaudited |
| MaverickV2VotingEscrowFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1de8c03c2d5dd021bd456bc4bb4f0ecd85f99443` | ⚠️ Unaudited |
| MaverickV2VotingEscrowWSync | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0xc6addb3327a7d4b3b604227f82a6259ca7112053`; bsc `0x675178ae86a75ee7d7ef81e30a91e1798306094c`; base `0x05b1b801191b41a21b9c0bfd4c4ef8952eb28cd9` | ⚠️ Unaudited |
| PoolInformation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246197 | `0x0087d11551437c3964dddf0f4fa58836c5c5d949` | ⚠️ Unaudited |
| PoolInformation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9980ce3b5570e41324904f46a06ce7b466925e23`; ethereum `0xadc6ced7666779ede88e82c95e363450ac59bfd3`; bsc `0x9e10c5ab6dccd5f709d223ee60ca912c2c2dbc56` | ⚠️ Unaudited |
| PoolInformation | unknown | project_anchor | own_supporting | 0 | bsc | unit-246224 | `0xb3916179619eef2497c646e664be6e13cd1ab445` | ⚠️ Unaudited |
| PoolInformation | unknown | project_anchor | own_supporting | 0 | base | unit-246232 | `0x6e230d0e457ea2398fb3a22fb7f9b7f68f06a14d` | ⚠️ Unaudited |
| PoolPositionAndRewardFactorySlim | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246201 | `0x4f24d73773fcce560f4fd641125c23a2b93fcb05` | ⚠️ Unaudited |
| PoolPositionAndRewardFactorySlim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x550056a68cb155b6cc3def4a7fa656260e7842e2`; ethereum `0x56c6925454e84764c2a7fa185d898ffef2a29cde`; ethereum `0x9b8c85047b2988807d0f3aa0eb26f7bfc2de25fe`; ethereum `0xdf81675604c1ba7e524294a06a4a91036142635a`; ethereum `0xff5a095388edc955d542dd72c0fdde9a0e4792f4` | ⚠️ Unaudited |
| PoolPositionAndRewardFactorySlim | unknown | project_anchor | own_supporting | 0 | bsc | unit-246227 | `0xfc328ea7700a86a9ccbe281d44c258385e26a9c0` | ⚠️ Unaudited |
| PoolPositionBaseDeployerSlim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x34c4055cb3250f7e042e9e5aeb20e22ae15a19d5`; ethereum `0x683a3086804260b3f6779ed7c01f9a15073561b3` | ⚠️ Unaudited |
| PoolPositionDynamicDeployerSlim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6db7325569e4049f9942114e166741a3ee819760`; ethereum `0x85e3f10dc62c82e352a647f98a7291e5450b2b1b` | ⚠️ Unaudited |
| PoolPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1468d02ba11037552dcd61bd4da81fbcca99aeed` | ⚠️ Unaudited |
| PoolPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x26ed58a583992cec22793a91147a14dcd386937f`; ethereum `0x873bbcc36be3fd695a0a2f4fc964a87078b2efb5`; ethereum `0xc402d13b0d04867649a632f17528c753d8f6fbd2`; ethereum `0xf0c33ee1918850710675ba7aff30c15e3e7909e9`; ethereum `0xffd7b20e269d6428a759365de8400282aab8ecca` | ⚠️ Unaudited |
| PoolPositionManager | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-246237 | `0xe7583af5121a8f583efd82767cccfeb71069d93a` | ⚠️ Unaudited |
| PoolPositionManager | core_logic | project_anchor | own_supporting | 0 | bsc | unit-246221 | `0x2d11545d36ffa0b8558e83c26e45cfaf14bdbab2` | ⚠️ Unaudited |
| PoolPositionManager | core_logic | project_anchor | own_supporting | 0 | base | unit-246234 | `0xc402d13b0d04867649a632f17528c753d8f6fbd2` | ⚠️ Unaudited |
| Position | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246200 | `0x4a3e49f77a2a5b60682a2d6b8899c7c5211eb646` | ⚠️ Unaudited |
| Position | unknown | project_anchor | own_supporting | 0 | bsc | unit-246220 | `0x23aeaf001e5df9d7410ee6c6916f502b7ac8e9d0` | ⚠️ Unaudited |
| PositionInspector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x19e86af73880cee5cd59fe23b2d9331b571ea629`; ethereum `0x43c4180142f4ea69c34ac680bbe24bb460fe4752`; ethereum `0x5cb6ced55c8c5486648cf30f6585b2b864f7b308` | ⚠️ Unaudited |
| PositionInspector | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246198 | `0x456a37144162900799f405be34f815de7c3da53c` | ⚠️ Unaudited |
| PositionInspector | unknown | project_anchor | own_supporting | 0 | bsc | unit-246222 | `0x70cd6087033e0b99e4e449d3b904fad194d888a0` | ⚠️ Unaudited |
| PositionInspector | unknown | project_anchor | own_supporting | 0 | base | unit-246230 | `0x550056a68cb155b6cc3def4a7fa656260e7842e2` | ⚠️ Unaudited |
| PositionMetadata | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd603806aa2cbe94f2fc3750aec79e67f69aa047` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x557a93de81b379e10a4aa7b8ac0631ec6b4b0ffd`; ethereum `0x9f1ec8f6a6644788bc7b6d27d0716225b9da0014`; ethereum `0xb2855783a346735e4aae0c1eb894def861fa9b45`; ethereum `0xc945dc38952b9b2ae19d05a45d4cfd7882114ce0` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 1 | ethereum | unit-246236 | `0xbbf1ee38152e9d8e3470dc47947eaa65dca94913` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc3b7af1d8c3ca78f375eb125f0211164b9071cc0` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 1 | bsc | unit-246238 | `0xd53a9f3fae2bd46d35e9a30ba58112a585542869` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c93675719ad43648a1ab5f735dcaaa08e130be4` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-246199 | `0x4949ac21d5b2a0ccd303c20425eeb29dccba66d8` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-246226 | `0xe6108f1869d37e5076a56168c66a1607edb10819` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | project_anchor | own_supporting | 0 | base | unit-246235 | `0xfccb5263148fbf11d58433af6feeff0cc49e0ea5` | ⚠️ Unaudited |
| WrappedEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x5300000000000000000000000000000000000004` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (107)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01538aa697ce8cc8252c70c41452dae86ce22a3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d621cd476628cefb56e8b481eb33196a0962814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d8127a01bdb311378ed32f5b81690dd917dba35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e632f57b6d2634c6df21a4f199ddd07e5ff2f98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32aed3bce901da12ca8489788f3a99fce1056e14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b4a40e7a8197e2e719d416d143564a5d36b660d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x472a978eef47f73382f16f78300cbce3c467581c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a585e0f7c18e2c414221d6402652d5e0990e5f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4faf448121bf2985b991c0261dd356a9803b3cae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53ee77b474f42936e61200f99f97885f365323aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56220668f583031680db6bf0a6fbfeef980adc00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5740ca1b634d772fb5edb8bbc380fa982623e0b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x583a2e74a9926c6d8f8876b6aff634b89f8493d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aeaa98d7e2b7c7af8a9a88a03cd8a1bb8571f28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c814b1d7ca8e1b85ec9a07d458652d2e5fb7f16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f972613902b8d05037f3ecc2de3633e7acf09b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65a3ad03be97619284ba7aa1e3ca05638b9d6364` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66704c7f74b9cc73c35cb8d2c31fc8801ab29dc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a68a97b245fb32ab65a1386852197b3c0cbce33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b5e43c834e349cd91958a8a423c6400ce2e231d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x758f7a7a66435537f498599956cf690d04f0a2ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a0271cf5566874e8dd0d5d71921c592df8d7cb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x836179e1759f7fdf724ba8396375e5b641b6dd99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x909b6a06d27e92135a64be496dd10d5e5dfec71f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cb19b182560a766d161d2dab1cdf39e8d82192a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa101007385d0f85f0fb13d35044a0ec14d31396b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5ebd82503c72299073657957f41b9cea6c0a43a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa720177e000a5681f896e7d1994bbfcb85af37cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa5bf61a664109e959d69c38734d4ea7df74e456` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab1a01392454cbf07f060a9585b15be0255b6c8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0f48509186948b52d22bc23c74e02165a919ff9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc23523ba6424bc39e0cbb43babd7d4eded3d39ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2ac59a56038eb2cbb9d65d1edaaa929c284b13f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc55b117108080f18f3022c96f787e7336952a49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcbb81f9c56dba7b082ea6b780bd8e764dae2c19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde2a3018e67e16128e0dcccebd219b01be3d8b11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf9a80f5e3e83a0651e09ff5761b4802789e0952` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246203 | `0xeb6625d65a0553c9dbc64449e56abfe519bd9c9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec95f6d459b35226487568dc1c31d9cccd828a14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee31636cffd543eb44a825783b28f71a998fb240` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfde7a3ff5991de2332b1b357a9ef79e8caac9566` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-246213 | `0x0eb806b0dae0d9639a531f1eb820d8f94fb9e941` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-246214 | `0x46040d596fe176a1b88a43be3537d9f6365ccbe1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-246215 | `0x625cf8d5c6ae5af9b359becb1b1c4b63b8b8d56c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-246216 | `0x6292b737e6640223eb783f1355737315985ece49` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-246217 | `0x680ca064accebdf5b7b8079924c5d0bb79302285` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-246218 | `0x9563fdb01bfbf3d6c548c2c64e446cb5900aca88` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-246219 | `0xd9254a4e05c727c6797930ba4799a6f39f6039c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x205b88a1479431edb5117c15c1262c6e702eb461` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ace04a88188b084997af8cdbca5038b6411ad64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f3fafdbcd55102a4db9564898109b7a4ce4d580` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4320701c37ee0fa0702b10c7ebc369ae50738194` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-246223 | `0x76311728ff86054ad4ac52d2e9ca005bc702f589` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78968ecd61797138a46c4f8809e60c2902d0728a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x830c9e0295730bbb220bd78346c6499ff37851fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x999929ab02d9ad91d0c47175a3d57388246dec44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9a0567d09b2d85e5aeddf7159fdbdb2cb4a52c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbccbe11a0933a5b9f02933a0511bfa25ff0f3cbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5de82d5dc9a167b0b94c35e4ffb9d9fc889fbf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1b19b8577208be5d02456643e74f1aacef1bde6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb5016eb1ca4cede1ae3194faec27c69670edfa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd1db14d30da3ce60627621e17148d6175348849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf9a80f5e3e83a0651e09ff5761b4802789e0952` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb223179efa75b1f2b592f5d0281c3e6e4111002` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-246204 | `0x0e70ca6f0f1a96abaa4bfb2cd4ac113af3d4a5a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x11244d8b724de7788f62667791e35284e191745f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-246205 | `0x17132ce52d40248f5077f4f51c6e3bdf7682749f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x270a03bfc3ea123c041d4a0c72d30202a514d845` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-246206 | `0x2c1a605f843a2e18b7d7772f0ce23c236accf7f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-246207 | `0x39e098a153ad69834a9dac32f0fca92066ad03f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x3e1c4b57c9d9624f2841f07c6328d3c25ca30c79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x432e6791d35dc6c638f44e949a5c0228e4048244` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x4d93c58b348d99969257cec007cfb31b410b21a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x521b444d5f9bb4b36cdd771f4d85ccd0b291fb92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-246208 | `0x57d47f505edaa8ae1efd807a860a79a28be06449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x5aea5775959fbc2557cc8789bc1bf90a239d9a91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-246209 | `0x787c09494ec8bcb24dcaf8659e7d5d69979ee508` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x7a6902af768a06bdfab4f076552036bf68d1dc56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-246210 | `0x7edcb053d4598a145ddaf5260cf89a32263a2807` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-246211 | `0x852639ee9dd090d30271832332501e87d287106c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x9439280a7d04fca28d12a4eb74c92173241d5b2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0xad8262e847676e7eddafee664c4fd492789260ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0xc9e5f0832c96f8e2eede472c1b87621cbb86d7e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0xd32ce31cac98cac0631764b8286358c0606d87f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0xe86151af9cc43533add87921c381da11c314debf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-246212 | `0xfd54762d435a490405dda0fbc92b7168934e8525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x01538aa697ce8cc8252c70c41452dae86ce22a3e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-246228 | `0x0d8127a01bdb311378ed32f5b81690dd917dba35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-246229 | `0x32aed3bce901da12ca8489788f3a99fce1056e14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b4a40e7a8197e2e719d416d143564a5d36b660d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3fa57c30ff8b13f84817416cd748b2260ce40b9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4f24d73773fcce560f4fd641125c23a2b93fcb05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x583a2e74a9926c6d8f8876b6aff634b89f8493d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x65a3ad03be97619284ba7aa1e3ca05638b9d6364` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x873bbcc36be3fd695a0a2f4fc964a87078b2efb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8a4c87252bcabb1b930ba6b675d0fb7eb6ba54a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-246233 | `0xb2855783a346735e4aae0c1eb894def861fa9b45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbbf1ee38152e9d8e3470dc47947eaa65dca94913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xddd2de45eded93453eb2deb9c061ed1c5edb8aaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdf033790907c60c9b81ae355f76f74f52f92114a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb6625d65a0553c9dbc64449e56abfe519bd9c9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x353904e4afda57e8c4353a2eb173e566d8df826c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6a534ccd08ab6aeb70336f345edf563dc5b84a84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x102f936b0fc2e74dc34e45b601fabaa522f381f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x11c0f55102790f84a6f132d8b25fdfe1c96d0992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x51e4ae1ba70d657eef8e31a2cb6a8b9aa61ab84e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x873b272d7493da5860e9c513cb805ff3287d8470` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 100
- Live contracts: 11
- Unknown liveness contracts: 89
- Source-verified contracts: 37
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=1, contamination review=5, exact address book overlap=8, source verified unclassified=26, unverified unclassified=60

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | VotingEscrow<br>`0x0c93675719ad43648a1ab5f735dcaaa08e130be4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x952ba29224acdbf783cd76fb49e5eca871ef851a` |
| contamination review | LockupDistributor<br>`0x58adf9953e5a2d175a15dc5807aca3520bf46cb3` | non_address_book | unknown | unknown | verified | n/a | `0x952ba29224acdbf783cd76fb49e5eca871ef851a` |
| contamination review | PoolInformation<br>`0x0087d11551437c3964dddf0f4fa58836c5c5d949` | project_anchor | unknown | live | verified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |
| contamination review | PositionInspector<br>`0x19e86af73880cee5cd59fe23b2d9331b571ea629` | non_address_book | unknown | unknown | verified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| contamination review | PoolInformation<br>`0x6e230d0e457ea2398fb3a22fb7f9b7f68f06a14d` | project_anchor | unknown | live | verified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |
| contamination review | PositionInspector<br>`0x550056a68cb155b6cc3def4a7fa656260e7842e2` | project_anchor | unknown | live | verified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |
| exact address book overlap | PoolPositionAndRewardFactorySlim<br>`0x4f24d73773fcce560f4fd641125c23a2b93fcb05` | project_anchor | unknown | live | verified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |
| exact address book overlap | PositionInspector<br>`0x456a37144162900799f405be34f815de7c3da53c` | project_anchor | unknown | live | verified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| exact address book overlap | UnnamedContract<br>`0xeb6625d65a0553c9dbc64449e56abfe519bd9c9b` | project_anchor | unknown | live | unverified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |
| exact address book overlap | PoolInformation<br>`0xb3916179619eef2497c646e664be6e13cd1ab445` | project_anchor | unknown | live | verified | n/a | `0x2d7e59f1e0f7d23db6a40ff9b57bca3d632403ae` |
| exact address book overlap | PoolPositionAndRewardFactorySlim<br>`0xfc328ea7700a86a9ccbe281d44c258385e26a9c0` | project_anchor | unknown | live | verified | n/a | `0x2d7e59f1e0f7d23db6a40ff9b57bca3d632403ae` |
| exact address book overlap | PositionInspector<br>`0x70cd6087033e0b99e4e449d3b904fad194d888a0` | project_anchor | unknown | live | verified | n/a | `0x2d7e59f1e0f7d23db6a40ff9b57bca3d632403ae` |
| exact address book overlap | UnnamedContract<br>`0x76311728ff86054ad4ac52d2e9ca005bc702f589` | project_anchor | unknown | live | unverified | n/a | `0x2d7e59f1e0f7d23db6a40ff9b57bca3d632403ae` |
| exact address book overlap | UnnamedContract<br>`0xb2855783a346735e4aae0c1eb894def861fa9b45` | project_anchor | unknown | live | unverified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |
| source verified unclassified | LockupDistributor<br>`0xf4e8cbbf4baa4f7514f4fa918734ee77727dcf1d` | non_address_book | unknown | unknown | verified | n/a | `0x952ba29224acdbf783cd76fb49e5eca871ef851a` |
| source verified unclassified | PoolInformation<br>`0x9980ce3b5570e41324904f46a06ce7b466925e23` | non_address_book | unknown | unknown | verified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |
| source verified unclassified | PoolInformation<br>`0xadc6ced7666779ede88e82c95e363450ac59bfd3` | non_address_book | unknown | unknown | verified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| source verified unclassified | PoolPositionAndRewardFactorySlim<br>`0x550056a68cb155b6cc3def4a7fa656260e7842e2` | non_address_book | unknown | unknown | verified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |
| source verified unclassified | PoolPositionAndRewardFactorySlim<br>`0x56c6925454e84764c2a7fa185d898ffef2a29cde` | non_address_book | unknown | unknown | verified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| source verified unclassified | PoolPositionAndRewardFactorySlim<br>`0x9b8c85047b2988807d0f3aa0eb26f7bfc2de25fe` | non_address_book | unknown | unknown | verified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| source verified unclassified | PoolPositionAndRewardFactorySlim<br>`0xdf81675604c1ba7e524294a06a4a91036142635a` | non_address_book | unknown | unknown | verified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| source verified unclassified | PoolPositionAndRewardFactorySlim<br>`0xff5a095388edc955d542dd72c0fdde9a0e4792f4` | non_address_book | unknown | unknown | verified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| source verified unclassified | PoolPositionBaseDeployerSlim<br>`0x34c4055cb3250f7e042e9e5aeb20e22ae15a19d5` | non_address_book | unknown | unknown | verified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| source verified unclassified | PoolPositionBaseDeployerSlim<br>`0x683a3086804260b3f6779ed7c01f9a15073561b3` | non_address_book | unknown | unknown | verified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| source verified unclassified | PoolPositionDynamicDeployerSlim<br>`0x6db7325569e4049f9942114e166741a3ee819760` | non_address_book | unknown | unknown | verified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| source verified unclassified | PoolPositionDynamicDeployerSlim<br>`0x85e3f10dc62c82e352a647f98a7291e5450b2b1b` | non_address_book | unknown | unknown | verified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| source verified unclassified | PoolPositionManager<br>`0x1468d02ba11037552dcd61bd4da81fbcca99aeed` | non_address_book | unknown | unknown | verified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| source verified unclassified | PoolPositionManager<br>`0x26ed58a583992cec22793a91147a14dcd386937f` | non_address_book | unknown | unknown | verified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| source verified unclassified | PoolPositionManager<br>`0x873bbcc36be3fd695a0a2f4fc964a87078b2efb5` | non_address_book | unknown | unknown | verified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |
| source verified unclassified | PoolPositionManager<br>`0xc402d13b0d04867649a632f17528c753d8f6fbd2` | non_address_book | unknown | unknown | verified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |
| source verified unclassified | PoolPositionManager<br>`0xf0c33ee1918850710675ba7aff30c15e3e7909e9` | non_address_book | unknown | unknown | verified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| source verified unclassified | PoolPositionManager<br>`0xffd7b20e269d6428a759365de8400282aab8ecca` | non_address_book | unknown | unknown | verified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| source verified unclassified | PositionInspector<br>`0x43c4180142f4ea69c34ac680bbe24bb460fe4752` | non_address_book | unknown | unknown | verified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| source verified unclassified | PositionInspector<br>`0x5cb6ced55c8c5486648cf30f6585b2b864f7b308` | non_address_book | unknown | unknown | verified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| source verified unclassified | PositionMetadata<br>`0xfd603806aa2cbe94f2fc3750aec79e67f69aa047` | non_address_book | unknown | unknown | verified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| source verified unclassified | Router<br>`0x557a93de81b379e10a4aa7b8ac0631ec6b4b0ffd` | non_address_book | unknown | unknown | verified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| source verified unclassified | Router<br>`0x9f1ec8f6a6644788bc7b6d27d0716225b9da0014` | non_address_book | unknown | unknown | verified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| source verified unclassified | Router<br>`0xb2855783a346735e4aae0c1eb894def861fa9b45` | non_address_book | unknown | unknown | verified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |
| source verified unclassified | Router<br>`0xc945dc38952b9b2ae19d05a45d4cfd7882114ce0` | non_address_book | unknown | unknown | verified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| source verified unclassified | PoolInformation<br>`0x9e10c5ab6dccd5f709d223ee60ca912c2c2dbc56` | non_address_book | unknown | unknown | verified | n/a | `0x2d7e59f1e0f7d23db6a40ff9b57bca3d632403ae` |
| unverified unclassified | UnnamedContract<br>`0x01538aa697ce8cc8252c70c41452dae86ce22a3e` | non_address_book | unknown | unknown | unverified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |
| unverified unclassified | UnnamedContract<br>`0x0d621cd476628cefb56e8b481eb33196a0962814` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0x0d8127a01bdb311378ed32f5b81690dd917dba35` | non_address_book | unknown | unknown | unverified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |
| unverified unclassified | UnnamedContract<br>`0x2e632f57b6d2634c6df21a4f199ddd07e5ff2f98` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0x32aed3bce901da12ca8489788f3a99fce1056e14` | non_address_book | unknown | unknown | unverified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |
| unverified unclassified | UnnamedContract<br>`0x3b4a40e7a8197e2e719d416d143564a5d36b660d` | non_address_book | unknown | unknown | unverified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |
| unverified unclassified | UnnamedContract<br>`0x472a978eef47f73382f16f78300cbce3c467581c` | non_address_book | unknown | unknown | unverified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |
| unverified unclassified | UnnamedContract<br>`0x4faf448121bf2985b991c0261dd356a9803b3cae` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0x53ee77b474f42936e61200f99f97885f365323aa` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0x56220668f583031680db6bf0a6fbfeef980adc00` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0x583a2e74a9926c6d8f8876b6aff634b89f8493d7` | non_address_book | unknown | unknown | unverified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |
| unverified unclassified | UnnamedContract<br>`0x5aeaa98d7e2b7c7af8a9a88a03cd8a1bb8571f28` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0x5c814b1d7ca8e1b85ec9a07d458652d2e5fb7f16` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0x5f972613902b8d05037f3ecc2de3633e7acf09b5` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0x65a3ad03be97619284ba7aa1e3ca05638b9d6364` | non_address_book | unknown | unknown | unverified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |
| unverified unclassified | UnnamedContract<br>`0x66704c7f74b9cc73c35cb8d2c31fc8801ab29dc6` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0x6a68a97b245fb32ab65a1386852197b3c0cbce33` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0x6b5e43c834e349cd91958a8a423c6400ce2e231d` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0x758f7a7a66435537f498599956cf690d04f0a2ec` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0x7a0271cf5566874e8dd0d5d71921c592df8d7cb8` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0x836179e1759f7fdf724ba8396375e5b641b6dd99` | non_address_book | unknown | unknown | unverified | n/a | `0x952ba29224acdbf783cd76fb49e5eca871ef851a` |
| unverified unclassified | UnnamedContract<br>`0x909b6a06d27e92135a64be496dd10d5e5dfec71f` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0x9cb19b182560a766d161d2dab1cdf39e8d82192a` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0xa101007385d0f85f0fb13d35044a0ec14d31396b` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0xa5ebd82503c72299073657957f41b9cea6c0a43a` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0xa720177e000a5681f896e7d1994bbfcb85af37cd` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0xaa5bf61a664109e959d69c38734d4ea7df74e456` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0xab1a01392454cbf07f060a9585b15be0255b6c8d` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0xb0f48509186948b52d22bc23c74e02165a919ff9` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0xc23523ba6424bc39e0cbb43babd7d4eded3d39ab` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0xc2ac59a56038eb2cbb9d65d1edaaa929c284b13f` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0xcc55b117108080f18f3022c96f787e7336952a49` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0xdcbb81f9c56dba7b082ea6b780bd8e764dae2c19` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0xde2a3018e67e16128e0dcccebd219b01be3d8b11` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0xdf9a80f5e3e83a0651e09ff5761b4802789e0952` | non_address_book | unknown | unknown | unverified | n/a | `0x952ba29224acdbf783cd76fb49e5eca871ef851a` |
| unverified unclassified | UnnamedContract<br>`0xec95f6d459b35226487568dc1c31d9cccd828a14` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0xee31636cffd543eb44a825783b28f71a998fb240` | non_address_book | unknown | unknown | unverified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |
| unverified unclassified | UnnamedContract<br>`0xfde7a3ff5991de2332b1b357a9ef79e8caac9566` | non_address_book | unknown | unknown | unverified | n/a | `0x5ed8910aab643b818006d83213b245e8e81037d9` |
| unverified unclassified | UnnamedContract<br>`0x205b88a1479431edb5117c15c1262c6e702eb461` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7e59f1e0f7d23db6a40ff9b57bca3d632403ae` |
| unverified unclassified | UnnamedContract<br>`0x2ace04a88188b084997af8cdbca5038b6411ad64` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7e59f1e0f7d23db6a40ff9b57bca3d632403ae` |
| unverified unclassified | UnnamedContract<br>`0x2f3fafdbcd55102a4db9564898109b7a4ce4d580` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7e59f1e0f7d23db6a40ff9b57bca3d632403ae` |
| unverified unclassified | UnnamedContract<br>`0x4320701c37ee0fa0702b10c7ebc369ae50738194` | non_address_book | unknown | unknown | unverified | n/a | `0x952ba29224acdbf783cd76fb49e5eca871ef851a` |
| unverified unclassified | UnnamedContract<br>`0x78968ecd61797138a46c4f8809e60c2902d0728a` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7e59f1e0f7d23db6a40ff9b57bca3d632403ae` |
| unverified unclassified | UnnamedContract<br>`0x830c9e0295730bbb220bd78346c6499ff37851fb` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7e59f1e0f7d23db6a40ff9b57bca3d632403ae` |
| unverified unclassified | UnnamedContract<br>`0x999929ab02d9ad91d0c47175a3d57388246dec44` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7e59f1e0f7d23db6a40ff9b57bca3d632403ae` |
| unverified unclassified | UnnamedContract<br>`0xa9a0567d09b2d85e5aeddf7159fdbdb2cb4a52c1` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7e59f1e0f7d23db6a40ff9b57bca3d632403ae` |
| unverified unclassified | UnnamedContract<br>`0xbccbe11a0933a5b9f02933a0511bfa25ff0f3cbc` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7e59f1e0f7d23db6a40ff9b57bca3d632403ae` |
| unverified unclassified | UnnamedContract<br>`0xc5de82d5dc9a167b0b94c35e4ffb9d9fc889fbf3` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7e59f1e0f7d23db6a40ff9b57bca3d632403ae` |
| unverified unclassified | UnnamedContract<br>`0xd1b19b8577208be5d02456643e74f1aacef1bde6` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7e59f1e0f7d23db6a40ff9b57bca3d632403ae` |
| unverified unclassified | UnnamedContract<br>`0xdb5016eb1ca4cede1ae3194faec27c69670edfa3` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7e59f1e0f7d23db6a40ff9b57bca3d632403ae` |
| unverified unclassified | UnnamedContract<br>`0xdd1db14d30da3ce60627621e17148d6175348849` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7e59f1e0f7d23db6a40ff9b57bca3d632403ae` |
| unverified unclassified | UnnamedContract<br>`0xdf9a80f5e3e83a0651e09ff5761b4802789e0952` | non_address_book | unknown | unknown | unverified | n/a | `0x952ba29224acdbf783cd76fb49e5eca871ef851a` |
| unverified unclassified | UnnamedContract<br>`0x01538aa697ce8cc8252c70c41452dae86ce22a3e` | non_address_book | unknown | unknown | unverified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |
| unverified unclassified | UnnamedContract<br>`0x3b4a40e7a8197e2e719d416d143564a5d36b660d` | non_address_book | unknown | unknown | unverified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |
| unverified unclassified | UnnamedContract<br>`0x4f24d73773fcce560f4fd641125c23a2b93fcb05` | non_address_book | unknown | unknown | unverified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |
| unverified unclassified | UnnamedContract<br>`0x583a2e74a9926c6d8f8876b6aff634b89f8493d7` | non_address_book | unknown | unknown | unverified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |
| unverified unclassified | UnnamedContract<br>`0x65a3ad03be97619284ba7aa1e3ca05638b9d6364` | non_address_book | unknown | unknown | unverified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |
| unverified unclassified | UnnamedContract<br>`0x873bbcc36be3fd695a0a2f4fc964a87078b2efb5` | non_address_book | unknown | unknown | unverified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |
| unverified unclassified | UnnamedContract<br>`0xbbf1ee38152e9d8e3470dc47947eaa65dca94913` | non_address_book | unknown | unknown | unverified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |
| unverified unclassified | UnnamedContract<br>`0xeb6625d65a0553c9dbc64449e56abfe519bd9c9b` | non_address_book | unknown | unknown | unverified | n/a | `0xec219699d2faeb3f416c116de60cdb4aaf2f8d7c` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2022-12-Code4rena.md](https://github.com/maverickprotocol/audits/blob/main/phase-1/2022-12-Code4rena.md) | Code4rena | Contest | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 38 | high |
| [ABDK_Maverick_MaverickProtocol_v_3_0.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-1/ABDK_Maverick_MaverickProtocol_v_3_0.pdf) | ABDK | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [Maverick Protocol - Zellic Security Assessment Report.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-1/Maverick%20Protocol%20-%20Zellic%20Security%20Assessment%20Report.pdf) | Zellic | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [REP-Maverick-Protocol__final-20220421T194749Z.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-1/REP-Maverick-Protocol__final-20220421T194749Z.pdf) | Unknown | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [ABDK_Maverick_MaverickPhase2_v_2_0.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-2/ABDK_Maverick_MaverickPhase2_v_2_0.pdf) | ABDK | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Maverick Pool Positions Audit - Mar '23.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-2/Maverick%20Pool%20Positions%20Audit%20-%20Mar%20'23.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [report_mitigation.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-2/report_mitigation.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2873] 2022-12-Code4rena.md — no match: The audit report is for the Stealth Project (Maverick) smart contract system. The scope section states 34 smart contracts, and the report references many contracts from the maverick-v1 and router-v1 directories. All contracts mentioned in findings and the scope description are included.
- [2874] ABDK_Maverick_MaverickProtocol_v_3_0.pdf — no match: Scope section explicitly lists all files under interfaces/, libraries/, and models/ directories. Audit date is 13th October 2022 from cover page.
- [2875] Maverick Protocol - Zellic Security Assessment Report.pdf — no match: Scope section lists repository and commit hash; contracts are detailed in Code Overview sections 4.1-4.5.
- [2876] REP-Maverick-Protocol__final-20220421T194749Z.pdf — no match: All contracts listed in the Audit Scope table are extracted. The audit date is explicitly stated as 'Delivery Date Apr 21, 2022 UTC'.
- [2877] ABDK_Maverick_MaverickPhase2_v_2_0.pdf — no match: Scope section lists 13 files explicitly. Audit date from cover page: '11thMay2023'.
- [2878] Maverick Pool Positions Audit - Mar '23.pdf — no match: All contracts listed in the scope section of the audit report.
- [2879] report_mitigation.pdf — no match: All 13 files listed in the Scope Of Audit section are extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2022-12-Code4rena.md | Pool | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | Factory | ambiguous — not counted | 0xb28557… (alternative) `0xb2855783a346735e4aae0c1eb894def861fa9b45` — deployed 2023-07-19 15:09:37+03 — liveness: live (current_address_book_code)<br>0x2c1a60… (alternative) `0x2c1a605f843a2e18b7d7772f0ce23c236accf7f5` — deployed 2023-05-08 08:39:01+03 — liveness: live (current_address_book_code)<br>0xeb6625… (alternative) `0xeb6625d65a0553c9dbc64449e56abfe519bd9c9b` — deployed 2023-05-07 20:43:59+03 — liveness: live (current_address_book_code)<br>0x763117… (alternative) `0x76311728ff86054ad4ac52d2e9ca005bc702f589` — deployed 2023-06-19 18:15:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2022-12-Code4rena.md | Deployer | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | Router | ambiguous — not counted | Router (proxy) (alternative) `0xd53a9f3fae2bd46d35e9a30ba58112a585542869` — deployed 2023-06-19 18:21:15+03 — liveness: live (current_address_book_code)<br>0x39e098… (alternative) `0x39e098a153ad69834a9dac32f0fca92066ad03f4` — deployed 2023-05-08 08:45:18+03 — liveness: live (current_address_book_code)<br>0x32aed3… (alternative) `0x32aed3bce901da12ca8489788f3a99fce1056e14` — deployed 2023-07-19 15:13:33+03 — liveness: live (current_address_book_code)<br>Router (proxy) (alternative) `0xbbf1ee38152e9d8e3470dc47947eaa65dca94913` — deployed 2023-05-07 20:46:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2022-12-Code4rena.md | Position | ambiguous — not counted | Position (alternative) `0x4a3e49f77a2a5b60682a2d6b8899c7c5211eb646` — deployed 2023-02-28 19:21:47+03 — liveness: live (code_present_context)<br>Position (alternative) `0x23aeaf001e5df9d7410ee6c6916f502b7ac8e9d0` — deployed 2023-06-19 18:15:04+03 — liveness: live (code_present_context)<br>0xfd5476… (alternative) `0xfd54762d435a490405dda0fbc92b7168934e8525` — deployed 2023-04-12 15:19:22+03 — liveness: live (current_address_book_code)<br>0x0d8127… (alternative) `0x0d8127a01bdb311378ed32f5b81690dd917dba35` — deployed 2023-07-19 15:09:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2022-12-Code4rena.md | PositionMetadata | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | PoolInspector | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | Bin | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | BinMap | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | BinMath | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | Constants | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | Delta | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | Twa | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | Cast | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | SafeERC20Min | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | Math | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | Path | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | BytesLib | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | Deadline | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | Multicall | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | SelfPermit | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | TransferHelper | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | IFactory | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | IPool | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | IPosition | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | IPositionMetadata | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | IRouter | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | IMulticall | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | ISelfPermit | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | IERC20PermitAllowed | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | IWETH9 | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | ISwapCallback | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | IAddLiquidityCallback | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | IPoolAdmin | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | IPoolDeployer | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | TestDeployPool | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | TestPool | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | ImportExternal | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | IAddLiquidityCallback | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | IFactory | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | IPool | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | ISwapCallback | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | Bin | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | BinMap | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | BinMath | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | Cast | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | Delta | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | Deployer | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | Math | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | Twa | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | Factory | ambiguous — not counted | 0xb28557… (alternative) `0xb2855783a346735e4aae0c1eb894def861fa9b45` — deployed 2023-07-19 15:09:37+03 — liveness: live (current_address_book_code)<br>0x2c1a60… (alternative) `0x2c1a605f843a2e18b7d7772f0ce23c236accf7f5` — deployed 2023-05-08 08:39:01+03 — liveness: live (current_address_book_code)<br>0xeb6625… (alternative) `0xeb6625d65a0553c9dbc64449e56abfe519bd9c9b` — deployed 2023-05-07 20:43:59+03 — liveness: live (current_address_book_code)<br>0x763117… (alternative) `0x76311728ff86054ad4ac52d2e9ca005bc702f589` — deployed 2023-06-19 18:15:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | Passport | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | PoolInspector | unmatched — not counted | — | listed in scope | no |
| Maverick Protocol - Zellic Security Assessment Report.pdf | Pool | unmatched — not counted | — | Section 4.1 Contract Pool in Pool.sol | no |
| Maverick Protocol - Zellic Security Assessment Report.pdf | Router | ambiguous — not counted | Router (proxy) (alternative) `0xd53a9f3fae2bd46d35e9a30ba58112a585542869` — deployed 2023-06-19 18:21:15+03 — liveness: live (current_address_book_code)<br>0x39e098… (alternative) `0x39e098a153ad69834a9dac32f0fca92066ad03f4` — deployed 2023-05-08 08:45:18+03 — liveness: live (current_address_book_code)<br>0x32aed3… (alternative) `0x32aed3bce901da12ca8489788f3a99fce1056e14` — deployed 2023-07-19 15:13:33+03 — liveness: live (current_address_book_code)<br>Router (proxy) (alternative) `0xbbf1ee38152e9d8e3470dc47947eaa65dca94913` — deployed 2023-05-07 20:46:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Maverick Protocol - Zellic Security Assessment Report.pdf | Estimator | unmatched — not counted | — | Section 4.3 Contract Estimator in Estimator.sol | no |
| Maverick Protocol - Zellic Security Assessment Report.pdf | ZeroExRouter | unmatched — not counted | — | Section 4.4 Contract ZeroExRouter in ZeroExRouter.sol | no |
| Maverick Protocol - Zellic Security Assessment Report.pdf | Factory | ambiguous — not counted | 0xb28557… (alternative) `0xb2855783a346735e4aae0c1eb894def861fa9b45` — deployed 2023-07-19 15:09:37+03 — liveness: live (current_address_book_code)<br>0x2c1a60… (alternative) `0x2c1a605f843a2e18b7d7772f0ce23c236accf7f5` — deployed 2023-05-08 08:39:01+03 — liveness: live (current_address_book_code)<br>0xeb6625… (alternative) `0xeb6625d65a0553c9dbc64449e56abfe519bd9c9b` — deployed 2023-05-07 20:43:59+03 — liveness: live (current_address_book_code)<br>0x763117… (alternative) `0x76311728ff86054ad4ac52d2e9ca005bc702f589` — deployed 2023-06-19 18:15:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| REP-Maverick-Protocol__final-20220421T194749Z.pdf | Factory | ambiguous — not counted | 0xb28557… (alternative) `0xb2855783a346735e4aae0c1eb894def861fa9b45` — deployed 2023-07-19 15:09:37+03 — liveness: live (current_address_book_code)<br>0x2c1a60… (alternative) `0x2c1a605f843a2e18b7d7772f0ce23c236accf7f5` — deployed 2023-05-08 08:39:01+03 — liveness: live (current_address_book_code)<br>0xeb6625… (alternative) `0xeb6625d65a0553c9dbc64449e56abfe519bd9c9b` — deployed 2023-05-07 20:43:59+03 — liveness: live (current_address_book_code)<br>0x763117… (alternative) `0x76311728ff86054ad4ac52d2e9ca005bc702f589` — deployed 2023-06-19 18:15:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| REP-Maverick-Protocol__final-20220421T194749Z.pdf | ZeroExRouter | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-Maverick-Protocol__final-20220421T194749Z.pdf | Pool | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-Maverick-Protocol__final-20220421T194749Z.pdf | Bin | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-Maverick-Protocol__final-20220421T194749Z.pdf | Cast | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-Maverick-Protocol__final-20220421T194749Z.pdf | BasicMath | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-Maverick-Protocol__final-20220421T194749Z.pdf | LPToken | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-Maverick-Protocol__final-20220421T194749Z.pdf | AdvancedMath | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-Maverick-Protocol__final-20220421T194749Z.pdf | Checkpoint | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-Maverick-Protocol__final-20220421T194749Z.pdf | SafeTransfer | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-Maverick-Protocol__final-20220421T194749Z.pdf | Router | ambiguous — not counted | Router (proxy) (alternative) `0xd53a9f3fae2bd46d35e9a30ba58112a585542869` — deployed 2023-06-19 18:21:15+03 — liveness: live (current_address_book_code)<br>0x39e098… (alternative) `0x39e098a153ad69834a9dac32f0fca92066ad03f4` — deployed 2023-05-08 08:45:18+03 — liveness: live (current_address_book_code)<br>0x32aed3… (alternative) `0x32aed3bce901da12ca8489788f3a99fce1056e14` — deployed 2023-07-19 15:13:33+03 — liveness: live (current_address_book_code)<br>Router (proxy) (alternative) `0xbbf1ee38152e9d8e3470dc47947eaa65dca94913` — deployed 2023-05-07 20:46:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK_Maverick_MaverickPhase2_v_2_0.pdf | Distributor | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickPhase2_v_2_0.pdf | Poll | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickPhase2_v_2_0.pdf | PoolPositionBase | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickPhase2_v_2_0.pdf | PoolPositionDynamic | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickPhase2_v_2_0.pdf | PoolPositionRouter | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickPhase2_v_2_0.pdf | PoolPositionStatic | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickPhase2_v_2_0.pdf | RewardBase | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickPhase2_v_2_0.pdf | RewardOpen | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickPhase2_v_2_0.pdf | RewardPusher | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickPhase2_v_2_0.pdf | RewardSingle | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickPhase2_v_2_0.pdf | RewardVote | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickPhase2_v_2_0.pdf | VoterToken | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickPhase2_v_2_0.pdf | PoolPositionAndRewardFactory | unmatched — not counted | — | listed in scope | no |
| Maverick Pool Positions Audit - Mar '23.pdf | IPoolPositionAndRewardFactorySlim | unmatched — not counted | — | listed in scope | no |
| Maverick Pool Positions Audit - Mar '23.pdf | PoolPositionAndRewardFactorySlim | ambiguous — not counted | PoolPositionAndRewardFactorySlim (alternative) `0xfc328ea7700a86a9ccbe281d44c258385e26a9c0` — deployed 2023-06-20 21:22:38+03 — liveness: live (code_present_context)<br>PoolPositionAndRewardFactorySlim (alternative) `0x4f24d73773fcce560f4fd641125c23a2b93fcb05` — deployed 2023-05-07 21:57:23+03 — liveness: live (code_present_context)<br>0x0e70ca… (alternative) `0x0e70ca6f0f1a96abaa4bfb2cd4ac113af3d4a5a3` — deployed 2023-05-08 08:57:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Maverick Pool Positions Audit - Mar '23.pdf | PoolPositionBaseSlim | unmatched — not counted | — | listed in scope | no |
| Maverick Pool Positions Audit - Mar '23.pdf | PoolPositionDynamicDeployerSlim | unmatched — not counted | — | listed in scope | no |
| Maverick Pool Positions Audit - Mar '23.pdf | PoolPositionDynamicSlim | unmatched — not counted | — | listed in scope | no |
| Maverick Pool Positions Audit - Mar '23.pdf | PoolPositionStaticDeployerSlim | unmatched — not counted | — | listed in scope | no |
| Maverick Pool Positions Audit - Mar '23.pdf | RewardOpenSlim | unmatched — not counted | — | listed in scope | no |
| Maverick Pool Positions Audit - Mar '23.pdf | PoolPositionBase | unmatched — not counted | — | listed in scope | no |
| Maverick Pool Positions Audit - Mar '23.pdf | PoolPositionManager | ambiguous — not counted | PoolPositionManager (alternative) `0xc402d13b0d04867649a632f17528c753d8f6fbd2` — deployed 2023-07-19 15:39:33+03 — liveness: live (current_address_book_code)<br>PoolPositionManager (proxy) (alternative) `0xe7583af5121a8f583efd82767cccfeb71069d93a` — deployed 2023-06-08 05:08:47+03 — liveness: live (current_address_book_code)<br>0x17132c… (alternative) `0x17132ce52d40248f5077f4f51c6e3bdf7682749f` — deployed 2023-06-08 05:07:26+03 — liveness: live (current_address_book_code)<br>PoolPositionManager (alternative) `0x2d11545d36ffa0b8558e83c26e45cfaf14bdbab2` — deployed 2023-06-20 21:25:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Maverick Pool Positions Audit - Mar '23.pdf | RewardBase | unmatched — not counted | — | listed in scope | no |
| report_mitigation.pdf | Distributor | unmatched — not counted | — | listed in scope | no |
| report_mitigation.pdf | Poll | unmatched — not counted | — | listed in scope | no |
| report_mitigation.pdf | PoolPositionBase | unmatched — not counted | — | listed in scope | no |
| report_mitigation.pdf | PoolPositionDynamic | unmatched — not counted | — | listed in scope | no |
| report_mitigation.pdf | PoolPositionRouter | unmatched — not counted | — | listed in scope | no |
| report_mitigation.pdf | PoolPositionStatic | unmatched — not counted | — | listed in scope | no |
| report_mitigation.pdf | RewardBase | unmatched — not counted | — | listed in scope | no |
| report_mitigation.pdf | RewardOpen | unmatched — not counted | — | listed in scope | no |
| report_mitigation.pdf | RewardPusher | unmatched — not counted | — | listed in scope | no |
| report_mitigation.pdf | RewardSingle | unmatched — not counted | — | listed in scope | no |
| report_mitigation.pdf | RewardVote | unmatched — not counted | — | listed in scope | no |
| report_mitigation.pdf | VoterToken | unmatched — not counted | — | listed in scope | no |
| report_mitigation.pdf | PoolPositionAndRewardFactory | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x7448c7456a97769f6cd04f1e83a4a23ccdc46abd` | MaverickToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd691d9a68c887bdf34da8c36f63487333acfd103` | MaverickToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x64b88c73a5dfa78d1713fe1b4c69a22d7e0faaa7` | MaverickToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0087d11551437c3964dddf0f4fa58836c5c5d949` | PoolInformation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xb3916179619eef2497c646e664be6e13cd1ab445` | PoolInformation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6e230d0e457ea2398fb3a22fb7f9b7f68f06a14d` | PoolInformation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4f24d73773fcce560f4fd641125c23a2b93fcb05` | PoolPositionAndRewardFactorySlim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xfc328ea7700a86a9ccbe281d44c258385e26a9c0` | PoolPositionAndRewardFactorySlim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe7583af5121a8f583efd82767cccfeb71069d93a` | PoolPositionManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2d11545d36ffa0b8558e83c26e45cfaf14bdbab2` | PoolPositionManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc402d13b0d04867649a632f17528c753d8f6fbd2` | PoolPositionManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4a3e49f77a2a5b60682a2d6b8899c7c5211eb646` | Position | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x23aeaf001e5df9d7410ee6c6916f502b7ac8e9d0` | Position | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x456a37144162900799f405be34f815de7c3da53c` | PositionInspector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x70cd6087033e0b99e4e449d3b904fad194d888a0` | PositionInspector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x550056a68cb155b6cc3def4a7fa656260e7842e2` | PositionInspector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbbf1ee38152e9d8e3470dc47947eaa65dca94913` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd53a9f3fae2bd46d35e9a30ba58112a585542869` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4949ac21d5b2a0ccd303c20425eeb29dccba66d8` | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe6108f1869d37e5076a56168c66a1607edb10819` | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xfccb5263148fbf11d58433af6feeff0cc49e0ea5` | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 41 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 107 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 10 ambiguous, 96 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7
- Match method counts: n/a

Zero-match audit list:

- [2873] 2022-12-Code4rena.md
- [2874] ABDK_Maverick_MaverickProtocol_v_3_0.pdf
- [2875] Maverick Protocol - Zellic Security Assessment Report.pdf
- [2876] REP-Maverick-Protocol__final-20220421T194749Z.pdf
- [2877] ABDK_Maverick_MaverickPhase2_v_2_0.pdf
- [2878] Maverick Pool Positions Audit - Mar '23.pdf
- [2879] report_mitigation.pdf

Fork inheritance lineage and inherited audits are included when available.
