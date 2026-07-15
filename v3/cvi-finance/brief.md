# Agentic Audit Brief: CVI Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: CVI Finance (`cvi-finance`)
- Website: [https://cvi.finance/](https://cvi.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, polygon
- Contract surface: 108 unique implementations (150 raw deployments)
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

- ClonableBeaconProxy (`0x07e49d...875283`, chain 42161)
- GnosisSafeProxy (`0x223013...a02ada`, chain 42161)
- GnosisSafeProxy (`0x7f4b13...d96cc8`, chain 42161)
- TransparentUpgradeableProxy (`0x8096ad...27c722`, chain 42161)
- TransparentUpgradeableProxy (`0xfdeb59...fcc506`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 104 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 16
- Confirmed-live implementations: 4 of 108 unique; 104 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/47
- Verified + Unaudited implementations: 47
- Verified by bytecode match: 0
- Unverified implementations: 61
- Unique implementations: 108
- Raw deployments: 150
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
| COTIETHSLPStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8eed31...b62abd` | ⚠️ Unaudited |
| COTIETHStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6e522...15c64b` | ⚠️ Unaudited |
| CVIOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcaa521...90b784` | ⚠️ Unaudited |
| CVIOracleV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0x6fc8cc...293ace`; polygon `0x421d13...654efb` | ⚠️ Unaudited |
| CVIUSDCThetaVault | core_logic | project_anchor | own_supporting | 1 | arbitrum | unit-234751 | `0xfdeb59...fcc506` | ⚠️ Unaudited |
| CVIUSDCVolatilityTokenV3 | token | project_anchor | own_supporting | 1 | arbitrum | unit-234752 | `0x8096ad...27c722` | ⚠️ Unaudited |
| ETHLPStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x40d203...25a6f6`; ethereum `0xe31424...f7e5f8` | ⚠️ Unaudited |
| ETHPlatform | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x145e6d...6d47a7`; ethereum `0x5005e8...cf0e79`; ethereum `0xbe857e...52be72` | ⚠️ Unaudited |
| ETHStakingProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x287839...a5b6de`; ethereum `0x78bb4b...cef929` | ⚠️ Unaudited |
| ETHVOL_USDCLPStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x967440...df1a6d` | ⚠️ Unaudited |
| FeesCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: ethereum `0x1ff443...546f23`; ethereum `0x78852f...d8b93c`; ethereum `0xc19cdd...29e70d`; polygon `0x13461e...1c7861`; polygon `0x68e8be...cc5926`; polygon `0x6d6587...7fe4d2` | ⚠️ Unaudited |
| FeesCalculatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x05ba52...6cd94f`; ethereum `0x5c2324...7b1184` | ⚠️ Unaudited |
| FeesCalculatorV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x444205...762616`; polygon `0xa1a910...7b0d36` | ⚠️ Unaudited |
| FeesModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5ebf5...c10601` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 2 | arbitrum | unit-234749 (2 proxies) | 2 deployments: arbitrum `0x223013...a02ada`; arbitrum `0x7f4b13...d96cc8` | ⚠️ Unaudited |
| GOVI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeeaa40...6c6107` | ⚠️ Unaudited |
| GOVIAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21032c...7cb077` | ⚠️ Unaudited |
| GOVIETHSLPStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf05a6...8f466a` | ⚠️ Unaudited |
| GOVIETHStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0x936dd3...975fb7`; polygon `0x27792c...1a16dc` | ⚠️ Unaudited |
| Liquidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb2a89...36ba1a` | ⚠️ Unaudited |
| LiquidationV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0x8d55c2...e62573`; polygon `0x298448...afd89b` | ⚠️ Unaudited |
| Platform | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0xe0437b...0bd1da`; polygon `0x0bbaf8...0b11a4` | ⚠️ Unaudited |
| PlatformMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0xf2cab8...f18642`; polygon `0x4ecdb4...16c968` | ⚠️ Unaudited |
| PlatformV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x88d01e...45ff9d` | ⚠️ Unaudited |
| PositionRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe9d634...492ab4`; polygon `0xf29387...441c02` | ⚠️ Unaudited |
| PositionRewardsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6d48b9...e8736d`; ethereum `0xd5c0a6...027c99` | ⚠️ Unaudited |
| PositionRewardsV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d77f3...d7c837` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0x2eab10...e7eeab`; ethereum `0x858d7c...249e11`; polygon `0x21032c...7cb077`; polygon `0x7d9d86...7de262` | ⚠️ Unaudited |
| Rebaser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x284c03...87133b`; polygon `0x9be0b6...2b7427` | ⚠️ Unaudited |
| RequestFeesCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd966f0...ee7c88` | ⚠️ Unaudited |
| Rewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c5f18...9131d0` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb3130...9beacb` | ⚠️ Unaudited |
| StakingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x399b64...356f33` | ⚠️ Unaudited |
| StakingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xcdcf98...1c39fc`; polygon `0xf1a038...675377` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-234750 | `0x07e49d...875283` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x0e0da4...e0bc60`; ethereum `0x2167ee...1f4fbc`; ethereum `0x959fde...a51ec4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x244472...6599a0`; ethereum `0x3d37c2...3ede5f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x27f57f...49151f`; ethereum `0x36bab6...ee5399` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2878f5...37f7a1`; ethereum `0xfa0458...9b2c79` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x31b1d6...cd5d1e`; ethereum `0x337f91...b93728`; ethereum `0x9ad0e2...b0219d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x164ec5...32027f`; polygon `0xe7e97c...5bab5b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x3863d0...6ab72f`; polygon `0xe26783...dc542c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x9cd552...c821e1`; polygon `0xc72b70...85c821` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xd013ff...d7b31f`; polygon `0xda6798...41d0c3` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x197e99...635a5d`; ethereum `0x1ee312...9ebebf`; ethereum `0x7e6782...49d919`; ethereum `0xa2b04f...8a84f2`; polygon `0x1dab41...b88de6`; polygon `0x1dd009...9d9348` | ⚠️ Unaudited |
| USDCLPStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x717508...ac4dbd` | ⚠️ Unaudited |
| USDTLPStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4ee7d2...9e1db3`; ethereum `0xdb14a3...edc915`; polygon `0x6214c5...27c4be` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (61)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a281e...869435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a6bb1...3f6a7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b38d9...725619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c0502...196155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f3ce8...860195` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x130d6a...57aa99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x197c25...72e8e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c7464...a32c8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d752c...18ce4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fff08...42c584` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d05ba...e16c6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e5069...231732` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x404cd4...44d8a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x406830...6fb0ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43b576...a4a912` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44f671...caeba2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b1fc3...42bf69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fde21...05491f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x544d18...923cd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x558de8...b7b249` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55ab07...f5053a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x581ed3...b222ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x593499...d0ab62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cdd3d...c404d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70a18d...79cc00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b1e5d...748363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95ef0e...0d9a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bc99e...62a19e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9f875...a506c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb18db0...eba751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3fd83...0d8da7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4e50d...22a468` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5b935...736b19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba67c8...a0c0ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdfe39...7f9a03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9529c...805e21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf672f...d4a53a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5a222...43f1b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5586f...11a5c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf359e1...b64922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4e153...f972fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf86237...098dca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9057e...b31f8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe1185...74177e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02deb6...291555` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x049c70...04593e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3b49ad...99907e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3c719e...dbaf1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x58dddd...2e4833` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x78fc21...c95fef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7907b1...e468d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8fa16a...ee250b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x961ac0...010a98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x981475...70d11d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb1f275...64b289` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc070d8...f4234c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd53f9d...d7d09e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdb3e7d...38dcc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe3480e...3aa6f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xea7b8d...71c423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeafad6...160e37` | ❓ Unverified |

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
| arbitrum | `0xfdeb59...fcc506` | CVIUSDCThetaVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8096ad...27c722` | CVIUSDCVolatilityTokenV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x07e49d...875283` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 1 |
| standard_library | 8 |
| needs_review | 64 |

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
