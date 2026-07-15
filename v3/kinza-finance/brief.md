# Agentic Audit Brief: Kinza Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Kinza Finance (`kinza-finance`)
- Website: [https://app.kinza.finance](https://app.kinza.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, mantle, opbnb
- Contract surface: 156 unique implementations (246 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $6,547,336.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Kinza Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across bsc, ethereum, mantle, opbnb. Structural roles: 2 supporting, 1 unclassified. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: supporting (2), unclassified (1)
- Contract kinds: contract (3)
- Detected standards: none
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0d4af5...8381b8`, chain 5000)
- UnnamedContract (`0x18cc2c...95ec38`, chain 5000)
- UnnamedContract (`0x22e585...9589c9`, chain 5000)
- UnnamedContract (`0x28a3f4...3f873c`, chain 5000)
- UnnamedContract (`0x5757b1...78ed51`, chain 5000)
- UnnamedContract (`0xd62434...7a9438`, chain 5000)
- GnosisSafeProxy (`0xb00083...12ee28`, chain 5000)
- UUPSProxy (`0x9356f6...b48383`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (2 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 144 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Confirmed-live implementations: 8 of 156 unique; 148 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/52
- Verified + Unaudited implementations: 52
- Verified by bytecode match: 0
- Unverified implementations: 104
- Unique implementations: 156
- Raw deployments: 246
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (52)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39abed...754a39` | ⚠️ Unaudited |
| ACLManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0x9074fc...095fdb`; bsc `0x625eda...163e31` | ⚠️ Unaudited |
| AToken | token | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 3 deployments: bsc `0x26c8c9...9f4a04`; bsc `0xe48967...796f5c`; bsc `0xf5e0ad...2dba0c` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xcdeaad...2f2ce0`; bsc `0xc7da75...a67e8a` | ⚠️ Unaudited |
| BorrowableDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2864aa...6d33ee`; ethereum `0x85c813...619b4a`; bsc `0xcf46f7...ba9533`; bsc `0xd6a287...65c5f2` | ⚠️ Unaudited |
| BorrowLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: ethereum `0xb2a2c0...e75c94`; bsc `0x637660...12a528`; bsc `0x70d790...2fbea1`; bsc `0xa6265a...b006fb`; bsc `0xee2585...2a4273` | ⚠️ Unaudited |
| BridgeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: ethereum `0xd0209f...afdf88`; bsc `0x299441...8dd02b`; bsc `0x342019...9a00f1`; bsc `0xe3aad8...af86b4` | ⚠️ Unaudited |
| ConfiguratorLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xd74d44...74bc8d`; bsc `0x306ca8...889871` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 17 deployments: bsc `0x0c2d7e...4fe543`; bsc `0x165e61...74b170`; bsc `0x1f84bf...f0db11`; bsc `0x2c1c96...25d4f7`; bsc `0x3402ce...9d2add`; bsc `0x41822c...92a85e`; bsc `0x5466e3...47d9c0`; bsc `0x5ceb0e...546673`; bsc `0x71e953...635ba1`; bsc `0x72958b...1a932a`; bsc `0x8c4861...952ed8`; bsc `0x920d4b...bb190f`; bsc `0x98c5fb...2ddd1e`; bsc `0xc62cd1...ad0aa1`; bsc `0xcc7e55...036b7d`; bsc `0xd67ff7...eff410`; bsc `0xe3e610...6e35cb` | ⚠️ Unaudited |
| EmissionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xfcc750...130195`; bsc `0xe85d5d...ca2d51` | ⚠️ Unaudited |
| EModeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4e68bc...6c4273`; bsc `0xc8cb15...cb28d9` | ⚠️ Unaudited |
| EthAtomicReservesSetupHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f2845...a5e6c6` | ⚠️ Unaudited |
| ezETHPriceAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb30a57...d201db` | ⚠️ Unaudited |
| FlashLoanLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: ethereum `0x9f3de0...9b8b4d`; bsc `0x486d68...e608ea`; bsc `0x48a8af...922f4d`; bsc `0x5e086a...89d329`; bsc `0x7954f3...24327f` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x8c99b0...5baa58`; ethereum `0xa3ec77...edfd16` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x550330...9b1ed3` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-244220 | `0x3cc8dc...561d68` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | mantle | unit-244223 | `0xb00083...12ee28` | ⚠️ Unaudited |
| HAYBinanceOracleAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d29c3...8d4c38` | ⚠️ Unaudited |
| HAYTWAPAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8e9cb...0cc7d8` | ⚠️ Unaudited |
| kBTC | unknown | project_anchor | own_supporting | 1 | bsc | unit-244226 | `0x9356f6...b48383` | ⚠️ Unaudited |
| LiquidationAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 17 deployments: bsc `0x0df5a3...d95eb5`; bsc `0x1561f7...1f5f9e`; bsc `0x1c40ce...806836`; bsc `0x2baa97...672b25`; bsc `0x32264d...e767fd`; bsc `0x3b029a...3eadd5`; bsc `0x3c6fa8...fb7d5c`; bsc `0x534a55...40b49e`; bsc `0x682092...9a89cf`; bsc `0x79b80f...08501c`; bsc `0x993e9a...949fa4`; bsc `0x9c580c...781585`; bsc `0xaf8665...c0404a`; bsc `0xbb5f2d...23eb5e`; bsc `0xde4736...113e7e`; bsc `0xe8fcad...5ceb4d`; bsc `0xec9582...9b9851` | ⚠️ Unaudited |
| LiquidationAdaptorAccessControl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8b8479...203c71` | ⚠️ Unaudited |
| LiquidationAdaptorPancakeV3FallBack | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5fa010...b751cd` | ⚠️ Unaudited |
| LiquidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: ethereum `0xe6f875...bca163`; bsc `0x107a0d...9b4ac2`; bsc `0x54c33c...6d8e67`; bsc `0xc01ef1...6bc041` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0x7b9ef9...78e95c`; bsc `0x0b4115...614e4c` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xcb0620...963c8c` | ⚠️ Unaudited |
| PoolAddressesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x021889...6bd953`; bsc `0xca20a5...1fd7ce` | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x37c9e6...43cbc6`; bsc `0x37d7eb...269189`; bsc `0xb62afd...fa8345` | ⚠️ Unaudited |
| PoolConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0x824a5b...1eabbd`; bsc `0x25b36e...e902bb` | ⚠️ Unaudited |
| PoolLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0x5d9991...792c2b`; bsc `0x30777a...3d616f` | ⚠️ Unaudited |
| ProtectedNativeTokenGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88e6ee...239337` | ⚠️ Unaudited |
| pufETHPriceAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0339e7...a557c8` | ⚠️ Unaudited |
| pumpBTCPriceAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b327...2530ea` | ⚠️ Unaudited |
| ReservesSetupHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x1f0d4b...450794`; bsc `0x2a8108...3b22b8`; bsc `0xd9c5bd...788f57` | ⚠️ Unaudited |
| rETHPriceAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2e2b78...d2db57`; ethereum `0x55c31b...e52066`; ethereum `0x818a8d...d92f85` | ⚠️ Unaudited |
| RewardsController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7f60ed...bacf35`; bsc `0xfe2506...6f8099` | ⚠️ Unaudited |
| rsETHPriceAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e8db6...f8e92e` | ⚠️ Unaudited |
| SNBNBBinanceOracleAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd73d7f...203e7f` | ⚠️ Unaudited |
| SNBNBBinanceOracleCustomAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x85621e...0eecfc`; bsc `0xd41a40...cac2cf` | ⚠️ Unaudited |
| StableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xf8a60a...db53fd`; bsc `0xc3752d...2b87b4` | ⚠️ Unaudited |
| StargateBorrowV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4579ef...4f4289` | ⚠️ Unaudited |
| SupplyLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: ethereum `0xc98135...2e0cb1`; bsc `0x15e0e9...775091`; bsc `0x1ab9b6...c21176`; bsc `0x3e2e10...2bdd9c`; bsc `0x625399...9b9451`; bsc `0x6a6877...87a17b`; bsc `0x763b2a...2fc1c2` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: ethereum `0x92139d...2a8276`; bsc `0x004a9e...d9cba6`; bsc `0x7a085a...283d6a`; bsc `0xdf2baf...2977aa` | ⚠️ Unaudited |
| TVLReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5dfaf0...f804e5` | ⚠️ Unaudited |
| VariableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xd32077...93c36f`; bsc `0x00170f...dbaee8` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: ethereum `0x5c7afe...18efb8`; bsc `0x11dc2a...13db62`; bsc `0x1ec9f9...b902e8`; bsc `0x3828f7...0d4cae`; bsc `0xa8fe77...160c1a`; bsc `0xc53d47...39d7df`; bsc `0xf711ae...12d805` | ⚠️ Unaudited |
| WBETHBinanceOracleAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41f19b...9693f4` | ⚠️ Unaudited |
| WbETHPriceAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x6ea1e0...2f06a2`; bsc `0x8c6dcf...a11862` | ⚠️ Unaudited |
| weETHPriceAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x036780...e5f832`; ethereum `0x512215...04ae9c` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa4cd4b...781087`; bsc `0xcc650b...526739` | ⚠️ Unaudited |
| wstETHPriceAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1031a3...537a0a`; ethereum `0xe7fd99...634437` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (104)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd27b00...3f83f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x209f07...d4d475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x433958...a26027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x439e13...adfcad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe26b3e...9cbb9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf01f32...6b98cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x004a9e...d9cba6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x077893...8abc6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x0c2d7e...4fe543` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x0df5a3...d95eb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x1c40ce...806836` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x1e1a67...29dffe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x1f84bf...f0db11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x209f07...d4d475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x260a7f...eb0068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x2a8108...3b22b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x306ca8...889871` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x30777a...3d616f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x342019...9a00f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x35d8d7...f97c8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x36be6c...15b9dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x37d7eb...269189` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x3f8860...cab067` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x3fb65b...031710` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x41822c...92a85e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x4bacc3...71c9d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x52cf67...7bc7ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x54c33c...6d8e67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x54c547...10df4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x565ef2...c1a7bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x5ceb0e...546673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x6e5b5c...f59046` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x722f6e...59e1b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x75257e...f04bbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x763b2a...2fc1c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x7954f3...24327f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x7ad8c5...1006b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x88e984...5fe4de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x8a8451...8a1278` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x8c9c95...779013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x947ad3...1f3669` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x993e9a...949fa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x9c580c...781585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xa6265a...b006fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xab98ae...6f18c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xb62afd...fa8345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xbb5f2d...23eb5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xbc4318...357a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xc086e1...90241a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xc62cd1...ad0aa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xc7da75...a67e8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xc8cb15...cb28d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xca0eda...1dd0e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xca20a5...1fd7ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xcf46f7...ba9533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xd67ff7...eff410` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xd9c5bd...788f57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xdc68ac...065d8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xde451b...b69802` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xe8fcad...5ceb4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xec9582...9b9851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xef31e7...24905d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x002618...2315b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0536e7...0051ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244215 | `0x0d4af5...8381b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244216 | `0x18cc2c...95ec38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1c3a49...6b001a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244217 | `0x22e585...9589c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x26b164...7e87dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244218 | `0x28a3f4...3f873c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2f31ac...c2e608` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-244219 | `0x34edc3...972891` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3ab164...6596dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-244221 | `0x51ff36...373d64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x532ece...757d72` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244222 | `0x5757b1...78ed51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x58067d...bc6d90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x69424f...f1ced7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6cf78e...9d5fc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6f230e...2bf7e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x70fce7...82e5ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7287d9...617f7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x758fb1...f61f13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7ba63a...aef8c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7d3458...f3bf9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9be413...612eb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9cd978...b01f71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa4f75b...33bd4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xad4881...20abc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xbb0a49...c40153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xbdf463...0f4b09` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-244224 | `0xbf2602...7e51b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc16ba9...0e6962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd5e6a1...c0b303` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244225 | `0xd62434...7a9438` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd7933c...920d7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe03379...fd9bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe2fee9...0583c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe5ca43...283ffc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe5f546...661095` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xebf687...e05606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xec63c5...5e2c18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf29d81...7a11ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf4f615...e7df96` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513](https://omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513) | Omniscia | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Salus-Kinza-1.0.pdf](https://github.com/Kinza-Finance/KZA-1.0/blob/main/audits/Salus-Kinza-1.0.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2142] omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513 — no match: Three contracts explicitly listed in scope table.
- [10238] Salus-Kinza-1.0.pdf — no match: All contracts listed in Appendix 1 - Files in Scope. Audit date from 'Date June 9 2023' in Project Dashboard.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513 | ProtectedERC20 | unmatched — not counted | — | listed in scope | no |
| omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513 | ProtectedERC20Gateway | unmatched — not counted | — | listed in scope | no |
| omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513 | ProtectedNativeTokenGateway | unmatched — not counted | — | listed in scope | no |
| Salus-Kinza-1.0.pdf | RewardsVault | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | ReserveFeeDistributor | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | LockTransferStrategy | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | TransferStrategyBase | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | VoteLogic | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | KZADistributor | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | VestingEscrow | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | Voter | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | BribeAssetRegistry | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | Minter | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | KZA | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | XKZA | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | AggregateBribe | unmatched — not counted | — | listed in Appendix 1 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x9356f6...b48383` | kBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 45 |
| upstream | 2 |
| standard_library | 5 |
| needs_review | 104 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 16 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [2142] omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513
- [10238] Salus-Kinza-1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
