# Agentic Audit Brief: Vela Exchange

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Vela Exchange (`vela-exchange`)
- Website: [https://www.vela.exchange/](https://www.vela.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base
- Contract surface: 318 unique implementations (326 raw deployments)
- Coverage basis: 2/11 confirmed own live verified implementations (18.2%); conservative 18.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $369,837.70
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Vela Exchange. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across arbitrum, base. Structural roles: 7 core, 4 supporting. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: core (7), supporting (4)
- Contract kinds: contract (10), abstract (1)
- Detected standards: erc1967proxy (4), erc20 (4), ownable (4), accesscontrol (1), erc165 (1), erc20permit (1), pausable (1)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (3)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 40 contracts are derived from known codebases. 40 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0e7bfb195c7ee349e9cb21a7e0c751be959fc73c`, chain 8453)
- UnnamedContract (`0x14fffc8f0d7afe82531e32f1a7741f6bdec7b316`, chain 8453)
- UnnamedContract (`0x45fdc9a248ab240fb13c79c375f2ca358f11faa5`, chain 8453)
- UnnamedContract (`0x52ac3eda13eb7959f918df02a72d0f6c9c703523`, chain 8453)
- UnnamedContract (`0x60b8c145235a31f1949a831803768bf37d7ab7aa`, chain 8453)
- UnnamedContract (`0x841aadf72ab34456ca74fc1782d68dc734dfa7ff`, chain 8453)
- UnnamedContract (`0x8b97e18ee706d056a5659947a717a7971003f524`, chain 8453)
- UnnamedContract (`0x8eba92960d131ced4d531b1e0f53f407f6abf9f0`, chain 8453)
- UnnamedContract (`0xc4abade3a15064f9e3596943c699032748b13352`, chain 8453)
- UnnamedContract (`0xc8e027c40b25c4cd0c059763d042e79466d7bbb6`, chain 8453)
- UnnamedContract (`0xe8aee3eeadecf8ee0150b2368d40a076bf36624a`, chain 8453)
- UnnamedContract (`0xebf154ee70de5237ab07bd6428310cbc5e5c7c6e`, chain 8453)
- UnnamedContract (`0x12d4528e69e196a0c291df3b28449e9fc2769d11`, chain 42161)
- UnnamedContract (`0x23fc7c88402fe3314d4e76ac42f4c5a3e01ae684`, chain 42161)
- UnnamedContract (`0x361a5f8fa6860b5f5c021a5dd370c1180010a561`, chain 42161)
- UnnamedContract (`0x40c3bd6d4a07117fce69b60eb1d446984e0a1383`, chain 42161)
- UnnamedContract (`0x45fdc9a248ab240fb13c79c375f2ca358f11faa5`, chain 42161)
- UnnamedContract (`0x52ac3eda13eb7959f918df02a72d0f6c9c703523`, chain 42161)
- UnnamedContract (`0x60b8c145235a31f1949a831803768bf37d7ab7aa`, chain 42161)
- UnnamedContract (`0x6f2c6010a438546242cab29bb755c1f0afaca5aa`, chain 42161)
- UnnamedContract (`0x8b97e18ee706d056a5659947a717a7971003f524`, chain 42161)
- UnnamedContract (`0x8dfc8c7d8a8a8cef0ba7d6738a063c0b5adfdddd`, chain 42161)
- UnnamedContract (`0xaa0b397b0896a864714de56aa33e3df471229268`, chain 42161)
- UnnamedContract (`0xb2140e22327212580fb163728e67b5381ff45498`, chain 42161)
- UnnamedContract (`0xc4abade3a15064f9e3596943c699032748b13352`, chain 42161)
- UnnamedContract (`0xc8e027c40b25c4cd0c059763d042e79466d7bbb6`, chain 42161)
- UnnamedContract (`0xefb4ff63da3dad854aa339c1ea2d96bba831364d`, chain 42161)
- UnnamedContract (`0xefd5a713c5bd85e9ced46070b2532e4a47a18102`, chain 42161)
- UnnamedContract (`0xf9c059a25bf9431d70a4504bd1ce3bfd9c21b477`, chain 42161)
- BurnableMintableCappedERC20 (`0x5a76a56ad937335168b30df3aa1327277421c6ae`, chain 8453)
- ComplexRewarderPerSec (`0x0debba21390946c082e68ce3b8be4395e4cc767b`, chain 8453)
- DeductFee_Forwarder (`0xff34ed9d3ca159727a2c73c095b4d78e41773f3a`, chain 8453)
- eVELA (`0xefd5a713c5bd85e9ced46070b2532e4a47a18102`, chain 8453)
- Operators (`0x23fc7c88402fe3314d4e76ac42f4c5a3e01ae684`, chain 8453)
- TransparentUpgradeableProxy (`0x00b01710c2098b883c4f93dd093be8cf605a7bde`, chain 8453)
- TransparentUpgradeableProxy (`0x361a5f8fa6860b5f5c021a5dd370c1180010a561`, chain 8453)
- UpgradeableOptimismMintableERC20 (`0xd9aaec86b65d86f6a7b5b1b0c42ffa531710b6ca`, chain 8453)
- VelaToken (`0x088cd8f5ef3652623c22d48b1605dcfe860cd704`, chain 42161)
- VLP (`0xc5b2d9fda8a82e8dcecd5e9e6e99b78a9188eb05`, chain 42161)
- VUSD (`0xaa0b397b0896a864714de56aa33e3df471229268`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 40/49 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/11 (18.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 40 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 278 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 13
- Confirmed-live implementations: 40 of 318 unique; 278 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/41
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 277
- Unique implementations: 318
- Raw deployments: 326
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hacken | Tier 2 | 2 | 4.9% | 2023-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| eVELA | unknown | project_anchor | own_supporting | 0 | base | unit-395673 | `0xefd5a713c5bd85e9ced46070b2532e4a47a18102` | ✅ Audited |
| VLP | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395645 | `0xc5b2d9fda8a82e8dcecd5e9e6e99b78a9188eb05` | ✅ Audited |

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AirdropPayoutForRebate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b1b26bcb845d6ca9bcf73b21d2a3c49662b5540` | ⚠️ Unaudited |
| ATokenInstance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x724dc807b04555b71ed48a6896b6f41593b8c637` | ⚠️ Unaudited |
| BlackMarketDealRoll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01d090cad4b10e3afe98f11654f2d2ccf409b2e2` | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | unknown | project_anchor | own_supporting | 0 | base | unit-395658 | `0x5a76a56ad937335168b30df3aa1327277421c6ae` | ⚠️ Unaudited |
| ComplexRewarderPerSec | unknown | project_anchor | own_supporting | 1 | base | unit-395677 | `0x0debba21390946c082e68ce3b8be4395e4cc767b` | ⚠️ Unaudited |
| DeductFee_Forwarder | unknown | project_anchor | own_supporting | 0 | base | unit-395675 | `0xff34ed9d3ca159727a2c73c095b4d78e41773f3a` | ⚠️ Unaudited |
| FirstOpFunctionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f0dabef2e4fa7d7b1b8153f06d642173d4ff11e` | ⚠️ Unaudited |
| GrandPrixRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ecffd9694c7bc7acb45bd44354492bd7d12085d` | ⚠️ Unaudited |
| GrandPrixRewardDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd6cc89e02fd0d552bed774563f394bcf44c14646` | ⚠️ Unaudited |
| LockedStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5219fd82d58c2e949cf44005dbcdefbb412d9c3d` | ⚠️ Unaudited |
| LuckyTicketReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26a21aad6c96ca7a324f631d376cdb8d2d612905` | ⚠️ Unaudited |
| OpenInterestManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x580c5684b65ac5e0618a5c12b3a7e71a32c5e6d3` | ⚠️ Unaudited |
| Operators | unknown | project_anchor | own_supporting | 0 | base | unit-395654 | `0x23fc7c88402fe3314d4e76ac42f4c5a3e01ae684` | ⚠️ Unaudited |
| PriceManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x028b644e56367c3a151bb8d7e47225420b23ac04` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10d18fc8cd1e0aa28bfd60fd3cec92559d4e0701` | ⚠️ Unaudited |
| Reader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0cc8319ee0050f9f4b4ab94b6219f1386cab44c4` | ⚠️ Unaudited |
| SecondOpFunctionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x383f80b7459a74659b7dc88a3b3c2fbd44b184a7` | ⚠️ Unaudited |
| SettingsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d7d977075b76e7e1d69e385acba59b9927a66bc` | ⚠️ Unaudited |
| StakingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x04698b2184fa3f68aefc296827900b7394c4e198`; arbitrum `0x1e1d8e3463ea647ffa1449f3536f960992d7e8fe` | ⚠️ Unaudited |
| SwapAndAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0029cf0b8e5e741416709dda22bc3c38a9c336e1`; arbitrum `0xca3e6e8b112a575ad5e766cdee3aba0ef681bda5` | ⚠️ Unaudited |
| TierManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x576150fed7209c384560bcc8a5ec8ca40040624b` | ⚠️ Unaudited |
| TokenRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x41768f13079e5e12f571e550a1e04218268f3258` | ⚠️ Unaudited |
| TraderKickback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ca88e153a5ea7947637db7d124cecf75041bd6e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | base | unit-395679 | `0x00b01710c2098b883c4f93dd093be8cf605a7bde` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x042a9b7e12830047df94f6d234cb6538aba05122`; base `0xab7a3800fd5f42341b6245d604b927e17023f52c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0f2dc4001ee768e8a62fc15bde71fbc6c2192ddc`; base `0x4b4d1f9178827ab721f3b7a4998508ad76814ee8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1e1d8e3463ea647ffa1449f3536f960992d7e8fe`; base `0x4ecffd9694c7bc7acb45bd44354492bd7d12085d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | base | unit-395678 | `0x361a5f8fa6860b5f5c021a5dd370c1180010a561` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x01936e8f10e9b243f1107582bbf6fb0c43bdb3ac`; arbitrum `0xdd5ad536e987bf72dddc1bf518f3bb8cc2c615e2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x21577220586ce9f6410c97d1063b05a5ad47a9b0`; arbitrum `0xdf0f52dadef5613e77ab17604898327e61be25a9` | ⚠️ Unaudited |
| UpgradeableOptimismMintableERC20 | unknown | project_anchor | own_supporting | 1 | base | unit-395676 | `0xd9aaec86b65d86f6a7b5b1b0c42ffa531710b6ca` | ⚠️ Unaudited |
| VelaBoost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e2b9fe6d886fe1e0a31c7b328cef71e7d07084e` | ⚠️ Unaudited |
| VelaLottery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x24e5c0461defe8f1493d72fec1908824d7a27e66` | ⚠️ Unaudited |
| VelaMission | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66ca8052776c180c319ca65355f128376eb70834` | ⚠️ Unaudited |
| VelaNFTBoost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8e0f954d2fb06883e9af0cd9ec2425d8d9c65e70` | ⚠️ Unaudited |
| VelaReader | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x15ae930df70cea3ca108cc64146911bb58929592`; arbitrum `0xe7fcf79a3b64fabd196c9a1820d6d4433b0d3ac7` | ⚠️ Unaudited |
| VelaToken | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395630 | `0x088cd8f5ef3652623c22d48b1605dcfe860cd704` | ⚠️ Unaudited |
| VolatilityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6c1473e4ad5a8185324fb39c909676fb46437f4f` | ⚠️ Unaudited |
| VUSD | unknown | project_anchor | own_supporting | 0 | base | unit-395665 | `0xaa0b397b0896a864714de56aa33e3df471229268` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (277)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x01936e8f10e9b243f1107582bbf6fb0c43bdb3ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x04698b2184fa3f68aefc296827900b7394c4e198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x09f43d37def4696d7eac823b7dac62c712699dd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d920b5be3f9b7c2dffdd4fa04eb405b4766cc1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395651 | `0x0e7bfb195c7ee349e9cb21a7e0c751be959fc73c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1353e6c747da576ceb760862f610b3ec5dba0d21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395653 | `0x14fffc8f0d7afe82531e32f1a7741f6bdec7b316` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1789ce164c1017864adb7a7ea3557ccfea6d4020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x194df73595d64b3f470162f6caccceec37d478dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x19cb0507479ec102e0dc5832b0d77fb5c05e4d0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1b9cea0267140779b9e15edc2baf8027e004cd34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1e2b9fe6d886fe1e0a31c7b328cef71e7d07084e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1e8f80178d33062a2c15c78c750f73c686e6f628` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2603839e0e731cbfaceec11435da1ec969dc0261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x26a21aad6c96ca7a324f631d376cdb8d2d612905` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x27c234ff668c990c50617c08890e89a95b54c79f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2b1b26bcb845d6ca9bcf73b21d2a3c49662b5540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2bfdd70f7f5864817eefdda5548668b722c28d9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x36cb4aa3837ef37049c11133f4a286e1baeb2b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x37aee44f796be7245fc0482fb77be09d6c5ea300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x383f80b7459a74659b7dc88a3b3c2fbd44b184a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3a13fe3bf2444dc26f32d560a1df60733c4ccde6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3a16f2c19e22b9658462022bc9f0a73a576f3847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3a4126d80534213ea785b8d4f9dd7ae2b4c7e2c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3c0ead0b7a5378615553f49cc40c023a92d94b37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d17c326bb038e8ddb1b958a11cc136fe6fd965d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x449cd33d0ba0cd594ac3c078f380aaaf05a6df45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395656 | `0x45fdc9a248ab240fb13c79c375f2ca358f11faa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x461bddcf0500d1e5ea20218c1e13545fe7c9e4c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4776513ce79396e407e712ad1a848eb2af08ff05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4fcb77d11d595305d54707345700ab2a0e008167` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x510b6007407eeb709ab5e2e3d61a6ff9a02cdc37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x51666350538b947721dae2f6740044209ea3a6de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5219fd82d58c2e949cf44005dbcdefbb412d9c3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395657 | `0x52ac3eda13eb7959f918df02a72d0f6c9c703523` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x52ff25c9be6a82b42cdc0f27749d303b15c9a71e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x552803e9f48bac99579ac79fef12e1a3bc053cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x579adf66be0e2deb1700c695c311cef632367c4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5f0dabef2e4fa7d7b1b8153f06d642173d4ff11e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5f2d2385bad5ae099122337983acb2b66571358d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x605b7d2eb918b6b2488eeda5fff6d7fee364cb99` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395659 | `0x60b8c145235a31f1949a831803768bf37d7ab7aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x62b994201ac45e88aeebf105072afdc9435b84ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x64670eec6bf4538cf7117dfbe03cfb641a54b241` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x66ca8052776c180c319ca65355f128376eb70834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6e26c05ea7825a5ee770547eef1e79cf3d61046b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x743b9fcf0d8877bdec8fd33829ff612bec9f026c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x75f54166bc5c770e594568b91b860610fe11d533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x78148374a66121f24ee6bb1191ce088e37d5e489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7abf7d7f6baf8f25d60e691d2f501be27199da97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7b4b6f4adfc10827beab7807a031e06db15c7692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x802860dd792ad01e9f00cbce3de60798bc05fd8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395661 | `0x841aadf72ab34456ca74fc1782d68dc734dfa7ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x85c4a7591221593ab74d9093656b471fdabd7af1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x897e2768e7a160d75f4711c093a4fd83ff43c5ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395662 | `0x8b97e18ee706d056a5659947a717a7971003f524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8cf81476900586a1c57237ba690d7f8e2db798bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ddbee5933556e36ac6d0328637fa0dffc9fff64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e0f954d2fb06883e9af0cd9ec2425d8d9c65e70` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395664 | `0x8eba92960d131ced4d531b1e0f53f407f6abf9f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x903e3a6bd2710cd9f37566a6ab9df2267a1bc078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x93f7b48b56f4508afed1a1c1bba6d8014d56f1ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x96d6761911d298832a69207f03f0716d062410f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x99fe8c494c5e871d3ce4c6a6be11f459df646a98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9ca1353cb5e26f0cd8585fb2aa2917aaaca13af8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d737bbb4735063157a01c8344d935f3a1dbd4a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f9bd138a4fa4269c8f84f323162b0769d82c482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa2f5f947b1e9f28dc1c5a5d7b7a817f551f04796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa3e93faf5a4c40c898dfb30b5ed3c820b64ad5cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa58ea8b489adc8de2f663fe6811fcec00394a9c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa762eb3c56a372ff10adf298b8aabc2c360917b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa9c2b9fbb555766bfd363f42dcf6970b3bf3ae34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xae2b0ed9c928b0e18b3cff1f1698d3ce1732e8ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xafdf47f107597b4fc92d5a5058e810c7258433fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb19231a2c154e11d46a470abe913511a51e54659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb730219ad8797f3794a18ea53c9790d20e67f1fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbaa4b58e36bd9e817ed45fbc39a4fe49734c25aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc1c58f266ef30ae261350c2c70452ff6da9a2efb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc2f345f293dcf3150c17a35ca5e02adbe5351bc9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395667 | `0xc4abade3a15064f9e3596943c699032748b13352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc65a37a447e737b516e651fd6eedc7fc87f984eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc65b53ef932b012321d12ec1c261df74e1f32b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc6bb81bb9dbe676fdebdfd328443340665bd4346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc82f9fc575b741841f2331b5c64f4040989ebe02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc8b46391973e81474036156f14bdae1fff87cb28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395669 | `0xc8e027c40b25c4cd0c059763d042e79466d7bbb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcac936d19d769d81e0318be49bce128ee37048b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcb697acb8fc778960f4aa5618772a87f9ef37fed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcc3e021c769157bc1abdeb231d0642b4674f897b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcdf58b4cf3282912f06aa35d72ff4fcbb2c93066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xce5928e5fea6548fce78cf6a4c27052098295430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd21abb93d03614a2f1c9eee6bea0b146af5b5639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd48e0bbf1ca40e8b888c742e0d9d1bfb744ec19d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd5c30b27c9c3ccd974f9136a04085b07370c5e81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd6cc89e02fd0d552bed774563f394bcf44c14646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdb00f91d29481bf202eb313447c4d717efab130a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdd5ad536e987bf72dddc1bf518f3bb8cc2c615e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdea8c60ae6260da1df3cd7f9aa394c759beecc8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe32b6dbc517717006adb3673811704e8c9ce6539` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe4d3cef4a57db882f2f02d1389e6b2a31c1af417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe810f4a463b50eaac8275d28ea833b0700342ed9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395670 | `0xe8aee3eeadecf8ee0150b2368d40a076bf36624a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395671 | `0xebf154ee70de5237ab07bd6428310cbc5e5c7c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xee366b06b97fa52fde4bb4bcb3326e5b5a027cf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xefbdff2cae45738626ed3f036869f980141304b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeffe6ea599db50308ed83be8ac9c069e0a2dbffe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf30d3ec03b85399dc61287f22e6eb9f86ef38861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf4600dc3761b316d90af7b666ab9d3c371adc4be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf66e5d67a47cf97adb67136a4c4739df6d9566b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf7cf1d739ae789436790137fce794da113932bd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfb5a1daa87b1cd645d4a87d2d0ce0ac0cae70c16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00b01710c2098b883c4f93dd093be8cf605a7bde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x028b644e56367c3a151bb8d7e47225420b23ac04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x043fef82efba290af714b74fc231238de522421f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f2dc4001ee768e8a62fc15bde71fbc6c2192ddc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10d18fc8cd1e0aa28bfd60fd3cec92559d4e0701` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395631 | `0x12d4528e69e196a0c291df3b28449e9fc2769d11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1353e6c747da576ceb760862f610b3ec5dba0d21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x156767e4ae80e70949dcdd5544cecd6821e5879f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18b38d25f301a157e17358301cdd41cc18515b4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19cb0507479ec102e0dc5832b0d77fb5c05e4d0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a998c33beae2592c8a8a7c5efc1ab2445083df2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e8f80178d33062a2c15c78c750f73c686e6f628` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x22f8251ea6102d67329dbae76a96fc96e9e0d4b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395633 | `0x23fc7c88402fe3314d4e76ac42f4c5a3e01ae684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x27c234ff668c990c50617c08890e89a95b54c79f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a0782aaf790970c670c392416ba409cc73e0a7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a11233ad9f5bb6567f96ca1c5c446f983194d0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2bfdd70f7f5864817eefdda5548668b722c28d9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2d85bbefd6ef67979733dde738847562bf51fe42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30cf1277b3c0faaf1639021a6b91fbac5fd852b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x349c7816971a2561cb40fa680fb6c5bc546a7c9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x35cc3a700993d1449f74174273ee8636e711ae1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395634 | `0x361a5f8fa6860b5f5c021a5dd370c1180010a561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x36cb4aa3837ef37049c11133f4a286e1baeb2b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x37aee44f796be7245fc0482fb77be09d6c5ea300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x383539dbb894b20534e461c8c52c69c7540a92dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39e2a25bafd438c4291bc248568e3b921dab66a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3a13fe3bf2444dc26f32d560a1df60733c4ccde6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c0ead0b7a5378615553f49cc40c023a92d94b37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d17c326bb038e8ddb1b958a11cc136fe6fd965d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395635 | `0x40c3bd6d4a07117fce69b60eb1d446984e0a1383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x45131539295eb1b39587ccef8df19227229d4b2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4565e6f7436fbdbef2a31d11f3be56cec389b2d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395636 | `0x45fdc9a248ab240fb13c79c375f2ca358f11faa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x461bddcf0500d1e5ea20218c1e13545fe7c9e4c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4776513ce79396e407e712ad1a848eb2af08ff05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a1473401eeafa8d8374ae64f16b54a6655f22f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b280bf4bf60f4224888af6eaf065031a2dd7248` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b4d1f9178827ab721f3b7a4998508ad76814ee8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4bdbecfe4fbe0eeb6b1f1510b518d3850a12d02d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f9627d747fd4f371c45e6f6efaf5ad9689a1eb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x510b6007407eeb709ab5e2e3d61a6ff9a02cdc37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395637 | `0x52ac3eda13eb7959f918df02a72d0f6c9c703523` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52b0f98aaf816fff5be55c18e49d35b4fa27b65d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x552803e9f48bac99579ac79fef12e1a3bc053cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5559f2cb163c53f0dae64020f8b50fa672293a31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x579adf66be0e2deb1700c695c311cef632367c4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x580c5684b65ac5e0618a5c12b3a7e71a32c5e6d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x59b2defc56ecefac7966b7b95561ed932aa9a263` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5cbffd0bae90313a6daf028bf7e1dfa0f17a9121` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d01285d78cd651432434027b4af93ac5a36b019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60a0bc42dc1e721fd1f79adaf40d77a1d73f0615` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395638 | `0x60b8c145235a31f1949a831803768bf37d7ab7aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x62b994201ac45e88aeebf105072afdc9435b84ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64670eec6bf4538cf7117dfbe03cfb641a54b241` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64a4b7c186f4c5fcf9ef22eae6aba4b281577910` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6acbbf9ecdbfc45587928181e0f49e6998c2faa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6de49d2c1d45bd39014f69c57b5769502966a95d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e26c05ea7825a5ee770547eef1e79cf3d61046b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395639 | `0x6f2c6010a438546242cab29bb755c1f0afaca5aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x719f55ee1cc7276a71b7b4d5b0057f53ee4ac1e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x72038c1e359d802c980421795989a61a000896c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x743d3d27f539eee4765457464d48af69c3e99dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75f54166bc5c770e594568b91b860610fe11d533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a15d718036afbbf331010ae2f7a3f26d1a77799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7abf7d7f6baf8f25d60e691d2f501be27199da97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b4b6f4adfc10827beab7807a031e06db15c7692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7c1b0e6b6d408911bdb773136d28e4ad05c7692b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x802860dd792ad01e9f00cbce3de60798bc05fd8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x80713f5bd9d766cc56397f91677a769176dccf3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8164c0f635ad30c761ce2c1bb023d7e14e623820` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84e2ed8c53583645655815fb1930d767050ce851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84fee32087f22b615af229cb33e177422c288417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x85c4a7591221593ab74d9093656b471fdabd7af1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x897e2768e7a160d75f4711c093a4fd83ff43c5ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395640 | `0x8b97e18ee706d056a5659947a717a7971003f524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8cf81476900586a1c57237ba690d7f8e2db798bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395641 | `0x8dfc8c7d8a8a8cef0ba7d6738a063c0b5adfdddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8eba92960d131ced4d531b1e0f53f407f6abf9f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f6a630ba79c917649aa07450bb1902cd3c377e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x96d6761911d298832a69207f03f0716d062410f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97bb59396f23a43967ec7171d5fedf2546f72df7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9961b869ec503d8093cdde74d4185a7f047f6632` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ab7113d054bca26f4fe895f0773872d8865d05f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ba83f817149881c1cfde5d55a3b11cf104108fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ca1353cb5e26f0cd8585fb2aa2917aaaca13af8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d737bbb4735063157a01c8344d935f3a1dbd4a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9eb89eb13e2c616cf68d137ee6904ec1c651f596` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f67205f74fea2437060ad2046c34e6ef8ff1c1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f9bd138a4fa4269c8f84f323162b0769d82c482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa0c02e6a728d029657af784c6cf72da7159daef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2f5f947b1e9f28dc1c5a5d7b7a817f551f04796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa3e93faf5a4c40c898dfb30b5ed3c820b64ad5cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9c2b9fbb555766bfd363f42dcf6970b3bf3ae34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395642 | `0xaa0b397b0896a864714de56aa33e3df471229268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab7a3800fd5f42341b6245d604b927e17023f52c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae2b0ed9c928b0e18b3cff1f1698d3ce1732e8ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf9b1dea6709adf8ae34b20643247482917eb802` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb0adb32c8cb7aa218b368d70bb87ac4738c08210` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb0e58349656a4744e7ee3f99e3114f82e61ce03a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb19231a2c154e11d46a470abe913511a51e54659` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395643 | `0xb2140e22327212580fb163728e67b5381ff45498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb2ee56ae42a0ff065bb8cf710dc4a8a30fd726a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb415ae5339eee517ae0c8ce19233ac277f9d857f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb50e6e2e78f8c42e80f5b87c415d201dde58948c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb558e48a91f7fd2db1ca97ff5130f206fb73f9a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6a4e102cea6c4a69930eb7b7cd5c95668618a51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb730219ad8797f3794a18ea53c9790d20e67f1fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb8ee47dea97e6115156f4b77475b343daf2fe684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbaa4b58e36bd9e817ed45fbc39a4fe49734c25aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbad075bb55e0604e578a66360357672610b4b5f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbbd9dd110db4011dd65d99455cbafaef1e6b995e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe99a1ff09c1a9f64f9cf85c4821f4d1efab49a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc0010c44f6cf0a39c88d04bec1524b49b33a0600` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc0122f3411998070504285ad90234ebbd9267c4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc13f6696f9dc945dc74f79ee88d4cb4a7ecffe71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc1c58f266ef30ae261350c2c70452ff6da9a2efb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2f345f293dcf3150c17a35ca5e02adbe5351bc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc466ceac3fd7e72bb964e4ae2a7c033b7d8f107b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395644 | `0xc4abade3a15064f9e3596943c699032748b13352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc619cfabf017d3e167a32a4e11dd17196bf2da91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc65a37a447e737b516e651fd6eedc7fc87f984eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc6bb81bb9dbe676fdebdfd328443340665bd4346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc82f9fc575b741841f2331b5c64f4040989ebe02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc8b46391973e81474036156f14bdae1fff87cb28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395646 | `0xc8e027c40b25c4cd0c059763d042e79466d7bbb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcb697acb8fc778960f4aa5618772a87f9ef37fed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce5928e5fea6548fce78cf6a4c27052098295430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf18a0eb929857adb62ee69e277a024500bc7e6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf4b3e952720bbffb8985edba20c5743a04e13ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd09ec5fc9c66744a85496cef10e68bca1f126ae9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd0d9aa32988ec48042c49825e788a1e2342cabcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd21abb93d03614a2f1c9eee6bea0b146af5b5639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd2d771ee0f29d41c566d4c5bcfb5f33af06721c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd4c7245f8737c7839b530ce556060285412e642b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd588a0dc2d6cc5c865ea771aafff515aeda50a4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd5c30b27c9c3ccd974f9136a04085b07370c5e81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd6bcb485e05c7dc318a26890a582f023b6743f51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd7e596997b87324eaaf21663125fe976286fe4b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd931b112fbcf2a5be9250faa2971a8af01019b7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdb00f91d29481bf202eb313447c4d717efab130a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdcd7e4e8690c8cd123f7490e10fa70e2072fdc23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdea8c60ae6260da1df3cd7f9aa394c759beecc8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe32b6dbc517717006adb3673811704e8c9ce6539` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4d3cef4a57db882f2f02d1389e6b2a31c1af417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe810f4a463b50eaac8275d28ea833b0700342ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe8aee3eeadecf8ee0150b2368d40a076bf36624a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebf154ee70de5237ab07bd6428310cbc5e5c7c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xee366b06b97fa52fde4bb4bcb3326e5b5a027cf3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395647 | `0xefb4ff63da3dad854aa339c1ea2d96bba831364d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395648 | `0xefd5a713c5bd85e9ced46070b2532e4a47a18102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeffe6ea599db50308ed83be8ac9c069e0a2dbffe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf278f4a3ad6e64cf1a15e8ff964bf7ffdea009a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf5633098727cb2a07510bb1e18d96f180f0ebac9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf66e5d67a47cf97adb67136a4c4739df6d9566b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf763e14d6e2a9ff5049b98618ffca2ee49f7b61c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf779605b57757fa3e56e0a40cbee23cf38db0bad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf7cf1d739ae789436790137fce794da113932bd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf7f23899bc30545ff74003fc9dd912a531033907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9084b262dc1a7455329677ff5ac415791067015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf91f1a7d7819fb4807051c2b732f7ecf934d21db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395649 | `0xf9c059a25bf9431d70a4504bd1ce3bfd9c21b477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfa4f3c8d3c60263425040a0f6d5a777a85e7a769` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfb5a1daa87b1cd645d4a87d2d0ce0ac0cae70c16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfb9356c933a16a814d2f2e76efd5a28c84cb9d10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfda366965aeada2f3fd32645945194c53d2694d0` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 256
- Live contracts: 0
- Unknown liveness contracts: 256
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=256

Showing first 200 of 256 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x01936e8f10e9b243f1107582bbf6fb0c43bdb3ac` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x04698b2184fa3f68aefc296827900b7394c4e198` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x09f43d37def4696d7eac823b7dac62c712699dd0` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x0d920b5be3f9b7c2dffdd4fa04eb405b4766cc1f` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x1353e6c747da576ceb760862f610b3ec5dba0d21` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x1789ce164c1017864adb7a7ea3557ccfea6d4020` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x194df73595d64b3f470162f6caccceec37d478dd` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x19cb0507479ec102e0dc5832b0d77fb5c05e4d0b` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x1b9cea0267140779b9e15edc2baf8027e004cd34` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x1e2b9fe6d886fe1e0a31c7b328cef71e7d07084e` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x1e8f80178d33062a2c15c78c750f73c686e6f628` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x2603839e0e731cbfaceec11435da1ec969dc0261` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x26a21aad6c96ca7a324f631d376cdb8d2d612905` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x27c234ff668c990c50617c08890e89a95b54c79f` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x2b1b26bcb845d6ca9bcf73b21d2a3c49662b5540` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x2bfdd70f7f5864817eefdda5548668b722c28d9e` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x36cb4aa3837ef37049c11133f4a286e1baeb2b76` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x37aee44f796be7245fc0482fb77be09d6c5ea300` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x383f80b7459a74659b7dc88a3b3c2fbd44b184a7` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x3a13fe3bf2444dc26f32d560a1df60733c4ccde6` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x3a16f2c19e22b9658462022bc9f0a73a576f3847` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x3a4126d80534213ea785b8d4f9dd7ae2b4c7e2c3` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x3c0ead0b7a5378615553f49cc40c023a92d94b37` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x3d17c326bb038e8ddb1b958a11cc136fe6fd965d` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x449cd33d0ba0cd594ac3c078f380aaaf05a6df45` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x461bddcf0500d1e5ea20218c1e13545fe7c9e4c8` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x4776513ce79396e407e712ad1a848eb2af08ff05` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x4b4d1f9178827ab721f3b7a4998508ad76814ee8` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x4ecffd9694c7bc7acb45bd44354492bd7d12085d` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x4fcb77d11d595305d54707345700ab2a0e008167` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x510b6007407eeb709ab5e2e3d61a6ff9a02cdc37` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x51666350538b947721dae2f6740044209ea3a6de` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x5219fd82d58c2e949cf44005dbcdefbb412d9c3d` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x52ff25c9be6a82b42cdc0f27749d303b15c9a71e` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x552803e9f48bac99579ac79fef12e1a3bc053cd5` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x579adf66be0e2deb1700c695c311cef632367c4f` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x5f0dabef2e4fa7d7b1b8153f06d642173d4ff11e` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x5f2d2385bad5ae099122337983acb2b66571358d` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x605b7d2eb918b6b2488eeda5fff6d7fee364cb99` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x62b994201ac45e88aeebf105072afdc9435b84ed` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x64670eec6bf4538cf7117dfbe03cfb641a54b241` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x66ca8052776c180c319ca65355f128376eb70834` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x6e26c05ea7825a5ee770547eef1e79cf3d61046b` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x743b9fcf0d8877bdec8fd33829ff612bec9f026c` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x75f54166bc5c770e594568b91b860610fe11d533` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x78148374a66121f24ee6bb1191ce088e37d5e489` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x7abf7d7f6baf8f25d60e691d2f501be27199da97` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x7b4b6f4adfc10827beab7807a031e06db15c7692` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x802860dd792ad01e9f00cbce3de60798bc05fd8c` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x85c4a7591221593ab74d9093656b471fdabd7af1` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x897e2768e7a160d75f4711c093a4fd83ff43c5ce` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x8cf81476900586a1c57237ba690d7f8e2db798bd` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x8ddbee5933556e36ac6d0328637fa0dffc9fff64` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x8e0f954d2fb06883e9af0cd9ec2425d8d9c65e70` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x903e3a6bd2710cd9f37566a6ab9df2267a1bc078` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x93f7b48b56f4508afed1a1c1bba6d8014d56f1ee` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x96d6761911d298832a69207f03f0716d062410f7` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x99fe8c494c5e871d3ce4c6a6be11f459df646a98` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x9ca1353cb5e26f0cd8585fb2aa2917aaaca13af8` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x9d737bbb4735063157a01c8344d935f3a1dbd4a0` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x9f9bd138a4fa4269c8f84f323162b0769d82c482` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xa2f5f947b1e9f28dc1c5a5d7b7a817f551f04796` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xa3e93faf5a4c40c898dfb30b5ed3c820b64ad5cf` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xa58ea8b489adc8de2f663fe6811fcec00394a9c7` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0xa762eb3c56a372ff10adf298b8aabc2c360917b3` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0xa9c2b9fbb555766bfd363f42dcf6970b3bf3ae34` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xab7a3800fd5f42341b6245d604b927e17023f52c` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xae2b0ed9c928b0e18b3cff1f1698d3ce1732e8ae` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xafdf47f107597b4fc92d5a5058e810c7258433fb` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0xb19231a2c154e11d46a470abe913511a51e54659` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xb730219ad8797f3794a18ea53c9790d20e67f1fa` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0xbaa4b58e36bd9e817ed45fbc39a4fe49734c25aa` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xc1c58f266ef30ae261350c2c70452ff6da9a2efb` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xc2f345f293dcf3150c17a35ca5e02adbe5351bc9` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xc65a37a447e737b516e651fd6eedc7fc87f984eb` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xc65b53ef932b012321d12ec1c261df74e1f32b55` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0xc6bb81bb9dbe676fdebdfd328443340665bd4346` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xc82f9fc575b741841f2331b5c64f4040989ebe02` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0xc8b46391973e81474036156f14bdae1fff87cb28` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0xcac936d19d769d81e0318be49bce128ee37048b7` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xcb697acb8fc778960f4aa5618772a87f9ef37fed` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xcc3e021c769157bc1abdeb231d0642b4674f897b` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xcdf58b4cf3282912f06aa35d72ff4fcbb2c93066` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xce5928e5fea6548fce78cf6a4c27052098295430` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xd21abb93d03614a2f1c9eee6bea0b146af5b5639` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xd48e0bbf1ca40e8b888c742e0d9d1bfb744ec19d` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0xd5c30b27c9c3ccd974f9136a04085b07370c5e81` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xd6cc89e02fd0d552bed774563f394bcf44c14646` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xdb00f91d29481bf202eb313447c4d717efab130a` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xdd5ad536e987bf72dddc1bf518f3bb8cc2c615e2` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xdea8c60ae6260da1df3cd7f9aa394c759beecc8a` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xe32b6dbc517717006adb3673811704e8c9ce6539` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xe4d3cef4a57db882f2f02d1389e6b2a31c1af417` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xe810f4a463b50eaac8275d28ea833b0700342ed9` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xee366b06b97fa52fde4bb4bcb3326e5b5a027cf3` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xefbdff2cae45738626ed3f036869f980141304b4` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0xeffe6ea599db50308ed83be8ac9c069e0a2dbffe` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xf30d3ec03b85399dc61287f22e6eb9f86ef38861` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0xf4600dc3761b316d90af7b666ab9d3c371adc4be` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0xf66e5d67a47cf97adb67136a4c4739df6d9566b9` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xf7cf1d739ae789436790137fce794da113932bd8` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xfb5a1daa87b1cd645d4a87d2d0ce0ac0cae70c16` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x00b01710c2098b883c4f93dd093be8cf605a7bde` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x028b644e56367c3a151bb8d7e47225420b23ac04` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x043fef82efba290af714b74fc231238de522421f` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x0f2dc4001ee768e8a62fc15bde71fbc6c2192ddc` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x10d18fc8cd1e0aa28bfd60fd3cec92559d4e0701` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x1353e6c747da576ceb760862f610b3ec5dba0d21` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x156767e4ae80e70949dcdd5544cecd6821e5879f` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x18b38d25f301a157e17358301cdd41cc18515b4a` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x19cb0507479ec102e0dc5832b0d77fb5c05e4d0b` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x1a998c33beae2592c8a8a7c5efc1ab2445083df2` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x1e1d8e3463ea647ffa1449f3536f960992d7e8fe` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x1e8f80178d33062a2c15c78c750f73c686e6f628` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x22f8251ea6102d67329dbae76a96fc96e9e0d4b0` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x27c234ff668c990c50617c08890e89a95b54c79f` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x2a0782aaf790970c670c392416ba409cc73e0a7c` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x2a11233ad9f5bb6567f96ca1c5c446f983194d0b` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x2bfdd70f7f5864817eefdda5548668b722c28d9e` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x2d85bbefd6ef67979733dde738847562bf51fe42` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x30cf1277b3c0faaf1639021a6b91fbac5fd852b0` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x349c7816971a2561cb40fa680fb6c5bc546a7c9c` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x35cc3a700993d1449f74174273ee8636e711ae1b` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x36cb4aa3837ef37049c11133f4a286e1baeb2b76` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x37aee44f796be7245fc0482fb77be09d6c5ea300` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x383539dbb894b20534e461c8c52c69c7540a92dd` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x39e2a25bafd438c4291bc248568e3b921dab66a0` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x3a13fe3bf2444dc26f32d560a1df60733c4ccde6` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x3c0ead0b7a5378615553f49cc40c023a92d94b37` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x3d17c326bb038e8ddb1b958a11cc136fe6fd965d` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x45131539295eb1b39587ccef8df19227229d4b2e` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x4565e6f7436fbdbef2a31d11f3be56cec389b2d2` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x461bddcf0500d1e5ea20218c1e13545fe7c9e4c8` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x4776513ce79396e407e712ad1a848eb2af08ff05` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x4a1473401eeafa8d8374ae64f16b54a6655f22f3` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x4b280bf4bf60f4224888af6eaf065031a2dd7248` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x4b4d1f9178827ab721f3b7a4998508ad76814ee8` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x4bdbecfe4fbe0eeb6b1f1510b518d3850a12d02d` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x4f9627d747fd4f371c45e6f6efaf5ad9689a1eb6` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x510b6007407eeb709ab5e2e3d61a6ff9a02cdc37` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x52b0f98aaf816fff5be55c18e49d35b4fa27b65d` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x552803e9f48bac99579ac79fef12e1a3bc053cd5` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x5559f2cb163c53f0dae64020f8b50fa672293a31` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x579adf66be0e2deb1700c695c311cef632367c4f` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x580c5684b65ac5e0618a5c12b3a7e71a32c5e6d3` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x59b2defc56ecefac7966b7b95561ed932aa9a263` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x5cbffd0bae90313a6daf028bf7e1dfa0f17a9121` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x5d01285d78cd651432434027b4af93ac5a36b019` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x60a0bc42dc1e721fd1f79adaf40d77a1d73f0615` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x62b994201ac45e88aeebf105072afdc9435b84ed` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x64670eec6bf4538cf7117dfbe03cfb641a54b241` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x64a4b7c186f4c5fcf9ef22eae6aba4b281577910` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x6acbbf9ecdbfc45587928181e0f49e6998c2faa6` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x6de49d2c1d45bd39014f69c57b5769502966a95d` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x6e26c05ea7825a5ee770547eef1e79cf3d61046b` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x719f55ee1cc7276a71b7b4d5b0057f53ee4ac1e9` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x72038c1e359d802c980421795989a61a000896c9` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x743d3d27f539eee4765457464d48af69c3e99dd4` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x75f54166bc5c770e594568b91b860610fe11d533` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x7a15d718036afbbf331010ae2f7a3f26d1a77799` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x7abf7d7f6baf8f25d60e691d2f501be27199da97` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x7b4b6f4adfc10827beab7807a031e06db15c7692` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x7c1b0e6b6d408911bdb773136d28e4ad05c7692b` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x802860dd792ad01e9f00cbce3de60798bc05fd8c` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x80713f5bd9d766cc56397f91677a769176dccf3c` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x8164c0f635ad30c761ce2c1bb023d7e14e623820` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x84e2ed8c53583645655815fb1930d767050ce851` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x84fee32087f22b615af229cb33e177422c288417` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x85c4a7591221593ab74d9093656b471fdabd7af1` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x897e2768e7a160d75f4711c093a4fd83ff43c5ce` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x8cf81476900586a1c57237ba690d7f8e2db798bd` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x8eba92960d131ced4d531b1e0f53f407f6abf9f0` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x8f6a630ba79c917649aa07450bb1902cd3c377e2` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x96d6761911d298832a69207f03f0716d062410f7` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x97bb59396f23a43967ec7171d5fedf2546f72df7` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x9961b869ec503d8093cdde74d4185a7f047f6632` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x9ab7113d054bca26f4fe895f0773872d8865d05f` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x9ba83f817149881c1cfde5d55a3b11cf104108fd` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x9ca1353cb5e26f0cd8585fb2aa2917aaaca13af8` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x9d737bbb4735063157a01c8344d935f3a1dbd4a0` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x9eb89eb13e2c616cf68d137ee6904ec1c651f596` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0x9f67205f74fea2437060ad2046c34e6ef8ff1c1f` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0x9f9bd138a4fa4269c8f84f323162b0769d82c482` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xa0c02e6a728d029657af784c6cf72da7159daef9` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0xa2f5f947b1e9f28dc1c5a5d7b7a817f551f04796` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xa3e93faf5a4c40c898dfb30b5ed3c820b64ad5cf` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xa9c2b9fbb555766bfd363f42dcf6970b3bf3ae34` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xab7a3800fd5f42341b6245d604b927e17023f52c` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xae2b0ed9c928b0e18b3cff1f1698d3ce1732e8ae` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xaf9b1dea6709adf8ae34b20643247482917eb802` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xb0adb32c8cb7aa218b368d70bb87ac4738c08210` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0xb0e58349656a4744e7ee3f99e3114f82e61ce03a` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xb19231a2c154e11d46a470abe913511a51e54659` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xb2ee56ae42a0ff065bb8cf710dc4a8a30fd726a4` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xb415ae5339eee517ae0c8ce19233ac277f9d857f` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xb50e6e2e78f8c42e80f5b87c415d201dde58948c` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0xb558e48a91f7fd2db1ca97ff5130f206fb73f9a3` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b9df8902e9519c9d445f9178e4213c5c3a8a9` |
| unverified unclassified | UnnamedContract<br>`0xb6a4e102cea6c4a69930eb7b7cd5c95668618a51` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0xb730219ad8797f3794a18ea53c9790d20e67f1fa` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |
| unverified unclassified | UnnamedContract<br>`0xb8ee47dea97e6115156f4b77475b343daf2fe684` | non_address_book | unknown | unknown | unverified | n/a | `0x6647da1da67bcab3af15c0eb9f7983b3c574b08e` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Dorado_09112022_SCAudit_Report_FINAL.pdf](https://hacken.io/wp-content/uploads/2023/02/Dorado_09112022_SCAudit_Report_FINAL.pdf) | Hacken | Audit | 2023-01 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 16 | high |
| [hacken.io/audits/vela-exchange/sca-dorado-erc20-dex-jan2023](https://hacken.io/audits/vela-exchange/sca-dorado-erc20-dex-jan2023) | Hacken | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21477] Dorado_09112022_SCAudit_Report_FINAL.pdf — matched: Extracted 18 contracts from the Contracts Summary section. Audit date from cover page: January 26, 2023.
- [21478] hacken.io/audits/vela-exchange/sca-dorado-erc20-dex-jan2023 — no match: The provided text is a webpage for a Hacken audit of Vela Exchange, but it does not contain the actual audit report content. It only shows metadata (title, date, navigation). No contract names or scope section are present.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Dorado_09112022_SCAudit_Report_FINAL.pdf | Governable | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | Constants | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | Multicall | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | PriceManager | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | SettingsManager | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | TriggerOrderManager | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | Vault | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | VaultPriceFeed | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | VaultUtils | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | FastPriceFeed | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | ComplexRewardPerSec | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | TokenFarm | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | BaseToken | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | MintableBaseToken | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | eVela | own contract | eVELA (selected) `0xefd5a713c5bd85e9ced46070b2532e4a47a18102` — deployed 2023-08-11 20:02:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | VLP | own contract | VLP (selected) `0xc5b2d9fda8a82e8dcecd5e9e6e99b78a9188eb05` — deployed 2023-06-02 20:58:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | vUSDC | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | VELA | unmatched — not counted | — | listed in Contracts Summary | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x5a76a56ad937335168b30df3aa1327277421c6ae` | BurnableMintableCappedERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0debba21390946c082e68ce3b8be4395e4cc767b` | ComplexRewarderPerSec | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xff34ed9d3ca159727a2c73c095b4d78e41773f3a` | DeductFee_Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x23fc7c88402fe3314d4e76ac42f4c5a3e01ae684` | Operators | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd9aaec86b65d86f6a7b5b1b0c42ffa531710b6ca` | UpgradeableOptimismMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x088cd8f5ef3652623c22d48b1605dcfe860cd704` | VelaToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xaa0b397b0896a864714de56aa33e3df471229268` | VUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 277 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 16 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: unique_name=2

Zero-match audit list:

- [21478] hacken.io/audits/vela-exchange/sca-dorado-erc20-dex-jan2023

Fork inheritance lineage and inherited audits are included when available.
