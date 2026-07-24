# Agentic Audit Brief: CVI Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: CVI Finance (`cvi-finance`)
- Website: [https://cvi.finance/](https://cvi.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, ethereum, polygon
- Contract surface: 117 unique implementations (159 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $129,169.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for CVI Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across arbitrum, ethereum, polygon. Structural roles: 3 core, 1 supporting, 1 unclassified. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (3), supporting (1), unclassified (1)
- Contract kinds: contract (5)
- Detected standards: erc1967proxy (2)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ClonableBeaconProxy (`0x07e49d5de43dda6162fa28d24d5935c151875283`, chain 42161)
- GnosisSafeProxy (`0x223013bd8b4569628d50ee106ccba93189a02ada`, chain 42161)
- GnosisSafeProxy (`0x7f4b135782c4a3b1c78c93f23f2016cb5cd96cc8`, chain 42161)
- TransparentUpgradeableProxy (`0x8096ad3107715747361acefe685943bfb427c722`, chain 42161)
- TransparentUpgradeableProxy (`0xfdeb59a2b4891ea17610ee38665249acc9fcc506`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 9 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 104 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 16
- Confirmed-live implementations: 4 of 117 unique; 113 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/47
- Verified + Unaudited implementations: 47
- Verified by bytecode match: 0
- Unverified implementations: 70
- Unique implementations: 117
- Raw deployments: 159
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (47)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| COTIETHSLPStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8eed31c1b0e147e56db836c40129eeb03cb62abd` | ⚠️ Unaudited |
| COTIETHStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6e5220291cf78b6d93bd1d08d746abbc115c64b` | ⚠️ Unaudited |
| CVIOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcaa521a856ccc2f5edf7c729006635997690b784` | ⚠️ Unaudited |
| CVIOracleV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0x6fc8cc3e6d3da8b29c4480e77e24dea298293ace`; polygon `0x421d1354cfad839fd58b8fdf56349d73a6654efb` | ⚠️ Unaudited |
| CVIUSDCThetaVault | core_logic | project_anchor | own_supporting | 1 | arbitrum | unit-234751 | `0xfdeb59a2b4891ea17610ee38665249acc9fcc506` | ⚠️ Unaudited |
| CVIUSDCVolatilityTokenV3 | token | project_anchor | own_supporting | 1 | arbitrum | unit-234752 | `0x8096ad3107715747361acefe685943bfb427c722` | ⚠️ Unaudited |
| ETHLPStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x40d203332b0a262f1a371ae9da1788fe6825a6f6`; ethereum `0xe31424213003ac2ab9b3c7a77e56313cbff7e5f8` | ⚠️ Unaudited |
| ETHPlatform | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x145e6df857b241efdcb9b78a1b97a032606d47a7`; ethereum `0x5005e8dc0033e78af80cfc8d10f5163f2fcf0e79`; ethereum `0xbe857e635d7b2b471e5fe7c76e605878d252be72` | ⚠️ Unaudited |
| ETHStakingProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x287839632973f7754c04a9e23d393aa09fa5b6de`; ethereum `0x78bb4b95a8063bc55bc0fba620e30c7aa3cef929` | ⚠️ Unaudited |
| ETHVOL_USDCLPStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x967440f87132008184c25b9c385860e908df1a6d` | ⚠️ Unaudited |
| FeesCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: ethereum `0x1ff4434e0a41dbf903aa68923d6da76904546f23`; ethereum `0x78852f82632da2f00d931f9465d7162d1ed8b93c`; ethereum `0xc19cdd1b4e7c12edfbfbd12c9cf4cd1cde29e70d`; polygon `0x13461e22265fb9fcdd89bd27b6601a7d0d1c7861`; polygon `0x68e8be77f3eb29074a83ae01007fa71cb5cc5926`; polygon `0x6d6587dc53180cc8136866df04ba3a005e7fe4d2` | ⚠️ Unaudited |
| FeesCalculatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x05ba528f40feb3347f14af3bb6d97bf4826cd94f`; ethereum `0x5c2324ac57764b5ce2e333041bc41ea5757b1184` | ⚠️ Unaudited |
| FeesCalculatorV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x44420529db74807b69721a5a71ee4bdc2c762616`; polygon `0xa1a91054949cf03fddc97bc8d8ab8980c17b0d36` | ⚠️ Unaudited |
| FeesModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5ebf50661ee5b128dad3d71050520ccccc10601` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 2 | arbitrum | unit-234749 (2 proxies) | 2 deployments: arbitrum `0x223013bd8b4569628d50ee106ccba93189a02ada`; arbitrum `0x7f4b135782c4a3b1c78c93f23f2016cb5cd96cc8` | ⚠️ Unaudited |
| GOVI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeeaa40b28a2d1b0b08f6f97bb1dd4b75316c6107` | ⚠️ Unaudited |
| GOVIAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21032cce4b54a2e856a0a006552e593d627cb077` | ⚠️ Unaudited |
| GOVIETHSLPStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf05a60bcbc9c85cb2548dafdc444c666a8f466a` | ⚠️ Unaudited |
| GOVIETHStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0x936dd3112a9d39af39adda798503d9e7e7975fb7`; polygon `0x27792cda195d07ffb36e94e253d67361661a16dc` | ⚠️ Unaudited |
| Liquidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb2a8986f1feb41c374658bcd4a5e0b6b536ba1a` | ⚠️ Unaudited |
| LiquidationV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0x8d55c22ea6610e3fa4659d3d5f4d751ca1e62573`; polygon `0x29844857a63b3f88ad4a9a2daeef08cf92afd89b` | ⚠️ Unaudited |
| Platform | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0xe0437beb5bb7cf980e90983f6029033d710bd1da`; polygon `0x0bbaf8ea9c644149dce1656b811ef2d7ac0b11a4` | ⚠️ Unaudited |
| PlatformMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0xf2cab8d689c8cdf7cb7927c8eddc65d5cef18642`; polygon `0x4ecdb47bdf6e6b5551f15674a6470da91416c968` | ⚠️ Unaudited |
| PlatformV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x88d01ef3a4d586d5e4ce30357ec57b073d45ff9d` | ⚠️ Unaudited |
| PositionRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe9d634d2767079a2bff2ced1584f8f5623492ab4`; polygon `0xf293873ca668ef7f1412c46c2c2c682fd3441c02` | ⚠️ Unaudited |
| PositionRewardsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6d48b988d8c206939d3ae08896bac8e0f6e8736d`; ethereum `0xd5c0a6094f005d75b6e99a3da8d0b80127027c99` | ⚠️ Unaudited |
| PositionRewardsV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d77f3f8bd628a48d562f9376da99a0ac2d7c837` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0x2eab109de23905fefd65784820e44fc06ce7eeab`; ethereum `0x858d7cc649b5bd484caf859749cf17ed89249e11`; polygon `0x21032cce4b54a2e856a0a006552e593d627cb077`; polygon `0x7d9d86cf0eec161ae12d762f29899868ed7de262` | ⚠️ Unaudited |
| Rebaser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x284c036d52c4fd52af1cedeea5efc9160587133b`; polygon `0x9be0b60d6cceff2f9d15a2d9f1ea16bccb2b7427` | ⚠️ Unaudited |
| RequestFeesCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd966f0235ca332e92809f9aeed0fe615a9ee7c88` | ⚠️ Unaudited |
| Rewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c5f18b0f37cd18871c67378c2478565779131d0` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb3130952ed9b5fa7108dedaaa921ae8f59beacb` | ⚠️ Unaudited |
| StakingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x399b649002277d7a3502c9af65de71686f356f33` | ⚠️ Unaudited |
| StakingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xcdcf98cb2bd1774ca5c29950de7dd932081c39fc`; polygon `0xf1a038dda244e522b54132404c9d8d1686675377` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-234750 | `0x07e49d5de43dda6162fa28d24d5935c151875283` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x0e0da40101d8f6eb1b1d6b0215327e8452e0bc60`; ethereum `0x2167eefb9ecb52fb6fcf1ff8f7dae6f0121f4fbc`; ethereum `0x959fde094d975a2ae4f266d528b5ae28bfa51ec4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2444722a73564060808e0124f4b80bda436599a0`; ethereum `0x3d37c21745e254737d7290eb2af9ca8dd23ede5f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x27f57fd24f8a179f5b57586d809afa7cb649151f`; ethereum `0x36bab6b3b722f90475b8e681b4b0a4dc68ee5399` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2878f5baf3ebf1de939916901da0a825ad37f7a1`; ethereum `0xfa045835008058392ebfe2372ec6a1b1049b2c79` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x31b1d6b8a54df568ab9a3659ef269534b9cd5d1e`; ethereum `0x337f91f5a3f688445d2f29496f33f75ec1b93728`; ethereum `0x9ad0e2cae661eab5cb42f23d7be66352fcb0219d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x164ec55e783f8ff6f77b9578f726efd88e32027f`; polygon `0xe7e97cb4f82b2e4be4c24fb5af0769a9c65bab5b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x3863d0c9b7552cd0d0de99fe9f08a32fed6ab72f`; polygon `0xe26783dc0c4f355b9a82c48a57346c305adc542c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x9cd552551ec130b50c1421649c8d11e76ac821e1`; polygon `0xc72b7075aea7b3d69dd21cafa16e3acbdf85c821` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xd013ffc6ed3b2c773051a3b83e763df782d7b31f`; polygon `0xda679846a0a8e9bfe279c54eb8cc5dd99641d0c3` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x197e99bd87f98dfde461afe3f706de36c9635a5d`; ethereum `0x1ee312a6d5fe7b4b8c25f0a32fca6391209ebebf`; ethereum `0x7e6782e37278994d1e99f1a5d03309b4b249d919`; ethereum `0xa2b04f8133fc25887a436812eae384e32a8a84f2`; polygon `0x1dab41a0e410c25857f0f49b2244cd089ab88de6`; polygon `0x1dd0095a169e8398448a8e72f15a1868d99d9348` | ⚠️ Unaudited |
| USDCLPStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x717508a974cca423343d8c2a71d257f799ac4dbd` | ⚠️ Unaudited |
| USDTLPStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4ee7d2a5e155b721282065279e76da908d9e1db3`; ethereum `0xdb14a3b5bdfd0cd7b2ef5075b2689290d9edc915`; polygon `0x6214c5f34c0b174c02f388c017b5d3e64d27c4be` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (70)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a281e990e07c49d2b96e02234fbfa7893869435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a6bb1cae5a282a92cc5592bd8dd6495823f6a7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b38d97d6616485ae3390c8843121a37ad725619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c0502cf9a6c0abd7dbbcd6a6bf450d0b0196155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f3ce829151fc85a11b7d8c1dda3aed1fc860195` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x130d6a27c254d3492779b06e186cd5c90f57aa99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x197c25c75ad7e7d211f179c130d94c19ac72e8e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c746415d73d4cbc995e5eb80ddd07e698a32c8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d752c16ab0e242d9e5c8468422f4a551b18ce4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fff08dbde98afce0b0af2bf634bc2f95242c584` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d05ba27fe35410972ea1d3f59dc358e95e16c6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e5069474e75ec596064f8b4c68ac1c166231732` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x404cd4c297e215dbebacdbee68654d64c844d8a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x406830a59faac461b846f15598689defd56fb0ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43b576de0fd3e9f2b43f824608aceae8e2a4a912` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44f671c28454d8f490088fa77f564a06a8caeba2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b1fc384928406a08bee9cca204cd57cc942bf69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fde21b467f6cccfdea1b2b51886d9d0fd05491f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x544d18b97fab267d7059f8415366cd019e923cd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x558de8ff1fd1d12b8f73e7780e460b9e10b7b249` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55ab074cfb5d07bbb5d1561969a079914df5053a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x581ed39ff93ad50700f18e00857811935cb222ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59349976bd52f968f1c46ecd1221b203ccd0ab62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cdd3d250fe4bcd65822415ade4ac00040c404d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70a18d240003d20b8f82c769bbbfc0d92079cc00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b1e5d6c4c82bea3d8c509c52b62daf53b748363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95ef0eb38b203167035131743dd32d02470d9a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bc99ed62555f8f0dd1566681a2327500f62a19e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9f8754a34aed9efab3d543ce199b4aaf6a506c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb18db09645801c74e26cee4a09cc11fa8aeba751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3fd83aef518df231bfece15ede5702b710d8da7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4e50da25a1f8c75dcd19209de222759f422a468` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5b935df34061bab956f9488b985ba4722736b19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba67c8e5c5fae26b9d30f1792ef863a598a0c0ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdfe39742b998eff02ad3d2cc44380475e7f9a03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9529ca1d341b6b4791a4527915a96706d805e21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf672fdcee6d19dfdedc8f2f0219c61172d4a53a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5a222b80788e36f707addc74c3cb5de7e43f1b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5586fb97720c5559bee7d885ac711b56f11a5c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf359e1bd63c3308b77d6424a6dc9bfc78bb64922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4e153d2622700840588b68c2de6f65b79f972fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf86237a47700b13398870295cc0058ef84098dca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9057e3189a357422933535d8022a25412b31f8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe1185a6066fcd9ceafd24cb2fc8dcf13874177e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02deb6e484c12916abf245d5518f5315e1291555` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x049c70b3606c8befdc42555f8c1d092f5704593e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3b49ad7adf9e348852c529f621aecd7abd99907e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3c719eeab6bdbf152be9f6d5d18afbb365dbaf1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x58ddddb80f5cdfe3687a42136eaa13e4d52e4833` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x78fc21d4b835986cf201858835a2a2ba37c95fef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7907b14db27ce47aa2c4cf38d05b9c9611e468d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8fa16a306dfc5c50ad77950e7bb8c5eb8eee250b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x961ac04e0566ee1c781d504c54405dad4b010a98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x981475d6a0ee63027f7a67574d8eed3bd170d11d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb1f2753380bd957298e635b21d46aad14364b289` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc070d816d9f51de8f89c5b0baff374e02bf4234c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd53f9d95a87896e3543251acb3fb13d3d4d7d09e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdb3e7deab380b43189a7bc291fa2afeaa938dcc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe3480ef62b16a49fce109aaafaaf0bc6053aa6f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xea7b8dc5615e049417c80c795ea652556971c423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeafad6a78e925e20ea63c49008ec1ce4d2160e37` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x0f2962c9188d7852a8bdeb288ab95e5a575c641f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x31cd9fa35f0a1f6bddebe5a6ad5f46b2f0f24e4b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x3ce3886cb8fe17940fbabfbf727e32f38e2b991c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x4e20637dc4497afda5a5e1c7812e75cb14fe2375` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xc73d2191a1dd0a99b377272899a5569ed83f8cd8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xcef38d86c40522a2b58d82b658c194a9eb340091` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xd5f468e5769bfca313646070c18a267da42d9f4e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xda8d0386e91b2334b23c043978383a91728a68eb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xede0ce8cdc65bcf6422f3afb9d7cdb3e59c09658` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 129
- Live contracts: 0
- Unknown liveness contracts: 129
- Source-verified contracts: 60
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=17, contamination review=2, source verified unclassified=41, unverified unclassified=69

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | PositionRewards<br>`0xe9d634d2767079a2bff2ced1584f8f5623492ab4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| candidate review | ProxyAdmin<br>`0x2eab109de23905fefd65784820e44fc06ce7eeab` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| candidate review | ProxyAdmin<br>`0x858d7cc649b5bd484caf859749cf17ed89249e11` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| candidate review | TransparentUpgradeableProxy<br>`0x0e0da40101d8f6eb1b1d6b0215327e8452e0bc60` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| candidate review | TransparentUpgradeableProxy<br>`0x2167eefb9ecb52fb6fcf1ff8f7dae6f0121f4fbc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| candidate review | TransparentUpgradeableProxy<br>`0x2444722a73564060808e0124f4b80bda436599a0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| candidate review | TransparentUpgradeableProxy<br>`0x2878f5baf3ebf1de939916901da0a825ad37f7a1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| candidate review | TransparentUpgradeableProxy<br>`0x337f91f5a3f688445d2f29496f33f75ec1b93728` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| candidate review | TransparentUpgradeableProxy<br>`0x36bab6b3b722f90475b8e681b4b0a4dc68ee5399` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| candidate review | TransparentUpgradeableProxy<br>`0x9ad0e2cae661eab5cb42f23d7be66352fcb0219d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| candidate review | Platform<br>`0x0bbaf8ea9c644149dce1656b811ef2d7ac0b11a4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x70ba42b4594ffff9e843275019fe99fbe0a9a0ff` |
| candidate review | ProxyAdmin<br>`0x21032cce4b54a2e856a0a006552e593d627cb077` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| candidate review | ProxyAdmin<br>`0x7d9d86cf0eec161ae12d762f29899868ed7de262` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x70ba42b4594ffff9e843275019fe99fbe0a9a0ff` |
| candidate review | TransparentUpgradeableProxy<br>`0x3863d0c9b7552cd0d0de99fe9f08a32fed6ab72f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x70ba42b4594ffff9e843275019fe99fbe0a9a0ff` |
| candidate review | TransparentUpgradeableProxy<br>`0x9cd552551ec130b50c1421649c8d11e76ac821e1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| candidate review | TransparentUpgradeableProxy<br>`0xd013ffc6ed3b2c773051a3b83e763df782d7b31f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| candidate review | TransparentUpgradeableProxy<br>`0xe7e97cb4f82b2e4be4c24fb5af0769a9c65bab5b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x70ba42b4594ffff9e843275019fe99fbe0a9a0ff` |
| contamination review | CVIOracleV3<br>`0x6fc8cc3e6d3da8b29c4480e77e24dea298293ace` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| contamination review | CVIOracleV3<br>`0x421d1354cfad839fd58b8fdf56349d73a6654efb` | non_address_book | unknown | unknown | verified | n/a | `0x70ba42b4594ffff9e843275019fe99fbe0a9a0ff` |
| source verified unclassified | COTIETHSLPStakingRewards<br>`0x8eed31c1b0e147e56db836c40129eeb03cb62abd` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | COTIETHStakingRewards<br>`0xe6e5220291cf78b6d93bd1d08d746abbc115c64b` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | ETHLPStakingRewards<br>`0x40d203332b0a262f1a371ae9da1788fe6825a6f6` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | ETHLPStakingRewards<br>`0xe31424213003ac2ab9b3c7a77e56313cbff7e5f8` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | ETHPlatform<br>`0x145e6df857b241efdcb9b78a1b97a032606d47a7` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | ETHStakingProxy<br>`0x287839632973f7754c04a9e23d393aa09fa5b6de` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | ETHStakingProxy<br>`0x78bb4b95a8063bc55bc0fba620e30c7aa3cef929` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | ETHVOL_USDCLPStakingRewards<br>`0x967440f87132008184c25b9c385860e908df1a6d` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | FeesCalculator<br>`0x1ff4434e0a41dbf903aa68923d6da76904546f23` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | FeesCalculator<br>`0x78852f82632da2f00d931f9465d7162d1ed8b93c` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | FeesCalculator<br>`0xc19cdd1b4e7c12edfbfbd12c9cf4cd1cde29e70d` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | FeesCalculatorV3<br>`0x05ba528f40feb3347f14af3bb6d97bf4826cd94f` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | FeesCalculatorV3<br>`0x5c2324ac57764b5ce2e333041bc41ea5757b1184` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | FeesModel<br>`0xf5ebf50661ee5b128dad3d71050520ccccc10601` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | GOVIAirdrop<br>`0x21032cce4b54a2e856a0a006552e593d627cb077` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | Liquidation<br>`0xbb2a8986f1feb41c374658bcd4a5e0b6b536ba1a` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | LiquidationV2<br>`0x8d55c22ea6610e3fa4659d3d5f4d751ca1e62573` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | PlatformMigrator<br>`0xf2cab8d689c8cdf7cb7927c8eddc65d5cef18642` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | PositionRewardsV2<br>`0x6d48b988d8c206939d3ae08896bac8e0f6e8736d` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | PositionRewardsV2<br>`0xd5c0a6094f005d75b6e99a3da8d0b80127027c99` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | Rebaser<br>`0x284c036d52c4fd52af1cedeea5efc9160587133b` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | RequestFeesCalculator<br>`0xd966f0235ca332e92809f9aeed0fe615a9ee7c88` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | Rewards<br>`0x6c5f18b0f37cd18871c67378c2478565779131d0` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | USDCLPStakingRewards<br>`0x717508a974cca423343d8c2a71d257f799ac4dbd` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | USDTLPStakingRewards<br>`0x4ee7d2a5e155b721282065279e76da908d9e1db3` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | USDTLPStakingRewards<br>`0xdb14a3b5bdfd0cd7b2ef5075b2689290d9edc915` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | CVIOracle<br>`0xcaa521a856ccc2f5edf7c729006635997690b784` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | FeesCalculator<br>`0x13461e22265fb9fcdd89bd27b6601a7d0d1c7861` | non_address_book | unknown | unknown | verified | n/a | `0x70ba42b4594ffff9e843275019fe99fbe0a9a0ff` |
| source verified unclassified | FeesCalculator<br>`0x68e8be77f3eb29074a83ae01007fa71cb5cc5926` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | FeesCalculator<br>`0x6d6587dc53180cc8136866df04ba3a005e7fe4d2` | non_address_book | unknown | unknown | verified | n/a | `0x70ba42b4594ffff9e843275019fe99fbe0a9a0ff` |
| source verified unclassified | FeesCalculatorV4<br>`0x44420529db74807b69721a5a71ee4bdc2c762616` | non_address_book | unknown | unknown | verified | n/a | `0x70ba42b4594ffff9e843275019fe99fbe0a9a0ff` |
| source verified unclassified | FeesCalculatorV4<br>`0xa1a91054949cf03fddc97bc8d8ab8980c17b0d36` | non_address_book | unknown | unknown | verified | n/a | `0x70ba42b4594ffff9e843275019fe99fbe0a9a0ff` |
| source verified unclassified | LiquidationV2<br>`0x29844857a63b3f88ad4a9a2daeef08cf92afd89b` | non_address_book | unknown | unknown | verified | n/a | `0x70ba42b4594ffff9e843275019fe99fbe0a9a0ff` |
| source verified unclassified | PlatformMigrator<br>`0x4ecdb47bdf6e6b5551f15674a6470da91416c968` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | PositionRewards<br>`0xf293873ca668ef7f1412c46c2c2c682fd3441c02` | non_address_book | unknown | unknown | verified | n/a | `0x70ba42b4594ffff9e843275019fe99fbe0a9a0ff` |
| source verified unclassified | PositionRewardsV3<br>`0x0d77f3f8bd628a48d562f9376da99a0ac2d7c837` | non_address_book | unknown | unknown | verified | n/a | `0x70ba42b4594ffff9e843275019fe99fbe0a9a0ff` |
| source verified unclassified | Rebaser<br>`0x9be0b60d6cceff2f9d15a2d9f1ea16bccb2b7427` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | StakingV2<br>`0x399b649002277d7a3502c9af65de71686f356f33` | non_address_book | unknown | unknown | verified | n/a | `0x70ba42b4594ffff9e843275019fe99fbe0a9a0ff` |
| source verified unclassified | StakingVault<br>`0xcdcf98cb2bd1774ca5c29950de7dd932081c39fc` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | StakingVault<br>`0xf1a038dda244e522b54132404c9d8d1686675377` | non_address_book | unknown | unknown | verified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| source verified unclassified | USDTLPStakingRewards<br>`0x6214c5f34c0b174c02f388c017b5d3e64d27c4be` | non_address_book | unknown | unknown | verified | n/a | `0x70ba42b4594ffff9e843275019fe99fbe0a9a0ff` |
| unverified unclassified | UnnamedContract<br>`0x0a281e990e07c49d2b96e02234fbfa7893869435` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x0a6bb1cae5a282a92cc5592bd8dd6495823f6a7f` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x0b38d97d6616485ae3390c8843121a37ad725619` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x0c0502cf9a6c0abd7dbbcd6a6bf450d0b0196155` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x0f3ce829151fc85a11b7d8c1dda3aed1fc860195` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x130d6a27c254d3492779b06e186cd5c90f57aa99` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x197c25c75ad7e7d211f179c130d94c19ac72e8e8` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x1c746415d73d4cbc995e5eb80ddd07e698a32c8c` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x1d752c16ab0e242d9e5c8468422f4a551b18ce4b` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x1fff08dbde98afce0b0af2bf634bc2f95242c584` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x27f57fd24f8a179f5b57586d809afa7cb649151f` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x2d05ba27fe35410972ea1d3f59dc358e95e16c6f` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x2e5069474e75ec596064f8b4c68ac1c166231732` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x31b1d6b8a54df568ab9a3659ef269534b9cd5d1e` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x3d37c21745e254737d7290eb2af9ca8dd23ede5f` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x404cd4c297e215dbebacdbee68654d64c844d8a0` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x406830a59faac461b846f15598689defd56fb0ad` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x43b576de0fd3e9f2b43f824608aceae8e2a4a912` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x44f671c28454d8f490088fa77f564a06a8caeba2` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x4b1fc384928406a08bee9cca204cd57cc942bf69` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x4fde21b467f6cccfdea1b2b51886d9d0fd05491f` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x544d18b97fab267d7059f8415366cd019e923cd1` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x558de8ff1fd1d12b8f73e7780e460b9e10b7b249` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x55ab074cfb5d07bbb5d1561969a079914df5053a` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x581ed39ff93ad50700f18e00857811935cb222ff` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x59349976bd52f968f1c46ecd1221b203ccd0ab62` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x6cdd3d250fe4bcd65822415ade4ac00040c404d6` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x70a18d240003d20b8f82c769bbbfc0d92079cc00` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x7b1e5d6c4c82bea3d8c509c52b62daf53b748363` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x959fde094d975a2ae4f266d528b5ae28bfa51ec4` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x95ef0eb38b203167035131743dd32d02470d9a25` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x9bc99ed62555f8f0dd1566681a2327500f62a19e` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0xa9f8754a34aed9efab3d543ce199b4aaf6a506c7` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0xb18db09645801c74e26cee4a09cc11fa8aeba751` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0xb3fd83aef518df231bfece15ede5702b710d8da7` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0xb4e50da25a1f8c75dcd19209de222759f422a468` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0xb5b935df34061bab956f9488b985ba4722736b19` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0xba67c8e5c5fae26b9d30f1792ef863a598a0c0ab` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0xbdfe39742b998eff02ad3d2cc44380475e7f9a03` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0xc9529ca1d341b6b4791a4527915a96706d805e21` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0xcf672fdcee6d19dfdedc8f2f0219c61172d4a53a` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0xd5a222b80788e36f707addc74c3cb5de7e43f1b0` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0xe5586fb97720c5559bee7d885ac711b56f11a5c6` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0xf359e1bd63c3308b77d6424a6dc9bfc78bb64922` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0xf4e153d2622700840588b68c2de6f65b79f972fa` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0xf86237a47700b13398870295cc0058ef84098dca` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0xf9057e3189a357422933535d8022a25412b31f8c` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0xfa045835008058392ebfe2372ec6a1b1049b2c79` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0xfe1185a6066fcd9ceafd24cb2fc8dcf13874177e` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x02deb6e484c12916abf245d5518f5315e1291555` | non_address_book | unknown | unknown | unverified | n/a | `0x70ba42b4594ffff9e843275019fe99fbe0a9a0ff` |
| unverified unclassified | UnnamedContract<br>`0x049c70b3606c8befdc42555f8c1d092f5704593e` | non_address_book | unknown | unknown | unverified | n/a | `0x70ba42b4594ffff9e843275019fe99fbe0a9a0ff` |
| unverified unclassified | UnnamedContract<br>`0x164ec55e783f8ff6f77b9578f726efd88e32027f` | non_address_book | unknown | unknown | unverified | n/a | `0x70ba42b4594ffff9e843275019fe99fbe0a9a0ff` |
| unverified unclassified | UnnamedContract<br>`0x3b49ad7adf9e348852c529f621aecd7abd99907e` | non_address_book | unknown | unknown | unverified | n/a | `0x70ba42b4594ffff9e843275019fe99fbe0a9a0ff` |
| unverified unclassified | UnnamedContract<br>`0x3c719eeab6bdbf152be9f6d5d18afbb365dbaf1f` | non_address_book | unknown | unknown | unverified | n/a | `0x70ba42b4594ffff9e843275019fe99fbe0a9a0ff` |
| unverified unclassified | UnnamedContract<br>`0x58ddddb80f5cdfe3687a42136eaa13e4d52e4833` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x78fc21d4b835986cf201858835a2a2ba37c95fef` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0x7907b14db27ce47aa2c4cf38d05b9c9611e468d0` | non_address_book | unknown | unknown | unverified | n/a | `0x70ba42b4594ffff9e843275019fe99fbe0a9a0ff` |
| unverified unclassified | UnnamedContract<br>`0x8fa16a306dfc5c50ad77950e7bb8c5eb8eee250b` | non_address_book | unknown | unknown | unverified | n/a | `0x70ba42b4594ffff9e843275019fe99fbe0a9a0ff` |
| unverified unclassified | UnnamedContract<br>`0x961ac04e0566ee1c781d504c54405dad4b010a98` | non_address_book | unknown | unknown | unverified | n/a | `0x70ba42b4594ffff9e843275019fe99fbe0a9a0ff` |
| unverified unclassified | UnnamedContract<br>`0x981475d6a0ee63027f7a67574d8eed3bd170d11d` | non_address_book | unknown | unknown | unverified | n/a | `0x70ba42b4594ffff9e843275019fe99fbe0a9a0ff` |
| unverified unclassified | UnnamedContract<br>`0xb1f2753380bd957298e635b21d46aad14364b289` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0xc070d816d9f51de8f89c5b0baff374e02bf4234c` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0xc72b7075aea7b3d69dd21cafa16e3acbdf85c821` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0xd53f9d95a87896e3543251acb3fb13d3d4d7d09e` | non_address_book | unknown | unknown | unverified | n/a | `0x70ba42b4594ffff9e843275019fe99fbe0a9a0ff` |
| unverified unclassified | UnnamedContract<br>`0xda679846a0a8e9bfe279c54eb8cc5dd99641d0c3` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0xdb3e7deab380b43189a7bc291fa2afeaa938dcc3` | non_address_book | unknown | unknown | unverified | n/a | `0x70ba42b4594ffff9e843275019fe99fbe0a9a0ff` |
| unverified unclassified | UnnamedContract<br>`0xe26783dc0c4f355b9a82c48a57346c305adc542c` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0xe3480ef62b16a49fce109aaafaaf0bc6053aa6f6` | non_address_book | unknown | unknown | unverified | n/a | `0xcedad8c0ae5e0a878c01cc8c81e0ca2dba909ded` |
| unverified unclassified | UnnamedContract<br>`0xeafad6a78e925e20ea63c49008ec1ce4d2160e37` | non_address_book | unknown | unknown | unverified | n/a | `0x70ba42b4594ffff9e843275019fe99fbe0a9a0ff` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [usdt-audit.pdf](https://v2.cvi.finance/files/usdt-audit.pdf) | CertiK | Audit | 2021-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 25 | n/a |
| [eth-audit.pdf](https://v2.cvi.finance/files/eth-audit.pdf) | CertiK | Audit | 2021-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 51 | n/a |
| [sourcehat.com/audits/CVI](https://sourcehat.com/audits/CVI) | SourceHat | Audit | 2022-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 20 | n/a |
| [CVI_Zokyo_audit_report_30thNov_2023.pdf](https://github.com/zokyo-sec/audit-reports/blob/main/CVI/CVI_Zokyo_audit_report_30thNov_2023.pdf) | Zokyo | Audit | 2023-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 31 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12971] usdt-audit.pdf — no match: No reason recorded
- [12972] eth-audit.pdf — no match: No reason recorded
- [12973] sourcehat.com/audits/CVI — no match: No reason recorded
- [12974] CVI_Zokyo_audit_report_30thNov_2023.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| usdt-audit.pdf | AggregatorV3Interface | unmatched — not counted | — | — | no |
| usdt-audit.pdf | CVIOracle | unmatched — not counted | — | — | no |
| usdt-audit.pdf | ETHPlatform | unmatched — not counted | — | — | no |
| usdt-audit.pdf | FeesCalculator | unmatched — not counted | — | — | no |
| usdt-audit.pdf | FeesModel | unmatched — not counted | — | — | no |
| usdt-audit.pdf | GOVI | unmatched — not counted | — | — | no |
| usdt-audit.pdf | ICVIOracle | unmatched — not counted | — | — | no |
| usdt-audit.pdf | IETHPlatform | unmatched — not counted | — | — | no |
| usdt-audit.pdf | IFeesCalculator | unmatched — not counted | — | — | no |
| usdt-audit.pdf | IFeesCollector | unmatched — not counted | — | — | no |
| usdt-audit.pdf | IFeesModel | unmatched — not counted | — | — | no |
| usdt-audit.pdf | ILiquidation | unmatched — not counted | — | — | no |
| usdt-audit.pdf | IPlatform | unmatched — not counted | — | — | no |
| usdt-audit.pdf | IRewards | unmatched — not counted | — | — | no |
| usdt-audit.pdf | IStaking | unmatched — not counted | — | — | no |
| usdt-audit.pdf | IWETH | unmatched — not counted | — | — | no |
| usdt-audit.pdf | Liquidation | unmatched — not counted | — | — | no |
| usdt-audit.pdf | Platform | unmatched — not counted | — | — | no |
| usdt-audit.pdf | Rewards | unmatched — not counted | — | — | no |
| usdt-audit.pdf | SafeMath16 | unmatched — not counted | — | — | no |
| usdt-audit.pdf | SafeMath8 | unmatched — not counted | — | — | no |
| usdt-audit.pdf | SafeMath80 | unmatched — not counted | — | — | no |
| usdt-audit.pdf | Staking | unmatched — not counted | — | — | no |
| usdt-audit.pdf | StakingRewards | unmatched — not counted | — | — | no |
| usdt-audit.pdf | WETH9 | unmatched — not counted | — | — | no |
| eth-audit.pdf | AggregatorInterface | unmatched — not counted | — | — | no |
| eth-audit.pdf | AggregatorV2V3Interface | unmatched — not counted | — | — | no |
| eth-audit.pdf | AggregatorV3Interface | unmatched — not counted | — | — | no |
| eth-audit.pdf | CVIOracle | unmatched — not counted | — | — | no |
| eth-audit.pdf | CVIOracleV2 | unmatched — not counted | — | — | no |
| eth-audit.pdf | CVIOracleV3 | unmatched — not counted | — | — | no |
| eth-audit.pdf | ETHPlatform | unmatched — not counted | — | — | no |
| eth-audit.pdf | ETHStakingProxy | unmatched — not counted | — | — | no |
| eth-audit.pdf | ExtractETH | unmatched — not counted | — | — | no |
| eth-audit.pdf | FactorRewards | unmatched — not counted | — | — | no |
| eth-audit.pdf | FeesCalculator | unmatched — not counted | — | — | no |
| eth-audit.pdf | FeesCalculatorV2 | unmatched — not counted | — | — | no |
| eth-audit.pdf | FeesCalculatorV3 | unmatched — not counted | — | — | no |
| eth-audit.pdf | FeesModel | unmatched — not counted | — | — | no |
| eth-audit.pdf | FeesModelV2 | unmatched — not counted | — | — | no |
| eth-audit.pdf | GOVI | unmatched — not counted | — | — | no |
| eth-audit.pdf | GOVIAirdrop | unmatched — not counted | — | — | no |
| eth-audit.pdf | ICVIOracle | unmatched — not counted | — | — | no |
| eth-audit.pdf | ICVIOracleV2 | unmatched — not counted | — | — | no |
| eth-audit.pdf | ICVIOracleV3 | unmatched — not counted | — | — | no |
| eth-audit.pdf | IETHPlatform | unmatched — not counted | — | — | no |
| eth-audit.pdf | IETHStakingProxy | unmatched — not counted | — | — | no |
| eth-audit.pdf | IFactorRewards | unmatched — not counted | — | — | no |
| eth-audit.pdf | IFeesCalculator | unmatched — not counted | — | — | no |
| eth-audit.pdf | IFeesCalculatorV2 | unmatched — not counted | — | — | no |
| eth-audit.pdf | IFeesCalculatorV3 | unmatched — not counted | — | — | no |
| eth-audit.pdf | IFeesCollector | unmatched — not counted | — | — | no |
| eth-audit.pdf | IFeesModel | unmatched — not counted | — | — | no |
| eth-audit.pdf | IFeesModelV2 | unmatched — not counted | — | — | no |
| eth-audit.pdf | ILiquidation | unmatched — not counted | — | — | no |
| eth-audit.pdf | IPlatform | unmatched — not counted | — | — | no |
| eth-audit.pdf | IPlatformV2 | unmatched — not counted | — | — | no |
| eth-audit.pdf | IPositionRewards | unmatched — not counted | — | — | no |
| eth-audit.pdf | IPositionRewardsV2 | unmatched — not counted | — | — | no |
| eth-audit.pdf | IRewards | unmatched — not counted | — | — | no |
| eth-audit.pdf | IStaking | unmatched — not counted | — | — | no |
| eth-audit.pdf | IWETH | unmatched — not counted | — | — | no |
| eth-audit.pdf | Liquidation | unmatched — not counted | — | — | no |
| eth-audit.pdf | Platform | unmatched — not counted | — | — | no |
| eth-audit.pdf | PlatformV2 | unmatched — not counted | — | — | no |
| eth-audit.pdf | PositionRewards | unmatched — not counted | — | — | no |
| eth-audit.pdf | PositionRewardsV2 | unmatched — not counted | — | — | no |
| eth-audit.pdf | Rewards | unmatched — not counted | — | — | no |
| eth-audit.pdf | SafeMath16 | unmatched — not counted | — | — | no |
| eth-audit.pdf | SafeMath168 | unmatched — not counted | — | — | no |
| eth-audit.pdf | SafeMath8 | unmatched — not counted | — | — | no |
| eth-audit.pdf | SafeMath80 | unmatched — not counted | — | — | no |
| eth-audit.pdf | Staking | unmatched — not counted | — | — | no |
| eth-audit.pdf | StakingContracts | unmatched — not counted | — | — | no |
| eth-audit.pdf | StakingRewards | unmatched — not counted | — | — | no |
| eth-audit.pdf | WETH9 | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | CVIOracle | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | FeesCalculator | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | FeesCollector | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | GOVI | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | GOVIAirdrop | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | KeepersFeeVault | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | Liquidation | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | Platform | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | PlatformMigrator | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | PositionRewards | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | Rebaser | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | RequestFeesCalculator | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | Staking | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | StakingRewards | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | StakingVault | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | ThetaVault | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | ThetaVaultRequestFulfiller | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | Treasury | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | VolTokenRequestFulfiller | unmatched — not counted | — | — | no |
| sourcehat.com/audits/CVI | VolatilityToken | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | CVIOracle | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | CVIReverseOracle | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | ETHVolOracle | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | FeesCalculator | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | FeesCollector | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | HedgedThetaVault | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | KeepersBased | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | KeepersFeeVault | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | Liquidation | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | LowLatencyRequestFulfiller | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | MegaThetaVault | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | Platform | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | PlatformHelper | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | PlatformMigrator | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | PlatformRequestFulfillerV3 | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | PositionRewards | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | Rebaser | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | RebaserV3 | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | ReferralManager | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | RequestFulfiller | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | ThetaVault | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | ThetaVaultRequestFulfillerV3 | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | ThetaVaultV3 | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | ThetaVaultV3Manager | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | Treasury | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | UCVIOracle | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | UniswapHelper | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | UniswapV3LiquidityManager | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | VolatilityToken | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | VolatilityTokenRequestFulfillerV3 | unmatched — not counted | — | — | no |
| CVI_Zokyo_audit_report_30thNov_2023.pdf | VolatilityTokenV3 | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0xfdeb59a2b4891ea17610ee38665249acc9fcc506` | CVIUSDCThetaVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8096ad3107715747361acefe685943bfb427c722` | CVIUSDCVolatilityTokenV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x07e49d5de43dda6162fa28d24d5935c151875283` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 1 |
| standard_library | 8 |
| needs_review | 73 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 127 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12971] usdt-audit.pdf
- [12972] eth-audit.pdf
- [12973] sourcehat.com/audits/CVI
- [12974] CVI_Zokyo_audit_report_30thNov_2023.pdf

Fork inheritance lineage and inherited audits are included when available.
