# Agentic Audit Brief: Vela Exchange

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Vela Exchange (`vela-exchange`)
- Website: [https://www.vela.exchange/](https://www.vela.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base
- Contract surface: 70 unique implementations (70 raw deployments)
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
- Outside the address book: 30 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 5 standard proxy/library)
- Proxy deployments represented within implementation groups: 13
- Confirmed-live implementations: 40 of 70 unique; 30 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/41
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 29
- Unique implementations: 70
- Raw deployments: 70
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
| StakingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x04698b2184fa3f68aefc296827900b7394c4e198` | ⚠️ Unaudited |
| SwapAndAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x0029cf0b8e5e741416709dda22bc3c38a9c336e1` | ⚠️ Unaudited |
| TierManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x576150fed7209c384560bcc8a5ec8ca40040624b` | ⚠️ Unaudited |
| TokenRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x41768f13079e5e12f571e550a1e04218268f3258` | ⚠️ Unaudited |
| TraderKickback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ca88e153a5ea7947637db7d124cecf75041bd6e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | base | unit-395679 | `0x00b01710c2098b883c4f93dd093be8cf605a7bde` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x042a9b7e12830047df94f6d234cb6538aba05122` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x0f2dc4001ee768e8a62fc15bde71fbc6c2192ddc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x1e1d8e3463ea647ffa1449f3536f960992d7e8fe` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | base | unit-395678 | `0x361a5f8fa6860b5f5c021a5dd370c1180010a561` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x01936e8f10e9b243f1107582bbf6fb0c43bdb3ac` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x21577220586ce9f6410c97d1063b05a5ad47a9b0` | ⚠️ Unaudited |
| UpgradeableOptimismMintableERC20 | unknown | project_anchor | own_supporting | 1 | base | unit-395676 | `0xd9aaec86b65d86f6a7b5b1b0c42ffa531710b6ca` | ⚠️ Unaudited |
| VelaBoost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e2b9fe6d886fe1e0a31c7b328cef71e7d07084e` | ⚠️ Unaudited |
| VelaLottery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x24e5c0461defe8f1493d72fec1908824d7a27e66` | ⚠️ Unaudited |
| VelaMission | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66ca8052776c180c319ca65355f128376eb70834` | ⚠️ Unaudited |
| VelaNFTBoost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8e0f954d2fb06883e9af0cd9ec2425d8d9c65e70` | ⚠️ Unaudited |
| VelaReader | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x15ae930df70cea3ca108cc64146911bb58929592` | ⚠️ Unaudited |
| VelaToken | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395630 | `0x088cd8f5ef3652623c22d48b1605dcfe860cd704` | ⚠️ Unaudited |
| VolatilityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6c1473e4ad5a8185324fb39c909676fb46437f4f` | ⚠️ Unaudited |
| VUSD | unknown | project_anchor | own_supporting | 0 | base | unit-395665 | `0xaa0b397b0896a864714de56aa33e3df471229268` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (29)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395651 | `0x0e7bfb195c7ee349e9cb21a7e0c751be959fc73c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395653 | `0x14fffc8f0d7afe82531e32f1a7741f6bdec7b316` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395656 | `0x45fdc9a248ab240fb13c79c375f2ca358f11faa5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395657 | `0x52ac3eda13eb7959f918df02a72d0f6c9c703523` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395659 | `0x60b8c145235a31f1949a831803768bf37d7ab7aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395661 | `0x841aadf72ab34456ca74fc1782d68dc734dfa7ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395662 | `0x8b97e18ee706d056a5659947a717a7971003f524` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395664 | `0x8eba92960d131ced4d531b1e0f53f407f6abf9f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395667 | `0xc4abade3a15064f9e3596943c699032748b13352` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395669 | `0xc8e027c40b25c4cd0c059763d042e79466d7bbb6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395670 | `0xe8aee3eeadecf8ee0150b2368d40a076bf36624a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395671 | `0xebf154ee70de5237ab07bd6428310cbc5e5c7c6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395631 | `0x12d4528e69e196a0c291df3b28449e9fc2769d11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395633 | `0x23fc7c88402fe3314d4e76ac42f4c5a3e01ae684` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395634 | `0x361a5f8fa6860b5f5c021a5dd370c1180010a561` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395635 | `0x40c3bd6d4a07117fce69b60eb1d446984e0a1383` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395636 | `0x45fdc9a248ab240fb13c79c375f2ca358f11faa5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395637 | `0x52ac3eda13eb7959f918df02a72d0f6c9c703523` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395638 | `0x60b8c145235a31f1949a831803768bf37d7ab7aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395639 | `0x6f2c6010a438546242cab29bb755c1f0afaca5aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395640 | `0x8b97e18ee706d056a5659947a717a7971003f524` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395641 | `0x8dfc8c7d8a8a8cef0ba7d6738a063c0b5adfdddd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395642 | `0xaa0b397b0896a864714de56aa33e3df471229268` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395643 | `0xb2140e22327212580fb163728e67b5381ff45498` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395644 | `0xc4abade3a15064f9e3596943c699032748b13352` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395646 | `0xc8e027c40b25c4cd0c059763d042e79466d7bbb6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395647 | `0xefb4ff63da3dad854aa339c1ea2d96bba831364d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395648 | `0xefd5a713c5bd85e9ced46070b2532e4a47a18102` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395649 | `0xf9c059a25bf9431d70a4504bd1ce3bfd9c21b477` | ❓ Unverified |

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
| needs_review | 29 |

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
