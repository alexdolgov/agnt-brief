# Agentic Audit Brief: Yield Basis

## Export Authority

- Production state: **published scope**
- Raw selected rows: 18 across 9 audit(s)
- Eligible audit results: 11 (9 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Yield Basis (`yield-basis`)
- Website: [https://yieldbasis.com/](https://yieldbasis.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 231 unique implementations (231 raw deployments)
- Coverage basis: 4/12 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $107,692,583.24
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Yield Basis. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across ethereum. Structural roles: 8 unclassified, 4 core, 1 infra, 1 supporting. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: unclassified (8), core (4), infra (1), supporting (1)
- Contract kinds: unclassified (8), contract (6)
- Detected standards: erc1967proxy (3), erc20 (2), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 45 contracts are derived from known codebases. 45 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0e357a...d0cf5a`, chain 1)
- UnnamedContract (`0x119885...84602e`, chain 1)
- UnnamedContract (`0x1b9518...b7f96e`, chain 1)
- UnnamedContract (`0x1be148...4c1c21`, chain 1)
- UnnamedContract (`0x1cb8f6...b90a86`, chain 1)
- UnnamedContract (`0x2b9c9f...343cea`, chain 1)
- UnnamedContract (`0x36e36d...b206a8`, chain 1)
- UnnamedContract (`0x370a44...d100c0`, chain 1)
- UnnamedContract (`0x49f51d...5cb196`, chain 1)
- UnnamedContract (`0x4f52c3...279c2e`, chain 1)
- UnnamedContract (`0x525443...f40065`, chain 1)
- UnnamedContract (`0x5f8d24...92233c`, chain 1)
- UnnamedContract (`0x60043a...fe3da0`, chain 1)
- UnnamedContract (`0x651d4b...c55baa`, chain 1)
- UnnamedContract (`0x656341...69b9f3`, chain 1)
- UnnamedContract (`0x722fc3...2f29f9`, chain 1)
- UnnamedContract (`0x771f72...7823ec`, chain 1)
- UnnamedContract (`0x772cff...8404cf`, chain 1)
- UnnamedContract (`0x7b5c75...03cb13`, chain 1)
- UnnamedContract (`0x7b9817...cffffe`, chain 1)
- UnnamedContract (`0x8235c1...dac211`, chain 1)
- UnnamedContract (`0x85ae9c...65fd92`, chain 1)
- UnnamedContract (`0x862cb4...b6c6a0`, chain 1)
- UnnamedContract (`0x93eb25...2785e3`, chain 1)
- UnnamedContract (`0xaa0b1d...3a58f5`, chain 1)
- UnnamedContract (`0xc8aa88...103928`, chain 1)
- UnnamedContract (`0xd11b41...1f7a90`, chain 1)
- UnnamedContract (`0xd82945...03e3d8`, chain 1)
- UnnamedContract (`0xe707c7...ed1a9f`, chain 1)
- UnnamedContract (`0xe83d88...038483`, chain 1)
- UnnamedContract (`0xe862bc...051ec6`, chain 1)
- UnnamedContract (`0xf8764c...ec1b6f`, chain 1)
- UnnamedContract (`0xf96ff1...cc3d6a`, chain 1)
- ERC1967Proxy (`0x2be667...96ec78`, chain 1)
- ERC1967Proxy (`0x42f2a4...4895fa`, chain 1)
- FiatTokenV2_1 (`0xcbb7c0...ed33bf`, chain 1)
- HybridFactoryOwner (`0x0f4e1a...3f1048`, chain 1)
- HybridVault (`0xd772ed...fdc3ac`, chain 1)
- HybridVaultFactory (`0xbdc322...b8dc5b`, chain 1)
- TBTC (`0x18084f...d93a88`, chain 1)
- Twocrypto (`0x313698...1e729a`, chain 1)
- VirtualPool (`0x04ca7a...1e2c87`, chain 1)
- WBTC (`0x2260fa...c2c599`, chain 1)
- WETH9 (`0xc02aaa...756cc2`, chain 1)
- YBToken (`0x01791f...c045ff`, chain 1)

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 14 (12 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 45/92 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/12 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 45 own, 47 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 139 discovered implementations excluded (12 third-party/infra; 4 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Deployed-live implementations: 45 of 231 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 4/12
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 33
- Unique implementations: 231
- Raw deployments: 231
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 9
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 5 fresh, 5 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: 33.3% (ChainSecurity, MixBytes)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| MixBytes | Tier 1 | 4 | 33.3% | 2026-03 |
| ChainSecurity | Tier 1 | 3 | 25.0% | 2026-06 |
| Electisec | Tier 2 | 1 | 8.3% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| HybridFactoryOwner | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397474 | `0x0f4e1a...3f1048` | ✅ Audited |
| HybridVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397543 | `0xd772ed...fdc3ac` | ✅ Audited |
| HybridVaultFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397537 | `0xbdc322...b8dc5b` | ✅ Audited |
| YBToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397471 | `0x01791f...c045ff` | ✅ Audited |

### ⚠️ Verified + Unaudited (149)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AcreMultiAssetVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a6e0d...afd18d` | ⚠️ Unaudited |
| AssetPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21b86f...d28d5d` | ⚠️ Unaudited |
| Auction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabe008...e33fe1` | ⚠️ Unaudited |
| AuctionBidder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x773a4c...37b3c4` | ⚠️ Unaudited |
| Bank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65fbae...9d9fc6` | ⚠️ Unaudited |
| BatchedPhasedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b8e50...f831ca` | ⚠️ Unaudited |
| BeaconAuthorization | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x632c2d...6e83e8` | ⚠️ Unaudited |
| BeaconBackportRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fec9c...ffbfff` | ⚠️ Unaudited |
| BeaconBackportRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24c0fb...f07647` | ⚠️ Unaudited |
| BeaconDkg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x024a69...2abd84` | ⚠️ Unaudited |
| BeaconDkgValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4edc83...653f94` | ⚠️ Unaudited |
| BeaconInactivity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67a26f...941ec0` | ⚠️ Unaudited |
| BeaconRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf5180...f5f491` | ⚠️ Unaudited |
| BeaconRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b15fe...e68ff0` | ⚠️ Unaudited |
| BitcoinDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04b94f...0f4d32` | ⚠️ Unaudited |
| BitcoinRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f2766...4839a5` | ⚠️ Unaudited |
| BLS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x655205...e020cd` | ⚠️ Unaudited |
| BondedECDSAKeep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9e838...22c105` | ⚠️ Unaudited |
| BondedECDSAKeepFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a7cd8...35c5d7` | ⚠️ Unaudited |
| BondedSortitionPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c46f4...2ede4f` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x265054...2e2ec5` | ⚠️ Unaudited |
| BridgeGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa94dd6...0778ee` | ⚠️ Unaudited |
| BridgeGovernanceParameters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce4b16...0d3443` | ⚠️ Unaudited |
| CallComparator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3bfa8...1dec25` | ⚠️ Unaudited |
| Cliff Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ba8df...57e220` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca0641...febeb7` | ⚠️ Unaudited |
| CoveragePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d7b62...6d811a` | ⚠️ Unaudited |
| CoveragePoolBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22428b...2ee39b` | ⚠️ Unaudited |
| CryptopoolLPOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397482 | `0x231c37...52e054` | ⚠️ Unaudited |
| DadFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c110...db072d` | ⚠️ Unaudited |
| DaiFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07674...69ebbb` | ⚠️ Unaudited |
| Deposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ac184...c04dc5` | ⚠️ Unaudited |
| DepositFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87effe...0faf8b` | ⚠️ Unaudited |
| DepositFunding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62d128...ccd125` | ⚠️ Unaudited |
| DepositLiquidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ca506...081a56` | ⚠️ Unaudited |
| DepositRedemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817c0f...372323` | ⚠️ Unaudited |
| DepositStates | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8695ff...ae1c80` | ⚠️ Unaudited |
| DepositSweep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x392635...ac9b95` | ⚠️ Unaudited |
| DepositUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ad83d...212517` | ⚠️ Unaudited |
| DonationVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa544b7...50e672` | ⚠️ Unaudited |
| DSChief | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2a84...057152` | ⚠️ Unaudited |
| DSChiefFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7ca0...8f1483` | ⚠️ Unaudited |
| DSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x068083...cc5523` | ⚠️ Unaudited |
| ECDSABackportRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9ca1a...c036fa` | ⚠️ Unaudited |
| ECDSABackportRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82ab5f...c76108` | ⚠️ Unaudited |
| EcdsaDkgValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0125c8...d4ef27` | ⚠️ Unaudited |
| EcdsaInactivity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8263ef...46f764` | ⚠️ Unaudited |
| ECDSARewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5ac5a...ffca88` | ⚠️ Unaudited |
| ECDSARewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b9e48...91bbb3` | ⚠️ Unaudited |
| ECDSARewardsDistributorEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa77ec9...952042` | ⚠️ Unaudited |
| ECDSARewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x037a91...5efb84` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x147379...f2d786` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-397562 | `0x2be667...96ec78` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-397560 | `0x42f2a4...4895fa` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1043eb...4c421d` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x286af1...39ecc0` | ⚠️ Unaudited |
| FeeRebateToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf3fff...f94789` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-397561 | `0xcbb7c0...ed33bf` | ⚠️ Unaudited |
| Fraud | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51bbef...ba3559` | ⚠️ Unaudited |
| FundingScript | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94c70c...93d063` | ⚠️ Unaudited |
| GasPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c0a34...e46ab3` | ⚠️ Unaudited |
| Gauge Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x037ee0...0e5af9` | ⚠️ Unaudited |
| GemFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431e93...845692` | ⚠️ Unaudited |
| GemPit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69076e...83c275` | ⚠️ Unaudited |
| GrantStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02612d...8a3db3` | ⚠️ Unaudited |
| InflationaryVest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f5789...31b112` | ⚠️ Unaudited |
| KeepBonding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27321f...89a3d5` | ⚠️ Unaudited |
| KeepFactorySelection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29fa8f...78261c` | ⚠️ Unaudited |
| KeepRandomBeaconOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf7084...fcf9de` | ⚠️ Unaudited |
| KeepRandomBeaconOperatorStatistics | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3975ce...5718e7` | ⚠️ Unaudited |
| KeepRandomBeaconServiceImplV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x099597...599eab` | ⚠️ Unaudited |
| KeepTokenGeyserRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06b586...13fd7d` | ⚠️ Unaudited |
| KeepVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf00da...016c87` | ⚠️ Unaudited |
| LEVAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07ceda...ba305e` | ⚠️ Unaudited |
| LightRelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x836cdf...35896e` | ⚠️ Unaudited |
| LightRelayMaintainerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca2f6...efa3c8` | ⚠️ Unaudited |
| Liquidity Gauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x008c2d...d781f7` | ⚠️ Unaudited |
| Locks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c84a8...d0de40` | ⚠️ Unaudited |
| LPRewardsKEEPETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47a5f2...9d6f44` | ⚠️ Unaudited |
| LPRewardsTBTCSaddle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78aa83...482edd` | ⚠️ Unaudited |
| LPRewardsTBTCv2Saddle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ad9e8...03f76d` | ⚠️ Unaudited |
| LT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b0d8b...3f1eb4` | ⚠️ Unaudited |
| LTMigrator | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397486 | `0x2cdb9f...37066c` | ⚠️ Unaudited |
| MaintainerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x535e01...40140f` | ⚠️ Unaudited |
| Members | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640...107ac5` | ⚠️ Unaudited |
| MezoAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e1d7e...e2b5df` | ⚠️ Unaudited |
| MezoBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1af817...27d1f5` | ⚠️ Unaudited |
| MigrationFactoryOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa68343...94b6ad` | ⚠️ Unaudited |
| MomFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141a20...3669ea` | ⚠️ Unaudited |
| MovingFunds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x310667...d42123` | ⚠️ Unaudited |
| Multisend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08ba95...bbe914` | ⚠️ Unaudited |
| NoOp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d5b85...590daf` | ⚠️ Unaudited |
| NttManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075108...1d6363` | ⚠️ Unaudited |
| OnDemandSPV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1531b6...a4b154` | ⚠️ Unaudited |
| OutsourceDepositLogging | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x478409...ec29ed` | ⚠️ Unaudited |
| PhasedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x964d45...2ec157` | ⚠️ Unaudited |
| PlainTransferEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fa3ef...3666c0` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b459c...ddeafd` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16a76d...b5c706` | ⚠️ Unaudited |
| RandomBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5499f5...e3d80b` | ⚠️ Unaudited |
| RandomBeaconChaosnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf23fc1...b0294a` | ⚠️ Unaudited |
| RandomBeaconGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0a308...cb1c63` | ⚠️ Unaudited |
| Redemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d807e...a25914` | ⚠️ Unaudited |
| RedemptionScript | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0972e6...adb887` | ⚠️ Unaudited |
| ReimbursementPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x369fce...17f9cc` | ⚠️ Unaudited |
| RiskManagerV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2355d7...f62b30` | ⚠️ Unaudited |
| SignerBondsManualSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43faf6...f7442f` | ⚠️ Unaudited |
| Snapshot Splitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x168b92...ada222` | ⚠️ Unaudited |
| SortitionPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e4cba...ecbcf6` | ⚠️ Unaudited |
| StakerRewardsBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb59f4...8a0b81` | ⚠️ Unaudited |
| StakeZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f7633...8e2dfd` | ⚠️ Unaudited |
| StakingPoolRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x118b76...069bd8` | ⚠️ Unaudited |
| StakingPortBacker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x236aa5...ab794b` | ⚠️ Unaudited |
| T | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdf702...94bee5` | ⚠️ Unaudited |
| TapFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521c42...51f14f` | ⚠️ Unaudited |
| TBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397477 | `0x18084f...d93a88` | ⚠️ Unaudited |
| TBTCConstants | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63a152...26750d` | ⚠️ Unaudited |
| TBTCDepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10b66b...37cdf0` | ⚠️ Unaudited |
| TBTCSystem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe20a5c...1ab64a` | ⚠️ Unaudited |
| TBTCVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52818e...277fd4` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82f080...82b25a` | ⚠️ Unaudited |
| TokenSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x223bb2...2a5d0b` | ⚠️ Unaudited |
| TokenStakingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda534b...681365` | ⚠️ Unaudited |
| TokenVotingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x076e29...fb9e20` | ⚠️ Unaudited |
| TopFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eda20...733ed4` | ⚠️ Unaudited |
| TopUps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41c9b5...79d91a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0e628a...aa5913` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xb8df0a...38e6d3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xdf217e...854017` | ⚠️ Unaudited |
| TubFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3b670...d1b987` | ⚠️ Unaudited |
| Twocrypto | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397489 | `0x313698...1e729a` | ⚠️ Unaudited |
| UnderwriterToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x007854...0df843` | ⚠️ Unaudited |
| VendingMachine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cca7e...47680e` | ⚠️ Unaudited |
| VendingMachineV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce1f98...026d4b` | ⚠️ Unaudited |
| VendingMachineV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7570a2...6437e6` | ⚠️ Unaudited |
| Vesting Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cf5bf...db23ef` | ⚠️ Unaudited |
| VirtualPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397472 | `0x04ca7a...1e2c87` | ⚠️ Unaudited |
| Voting Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13daff...7470a0` | ⚠️ Unaudited |
| VotingPowerCondition | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2321a7...0591b7` | ⚠️ Unaudited |
| VoxFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414b1d...2499bf` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x326483...0e86c6` | ⚠️ Unaudited |
| WalletCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10fb59...43ffe5` | ⚠️ Unaudited |
| WalletProposalValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30019d...fbdec2` | ⚠️ Unaudited |
| WalletRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08d7e8...65c832` | ⚠️ Unaudited |
| WalletRegistryGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aed6c...d47fe8` | ⚠️ Unaudited |
| Wallets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc67913...ba47bf` | ⚠️ Unaudited |
| WBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397481 | `0x2260fa...c2c599` | ⚠️ Unaudited |
| WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x353f89...c4bf52` | ⚠️ Unaudited |
| WETH9 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397538 | `0xc02aaa...756cc2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (78)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397473 | `0x0e357a...d0cf5a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397475 | `0x10b663...f0ae66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397476 | `0x119885...84602e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397478 | `0x1b9518...b7f96e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397479 | `0x1be148...4c1c21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397480 | `0x1cb8f6...b90a86` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397483 | `0x2a4671...03e23c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397484 | `0x2b513e...c732ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397485 | `0x2b9c9f...343cea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397487 | `0x2da2aa...9bbc91` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397488 | `0x30ba8b...310d21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397490 | `0x35095d...2341e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397491 | `0x36e36d...b206a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397492 | `0x370a44...d100c0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397493 | `0x37f45e...04e8bd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397494 | `0x3dae83...925b6a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397495 | `0x3e5a6c...c6bfe6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397496 | `0x3f3f05...0b70bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397497 | `0x49f51d...5cb196` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397498 | `0x4f52c3...279c2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397499 | `0x525443...f40065` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397500 | `0x57977d...7eae0e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397501 | `0x58321b...cfc573` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397502 | `0x586855...124995` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397503 | `0x5f8d24...92233c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397504 | `0x60043a...fe3da0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397505 | `0x6095a2...d45204` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397506 | `0x61d255...91b827` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397507 | `0x61ed01...cbcd79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397508 | `0x651d4b...c55baa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397509 | `0x656341...69b9f3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397510 | `0x6e5492...e4a9c2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397511 | `0x711064...9c783a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397512 | `0x722fc3...2f29f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397513 | `0x771f72...7823ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397514 | `0x772cff...8404cf` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397515 | `0x7ac592...052cf2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397516 | `0x7b5c75...03cb13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397517 | `0x7b9817...cffffe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397518 | `0x7cad37...9a55fd` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397519 | `0x7ec34e...70de24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397520 | `0x8235c1...dac211` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397521 | `0x83f240...5beb32` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397522 | `0x84e7f7...74ee17` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397523 | `0x85ae9c...65fd92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397524 | `0x862cb4...b6c6a0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397525 | `0x908640...4771e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397526 | `0x931d40...236e09` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397527 | `0x93eb25...2785e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397528 | `0xa25306...95c94b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397529 | `0xaa0b1d...3a58f5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397530 | `0xabf17d...b4e045` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397531 | `0xac0a34...bfac92` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397532 | `0xac0cfa...1bf8d2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397533 | `0xad78a4...718036` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397534 | `0xb0faab...aec9d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397535 | `0xb42e34...521e4f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397536 | `0xbc56e3...45d7aa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397539 | `0xc51c8e...fcd96b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397540 | `0xc8aa88...103928` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397541 | `0xd11b41...1f7a90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397542 | `0xd6a114...901112` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397544 | `0xd82945...03e3d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397545 | `0xd9ff83...ce8373` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397546 | `0xdc90f6...1e109a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397547 | `0xdfd6fe...a0669d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397548 | `0xe3ebc7...33ebed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397549 | `0xe4e656...7a3315` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397550 | `0xe707c7...ed1a9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397551 | `0xe83d88...038483` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397552 | `0xe862bc...051ec6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397553 | `0xf07c96...9b1b72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397554 | `0xf1f435...9c6127` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397555 | `0xf3081a...2a0893` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397556 | `0xf8764c...ec1b6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397557 | `0xf96ff1...cc3d6a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397558 | `0xfbf3c1...e2e763` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397559 | `0xfd1db6...744092` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Chainsecurity_LP_Oracle.md](https://github.com/yield-basis/yb-core/blob/master/audits/Chainsecurity_LP_Oracle.md) | ChainSecurity | Audit | 2026-06 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [statemind.pdf](https://docs.yieldbasis.com/pdf/audit/statemind.pdf) | Statemind | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [chainsecurity.pdf](https://docs.yieldbasis.com/pdf/audit/chainsecurity.pdf) | ChainSecurity | Audit | 2025-07 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [quantstamp.pdf](https://docs.yieldbasis.com/pdf/audit/quantstamp.pdf) | Quantstamp | Audit | 2025-04 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [mixbytes.pdf](https://docs.yieldbasis.com/pdf/audit/mixbytes.pdf) | MixBytes | Audit | 2025-08 | fresh | Direct | contract_name | matched | 4 | 0 | 0 | 4 | high |
| [electisec.pdf](https://docs.yieldbasis.com/pdf/audit/electisec.pdf) | Electisec | Audit | 2025-08 | fresh | Direct | contract_name | matched | 3 | 0 | 0 | 3 | high |
| [pashov.pdf](https://docs.yieldbasis.com/pdf/audit/pashov.pdf) | Pashov Audit Group | Audit | 2025-04 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |
| [leveraged-liquidity-paper.pdf](https://raw.githubusercontent.com/yield-basis/yb-paper/69253975369a75a0b30f38bf5d498272566918d6/leveraged-liquidity-paper.pdf) | Sherlock | Contest | 2025-06 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [mixbytes-hybrid-vault.pdf](https://docs.yieldbasis.com/pdf/audit/mixbytes-hybrid-vault.pdf) | MixBytes | Audit | 2026-03 | fresh | Direct | contract_name | matched | 3 | 0 | 0 | 0 | high |
| [chainsecurity-hybrid-vault.pdf](https://docs.yieldbasis.com/pdf/audit/chainsecurity-hybrid-vault.pdf) | ChainSecurity | Audit | 2026-03 | fresh | Direct | contract_name | matched | 3 | 0 | 0 | 0 | high |
| [firepan.com/reports/yieldbasis-feedistributor](https://firepan.com/reports/yieldbasis-feedistributor) | Firepan | Audit | n/a | unknown | Direct | contract_name | matched | 1 | 0 | 0 | 0 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21087] Chainsecurity_LP_Oracle.md — matched: Scope explicitly lists contracts/LT.vy, contracts/AMM.vy, contracts/utils/YBLendingOracle.vy. YBLendingOracleLL.vy is a variant treated identically. Factory.vy is referenced in findings but not in scope; included as it is part of the system. Audit response date is 2026-06-14.
- [21088] statemind.pdf — no match: Scope section explicitly lists three files: LT.vy, AMM.vy, CryptopoolLPOracle.vy. Audit date is the final reaudit commit date (22-05-2025) from the timeline.
- [21089] chainsecurity.pdf — matched: Scope section explicitly lists 5 contracts in scope. Audit date found in header: July 7th, 2025.
- [21090] quantstamp.pdf — matched: Scope explicitly lists AMM, CryptopoolLPOracle, Factory, LT, and VirtualPool contracts. LiquidityGauge is out of scope. Audit date is the final report date (2025-04-25).
- [21091] mixbytes.pdf — matched: Scope table on page 3 lists 8 contracts with file paths. Audit date is August 11, 2025 from the cover page.
- [21092] electisec.pdf — matched: Audit covers six smart contracts: VotingEscrow, LiquidityGauge, GaugeController, VestingEscrow, CliffEscrow, and YB. Date found on cover page.
- [21093] pashov.pdf — matched: Scope section lists 'LT', 'AMM', 'Factory' as smart contracts in scope. Audit date is the end date of the engagement period.
- [21094] leveraged-liquidity-paper.pdf — no match: The document is a research paper, not an audit report. No contracts in scope are listed.
- [21095] mixbytes-hybrid-vault.pdf — matched: Scope table explicitly lists three contracts: HybridVault.vy, HybridVaultFactory.vy, HybridFactoryOwner.vy. Audit date derived from timeline end date 25.03.2026.
- [21096] chainsecurity-hybrid-vault.pdf — matched: Three contracts in scope: HybridVault, HybridVaultFactory, HybridFactoryOwner. Audit date from cover page.
- [21097] firepan.com/reports/yieldbasis-feedistributor — matched: Only one contract (FeeDistributor) is explicitly mentioned as the audit target. No scope table or file paths provided. Audit date not found in the text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Chainsecurity_LP_Oracle.md | LT | unmatched — not counted | — | listed in scope | no |
| Chainsecurity_LP_Oracle.md | AMM | unmatched — not counted | — | listed in scope | no |
| Chainsecurity_LP_Oracle.md | YBLendingOracle | unmatched — not counted | — | listed in scope | no |
| Chainsecurity_LP_Oracle.md | YBLendingOracleLL | unmatched — not counted | — | mentioned as variant sharing code paths | no |
| Chainsecurity_LP_Oracle.md | Factory | own contract | 0x370a44… (selected) `0x370a44...d100c0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| statemind.pdf | LT | unmatched — not counted | — | listed in scope | no |
| statemind.pdf | AMM | unmatched — not counted | — | listed in scope | no |
| statemind.pdf | CryptopoolLPOracle | unmatched — not counted | — | listed in scope | no |
| chainsecurity.pdf | AMM | unmatched — not counted | — | listed in scope | no |
| chainsecurity.pdf | CryptopoolLPOracle | unmatched — not counted | — | listed in scope | no |
| chainsecurity.pdf | Factory | own contract | 0x370a44… (selected) `0x370a44...d100c0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity.pdf | LT | unmatched — not counted | — | listed in scope | no |
| chainsecurity.pdf | VirtualPool | ambiguous — not counted | VirtualPool (alternative) `0x04ca7a...1e2c87` — deployed 2026-05-25 10:23:47+03 — liveness: live (current_address_book_code)<br>0xf96ff1… (alternative) `0xf96ff1...cc3d6a` — liveness: live (current_address_book_code)<br>0x772cff… (alternative) `0x772cff...8404cf` — liveness: live (current_address_book_code)<br>0x1b9518… (alternative) `0x1b9518...b7f96e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| quantstamp.pdf | AMM | unmatched — not counted | — | listed in scope | no |
| quantstamp.pdf | CryptopoolLPOracle | unmatched — not counted | — | listed in scope | no |
| quantstamp.pdf | Factory | own contract | 0x370a44… (selected) `0x370a44...d100c0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| quantstamp.pdf | LT | unmatched — not counted | — | listed in scope | no |
| quantstamp.pdf | VirtualPool | ambiguous — not counted | VirtualPool (alternative) `0x04ca7a...1e2c87` — deployed 2026-05-25 10:23:47+03 — liveness: live (current_address_book_code)<br>0xf96ff1… (alternative) `0xf96ff1...cc3d6a` — liveness: live (current_address_book_code)<br>0x772cff… (alternative) `0x772cff...8404cf` — liveness: live (current_address_book_code)<br>0x1b9518… (alternative) `0x1b9518...b7f96e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| mixbytes.pdf | GaugeController | own contract | 0x1be148… (selected) `0x1be148...4c1c21` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| mixbytes.pdf | LiquidityGauge | unmatched — not counted | — | listed in scope table | no |
| mixbytes.pdf | YB | own contract | YBToken (selected) `0x01791f...c045ff` — deployed 2025-09-15 23:40:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| mixbytes.pdf | VotingEscrow | unmatched — not counted | — | listed in scope table | no |
| mixbytes.pdf | CliffEscrow | own contract | 0x60043a… (selected) `0x60043a...fe3da0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| mixbytes.pdf | VestingEscrow | unmatched — not counted | — | listed in scope table | no |
| mixbytes.pdf | Factory | own contract | 0x370a44… (selected) `0x370a44...d100c0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| mixbytes.pdf | erc4626 | unmatched — not counted | — | listed in scope table | no |
| electisec.pdf | VotingEscrow | unmatched — not counted | — | mentioned in scope and findings | no |
| electisec.pdf | LiquidityGauge | unmatched — not counted | — | mentioned in scope and findings | no |
| electisec.pdf | GaugeController | own contract | 0x1be148… (selected) `0x1be148...4c1c21` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec.pdf | VestingEscrow | unmatched — not counted | — | mentioned in scope and findings | no |
| electisec.pdf | CliffEscrow | own contract | 0x60043a… (selected) `0x60043a...fe3da0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec.pdf | YB | own contract | YBToken (selected) `0x01791f...c045ff` — deployed 2025-09-15 23:40:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| pashov.pdf | LT | unmatched — not counted | — | mentioned in scope as 'LT' and in findings | no |
| pashov.pdf | AMM | unmatched — not counted | — | mentioned in scope as 'AMM' and in findings | no |
| pashov.pdf | Factory | own contract | 0x370a44… (selected) `0x370a44...d100c0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| mixbytes-hybrid-vault.pdf | HybridVault | own contract | HybridVault (selected) `0xd772ed...fdc3ac` — deployed 2026-04-06 19:26:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| mixbytes-hybrid-vault.pdf | HybridVaultFactory | own contract | HybridVaultFactory (selected) `0xbdc322...b8dc5b` — deployed 2026-04-06 19:25:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| mixbytes-hybrid-vault.pdf | HybridFactoryOwner | own contract | HybridFactoryOwner (selected) `0x0f4e1a...3f1048` — deployed 2026-04-06 19:24:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity-hybrid-vault.pdf | HybridVault | own contract | HybridVault (selected) `0xd772ed...fdc3ac` — deployed 2026-04-06 19:26:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity-hybrid-vault.pdf | HybridVaultFactory | own contract | HybridVaultFactory (selected) `0xbdc322...b8dc5b` — deployed 2026-04-06 19:25:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity-hybrid-vault.pdf | HybridFactoryOwner | own contract | HybridFactoryOwner (selected) `0x0f4e1a...3f1048` — deployed 2026-04-06 19:24:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| firepan.com/reports/yieldbasis-feedistributor | FeeDistributor | own contract | 0xd11b41… (selected) `0xd11b41...1f7a90` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xcbb7c0...ed33bf` | FiatTokenV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x18084f...d93a88` | TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x313698...1e729a` | Twocrypto | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x04ca7a...1e2c87` | VirtualPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2260fa...c2c599` | WBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc02aaa...756cc2` | WETH9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 144 |
| upstream | 1 |
| standard_library | 8 |
| needs_review | 78 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 18 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 22 unmatched
- Matched-own operational status: 18 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9, low=1, medium=1
- Match method counts: unique_name=18

Zero-match audit list:

- [21088] statemind.pdf
- [21094] leveraged-liquidity-paper.pdf

Fork inheritance lineage and inherited audits are included when available.
