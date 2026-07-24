# Agentic Audit Brief: Infrared Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 30 across 11 audit(s)
- Eligible audit results: 27 (11 matched; 16 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Infrared Finance (`infrared-finance`)
- Website: [https://infrared.finance](https://infrared.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: berachain, bsc
- Contract surface: 61 unique implementations (173 raw deployments)
- Coverage basis: 11/12 confirmed own live verified implementations (91.7%); conservative 91.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $24,233,210.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Infrared Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 20 contract row(s) across berachain, bsc. Structural roles: 10 unclassified, 6 supporting, 4 core. 7 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 20
- Structural roles: unclassified (10), supporting (6), core (4)
- Contract kinds: contract (20)
- Detected standards: erc1967proxy (6), erc20 (2), erc20permit (2), pausable (2), accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (7), openzeppelin-upgradeable (7), solmate (3)
- Upgradeable-pattern rows: 7

## Fork Analysis

0 of 10 contracts are derived from known codebases. 10 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ERC1967Proxy (`0x04cddc538ea65908106416986adaecefd4cab7d7`, chain 80094)
- ERC1967Proxy (`0x8c0e122960dc2e97dc0059c07d6901dce72818e1`, chain 80094)
- ERC1967Proxy (`0x8d44170e120b80a7e898bfba8cb26b01ad21298c`, chain 80094)
- ERC1967Proxy (`0x9b6761bf2397bb5a6624a856cc84a3a14dcd3fe5`, chain 80094)
- ERC1967Proxy (`0xb5e9cfd2751363f38a696626c18db4aff7512756`, chain 80094)
- ERC1967Proxy (`0xb71b3daea39012fb0f2b14d2a9c86da9292fc126`, chain 80094)
- InfraredBGT (`0xac03caba51e17c86c921e1f6cbfbdc91f8bb2e6b`, chain 80094)
- InfraredGovernanceTokenV1_2 (`0xa1b644aec990ad6023811ced36e6a2d6d128c7c9`, chain 80094)
- InfraredVault (`0x75f3be06b02e235f6d0e7ef2d462b29739168301`, chain 80094)
- WrappedRewardToken (`0x4f3c10d2bc480638048fa67a7d00237a33670c1b`, chain 80094)

## Contract Surface Quality

- Logic-topography rows: 20; live-surface rows included: 20 (19 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/13 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 11/12 (91.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 49 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 11
- Confirmed-live implementations: 12 of 61 unique; 49 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 11/49
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 61
- Raw deployments: 173
- Audits discovered: 27 (27 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 11
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 14 fresh, 12 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 11 match-unverified
- Tier 1 coverage: 58.3% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 11 | 22.4% | 2026-04 |
| Spearbit | Tier 1 | 7 | 14.3% | 2026-03 |
| Zellic | Tier 2 | 1 | 2.0% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BribeCollectorV1_4 | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-387431 | 2 deployments: berachain `0x8d44170e120b80a7e898bfba8cb26b01ad21298c`; berachain `0xd5a302834425870db03c23bdc846f3078c668bcb` | ✅ Audited |
| InfraredBERADepositorV2 | unknown | project_anchor | own_supporting | 1 | berachain | unit-387433 | 2 deployments: berachain `0x04cddc538ea65908106416986adaecefd4cab7d7`; berachain `0xe18e88631e0b497180f440ff895981d99bc3e24b` | ✅ Audited |
| InfraredBERAFeeReceivor | unknown | project_anchor | own_supporting | 1 | berachain | unit-387429 | 2 deployments: berachain `0xab2dadd15af962b036d361849c024a3f70b18254`; berachain `0xf6a4a6acecd5311327ae3866624486b6179fef97` | ✅ Audited |
| InfraredBERAV2_1 | unknown | project_anchor | own_supporting | 1 | berachain | unit-387430 | 2 deployments: berachain `0x9b6761bf2397bb5a6624a856cc84a3a14dcd3fe5`; berachain `0xc0654903c7d76f7fe63f9ad2f01618c3b55d9dcf` | ✅ Audited |
| InfraredBERAWithdrawor | unknown | project_anchor | own_supporting | 1 | berachain | unit-387426 | 2 deployments: berachain `0x367cbfd767de1452415d24fae29c0fde206bac8d`; berachain `0x8c0e122960dc2e97dc0059c07d6901dce72818e1` | ✅ Audited |
| InfraredBGT | unknown | project_anchor | own_supporting | 0 | berachain | unit-387425 | `0xac03caba51e17c86c921e1f6cbfbdc91f8bb2e6b` | ✅ Audited |
| InfraredDistributor | unknown | project_anchor | own_supporting | 1 | berachain | unit-387428 | 2 deployments: berachain `0x1fad980dfaff71e3fdd9bef643ab2ff2bdc4ccd6`; berachain `0x742ebbf91a37064e89e5628d139070b73aa90247` | ✅ Audited |
| InfraredV1_10 | unknown | project_anchor | own_supporting | 1 | berachain | unit-387432 | `0xb71b3daea39012fb0f2b14d2a9c86da9292fc126` | ✅ Audited |
| InfraredVault | core_logic | project_anchor | own_supporting | 0 | berachain | unit-387423 | `0x75f3be06b02e235f6d0e7ef2d462b29739168301` | ✅ Audited |
| StakedIR | unknown | project_anchor | own_supporting | 1 | berachain | unit-387427 | 2 deployments: berachain `0x4b5274376f4e7ed198bc9af848120fcad0a71dbc`; berachain `0xb5e9cfd2751363f38a696626c18db4aff7512756` | ✅ Audited |
| WrappedRewardToken | token | project_anchor | own_supporting | 0 | berachain | unit-387421 | `0x4f3c10d2bc480638048fa67a7d00237a33670c1b` | ✅ Audited |

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BatchClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7813a73134bf03fbfb982d33066558887351de27` | ⚠️ Unaudited |
| BatchClaimerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x78b5ebb84db848c55e553fe1928474f926d59d84` | ⚠️ Unaudited |
| BatchClaimerV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd45b101981d907a2bd0157dd83fb12a04d96723c` | ⚠️ Unaudited |
| BatchClaimerV2_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x1d6844b42784d3adbd7fdfa5887d56d22aa9fb67`; berachain `0xa38e688fb07dec5d43b405a90d6d98cbf603f491` | ⚠️ Unaudited |
| BribeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x61bd35fbec49b144a1953f48f84ef8d2b321da40` | ⚠️ Unaudited |
| BribeCollectorV1_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb704cec5e4df84446f6bcad9a52b9f4641bd29a8` | ⚠️ Unaudited |
| BribeCollectorV1_3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb3cec5ac14897ebc145da41c46e97a37cd803b3f` | ⚠️ Unaudited |
| BribeCollectorV1_4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x960a7791322e2ddf5aba61b467bd8718377c5301` | ⚠️ Unaudited |
| BYUSDRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 2 deployments: berachain `0x21c18c071c11160877e6f86eb8d30926cc4cc617`; berachain `0x88c0170881764d3e91dce725775fdf5757a86725` | ⚠️ Unaudited |
| CuttingBoardDutchAuctionV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2b8b98231635f3762ae269f6d34b0f209f973da3` | ⚠️ Unaudited |
| CuttingBoardDutchAuctionV1_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3ed920b0b95a2b02caf674038689f54486c122e4` | ⚠️ Unaudited |
| HarvestBaseCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf8bfe8377b2f16f154d7a0c406eae46cd5d46c5d` | ⚠️ Unaudited |
| HarvestBaseCollectorV1_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x7332051c4eed9cd40b28ba0a1c5d042666897da8`; berachain `0x8b498d065312ec5c54698ab80e98084cec95c388` | ⚠️ Unaudited |
| Infrared | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x559d1347242f350bdc44f99c729984bfb188092f` | ⚠️ Unaudited |
| InfraredBERA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x94b5d53483117fe3832c8e08d2a71ab8ab546d81` | ⚠️ Unaudited |
| InfraredBERADepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xef26bcfb9ce4e807465a46087e9dd73b652fef87` | ⚠️ Unaudited |
| InfraredBERARateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x776fd57bbeb752bdeeb200310fafae9a155c50a0` | ⚠️ Unaudited |
| InfraredBERAV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x33f3145f2691ae01cfbb67854830ca84c2995fd8` | ⚠️ Unaudited |
| InfraredBERAWithdraworLite | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x725a5576232220132f129f08e4a9eb7d4be92444` | ⚠️ Unaudited |
| InfraredGovernanceTokenV1_2 | unknown | project_anchor | own_supporting | 0 | berachain | unit-387424 | `0xa1b644aec990ad6023811ced36e6a2d6d128c7c9` | ⚠️ Unaudited |
| InfraredV1_10 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | berachain | unit-387422 | `0x6d4e881a7fefe098c6434fa9fa6d6695dad331b5` | ⚠️ Unaudited |
| InfraredV1_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 2 deployments: berachain `0x4d87f81f11660aac19c4a9165a10e2697cb2eff5`; berachain `0x7333e253759aab13b0d1b78c0d5d6ca15f6c8555` | ⚠️ Unaudited |
| InfraredV1_3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x67b4e6721ad3a99b7ff3679caee971b07fd85cd1` | ⚠️ Unaudited |
| InfraredV1_4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd34a436621e93dbadf15b6040dee7dbcbd16ef20` | ⚠️ Unaudited |
| InfraredV1_5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb0713bafa14f1a36abfce7800a0e8d2c539a02dd` | ⚠️ Unaudited |
| InfraredV1_7 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8d5a82ddc916a2750fa9769aae354bf7a19360b9` | ⚠️ Unaudited |
| InfraredV1_8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x39366e79e2b07667ae44c10b11b2866dba86a635` | ⚠️ Unaudited |
| InfraredV1_9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe9a3c95e071599b2178c52277dcf8a57a8bcd8ef` | ⚠️ Unaudited |
| InfraredVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 4 deployments: berachain `0x12e9b82f3280cc32e81b865f85734d52c538314c`; berachain `0x41c4114e64ecd72c783dc73b932edd55625588ce`; berachain `0x665309b28df821ad78d997ef2ed57e8334189694`; berachain `0xf4c0ed37fdd387013812bbfc6a0698a73ec5fe47` | ⚠️ Unaudited |
| IRAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x283071d22d8d70340bebd5e09e03262ebc3defdb`; berachain `0xe772bc9b4813c048f23d7a9d0905e64b01d5a717` | ⚠️ Unaudited |
| IROFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xace9de5af92eb82a97a5973b00eff85024bdcb39`; bsc `0xd26004b2db8e2e17e074eede115bf200cb5d10d9` | ⚠️ Unaudited |
| IROFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xfd0fa49f8aa1d61da390e10ead23c650b0f9c2b5` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 4 deployments: berachain `0x43d69cf03615d341d84a1917a3253b6c978b4b17`; berachain `0x5f791523314ca809a1146184311e35001b6e6fc8`; berachain `0x777ceb12d244d9b979564014da9623dfdbfd8e51`; berachain `0x9d57c99ddf96d9eed10d926bade3c58f4fe6d349` | ⚠️ Unaudited |
| ProxyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0c7f08bd9c6811f5dba2f9e26e451b0473208bf0` | ⚠️ Unaudited |
| Redeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 2 deployments: berachain `0x3e8eda9821c588a57200b790204c0066a1681046`; berachain `0x5a2da5e3cffa06f625ef4f2142675950c03370cc` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2114079132c56827237f581ef1a0625680d29576` | ⚠️ Unaudited |
| WrappedRewardToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x334404782ab67b4f6b2a619873e579e971f9aab7` | ⚠️ Unaudited |
| WrappedVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 93 deployments: berachain `0x021f62d74f97f63575f8c608ab7cc3c591eccb0d`; berachain `0x023e5d8740823bb19401cbf561bf322ef93124f0`; berachain `0x03c2ef90ec1f5deab5a16accfb49c42ac602ba65`; berachain `0x04bd6ed6408cb573419fd763e3b7ced57de69bd5`; berachain `0x04edcc9715445dd38f9fb327af8740bdfb81b739`; berachain `0x0cb3e2482357d1ac7df0f9ac2df776717142d009`; berachain `0x0fff6d1907eced46bc660643f022ddc1db9ddc97`; berachain `0x104e92e8f7aa38a6e2f5f52adff357ab05738d71`; berachain `0x1109bf8125a52fb8a92f1ee5cd3d9f988a80f954`; berachain `0x1453c6883c3492654757fe9ac048f98c69eba339`; berachain `0x16275c1cae13131b153cec4f8178304c7ae730f4`; berachain `0x1a18f5546ddd417933db08bdb7325916d71a2241`; berachain `0x22a3fb83478b2c4aa4b166dda78192284a488715`; berachain `0x23ed71a0d5a1583233115d25a22e96cd30fd8864`; berachain `0x2415fee8af7c121e17ae1b78e0891a8c6112cf8f`; berachain `0x27b03a57418dd0d827ac99d279a1bf3bd89086db`; berachain `0x2a447fe46490b5086557ce6e7b0609f845e69ac2`; berachain `0x2e113998f4561cc15543c380b0a92c60657ae031`; berachain `0x2e32ddd251bdbc0daf272c703ed04e306fe2b00f`; berachain `0x2f511975290121b5937a1bbc836c256244723c9b`; berachain `0x3904aaa585d846096fcdb38ef516c3ebace1ab84`; berachain `0x3b43d2c548038167da3351318aae879af60462b5`; berachain `0x3fc37a9989520747df339c7928f569f9bf798d00`; berachain `0x42cd67e9aecd4bc18a8b63750811092f367262b6`; berachain `0x47590f8c83bb99ff9c9d6640f007722a79f0ab02`; berachain `0x4fce306384228d708e63b6300f4ee3357cf64444`; berachain `0x57684b647d4cc6b151e7476355fcfdc174da7ece`; berachain `0x5782d6f9b7cba0a0e9151aecbd26acdc64d5aaa5`; berachain `0x58b34e79d53cacbbc9920477c5bea55a832871fd`; berachain `0x58b61ed5c1657e78ffc7e574e8ac42c6f20ebe1e`; berachain `0x5d51a2034c3a830b6e50620f210e6882d3620224`; berachain `0x6503a84a4b64db7d0617ed200328562c3e1796c8`; berachain `0x6e0d09b502c6e561b287cd4e66c8ef879c86e20d`; berachain `0x70d6cf978364543b5fc48107b513da65ed1ad2ad`; berachain `0x732dfb929cdea0b05508f8f9d9695b88f9987a42`; berachain `0x78808a499e163a5a88499f4f0d1f1457489f503c`; berachain `0x79a27a5b2a84b60e2869dd09c46d537b1a6f4ef8`; berachain `0x7bc28c1bf423fd364994815bc4e82c596a5a375a`; berachain `0x7c010b2f8e994bc86827a1fc7122792e2bc5b5c6`; berachain `0x7cc2485c334a9c04f40cfc6e36ca8be7f2a4efe1`; berachain `0x7cde0a989c97a15b6f2b63f0b7582d40a4e86d23`; berachain `0x7e312939980b2842b524d3418aa9b7498054e39a`; berachain `0x7e571726fa7e734d8c6bfc335df860f5b9286355`; berachain `0x7ef1f9f4e6e2f8f112b953f3b0a71ed1311f4730`; berachain `0x7f6ed59799d4cfac23d20b623974e9fca287da17`; berachain `0x81ba24b92b162ba56c622b4b80e4ce26426f490a`; berachain `0x81fb2a522cef613da927eb2e7899b8c1a6893a1b`; berachain `0x82609f09fbc441d1cbbed47a4479ea33d062f587`; berachain `0x82d7503225f98b999cafdfbaab803d52f122dd2b`; berachain `0x85550269f0ed260a6603a3502e805fc2099034bc`; berachain `0x86fee05992b8bcccf4d46160beca0daba90ac240`; berachain `0x8b492ee2fbc146ed845cbd05e4e2eb59bfe030f9`; berachain `0x920598318d0c48a19a9cbd26d86aa0d8079b139a`; berachain `0x9433ccf93ac084f7191b78d7bd0e7d64ed344e27`; berachain `0x95c1f2e36ca90898c893ab4caa4aff79ab14ebf7`; berachain `0x9f47f2b56a2767e01d15ed3c8d3fb5283c5d5c80`; berachain `0x9f898e9c5863a13f68a714044d380e9ffff7b732`; berachain `0xa2b10d1ee0c0f715ef0694e25984d01ac8bf83d4`; berachain `0xa2e5e46b0d13bf5534d204f8a49a099e47559ed4`; berachain `0xa3a376e370666d0c3e10a5b1067095f2f080f26f`; berachain `0xa3fd520cba6f44ffc4437a74865cea5d2f93ce06`; berachain `0xa63ff996cc93bd4e0623f5038ad31d1146ae4f88`; berachain `0xa6899cce1cea2c2c921ccbcbad296fefd0c7a955`; berachain `0xa81dde743030592237c6b3b6b3e55a9bf15abee4`; berachain `0xab71f6637623e3310940e6624355a094cc7c42e6`; berachain `0xac36a93737cd4ca67fbea7a826a45098afe53529`; berachain `0xb0292fff5c5544ffa3e6a362d622b0f4eda535ed`; berachain `0xb04a2a6059ee328ad740b8c66b4cd69716ad3839`; berachain `0xb065f887f23d3707386b3fdfecb252e3c50f5088`; berachain `0xb17f63aed263d6be67d817053d664190fba15a50`; berachain `0xb38b0d08965654f11377c0c90f2338d63926c9b9`; berachain `0xb59aa6e935c66eea5dedc0eb385ceb62fbe85757`; berachain `0xba7f7d6a07ae4f42f4add5d360d9ca6d41825073`; berachain `0xbc44617088aeaafacdeb6de68cfa287fb2cda130`; berachain `0xbcd6819a00df6e7f7e6d5e073ff00a91bc876a9d`; berachain `0xbf19612f6ef35fe411801509e4c284647213f5fe`; berachain `0xc2f57489a989c41bf3f5db00d7ccda3639eee206`; berachain `0xc6b6b099cfbcbc3d23ea9abfe4da500134479a29`; berachain `0xc9adf89f108992af6094d0d217e09e54237250db`; berachain `0xcc0c3f6c8c7a9a7c7788d85ff720830f8af6d05c`; berachain `0xcc824b6b022e53c564c60d16b1a4e4bb93851a75`; berachain `0xd10759bd1ebd69a4e0873dc3c08c43cff1f166f4`; berachain `0xd39b77918d1897b900490f3e519350cc2a09f907`; berachain `0xd5ae03140fcbccbde82756489d5b13f46a37d25a`; berachain `0xde747203c338993fbea53c61e5b2f558c4687958`; berachain `0xdfd21d8190f444437a5f791ef920b57ac43184ca`; berachain `0xe193336621b91d9034a7668fd5fe0065ad84f34f`; berachain `0xeb6e02ad20e35ad1f2266b98f703757b493bbcce`; berachain `0xf3a956b2c29f5c1216a72c88259db9e66e1f3aa1`; berachain `0xf3cbc6876bc2b364eca48295f17c87c821ad8c7b`; berachain `0xf4c35f3a334ca73a229d9d416924f51675240796`; berachain `0xf69cf3afc2aa3d58b32fe365e6c47cafb42f18a5`; berachain `0xfe7a781914525e7e7c93b30c213fbfcde1c5f575` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x01b775b353176bb1b9075c5d344c2b689285282a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1ece52a596c2cbef7b71fa8fa8fc738aa7ad441f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x718874a9402f8e5802607d4d1cc008274f0bd3d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x778e9294af38dfc8b92e8969953eb559b47e896e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7d763143a5c037a03d29b4f7049fe71b197fec40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7de65e4fcc6a0b411b90a24cc33741ab3cd00262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb13a7d1361bd6f6734078654047daae210f2d4d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbdc6d8481ba06fa7bb043ab0fb74bae9e774bf12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd452dd6424d78a0a12bd0462ae6868e7da28e5cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd76707ffb9feb81eda0d6d0ea56d4eb0325d5673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdd0a77eb6235d714d612a4f3f5d2185874c3ee39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xff343f31a6e327a6d52f7d4125e1b6f4054deaa6` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 143
- Live contracts: 10
- Unknown liveness contracts: 133
- Source-verified contracts: 131
- Currently scope-matched contracts retained as-is: 2
- Classification counts: currently scope matched=2, candidate review=123, exact address book overlap=1, source verified unclassified=5, unverified unclassified=12

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | ERC1967Proxy<br>`0x1fad980dfaff71e3fdd9bef643ab2ff2bdc4ccd6` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| currently scope matched | ERC1967Proxy<br>`0xf6a4a6acecd5311327ae3866624486b6179fef97` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | BatchClaimer<br>`0x7813a73134bf03fbfb982d33066558887351de27` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | BatchClaimerV2<br>`0x78b5ebb84db848c55e553fe1928474f926d59d84` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | BatchClaimerV2_1<br>`0xd45b101981d907a2bd0157dd83fb12a04d96723c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | BatchClaimerV2_2<br>`0xa38e688fb07dec5d43b405a90d6d98cbf603f491` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | BribeCollector<br>`0x61bd35fbec49b144a1953f48f84ef8d2b321da40` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | BribeCollectorV1_2<br>`0xb704cec5e4df84446f6bcad9a52b9f4641bd29a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | BribeCollectorV1_3<br>`0xb3cec5ac14897ebc145da41c46e97a37cd803b3f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | BribeCollectorV1_4<br>`0x960a7791322e2ddf5aba61b467bd8718377c5301` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | BribeCollectorV1_4<br>`0xd5a302834425870db03c23bdc846f3078c668bcb` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | BYUSDRewardDistributor<br>`0x21c18c071c11160877e6f86eb8d30926cc4cc617` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | BYUSDRewardDistributor<br>`0x88c0170881764d3e91dce725775fdf5757a86725` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | CuttingBoardDutchAuctionV1_1<br>`0x2b8b98231635f3762ae269f6d34b0f209f973da3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | ERC1967Proxy<br>`0x1d6844b42784d3adbd7fdfa5887d56d22aa9fb67` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | ERC1967Proxy<br>`0x283071d22d8d70340bebd5e09e03262ebc3defdb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | ERC1967Proxy<br>`0x7332051c4eed9cd40b28ba0a1c5d042666897da8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | HarvestBaseCollector<br>`0xf8bfe8377b2f16f154d7a0c406eae46cd5d46c5d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | HarvestBaseCollectorV1_2<br>`0x8b498d065312ec5c54698ab80e98084cec95c388` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | Infrared<br>`0x559d1347242f350bdc44f99c729984bfb188092f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | InfraredBERA<br>`0x94b5d53483117fe3832c8e08d2a71ab8ab546d81` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | InfraredBERADepositor<br>`0xef26bcfb9ce4e807465a46087e9dd73b652fef87` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | InfraredBERADepositorV2<br>`0xe18e88631e0b497180f440ff895981d99bc3e24b` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | InfraredBERAFeeReceivor<br>`0xab2dadd15af962b036d361849c024a3f70b18254` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | InfraredBERAV2<br>`0x33f3145f2691ae01cfbb67854830ca84c2995fd8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | InfraredBERAV2_1<br>`0xc0654903c7d76f7fe63f9ad2f01618c3b55d9dcf` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | InfraredBERAWithdrawor<br>`0x367cbfd767de1452415d24fae29c0fde206bac8d` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | InfraredDistributor<br>`0x742ebbf91a37064e89e5628d139070b73aa90247` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | InfraredV1_10<br>`0x6d4e881a7fefe098c6434fa9fa6d6695dad331b5` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | InfraredV1_2<br>`0x4d87f81f11660aac19c4a9165a10e2697cb2eff5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | InfraredV1_2<br>`0x7333e253759aab13b0d1b78c0d5d6ca15f6c8555` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | InfraredV1_3<br>`0x67b4e6721ad3a99b7ff3679caee971b07fd85cd1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | InfraredV1_4<br>`0xd34a436621e93dbadf15b6040dee7dbcbd16ef20` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | InfraredV1_5<br>`0xb0713bafa14f1a36abfce7800a0e8d2c539a02dd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | InfraredV1_7<br>`0x8d5a82ddc916a2750fa9769aae354bf7a19360b9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | InfraredV1_8<br>`0x39366e79e2b07667ae44c10b11b2866dba86a635` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | InfraredV1_9<br>`0xe9a3c95e071599b2178c52277dcf8a57a8bcd8ef` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | IRAuction<br>`0xe772bc9b4813c048f23d7a9d0905e64b01d5a717` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | MerkleDistributor<br>`0x43d69cf03615d341d84a1917a3253b6c978b4b17` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | MerkleDistributor<br>`0x5f791523314ca809a1146184311e35001b6e6fc8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | MerkleDistributor<br>`0x777ceb12d244d9b979564014da9623dfdbfd8e51` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | MerkleDistributor<br>`0x9d57c99ddf96d9eed10d926bade3c58f4fe6d349` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | ProxyDeployer<br>`0x0c7f08bd9c6811f5dba2f9e26e451b0473208bf0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | Redeemer<br>`0x3e8eda9821c588a57200b790204c0066a1681046` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | Redeemer<br>`0x5a2da5e3cffa06f625ef4f2142675950c03370cc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | StakedIR<br>`0x4b5274376f4e7ed198bc9af848120fcad0a71dbc` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | WrappedRewardToken<br>`0x334404782ab67b4f6b2a619873e579e971f9aab7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| candidate review | WrappedVault<br>`0x023e5d8740823bb19401cbf561bf322ef93124f0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x03c2ef90ec1f5deab5a16accfb49c42ac602ba65` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x04bd6ed6408cb573419fd763e3b7ced57de69bd5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x04edcc9715445dd38f9fb327af8740bdfb81b739` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x0cb3e2482357d1ac7df0f9ac2df776717142d009` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x0fff6d1907eced46bc660643f022ddc1db9ddc97` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x1453c6883c3492654757fe9ac048f98c69eba339` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x16275c1cae13131b153cec4f8178304c7ae730f4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x1a18f5546ddd417933db08bdb7325916d71a2241` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x22a3fb83478b2c4aa4b166dda78192284a488715` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x23ed71a0d5a1583233115d25a22e96cd30fd8864` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x2415fee8af7c121e17ae1b78e0891a8c6112cf8f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x27b03a57418dd0d827ac99d279a1bf3bd89086db` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x2a447fe46490b5086557ce6e7b0609f845e69ac2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x2e113998f4561cc15543c380b0a92c60657ae031` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x2e32ddd251bdbc0daf272c703ed04e306fe2b00f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x2f511975290121b5937a1bbc836c256244723c9b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x3904aaa585d846096fcdb38ef516c3ebace1ab84` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x3b43d2c548038167da3351318aae879af60462b5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x3fc37a9989520747df339c7928f569f9bf798d00` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x42cd67e9aecd4bc18a8b63750811092f367262b6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x47590f8c83bb99ff9c9d6640f007722a79f0ab02` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x5782d6f9b7cba0a0e9151aecbd26acdc64d5aaa5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x58b61ed5c1657e78ffc7e574e8ac42c6f20ebe1e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x5d51a2034c3a830b6e50620f210e6882d3620224` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x6503a84a4b64db7d0617ed200328562c3e1796c8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x6e0d09b502c6e561b287cd4e66c8ef879c86e20d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x70d6cf978364543b5fc48107b513da65ed1ad2ad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x732dfb929cdea0b05508f8f9d9695b88f9987a42` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x78808a499e163a5a88499f4f0d1f1457489f503c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x79a27a5b2a84b60e2869dd09c46d537b1a6f4ef8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x7bc28c1bf423fd364994815bc4e82c596a5a375a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x7c010b2f8e994bc86827a1fc7122792e2bc5b5c6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x7cc2485c334a9c04f40cfc6e36ca8be7f2a4efe1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x7cde0a989c97a15b6f2b63f0b7582d40a4e86d23` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x7e571726fa7e734d8c6bfc335df860f5b9286355` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x7ef1f9f4e6e2f8f112b953f3b0a71ed1311f4730` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x7f6ed59799d4cfac23d20b623974e9fca287da17` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x81fb2a522cef613da927eb2e7899b8c1a6893a1b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x82609f09fbc441d1cbbed47a4479ea33d062f587` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x82d7503225f98b999cafdfbaab803d52f122dd2b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x85550269f0ed260a6603a3502e805fc2099034bc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x86fee05992b8bcccf4d46160beca0daba90ac240` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x8b492ee2fbc146ed845cbd05e4e2eb59bfe030f9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x9433ccf93ac084f7191b78d7bd0e7d64ed344e27` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x95c1f2e36ca90898c893ab4caa4aff79ab14ebf7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x9f47f2b56a2767e01d15ed3c8d3fb5283c5d5c80` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0x9f898e9c5863a13f68a714044d380e9ffff7b732` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xa2b10d1ee0c0f715ef0694e25984d01ac8bf83d4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xa2e5e46b0d13bf5534d204f8a49a099e47559ed4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xa3fd520cba6f44ffc4437a74865cea5d2f93ce06` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xa63ff996cc93bd4e0623f5038ad31d1146ae4f88` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xa6899cce1cea2c2c921ccbcbad296fefd0c7a955` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xa81dde743030592237c6b3b6b3e55a9bf15abee4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xab71f6637623e3310940e6624355a094cc7c42e6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xac36a93737cd4ca67fbea7a826a45098afe53529` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xb0292fff5c5544ffa3e6a362d622b0f4eda535ed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xb04a2a6059ee328ad740b8c66b4cd69716ad3839` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xb065f887f23d3707386b3fdfecb252e3c50f5088` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xb17f63aed263d6be67d817053d664190fba15a50` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xb59aa6e935c66eea5dedc0eb385ceb62fbe85757` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xba7f7d6a07ae4f42f4add5d360d9ca6d41825073` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xbc44617088aeaafacdeb6de68cfa287fb2cda130` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xbcd6819a00df6e7f7e6d5e073ff00a91bc876a9d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xbf19612f6ef35fe411801509e4c284647213f5fe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xc2f57489a989c41bf3f5db00d7ccda3639eee206` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xc6b6b099cfbcbc3d23ea9abfe4da500134479a29` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xc9adf89f108992af6094d0d217e09e54237250db` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xcc0c3f6c8c7a9a7c7788d85ff720830f8af6d05c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xd39b77918d1897b900490f3e519350cc2a09f907` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xd5ae03140fcbccbde82756489d5b13f46a37d25a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xdfd21d8190f444437a5f791ef920b57ac43184ca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xe193336621b91d9034a7668fd5fe0065ad84f34f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xeb6e02ad20e35ad1f2266b98f703757b493bbcce` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xf3a956b2c29f5c1216a72c88259db9e66e1f3aa1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xf3cbc6876bc2b364eca48295f17c87c821ad8c7b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xf4c35f3a334ca73a229d9d416924f51675240796` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| candidate review | WrappedVault<br>`0xf69cf3afc2aa3d58b32fe365e6c47cafb42f18a5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| exact address book overlap | InfraredGovernanceTokenV1_2<br>`0xa1b644aec990ad6023811ced36e6a2d6d128c7c9` | project_anchor | unknown | live | verified | n/a | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| source verified unclassified | IROFT<br>`0xd26004b2db8e2e17e074eede115bf200cb5d10d9` | non_address_book | unknown | unknown | verified | n/a | `0xa3a771a7c4afa7f0a3f88cc6512542241851c926` |
| source verified unclassified | CuttingBoardDutchAuctionV1_2<br>`0x3ed920b0b95a2b02caf674038689f54486c122e4` | non_address_book | unknown | unknown | verified | n/a | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| source verified unclassified | InfraredBERARateProvider<br>`0x776fd57bbeb752bdeeb200310fafae9a155c50a0` | non_address_book | unknown | unknown | verified | n/a | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| source verified unclassified | InfraredBERAWithdraworLite<br>`0x725a5576232220132f129f08e4a9eb7d4be92444` | non_address_book | unknown | unknown | verified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| source verified unclassified | RewardDistributor<br>`0x2114079132c56827237f581ef1a0625680d29576` | non_address_book | unknown | unknown | verified | n/a | `0x1ecf087ea1194ab182a53de849d61deb917d733f` |
| unverified unclassified | UnnamedContract<br>`0x01b775b353176bb1b9075c5d344c2b689285282a` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| unverified unclassified | UnnamedContract<br>`0x1ece52a596c2cbef7b71fa8fa8fc738aa7ad441f` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| unverified unclassified | UnnamedContract<br>`0x718874a9402f8e5802607d4d1cc008274f0bd3d4` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| unverified unclassified | UnnamedContract<br>`0x778e9294af38dfc8b92e8969953eb559b47e896e` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| unverified unclassified | UnnamedContract<br>`0x7d763143a5c037a03d29b4f7049fe71b197fec40` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| unverified unclassified | UnnamedContract<br>`0x7de65e4fcc6a0b411b90a24cc33741ab3cd00262` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| unverified unclassified | UnnamedContract<br>`0xb13a7d1361bd6f6734078654047daae210f2d4d4` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| unverified unclassified | UnnamedContract<br>`0xbdc6d8481ba06fa7bb043ab0fb74bae9e774bf12` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| unverified unclassified | UnnamedContract<br>`0xd452dd6424d78a0a12bd0462ae6868e7da28e5cb` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| unverified unclassified | UnnamedContract<br>`0xd76707ffb9feb81eda0d6d0ea56d4eb0325d5673` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| unverified unclassified | UnnamedContract<br>`0xdd0a77eb6235d714d612a4f3f5d2185874c3ee39` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| unverified unclassified | UnnamedContract<br>`0xff343f31a6e327a6d52f7d4125e1b6f4054deaa6` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Infrared - Zellic Audit Report.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [Infrared - Zenith Audit Report - 20082025.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20-%20Zenith%20Audit%20Report%20-%2020082025.pdf) | unknown | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Infrared - Zenith Audit Report 09.07.2025.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20-%20Zenith%20Audit%20Report%2009.07.2025.pdf) | unknown | Audit | 2025-07 | aging | Direct | n/a | matched | 2 | 2 | 0 | 5 | n/a |
| [Infrared - Zenith Audit Report.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20-%20Zenith%20Audit%20Report.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [Infrared Berachain Core Integration - Zellic Audit Report.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20Berachain%20Core%20Integration%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Infrared Merkle Distributor - Zenith Audit Report.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20Merkle%20Distributor%20-%20Zenith%20Audit%20Report.pdf) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Infrared OFT Adapter Security Review.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20OFT%20Adapter%20Security%20Review.pdf) | unknown | Audit | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [Infrared Operations & Future Vaults Security Review.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20Operations%20%26%20Future%20Vaults%20Security%20Review.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Infrared Smart Contract Security Assessment.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20Smart%20Contract%20Security%20Assessment.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Infrared_Finance_Incidence_Response_Review_Report_Feb_2025_2.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared_Finance_Incidence_Response_Review_Report_Feb_2025_2.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [Infraredv1.5.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infraredv1.5.pdf) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [Zenith Audit Report - Infrared Finance.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Zenith%20Audit%20Report%20-%20Infrared%20Finance.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [baseline-ethskills.md](https://github.com/infrared-dao/contracts/blob/master/audits/baseline-ethskills.md) | unknown | Audit | 2026-04 | fresh | Direct | n/a | matched | 9 | 8 | 0 | 10 | n/a |
| [cantinacode-24.01.2026.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/cantinacode-24.01.2026.pdf) | Spearbit | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [infraredContractsSecurityReview.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/infraredContractsSecurityReview.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [infrared_contract_security_review.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/infrared_contract_security_review.pdf) | unknown | Audit | 2025-11 | fresh | Direct | n/a | matched | 2 | 2 | 0 | 4 | n/a |
| [infrared_security_review_12_11_2025.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/infrared_security_review_12_11_2025.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [report-cantinacode-infrared-03072025.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-03072025.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | n/a | matched | 2 | 2 | 0 | 4 | n/a |
| [report-cantinacode-infrared-0310-bribeCollector.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-0310-bribeCollector.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [report-cantinacode-infrared-0320.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-0320.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [report-cantinacode-infrared-1.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-1.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | n/a | matched | 2 | 2 | 0 | 11 | n/a |
| [report-cantinacode-infrared-1201.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-1201.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | n/a | matched | 2 | 2 | 0 | 1 | n/a |
| [report-cantinacode-infrared-5.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-5.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | n/a | matched | 2 | 2 | 0 | 11 | n/a |
| [report-cantinacode-infrared-pr647.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-pr647.pdf) | Spearbit | Audit | 2025-11 | fresh | Direct | n/a | matched | 2 | 2 | 0 | 4 | n/a |
| [report-cantinacode-infrared.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared.pdf) | Spearbit | Audit | 2024-12 | aging | Direct | contract_name | matched | 2 | 1 | 0 | 15 | high |
| [report-cli-cantina-infrared-0503_final.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cli-cantina-infrared-0503_final.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [report-competition-infrared-contracts.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-competition-infrared-contracts.pdf) | unknown | Audit | 2025-02 | aging | Direct | n/a | matched | 4 | 2 | 0 | 10 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [5712] Infrared - Zellic Audit Report.pdf — matched: Scope includes core/*.sol, utils/*.sol, vendors/*.sol. Extracted contract names from threat model sections and file paths.
- [5713] Infrared - Zenith Audit Report - 20082025.pdf — no match: Scope section lists repository and commit hash but no specific contract names; extracted from findings and file references.
- [5714] Infrared - Zenith Audit Report 09.07.2025.pdf — matched: No reason recorded
- [5715] Infrared - Zenith Audit Report.pdf — no match: Scope section lists repository and commit hash but no specific contract files. Contract names extracted from findings.
- [5716] Infrared Berachain Core Integration - Zellic Audit Report.pdf — no match: The scope explicitly lists 'Programs contracts/tests/unit/core/Infrared/*' and the goals mention testing functions of Infrared.sol. No other contract names are explicitly in scope.
- [5717] Infrared Merkle Distributor - Zenith Audit Report.pdf — no match: Only one contract in scope: MerkleDistributor.sol. Audit date from report published date.
- [5718] Infrared OFT Adapter Security Review.pdf — no match: No reason recorded
- [5719] Infrared Operations & Future Vaults Security Review.pdf — no match: Scope section lists two contracts: InfraredMultisigGovernance.s.sol and MultiRewards.sol. Audit date is November 12, 2025 from the cover page.
- [5720] Infrared Smart Contract Security Assessment.pdf — no match: Scope section explicitly lists three files: RewardsLib.sol, InfraredV1_9.sol, BatchClaimerV2_2.sol. Audit date is November 12, 2025 from the cover page.
- [5721] Infrared_Finance_Incidence_Response_Review_Report_Feb_2025_2.pdf — no match: The report is an incident response review, not a full audit with a scope section. Contract names extracted from code references and upgrade mentions.
- [5722] Infraredv1.5.pdf — no match: No explicit scope section found; contracts inferred from findings and context.
- [5723] Zenith Audit Report - Infrared Finance.pdf — no match: Only Infrared.sol is explicitly named as a target in findings. The scope section lists a repository and commit hash but no specific contract files. Other contracts (IBerachainBGT, BGT.sol, etc.) are dependencies or referenced in code but not in scope.
- [5724] baseline-ethskills.md — matched: No reason recorded
- [5725] cantinacode-24.01.2026.pdf — no match: Scope section explicitly lists three contracts in src/periphery/. Audit date from cover page: January 24, 2026.
- [5726] infraredContractsSecurityReview.pdf — no match: No explicit scope section found; contract names extracted from findings context. Audit date from cover page.
- [5727] infrared_contract_security_review.pdf — matched: No reason recorded
- [5728] infrared_security_review_12_11_2025.pdf — no match: Only one contract in scope: RewardDistributor.sol. Audit date from cover page.
- [5729] report-cantinacode-infrared-03072025.pdf — matched: No reason recorded
- [5730] report-cantinacode-infrared-0310-bribeCollector.pdf — no match: Only one contract (BribeCollectorV1_2) is explicitly in scope. InfraredUpgradeable is mentioned as a parent but not in scope.
- [5731] report-cantinacode-infrared-0320.pdf — no match: No explicit scope section found; contracts inferred from findings context. Audit date from cover page.
- [5732] report-cantinacode-infrared-1.pdf — matched: No reason recorded
- [5733] report-cantinacode-infrared-1201.pdf — matched: No reason recorded
- [5734] report-cantinacode-infrared-5.pdf — matched: No reason recorded
- [5735] report-cantinacode-infrared-pr647.pdf — matched: No reason recorded
- [5736] report-cantinacode-infrared.pdf — matched: Extracted contract names from the audit report's scope and findings sections. The report covers Infrared contracts including core contracts (Infrared, InfraredDistributor, BribeCollector) and voting contracts (Voter, VotingEscrow, etc.). Audit date is December 26, 2024 from the cover page.
- [5737] report-cli-cantina-infrared-0503_final.pdf — no match: Scope section explicitly lists three files in src/periphery. Additional contracts mentioned in findings are also included as they are part of the audited system.
- [5738] report-competition-infrared-contracts.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Infrared - Zellic Audit Report.pdf | IBGT | unmatched — not counted | — | listed in scope as core/*.sol | no |
| Infrared - Zellic Audit Report.pdf | Infrared | unmatched — not counted | — | listed in scope as core/*.sol | no |
| Infrared - Zellic Audit Report.pdf | InfraredVault | own contract | InfraredVault (selected) `0x75f3be06b02e235f6d0e7ef2d462b29739168301` — deployed 2025-02-14 19:41:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Infrared - Zellic Audit Report.pdf | MultiRewards | unmatched — not counted | — | listed in scope as core/*.sol | no |
| Infrared - Zellic Audit Report.pdf | ValidatorSet | unmatched — not counted | — | listed in scope as utils/*.sol | no |
| Infrared - Zellic Audit Report.pdf | InfraredVaultDeployer | unmatched — not counted | — | listed in scope as utils/*.sol | no |
| Infrared - Zenith Audit Report - 20082025.pdf | Redeemer | unmatched — not counted | — | listed in scope and findings | no |
| Infrared - Zenith Audit Report - 20082025.pdf | BGT | unmatched — not counted | — | referenced in findings | no |
| Infrared - Zenith Audit Report - 20082025.pdf | RewardsLib | unmatched — not counted | — | referenced in findings | no |
| Infrared - Zenith Audit Report - 20082025.pdf | InfraredV1_8 | unmatched — not counted | — | referenced in findings | no |
| Infrared - Zenith Audit Report 09.07.2025.pdf | BeaconRootsVerify | unmatched — not counted | — | — | no |
| Infrared - Zenith Audit Report 09.07.2025.pdf | InfraredBERADepositorV2 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x04cddc538ea65908106416986adaecefd4cab7d7` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Infrared - Zenith Audit Report 09.07.2025.pdf | InfraredBERARateProvider | unmatched — not counted | — | — | no |
| Infrared - Zenith Audit Report 09.07.2025.pdf | InfraredBERAV2 | unmatched — not counted | — | — | no |
| Infrared - Zenith Audit Report 09.07.2025.pdf | InfraredBERAWithdrawor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x8c0e122960dc2e97dc0059c07d6901dce72818e1` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Infrared - Zenith Audit Report 09.07.2025.pdf | InfraredBERAWithdraworLite | unmatched — not counted | — | — | no |
| Infrared - Zenith Audit Report 09.07.2025.pdf | UpgradeInfraredBERAWithdrawor | unmatched — not counted | — | — | no |
| Infrared - Zenith Audit Report.pdf | InfraredV1_4 | unmatched — not counted | — | Mentioned in findings I-1 and I-2 as target contract | no |
| Infrared - Zenith Audit Report.pdf | InfraredV1_2 | unmatched — not counted | — | Mentioned in finding I-2 as defining storage state | no |
| Infrared Berachain Core Integration - Zellic Audit Report.pdf | Infrared | unmatched — not counted | — | Scope section lists 'Programs contracts/tests/unit/core/Infrared/*' and goals mention test cases for Infrared.sol functions. | no |
| Infrared Merkle Distributor - Zenith Audit Report.pdf | MerkleDistributor | unmatched — not counted | — | listed in scope section | no |
| Infrared OFT Adapter Security Review.pdf | ConfigureOFTPeers | unmatched — not counted | — | — | no |
| Infrared OFT Adapter Security Review.pdf | DeployIROFT | unmatched — not counted | — | — | no |
| Infrared OFT Adapter Security Review.pdf | DeployIROFTAdapter | unmatched — not counted | — | — | no |
| Infrared OFT Adapter Security Review.pdf | IROFT | unmatched — not counted | — | — | no |
| Infrared OFT Adapter Security Review.pdf | IROFTAdapter | unmatched — not counted | — | — | no |
| Infrared OFT Adapter Security Review.pdf | VerifyOFTSetup | unmatched — not counted | — | — | no |
| Infrared Operations & Future Vaults Security Review.pdf | InfraredMultisigGovernance | unmatched — not counted | — | listed in scope | no |
| Infrared Operations & Future Vaults Security Review.pdf | MultiRewards | unmatched — not counted | — | listed in scope | no |
| Infrared Smart Contract Security Assessment.pdf | RewardsLib | unmatched — not counted | — | listed in scope | no |
| Infrared Smart Contract Security Assessment.pdf | InfraredV1_9 | unmatched — not counted | — | listed in scope | no |
| Infrared Smart Contract Security Assessment.pdf | BatchClaimerV2_2 | unmatched — not counted | — | listed in scope | no |
| Infrared_Finance_Incidence_Response_Review_Report_Feb_2025_2.pdf | MultiRewards | unmatched — not counted | — | mentioned in root cause analysis | no |
| Infrared_Finance_Incidence_Response_Review_Report_Feb_2025_2.pdf | Infrared | unmatched — not counted | — | mentioned as contract to upgrade | no |
| Infrared_Finance_Incidence_Response_Review_Report_Feb_2025_2.pdf | InfraredV2 | unmatched — not counted | — | mentioned as upgraded contract | no |
| Infraredv1.5.pdf | WrappedVaultFactory | unmatched — not counted | — | mentioned in finding context: WrappedVaultFactory.sol#L22-L23 | no |
| Infraredv1.5.pdf | WrappedVaultOracleAuction | unmatched — not counted | — | mentioned in finding context: constructor of WrappedVaultOracleAuction | no |
| Zenith Audit Report - Infrared Finance.pdf | Infrared.sol | unmatched — not counted | — | Target in findings M-1 and M-2 | no |
| baseline-ethskills.md | BatchClaimerV2_2 | unmatched — not counted | — | — | no |
| baseline-ethskills.md | BribeCollectorV1_4 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x8d44170e120b80a7e898bfba8cb26b01ad21298c` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | CuttingBoardSyndicate | unmatched — not counted | — | — | no |
| baseline-ethskills.md | IRAuction | unmatched — not counted | — | — | no |
| baseline-ethskills.md | IRRewardDistributor | unmatched — not counted | — | — | no |
| baseline-ethskills.md | InfraredBERADepositorV2 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x04cddc538ea65908106416986adaecefd4cab7d7` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | InfraredBERADepositorV2_1 | unmatched — not counted | — | — | no |
| baseline-ethskills.md | InfraredBERAFeeReceivor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xf6a4a6acecd5311327ae3866624486b6179fef97` — deployed 2025-02-01 23:25:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | InfraredBERAV2_1 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9b6761bf2397bb5a6624a856cc84a3a14dcd3fe5` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | InfraredBERAWithdrawor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x8c0e122960dc2e97dc0059c07d6901dce72818e1` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | InfraredDistributor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x1fad980dfaff71e3fdd9bef643ab2ff2bdc4ccd6` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | InfraredUpgradeable | unmatched — not counted | — | — | no |
| baseline-ethskills.md | InfraredV1_10 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xb71b3daea39012fb0f2b14d2a9c86da9292fc126` — deployed 2025-02-01 23:25:54+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | MerkleDistributor | unmatched — not counted | — | — | no |
| baseline-ethskills.md | RewardsLib | unmatched — not counted | — | — | no |
| baseline-ethskills.md | StakedIR | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xb5e9cfd2751363f38a696626c18db4aff7512756` — deployed 2026-01-14 00:27:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | Upgradeable | unmatched — not counted | — | — | no |
| baseline-ethskills.md | WrappedRewardToken | own contract | WrappedRewardToken (selected) `0x4f3c10d2bc480638048fa67a7d00237a33670c1b` — deployed 2025-10-07 16:43:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | WrappedVault | unmatched — not counted | — | — | no |
| cantinacode-24.01.2026.pdf | CuttingBoardDutchAuction | unmatched — not counted | — | listed in scope section | no |
| cantinacode-24.01.2026.pdf | CuttingBoardManager | unmatched — not counted | — | listed in scope section | no |
| cantinacode-24.01.2026.pdf | CuttingBoardNFT | unmatched — not counted | — | listed in scope section | no |
| infraredContractsSecurityReview.pdf | InfraredV1_5 | unmatched — not counted | — | mentioned in findings context | no |
| infraredContractsSecurityReview.pdf | RewardsLib | unmatched — not counted | — | mentioned in findings context | no |
| infrared_contract_security_review.pdf | BeaconRootsVerify | unmatched — not counted | — | — | no |
| infrared_contract_security_review.pdf | InfraredBERADepositorV2 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x04cddc538ea65908106416986adaecefd4cab7d7` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| infrared_contract_security_review.pdf | InfraredBERAV2 | unmatched — not counted | — | — | no |
| infrared_contract_security_review.pdf | InfraredBERAWithdrawor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x8c0e122960dc2e97dc0059c07d6901dce72818e1` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| infrared_contract_security_review.pdf | InfraredBERAWithdraworLite | unmatched — not counted | — | — | no |
| infrared_contract_security_review.pdf | MerkleTree | unmatched — not counted | — | — | no |
| infrared_security_review_12_11_2025.pdf | RewardDistributor | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-infrared-03072025.pdf | BeaconRootsVerify | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-03072025.pdf | InfraredBERADepositorV2 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x04cddc538ea65908106416986adaecefd4cab7d7` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-03072025.pdf | InfraredBERAV2 | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-03072025.pdf | InfraredBERAWithdrawor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x8c0e122960dc2e97dc0059c07d6901dce72818e1` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-03072025.pdf | InfraredBERAWithdraworLite | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-03072025.pdf | MerkleTree | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-0310-bribeCollector.pdf | BribeCollectorV1_2 | unmatched — not counted | — | Listed in scope as the main contract under review; findings reference BribeCollectorV1_2.sol | no |
| report-cantinacode-infrared-0320.pdf | InfraredV1_3 | unmatched — not counted | — | mentioned in findings context and scope | no |
| report-cantinacode-infrared-0320.pdf | InfraredV1_2 | unmatched — not counted | — | mentioned in findings context and scope | no |
| report-cantinacode-infrared-1.pdf | BribeCollector | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | Infrared | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | InfraredBERA | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | InfraredBERAClaimor | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | InfraredBERADepositor | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | InfraredBERAWithdrawor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x8c0e122960dc2e97dc0059c07d6901dce72818e1` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-1.pdf | InfraredBERAWithdraworLite | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | InfraredDeployer | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | InfraredDistributor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x1fad980dfaff71e3fdd9bef643ab2ff2bdc4ccd6` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-1.pdf | InfraredUpgradeable | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | MultiRewards | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | RewardsLib | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | VaultManagerLib | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1201.pdf | InfraredBERAKeeper | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1201.pdf | InfraredBERAV2_1 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9b6761bf2397bb5a6624a856cc84a3a14dcd3fe5` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-1201.pdf | InfraredBERAWithdrawor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x8c0e122960dc2e97dc0059c07d6901dce72818e1` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-5.pdf | BribeCollector | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | Infrared | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | InfraredBERA | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | InfraredBERAClaimor | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | InfraredBERADepositor | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | InfraredBERAWithdrawor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x8c0e122960dc2e97dc0059c07d6901dce72818e1` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-5.pdf | InfraredBERAWithdraworLite | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | InfraredDeployer | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | InfraredDistributor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x1fad980dfaff71e3fdd9bef643ab2ff2bdc4ccd6` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-5.pdf | InfraredUpgradeable | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | MultiRewards | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | RewardsLib | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | VaultManagerLib | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-pr647.pdf | BatchClaimerV2_2 | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-pr647.pdf | IRAuction | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-pr647.pdf | IRRewardDistributor | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-pr647.pdf | InfraredV1_10 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xb71b3daea39012fb0f2b14d2a9c86da9292fc126` — deployed 2025-02-01 23:25:54+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-pr647.pdf | RewardsLib | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-pr647.pdf | StakedIR | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xb5e9cfd2751363f38a696626c18db4aff7512756` — deployed 2026-01-14 00:27:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared.pdf | Infrared | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | InfraredDistributor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x1fad980dfaff71e3fdd9bef643ab2ff2bdc4ccd6` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared.pdf | BribeCollector | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | Voter | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | VotingEscrow | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | InfraredVault | own contract | InfraredVault (selected) `0x75f3be06b02e235f6d0e7ef2d462b29739168301` — deployed 2025-02-14 19:41:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared.pdf | MultiRewards | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | Reward | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | VotingReward | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | BribeVotingReward | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | InfraredUpgradeable | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | IBGT | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | IInfraredDistributor | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | IVoter | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | IVotingEscrow | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | BalanceLogicLibrary | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | VelodromeTimeLibrary | unmatched — not counted | — | listed in scope and findings | no |
| report-cli-cantina-infrared-0503_final.pdf | CuttingBoardNFT | unmatched — not counted | — | listed in scope section | no |
| report-cli-cantina-infrared-0503_final.pdf | CuttingBoardSyndicate | unmatched — not counted | — | listed in scope section | no |
| report-cli-cantina-infrared-0503_final.pdf | CuttingBoardSyndicateLib | unmatched — not counted | — | listed in scope section | no |
| report-cli-cantina-infrared-0503_final.pdf | CuttingBoardDutchAuctionV1_1 | unmatched — not counted | — | mentioned in findings context | no |
| report-cli-cantina-infrared-0503_final.pdf | CuttingBoardDutchAuction | unmatched — not counted | — | mentioned in findings context | no |
| report-cli-cantina-infrared-0503_final.pdf | CuttingBoardManager | unmatched — not counted | — | mentioned in findings context | no |
| report-cli-cantina-infrared-0503_final.pdf | CuttingBoardSlotNFT | unmatched — not counted | — | mentioned in findings context | no |
| report-competition-infrared-contracts.pdf | BribeCollector | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | Infrared | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | InfraredBERA | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | InfraredBERAConstants | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | InfraredBERADepositor | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | InfraredBERAFeeReceivor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xf6a4a6acecd5311327ae3866624486b6179fef97` — deployed 2025-02-01 23:25:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-competition-infrared-contracts.pdf | InfraredBERAWithdraworLite | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | InfraredBGT | own contract | InfraredBGT (selected) `0xac03caba51e17c86c921e1f6cbfbdc91f8bb2e6b` — deployed 2025-02-01 23:25:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-competition-infrared-contracts.pdf | InfraredDistributor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x1fad980dfaff71e3fdd9bef643ab2ff2bdc4ccd6` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-competition-infrared-contracts.pdf | InfraredVault | own contract | InfraredVault (selected) `0x75f3be06b02e235f6d0e7ef2d462b29739168301` — deployed 2025-02-14 19:41:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-competition-infrared-contracts.pdf | MultiRewards | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | RewardsLib | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | ValidatorManagerLib | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | WrappedVault | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | `0xa1b644aec990ad6023811ced36e6a2d6d128c7c9` | InfraredGovernanceTokenV1_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 16
- Inherited remapped matches: 0
- Address-book scope dispositions: 30 own (25 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 121 unmatched
- Matched-own operational status: 30 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=11, medium=6
- Match method counts: unique_name=30

Zero-match audit list:

- [5713] Infrared - Zenith Audit Report - 20082025.pdf
- [5715] Infrared - Zenith Audit Report.pdf
- [5716] Infrared Berachain Core Integration - Zellic Audit Report.pdf
- [5717] Infrared Merkle Distributor - Zenith Audit Report.pdf
- [5718] Infrared OFT Adapter Security Review.pdf
- [5719] Infrared Operations & Future Vaults Security Review.pdf
- [5720] Infrared Smart Contract Security Assessment.pdf
- [5721] Infrared_Finance_Incidence_Response_Review_Report_Feb_2025_2.pdf
- [5722] Infraredv1.5.pdf
- [5723] Zenith Audit Report - Infrared Finance.pdf
- [5725] cantinacode-24.01.2026.pdf
- [5726] infraredContractsSecurityReview.pdf
- [5728] infrared_security_review_12_11_2025.pdf
- [5730] report-cantinacode-infrared-0310-bribeCollector.pdf
- [5731] report-cantinacode-infrared-0320.pdf
- [5737] report-cli-cantina-infrared-0503_final.pdf

Fork inheritance lineage and inherited audits are included when available.
