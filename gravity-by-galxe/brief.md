# Agentic Audit Brief: Gravity by Galxe

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

- Project: Gravity by Galxe (`gravity-by-galxe`)
- Website: [https://gravity.xyz/](https://gravity.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 87 unique implementations (87 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $22,195,495.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Gravity by Galxe. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across ethereum. Structural roles: 4 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (4), supporting (1)
- Contract kinds: contract (5)
- Detected standards: erc165 (1)
- Frameworks: openzeppelin (1), permit2 (1), solmate (1)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 5; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 7 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 80 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/34
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 0
- Unverified implementations: 53
- Unique implementations: 87
- Raw deployments: 87
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
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
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | ⚠️ Unaudited |
| CreateX | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241383 | `0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed` | ⚠️ Unaudited |
| CreditMessaging | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5489ddab89609580835ee6d655cd9b3503e7f97d` | ⚠️ Unaudited |
| Dai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b175474e89094c44da98b954eedeac495271d0f` | ⚠️ Unaudited |
| EntryPoint | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0000000071727de22e5e9d8baf0edac6f37da032` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | ⚠️ Unaudited |
| FeeLibV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a6437bef5b8615ef523d00ef7c9d58d66c0f246` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde23b1416cac07a52591bba744c744d77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa908c50376d1028412c028aa0629f0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0882477e7895bdc5cea7cb1552ed914ab157fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a6e95992041568d9391d09d0122023778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf` | ⚠️ Unaudited |
| GBridgeSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe82c61ac9ec2041b493118051afa4f18a55dc876` | ⚠️ Unaudited |
| GnosisSafe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xbd6e434db90fd8ad4e28d85c133ad34ca6fbfb6d` | ⚠️ Unaudited |
| GravityPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76cf8526fa9461e50b2c6702a7246ce6915f6e53` | ⚠️ Unaudited |
| GravityTokenG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c7beba8f6ef6643abd725e45a4e8387ef260649` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11b5c2201b69c9269fe924e4395873674335` | ⚠️ Unaudited |
| Members | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640574aa764763291ed733672d3a105107ac5` | ⚠️ Unaudited |
| MiniMeTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x003ea7f54b6dcf6cee86986edc18143a35f15505` | ⚠️ Unaudited |
| Multicall3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xca11bde05977b3631167028862be2a173976ca11` | ⚠️ Unaudited |
| NEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc80c051057b774cd75067dc48f8987c4eb97a5e` | ⚠️ Unaudited |
| NectarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d5a41e85f4ce2433beef476305d307b9205d98d` | ⚠️ Unaudited |
| OFTWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bf53b4b70a6b40aa206a6a23e3cc8f6b5908db4` | ⚠️ Unaudited |
| Permit2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ⚠️ Unaudited |
| RewardLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa54751cda1f98947c524fd9701c9dad84fcdcfd` | ⚠️ Unaudited |
| RewardRegistryLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f22c4b3dbe693a34f2af61a16a022f87d9499ee` | ⚠️ Unaudited |
| SenderCreator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x7fc98430eaedbb6070b35b39d798725049088348` | ⚠️ Unaudited |
| StargateStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff551feddbedc0aee764139ccd9cb644bb04a6bd` | ⚠️ Unaudited |
| TetherToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e98db51010dd1ade14dd3fb164e218805fdba1b` | ⚠️ Unaudited |
| TokenMessaging | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4aff12ce71afd06e7b20f50f2eaa365b8b4f779c` | ⚠️ Unaudited |
| Treasurer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1041d127b2d4bc700f0f563883bc689502606918` | ⚠️ Unaudited |
| WBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ⚠️ Unaudited |
| WrapperLockEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x991f0e5c5775ca9dd02e30e67f545c36cff3690e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (53)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13379b489fb2e76cedf96bceaa2441e5930d75e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1502fa4be69d526124d453619276faccab275d3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16e28b8fcb5a20c9ffe82dfb7ede0cde691edbcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26e74ad004cb6883fb5f9240f6064be77cff19aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29fcb43b46531bca003ddc8fcb67ffe91900c762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ff4db91799b1d501089c6b17e3b9faf802c08e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38869bf66a61cf6bdb996a6ae40d5853fd43b526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d4ba2e0884aa488718476ca2fb8efc291a46199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e368b6c95c6fefb7a16dcc0d756389f3c658a06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41675c099f32341bf84bfc5382af534df5c7461a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4337084d9e255ff0702461cf8895ce9e3b5ff108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e1dcf7ad4e460cfd30791ccc4f9c8a4f820ec67` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241381 | `0x4e59b44847b379578588920ca78fbf26c0b4956c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eeba4e168b23601eb7716a5d1ac243b8d375290` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52b35406cb2fb5e0038edecfc129a152a1f74087` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d76f06f00b6a4018b84a038498c5e29066319ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5db42cddf2346c4ee9c62ed16ab25d4c24af14ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ff137d4b0fdcd49dca30c7cf57e578a026d2789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60e59b984cd0013a2d3b742918cfe5fc10517082` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63c2a938650d7b3ea7926e9eee36533034942892` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x667b9cbe277ca713af86b1b47ba7ba55606f7da8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b8ad17795d89b283e6d0362a87a403f3544bb9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c7ba0d4ee7613ad2f5c9d37d18ed3920236638a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d5521f46b2cba9443fefc09cbac3b15ae0f73eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d6620efa72948c5f68a3c8646d58c00d3f4a980` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dd69717b1194b81a92105b7e0f94cb40f68a3e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f0611a1858ce557d7fd6565a4425ff9aa555b46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x822b6ebc4282b06b86f122edb74e71f4cb488895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83c618c0760281759bb5842e36fe43c66bbaaa6a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241382 | `0x914d7fec6aac8cd542e72bca78b30650d45643d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9641d764fc13c8b624c04430c7356c1c7c8102e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b35af71d77eaf8d7e40252370304687390a1a52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa5b75d4fcdc9942a468b15142920b8b4f6d1815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4292b2885c3fe813f16fea29bc89e0e4d425f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb87588947a2674fcce0f50f470654adac9496d2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8b1a96933e4721ab9d94d60682055ea60eae455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb859e225ac8fb6be1c7e38d87b767e95fef0ebd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0441dc6179217af689e1c80b854420371def97f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc252b5c25b6d0845b6679f1d15e7910d8ef7414f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6a281b90727fd77165f756690561c214786fba1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc946c11c35b8957bbc47d37391e4c0b95ddbeed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca7867b497b961b64231ee1cd270288f5cef0381` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd53cd0ab83d845ac265be939c57f53ad838012c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde48600aa18ae707f5d57e0faafec7c118abaeb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe171afcd1e0394b3312e68ca823d5bc87f3db311` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe520d724f0c4b72faeb9c0580281f6fe1f3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefc2c1444ebcc4db75e7613d20c6a62ff67a167c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5bba76476274762649bb22e08c6950dd681e202` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6f832466cd6c21967e0d954109403f36bc8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8c61c8f4fdd41dd444f7b582c9f440e1b1adcc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd0732dc9e303f09fcef3a7388ad10a83459ec99` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 38
- Live contracts: 0
- Unknown liveness contracts: 38
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=38

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x13379b489fb2e76cedf96bceaa2441e5930d75e1` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1502fa4be69d526124d453619276faccab275d3d` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x16e28b8fcb5a20c9ffe82dfb7ede0cde691edbcc` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x26e74ad004cb6883fb5f9240f6064be77cff19aa` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ff4db91799b1d501089c6b17e3b9faf802c08e0` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e368b6c95c6fefb7a16dcc0d756389f3c658a06` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4eeba4e168b23601eb7716a5d1ac243b8d375290` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x52b35406cb2fb5e0038edecfc129a152a1f74087` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5d76f06f00b6a4018b84a038498c5e29066319ca` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5db42cddf2346c4ee9c62ed16ab25d4c24af14ee` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x60e59b984cd0013a2d3b742918cfe5fc10517082` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x63c2a938650d7b3ea7926e9eee36533034942892` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x667b9cbe277ca713af86b1b47ba7ba55606f7da8` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6b8ad17795d89b283e6d0362a87a403f3544bb9d` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6c7ba0d4ee7613ad2f5c9d37d18ed3920236638a` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6d5521f46b2cba9443fefc09cbac3b15ae0f73eb` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6d6620efa72948c5f68a3c8646d58c00d3f4a980` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6dd69717b1194b81a92105b7e0f94cb40f68a3e3` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6f0611a1858ce557d7fd6565a4425ff9aa555b46` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x822b6ebc4282b06b86f122edb74e71f4cb488895` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x83c618c0760281759bb5842e36fe43c66bbaaa6a` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaa5b75d4fcdc9942a468b15142920b8b4f6d1815` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb4292b2885c3fe813f16fea29bc89e0e4d425f80` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb87588947a2674fcce0f50f470654adac9496d2d` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb8b1a96933e4721ab9d94d60682055ea60eae455` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc0441dc6179217af689e1c80b854420371def97f` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc252b5c25b6d0845b6679f1d15e7910d8ef7414f` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc6a281b90727fd77165f756690561c214786fba1` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc946c11c35b8957bbc47d37391e4c0b95ddbeed4` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca7867b497b961b64231ee1cd270288f5cef0381` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xde48600aa18ae707f5d57e0faafec7c118abaeb2` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe171afcd1e0394b3312e68ca823d5bc87f3db311` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe520d724f0c4b72faeb9c0580281f6fe1f3e79f6` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf5bba76476274762649bb22e08c6950dd681e202` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf6f832466cd6c21967e0d954109403f36bc8ceaa` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf8c61c8f4fdd41dd444f7b582c9f440e1b1adcc8` | non_address_book | unknown | unknown | unverified | n/a | `0x4a79adc4539905376d339c69b6a7092d0598cc24` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/ZtdkwV6IW7ZSjaMZNmkU/uploads/J7wCsY4imFYBZcKBhMuO/SlowMist Audit Report Galxe G Token.pdf](https://1664081133-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZtdkwV6IW7ZSjaMZNmkU%2Fuploads%2FJ7wCsY4imFYBZcKBhMuO%2FSlowMist%20Audit%20Report%20Galxe%20G%20Token.pdf) | SlowMist | Audit | 2024-05 | stale | Direct | address | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20720] spaces/ZtdkwV6IW7ZSjaMZNmkU/uploads/J7wCsY4imFYBZcKBhMuO/SlowMist Audit Report Galxe G Token.pdf — no match: All four contracts explicitly mentioned in scope: GravityTokenG, LimitedMinterManager, TokenUpgrader, TokenVesting. Audit date is the end date of the audit period (2024.05.10 - 2024.05.13).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/ZtdkwV6IW7ZSjaMZNmkU/uploads/J7wCsY4imFYBZcKBhMuO/SlowMist Audit Report Galxe G Token.pdf | GravityTokenG | unmatched — not counted | — | listed in scope | no |
| spaces/ZtdkwV6IW7ZSjaMZNmkU/uploads/J7wCsY4imFYBZcKBhMuO/SlowMist Audit Report Galxe G Token.pdf | LimitedMinterManager | unmatched — not counted | — | listed in scope | no |
| spaces/ZtdkwV6IW7ZSjaMZNmkU/uploads/J7wCsY4imFYBZcKBhMuO/SlowMist Audit Report Galxe G Token.pdf | TokenUpgrader | unmatched — not counted | — | listed in scope | no |
| spaces/ZtdkwV6IW7ZSjaMZNmkU/uploads/J7wCsY4imFYBZcKBhMuO/SlowMist Audit Report Galxe G Token.pdf | TokenVesting | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 1 |
| standard_library | 4 |
| needs_review | 53 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20720] spaces/ZtdkwV6IW7ZSjaMZNmkU/uploads/J7wCsY4imFYBZcKBhMuO/SlowMist Audit Report Galxe G Token.pdf

Fork inheritance lineage and inherited audits are included when available.
