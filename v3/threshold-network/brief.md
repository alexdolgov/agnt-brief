# Agentic Audit Brief: Threshold Network

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 16 (3 matched; 13 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Threshold Network (`threshold-network`)
- Website: [https://threshold.network/](https://threshold.network/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, optimism, polygon
- Contract surface: 238 unique implementations (238 raw deployments)
- Coverage basis: 2/19 confirmed own live verified implementations (10.5%); conservative 10.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $298,413,904.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Threshold Network. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 22 contract row(s) across arbitrum, base, ethereum, optimism, polygon. Structural roles: 12 infra, 9 core, 1 supporting. 14 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 22
- Structural roles: infra (12), core (9), supporting (1)
- Contract kinds: contract (22)
- Detected standards: erc1967proxy (12), ownable (5), erc20 (2), erc20permit (2), accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (22), openzeppelin-upgradeable (7)
- Upgradeable-pattern rows: 14

## Fork Analysis

1 of 33 contracts are derived from known codebases. 32 contracts have no detected origin.

### Forked Contracts

**RandomBeacon** (`0x5499f5...e3d80b`, chain 1)
Origin: keep-network (`0x5499f5...e3d80b`)
Containment: 100.0% - 51 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2111a4...9866b9`, chain 1)
- UnnamedContract (`0x46d52e...5204eb`, chain 1)
- UnnamedContract (`0x5d4d83...23dbde`, chain 1)
- UnnamedContract (`0x5e4861...0e8e7b`, chain 1)
- UnnamedContract (`0x80226f...146f7d`, chain 1)
- UnnamedContract (`0x92f2d8...b4913d`, chain 1)
- UnnamedContract (`0x9c0700...4fe3cd`, chain 1)
- UnnamedContract (`0xb810ab...2a341a`, chain 1)
- UnnamedContract (`0x1293a5...a15458`, chain 10)
- UnnamedContract (`0x6c84a8...d0de40`, chain 10)
- UnnamedContract (`0x236aa5...ab794b`, chain 8453)
- UnnamedContract (`0xa2a81d...8c512e`, chain 8453)
- UnnamedContract (`0xe931f1...d2d88b`, chain 8453)
- UnnamedContract (`0x6c84a8...d0de40`, chain 42161)
- CoveragePool (`0x7d7b62...6d811a`, chain 1)
- T (`0xcdf702...94bee5`, chain 1)
- TBTC (`0x18084f...d93a88`, chain 1)
- TimelockController (`0x87f005...75f45f`, chain 1)
- TransparentUpgradeableProxy (`0x018473...f85a45`, chain 1)
- TransparentUpgradeableProxy (`0x03e342...4ee0f6`, chain 1)
- TransparentUpgradeableProxy (`0x186d04...00a1fe`, chain 1)
- TransparentUpgradeableProxy (`0x75a6e4...2c619a`, chain 1)
- TransparentUpgradeableProxy (`0xb8df0a...38e6d3`, chain 1)
- TransparentUpgradeableProxy (`0xc9031f...3bc155`, chain 1)
- TransparentUpgradeableProxy (`0x099597...599eab`, chain 137)
- TransparentUpgradeableProxy (`0x236aa5...ab794b`, chain 137)
- TransparentUpgradeableProxy (`0x099597...599eab`, chain 8453)
- TransparentUpgradeableProxy (`0x1293a5...a15458`, chain 42161)
- TransparentUpgradeableProxy (`0x1c8d7b...258f9e`, chain 42161)
- TransparentUpgradeableProxy (`0xd7cd99...34d9b7`, chain 42161)
- VendingMachineV3 (`0x7570a2...6437e6`, chain 1)
- WalletProposalValidator (`0x30019d...fbdec2`, chain 1)

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 22 (19 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 33/48 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/19 (10.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 33 own, 5 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 200 discovered implementations excluded (0 third-party/infra; 10 standard proxy/library)
- Proxy deployments represented within implementation groups: 23
- Deployed-live implementations: 33 of 238 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/19
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 238
- Raw deployments: 238
- Audits discovered: 16 (16 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 6 fresh, 1 aging, 8 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 5.3% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 5.3% | 2021-11 |
| ChainSecurity | Tier 1 | 1 | 5.3% | 2021-11 |
| Least Authority | Tier 2 | 1 | 5.3% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| T | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258757 | `0xcdf702...94bee5` | ✅ Audited |
| TBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258734 | `0x18084f...d93a88` | ✅ Audited |

### ⚠️ Verified + Unaudited (220)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AcreMultiAssetVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a6e0d...afd18d` | ⚠️ Unaudited |
| ActivePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dbcb0...008549` | ⚠️ Unaudited |
| Allowlist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f7191...74591b` | ⚠️ Unaudited |
| AllVerifiers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x533a7f...161dce` | ⚠️ Unaudited |
| ARM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b63b3...91fa1b` | ⚠️ Unaudited |
| ARMProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x411de1...c75e81` | ⚠️ Unaudited |
| AssetPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21b86f...d28d5d` | ⚠️ Unaudited |
| Auction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabe008...e33fe1` | ⚠️ Unaudited |
| AuctionBidder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x773a4c...37b3c4` | ⚠️ Unaudited |
| BAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f4907...8b4dc5` | ⚠️ Unaudited |
| Bank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65fbae...9d9fc6` | ⚠️ Unaudited |
| BatchedPhasedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b8e50...f831ca` | ⚠️ Unaudited |
| BatchWithdraw | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x613d08...7a8964` | ⚠️ Unaudited |
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
| BLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65222d...11a50c` | ⚠️ Unaudited |
| BlockPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x596e3f...363410` | ⚠️ Unaudited |
| BLS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x655205...e020cd` | ⚠️ Unaudited |
| BondedECDSAKeep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9e838...22c105` | ⚠️ Unaudited |
| BondedECDSAKeepFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a7cd8...35c5d7` | ⚠️ Unaudited |
| BondedSortitionPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c46f4...2ede4f` | ⚠️ Unaudited |
| BorrowerOperations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x874a8e...66caa9` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13de6b...2402cc` | ⚠️ Unaudited |
| BridgeGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa94dd6...0778ee` | ⚠️ Unaudited |
| BridgeGovernanceParameters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce4b16...0d3443` | ⚠️ Unaudited |
| BurnMintTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x057152...1fe1b4` | ⚠️ Unaudited |
| BurnMintTokenPoolAndProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08b405...7b5abb` | ⚠️ Unaudited |
| BurnWithFromMintTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45a103...f84b6b` | ⚠️ Unaudited |
| BurnWithFromMintTokenPoolAndProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x476eef...240b93` | ⚠️ Unaudited |
| CairoBootloaderProgram | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x192292...8a8636` | ⚠️ Unaudited |
| CallProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3597c5...2f9feb` | ⚠️ Unaudited |
| ChangeVerifiersExternalInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09e429...4d5627` | ⚠️ Unaudited |
| CollSurplusPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bec52...78f200` | ⚠️ Unaudited |
| CommitStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x013467...5e9084` | ⚠️ Unaudited |
| Committee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23cab3...9494e4` | ⚠️ Unaudited |
| CoveragePool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258748 | `0x7d7b62...6d811a` | ⚠️ Unaudited |
| CoveragePoolBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22428b...2ee39b` | ⚠️ Unaudited |
| CpuConstraintPoly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04be0e...efa8eb` | ⚠️ Unaudited |
| CpuFrilessVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x015381...442cd6` | ⚠️ Unaudited |
| CpuOods | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0acc32...9ec5cb` | ⚠️ Unaudited |
| DefaultPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8bdab...db7ba9` | ⚠️ Unaudited |
| DelayedExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff50d1...c2cc70` | ⚠️ Unaudited |
| DelegatedWithBalanceWeight | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ecfb5...33f08a` | ⚠️ Unaudited |
| Deposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ac184...c04dc5` | ⚠️ Unaudited |
| DepositFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87effe...0faf8b` | ⚠️ Unaudited |
| DepositFunding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62d128...ccd125` | ⚠️ Unaudited |
| DepositLiquidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ca506...081a56` | ⚠️ Unaudited |
| DepositRedemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817c0f...372323` | ⚠️ Unaudited |
| DepositStates | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8695ff...ae1c80` | ⚠️ Unaudited |
| DepositSweep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x392635...ac9b95` | ⚠️ Unaudited |
| DepositUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ad83d...212517` | ⚠️ Unaudited |
| DonationVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa544b7...50e672` | ⚠️ Unaudited |
| ECDSABackportRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9ca1a...c036fa` | ⚠️ Unaudited |
| ECDSABackportRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82ab5f...c76108` | ⚠️ Unaudited |
| EcdsaDkgValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0125c8...d4ef27` | ⚠️ Unaudited |
| EcdsaInactivity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8263ef...46f764` | ⚠️ Unaudited |
| EcdsaPointsXColumn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01228f...283bf1` | ⚠️ Unaudited |
| EcdsaPointsYColumn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x498b55...5fe9f3` | ⚠️ Unaudited |
| ECDSARewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5ac5a...ffca88` | ⚠️ Unaudited |
| ECDSARewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b9e48...91bbb3` | ⚠️ Unaudited |
| ECDSARewardsDistributorEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa77ec9...952042` | ⚠️ Unaudited |
| ECDSARewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x037a91...5efb84` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x147379...f2d786` | ⚠️ Unaudited |
| EVM2EVMOffRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ab48c...c44554` | ⚠️ Unaudited |
| EVM2EVMOnRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03cb4c...b834d9` | ⚠️ Unaudited |
| FeeRebateToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf3fff...f94789` | ⚠️ Unaudited |
| FinalizableCommittee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2deea2...387150` | ⚠️ Unaudited |
| FinalizableGpsFactAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16b484...14c4c2` | ⚠️ Unaudited |
| ForcedActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x613ee5...48f376` | ⚠️ Unaudited |
| Fraud | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51bbef...ba3559` | ⚠️ Unaudited |
| FriStatementContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30efaa...93d400` | ⚠️ Unaudited |
| FundingScript | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94c70c...93d063` | ⚠️ Unaudited |
| GasPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34fbfd...47eca6` | ⚠️ Unaudited |
| GasPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c0a34...e46ab3` | ⚠️ Unaudited |
| GpsFactRegistryAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a8376...c5581a` | ⚠️ Unaudited |
| GpsStatementVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13e120...b0d934` | ⚠️ Unaudited |
| GrantStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02612d...8a3db3` | ⚠️ Unaudited |
| HintHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2249e8...202f55` | ⚠️ Unaudited |
| KeepBonding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27321f...89a3d5` | ⚠️ Unaudited |
| KeepFactorySelection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29fa8f...78261c` | ⚠️ Unaudited |
| KeepRandomBeaconOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf7084...fcf9de` | ⚠️ Unaudited |
| KeepRandomBeaconOperatorStatistics | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3975ce...5718e7` | ⚠️ Unaudited |
| KeepRandomBeaconServiceImplV1 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258732 | `0x099597...599eab` | ⚠️ Unaudited |
| KeepStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10de37...4af8b4` | ⚠️ Unaudited |
| KeepTokenGeyserRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06b586...13fd7d` | ⚠️ Unaudited |
| KeepVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf00da...016c87` | ⚠️ Unaudited |
| L1BitcoinDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fe738...e47dd7` | ⚠️ Unaudited |
| LightRelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x836cdf...35896e` | ⚠️ Unaudited |
| LightRelayMaintainerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca2f6...efa3c8` | ⚠️ Unaudited |
| LockedTokenCommon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x373eb6...0868e6` | ⚠️ Unaudited |
| LockedTokenGrant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0746e3...8fafee` | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0238d2...25e2e4` | ⚠️ Unaudited |
| LockReleaseTokenPoolAndProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d7368...521fc0` | ⚠️ Unaudited |
| Locks | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258746 | `0x6c84a8...d0de40` | ⚠️ Unaudited |
| LPRewardsKEEPETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47a5f2...9d6f44` | ⚠️ Unaudited |
| LPRewardsTBTCSaddle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78aa83...482edd` | ⚠️ Unaudited |
| LPRewardsTBTCv2Saddle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ad9e8...03f76d` | ⚠️ Unaudited |
| MaintainerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x535e01...40140f` | ⚠️ Unaudited |
| MemoryPageBatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0f50d...30eab3` | ⚠️ Unaudited |
| MemoryPageFactRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28a074...74be52` | ⚠️ Unaudited |
| MerkleStatementContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x097c4f...90700e` | ⚠️ Unaudited |
| MezoAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e1d7e...e2b5df` | ⚠️ Unaudited |
| MezoBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1af817...27d1f5` | ⚠️ Unaudited |
| MintManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4d28d...ed7f20` | ⚠️ Unaudited |
| MovingFunds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x310667...d42123` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8836b6...05b36c` | ⚠️ Unaudited |
| NativeBTCDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x254e2f...c94b0d` | ⚠️ Unaudited |
| NoOp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0972e6...adb887` | ⚠️ Unaudited |
| NttManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075108...1d6363` | ⚠️ Unaudited |
| OnchainVaults | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcee62...7d99d5` | ⚠️ Unaudited |
| OnDemandSPV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1531b6...a4b154` | ⚠️ Unaudited |
| OrderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ec343...3a4bb6` | ⚠️ Unaudited |
| OutsourceDepositLogging | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x478409...ec29ed` | ⚠️ Unaudited |
| PCV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x097f1e...dd06cb` | ⚠️ Unaudited |
| PedersenHashPointsXColumn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x047dd4...7e86d1` | ⚠️ Unaudited |
| PedersenHashPointsYColumn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a6f3b...5899ed` | ⚠️ Unaudited |
| PerpetualEscapeVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaadfdb...37f7bd` | ⚠️ Unaudited |
| PerpetualForcedActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x229bbd...a4fe21` | ⚠️ Unaudited |
| PerpetualState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45de24...ba0175` | ⚠️ Unaudited |
| PerpetualTokensAndRamping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bc9c6...8b9310` | ⚠️ Unaudited |
| PhasedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x964d45...2ec157` | ⚠️ Unaudited |
| PlainTransferEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fa3ef...3666c0` | ⚠️ Unaudited |
| PolygonRoot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51825d...0cacb3` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b459c...ddeafd` | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey0Column | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21578b...31ea8f` | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey1Column | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e8e41...3d5a94` | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey2Column | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b1590...c46045` | ⚠️ Unaudited |
| PoseidonPoseidonPartialRoundKey0Column | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1db84e...01e975` | ⚠️ Unaudited |
| PoseidonPoseidonPartialRoundKey1Column | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x032e5c...b43046` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x684645...db732d` | ⚠️ Unaudited |
| PriceRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x020082...a81985` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ff801...c3ce9d` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1268cc...c96812` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1ce5d7...353c65` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x02612d...8a3db3` | ⚠️ Unaudited |
| ProxyUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46fa00...5d7167` | ⚠️ Unaudited |
| ProxyV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x00b046...dd082b` | ⚠️ Unaudited |
| ProxyV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x038968...b0ae78` | ⚠️ Unaudited |
| RandomBeacon | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258743 | `0x5499f5...e3d80b` | ⚠️ Unaudited |
| RandomBeaconChaosnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf23fc1...b0294a` | ⚠️ Unaudited |
| RandomBeaconGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0a308...cb1c63` | ⚠️ Unaudited |
| Redemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0534...d7e29d` | ⚠️ Unaudited |
| RedemptionScript | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0972e6...adb887` | ⚠️ Unaudited |
| RegistryModuleOwnerCustom | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13022e...b2e533` | ⚠️ Unaudited |
| ReimbursementPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x369fce...17f9cc` | ⚠️ Unaudited |
| RiskManagerV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2355d7...f62b30` | ⚠️ Unaudited |
| RMN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c1c02...4948f3` | ⚠️ Unaudited |
| RolesExternalInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7eb822...1becce` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fb589...fde90b` | ⚠️ Unaudited |
| SignerBondsManualSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43faf6...f7442f` | ⚠️ Unaudited |
| SortedTroves | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5626c...986711` | ⚠️ Unaudited |
| SortitionPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e4cba...ecbcf6` | ⚠️ Unaudited |
| StabilityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa18ab4...475a9f` | ⚠️ Unaudited |
| StakerRewardsBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb59f4...8a0b81` | ⚠️ Unaudited |
| StakingPoolRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x118b76...069bd8` | ⚠️ Unaudited |
| StakingPortBacker | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258737 | `0x236aa5...ab794b` | ⚠️ Unaudited |
| StarkExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29db02...8a1191` | ⚠️ Unaudited |
| StarkExState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28f234...42e91f` | ⚠️ Unaudited |
| StarkgateManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a9558...4d9359` | ⚠️ Unaudited |
| Starknet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16938e...4177e8` | ⚠️ Unaudited |
| StarknetERC20Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x179fa5...3656a0` | ⚠️ Unaudited |
| StarknetEthBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x455603...603581` | ⚠️ Unaudited |
| TBTCConstants | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63a152...26750d` | ⚠️ Unaudited |
| TBTCDepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10b66b...37cdf0` | ⚠️ Unaudited |
| TBTCSystem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe20a5c...1ab64a` | ⚠️ Unaudited |
| TBTCVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52818e...277fd4` | ⚠️ Unaudited |
| TellorCaller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0278ac...e15c32` | ⚠️ Unaudited |
| TestToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf0ecb...468746` | ⚠️ Unaudited |
| THUSDOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x033951...026468` | ⚠️ Unaudited |
| THUSDToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfc5bd...8d29cf` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82f080...82b25a` | ⚠️ Unaudited |
| TimelockController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258751 | `0x87f005...75f45f` | ⚠️ Unaudited |
| TokenAdminRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb22764...c05cb6` | ⚠️ Unaudited |
| TokenholderGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd101f2...6f5447` | ⚠️ Unaudited |
| TokensAndRamping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5524cb...cb6298` | ⚠️ Unaudited |
| TokenStakingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda534b...681365` | ⚠️ Unaudited |
| TopUps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41c9b5...79d91a` | ⚠️ Unaudited |
| TransientProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03bd59...eb4409` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-258768 | `0x018473...f85a45` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x01b67b...765dd7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-258770 | `0x03e342...4ee0f6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0e628a...aa5913` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-258769 | `0x186d04...00a1fe` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x277d82...3d8b4d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x347cc7...edcf07` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x35d670...f66db7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5aab7e...93b3f8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-258771 | `0x75a6e4...2c619a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-258772 | `0xb8df0a...38e6d3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-258773 | `0xc9031f...3bc155` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xdf217e...854017` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | polygon | unit-258774 | `0x099597...599eab` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | polygon | unit-258775 | `0x236aa5...ab794b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | base | unit-258779 | `0x099597...599eab` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-258777 | `0x1293a5...a15458` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-258778 | `0x1c8d7b...258f9e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-258776 | `0xd7cd99...34d9b7` | ⚠️ Unaudited |
| TroveManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27d7d0...3abb8c` | ⚠️ Unaudited |
| UnderwriterToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x007854...0df843` | ⚠️ Unaudited |
| UpdatePerpetualConfigExternalInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39bff2...408b8e` | ⚠️ Unaudited |
| USDCTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a580c...0df59d` | ⚠️ Unaudited |
| V3toV45ChangesExternalInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x175359...f92ed8` | ⚠️ Unaudited |
| VendingMachine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cca7e...47680e` | ⚠️ Unaudited |
| VendingMachineV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce1f98...026d4b` | ⚠️ Unaudited |
| VendingMachineV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258747 | `0x7570a2...6437e6` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x326483...0e86c6` | ⚠️ Unaudited |
| WalletCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10fb59...43ffe5` | ⚠️ Unaudited |
| WalletProposalValidator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258738 | `0x30019d...fbdec2` | ⚠️ Unaudited |
| WalletRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08d7e8...65c832` | ⚠️ Unaudited |
| WalletRegistryGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aed6c...d47fe8` | ⚠️ Unaudited |
| Wallets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc67913...ba47bf` | ⚠️ Unaudited |
| WithBatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf17a2f...926268` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258733 | `0x1293a5...a15458` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258736 | `0x2111a4...9866b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258742 | `0x46d52e...5204eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258744 | `0x5d4d83...23dbde` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258745 | `0x5e4861...0e8e7b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258749 | `0x80226f...146f7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258752 | `0x92f2d8...b4913d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258753 | `0x9c0700...4fe3cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258755 | `0xb810ab...2a341a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-258760 | `0x1293a5...a15458` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-258761 | `0x6c84a8...d0de40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-258765 | `0x236aa5...ab794b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-258766 | `0xa2a81d...8c512e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-258767 | `0xe931f1...d2d88b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-258762 | `0x6c84a8...d0de40` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-258763 | `0x75a6e4...2c619a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://www.threshold.network/vision) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [View Audit 1 PDF](https://drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view) | Defense by Thesis | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [View Audit 2 PDF](https://drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view?usp=sharing) | Defense by Thesis | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [View PDF](https://drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view?usp=sharing) | Defense by Thesis | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [View PDF](https://drive.google.com/file/d/1RW4Bb3Rd_HdOU8pVxLpIRXCXDYKubeIp/view?usp=sharing) | Defense by Thesis | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [View PDF](https://drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view?usp=sharing) | Certora | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [View PDF](https://drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view?usp=sharing) | MixBytes | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [View PDF](https://app.notion.com/p/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760?source=copy_link&__dm_a=1) | Code4rena | Contest | 2025-04 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [View PDF](https://github.com/thesis/defense_public_security-audit-reports/blob/main/PDFs/240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf) | Thesis Defense | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Link to Least Authority](https://leastauthority.com/blog/audit-of-keep-network-solana-smart-contracts) | Least Authority | Audit | 2023-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [* **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/)](https://github.com/threshold-network/security-audits/blob/main/29-Sep-2022-LeastAuthority.pdf) | Least Authority | Audit | 2022-09 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 20 | high |
| [* **Report:** [View Audit PDF]() - [Link to CertiK](https://www.certik.com/projects/threshold-network)](https://github.com/threshold-network/security-audits/blob/main/19-Nov-2021-CertiK.pdf) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [* **Report:** [View Audit PDF]() - [Link to ChainSecurity](https://chainsecurity.com/security-audit/threshold-network)](https://github.com/threshold-network/security-audits/blob/main/09-Nov-2021-ChainSecurity.pdf) | ChainSecurity | Audit | 2021-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |
| [Link to Least Authority](https://leastauthority.com/blog/audit-of-keep-network-tbtc-bridge-v2) | Least Authority | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [Link to CertiK](https://skynet.certik.com/projects/threshold-network) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | medium |
| [Link to ChainSecurity](https://www.chainsecurity.com/security-audit/threshold-network) | ChainSecurity | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18384] DL audit link — no match: The provided text is a marketing page for Threshold Network, not an audit report. No contracts, scope sections, or audit dates are present.
- [18385] View Audit 1 PDF — no match: Two contracts in scope: Allowlist and RebateStaking. Audit final report date is September 25, 2025.
- [18386] View Audit 2 PDF — no match: Scope lists three bridge files; RebateStaking is mentioned as the new contract being integrated.
- [18387] View PDF — no match: Scope section lists WalletRegistry.sol and EcdsaDkg.sol as files in scope. Audit final report date is November 5, 2025.
- [18388] View PDF — no match: Only one contract in scope: NativeBTCDepositor. Audit final report date is October 31, 2025.
- [18389] View PDF — no match: All contracts listed in scope section. Audit date from work period end date.
- [18390] View PDF — no match: Scope table lists 4 contracts. Audit date from project overview timeline end date (05.09.2025).
- [18391] View PDF — no match: The document is a list of audit reports with dates and scope descriptions, but no specific contract names are provided in the scope descriptions. The scopes mention 'smart contracts for T staking rebates', 'WalletRegistry and EcdsaDkg smart contracts', 'NativeBTCDepositor contract', 'Threshold CCIP Update', 'Cross-chain bridge transfers', 'tBTC integration with Sui/StarkNet/Base/Solana', 'core tBTC Bridge contracts', 'Vending machine', and 'Staking contracts, T token logic, and vending machine mechanisms'. These are too generic to extract specific contract names.
- [18392] View PDF — no match: Scope defined by repository path solidity/contracts/l2. Two contracts identified: L1BitcoinDepositor and L2BitcoinDepositor. Audit date is the final report date (April 11, 2024).
- [18393] Link to Least Authority — no match: The provided text is a blog post announcing the audit, not the full report. No contract names or scope details are included.
- [18394] * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) — matched: Extracted contract names from scope description, file paths, and findings. The audit report covers multiple repositories: sortition-pools, keep-core (random-beacon, ecdsa), tbtc-v2 (solidity), and bitcoin-spv. Specific contracts mentioned include Bridge, MaintainerProxy, Bank, DonationVault, TBTCVault, EcdsaDkgValidator, WalletRegistryGovernance, WalletRegistry, Rewards, Deposit, Fraud, MovingFunds, Redemption, Wallets, EcdsaAuthorization, BeaconAuthorization, TBTC, and libraries BTCUtils, Bytes, ValidateSPV, CheckBitcoinSigs.
- [18395] * **Report:** [View Audit PDF]() - [Link to CertiK](https://www.certik.com/projects/threshold-network) — no match: Only VendingMachine.sol is in scope; T.sol is a third-party dependency mentioned but not in scope.
- [18396] * **Report:** [View Audit PDF]() - [Link to ChainSecurity](https://chainsecurity.com/security-audit/threshold-network) — matched: Scope section explicitly lists 8 files under contracts folder. Audit date from cover page: November 09, 2021.
- [18397] Link to Least Authority — no match: The report text is a blog post summary, not the full report. No specific contract names or file paths are provided. Only the system name 'tBTC Bridge v2' is mentioned.
- [18398] Link to CertiK — matched: Extracted from CertiK Skynet page for Threshold Network. Audited files listed as T.sol and VendingMachine.sol. Audit date from 'Last Audit was delivered on 12/16/2021'.
- [18399] Link to ChainSecurity — no match: The provided text is a summary/overview of an audit report, not the full report with a scope section. No specific contract names, file paths, or audit date are mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| View Audit 1 PDF | Allowlist | unmatched — not counted | — | listed in scope and findings | no |
| View Audit 1 PDF | RebateStaking | unmatched — not counted | — | listed in scope and findings | no |
| View Audit 2 PDF | Bridge | unmatched — not counted | — | listed in scope | no |
| View Audit 2 PDF | BridgeGovernance | unmatched — not counted | — | listed in scope | no |
| View Audit 2 PDF | BridgeState | unmatched — not counted | — | listed in scope | no |
| View Audit 2 PDF | RebateStaking | unmatched — not counted | — | mentioned as new contract being wired into Bridge | no |
| View PDF | WalletRegistry | unmatched — not counted | — | listed in scope section as file in scope | no |
| View PDF | EcdsaDkg | unmatched — not counted | — | listed in scope section as file in scope | no |
| View PDF | NativeBTCDepositor | unmatched — not counted | — | listed in scope as the only file in scope | no |
| View PDF | BurnFromMintTokenPoolUpgradeable | unmatched — not counted | — | listed in scope | no |
| View PDF | LockReleaseTokenPoolUpgradeable | unmatched — not counted | — | listed in scope | no |
| View PDF | TokenPoolUpgradeable | unmatched — not counted | — | listed in scope | no |
| View PDF | Pool | unmatched — not counted | — | listed in scope | no |
| View PDF | RateLimiter | unmatched — not counted | — | listed in scope | no |
| View PDF | AbstractBTCRedeemer | unmatched — not counted | — | listed in scope table | no |
| View PDF | L2WormholeGateway | unmatched — not counted | — | listed in scope table | no |
| View PDF | L2BTCRedeemerWormhole | unmatched — not counted | — | listed in scope table | no |
| View PDF | L1BTCRedeemerWormhole | unmatched — not counted | — | listed in scope table | no |
| View PDF | L1BitcoinDepositor | unmatched — not counted | — | Listed in scope repository path and mentioned in findings. | no |
| View PDF | L2BitcoinDepositor | unmatched — not counted | — | Listed in scope repository path and mentioned in findings. | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | Bridge | unmatched — not counted | — | The Bridge smart contract is the core component of the tBTC Bridge v2 | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | MaintainerProxy | unmatched — not counted | — | The MaintainerProxy smart contract defines functions that off-chain clients call | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | Bank | unmatched — not counted | — | The Bank component is responsible for tracking Bitcoin balances | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | DonationVault | unmatched — not counted | — | The Vault is an interface fulfilled by the DonationVault and the TBTCVault smart contracts | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | TBTCVault | unmatched — not counted | — | The Vault is an interface fulfilled by the DonationVault and the TBTCVault smart contracts | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | EcdsaDkgValidator | unmatched — not counted | — | Suggestion 1 location contracts/EcdsaDkgValidator.sol#L67 | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | WalletRegistryGovernance | unmatched — not counted | — | Suggestion 1 location contracts/WalletRegistryGovernance.sol#L86 | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | WalletRegistry | unmatched — not counted | — | Suggestion 2 location ecdsa/contracts/WalletRegistry.sol | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | Rewards | unmatched — not counted | — | Suggestion 5 location contracts/Rewards.sol#L43 | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | Deposit | unmatched — not counted | — | Suggestion 5 location contracts/bridge/Deposit.sol | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | Fraud | unmatched — not counted | — | Suggestion 5 location contracts/bridge/Fraud.sol | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | MovingFunds | unmatched — not counted | — | Suggestion 5 location contracts/bridge/MovingFunds.sol | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | Redemption | unmatched — not counted | — | Suggestion 5 location contracts/bridge/Redemption.sol | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | Wallets | unmatched — not counted | — | Suggestion 5 location contracts/bridge/Wallets.sol | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | EcdsaAuthorization | unmatched — not counted | — | Suggestion 4 location contracts/libraries/EcdsaAuthorization.sol | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | BeaconAuthorization | unmatched — not counted | — | Suggestion 4 location contracts/libraries/BeaconAuthorization.sol | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | TBTC | own contract | TBTC (selected) `0x18084f...d93a88` — deployed 2021-08-17 14:12:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | BTCUtils | unmatched — not counted | — | Our team looked specifically at functions from the BTCUtils, Bytes, ValidateSPV and CheckBitcoinSigs libraries | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | Bytes | unmatched — not counted | — | Our team looked specifically at functions from the BTCUtils, Bytes, ValidateSPV and CheckBitcoinSigs libraries | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | ValidateSPV | unmatched — not counted | — | Our team looked specifically at functions from the BTCUtils, Bytes, ValidateSPV and CheckBitcoinSigs libraries | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | CheckBitcoinSigs | unmatched — not counted | — | Our team looked specifically at functions from the BTCUtils, Bytes, ValidateSPV and CheckBitcoinSigs libraries | no |
| * **Report:** [View Audit PDF]() - [Link to CertiK](https://www.certik.com/projects/threshold-network) | VendingMachine | unmatched — not counted | — | listed in Audit Scope table | no |
| * **Report:** [View Audit PDF]() - [Link to ChainSecurity](https://chainsecurity.com/security-audit/threshold-network) | Checkpoints | unmatched — not counted | — | listed in scope table | no |
| * **Report:** [View Audit PDF]() - [Link to ChainSecurity](https://chainsecurity.com/security-audit/threshold-network) | T | own contract | T (selected) `0xcdf702...94bee5` — deployed 2021-12-31 12:49:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| * **Report:** [View Audit PDF]() - [Link to ChainSecurity](https://chainsecurity.com/security-audit/threshold-network) | VendingMachine | unmatched — not counted | — | listed in scope table | no |
| * **Report:** [View Audit PDF]() - [Link to ChainSecurity](https://chainsecurity.com/security-audit/threshold-network) | IApplication | unmatched — not counted | — | listed in scope table | no |
| * **Report:** [View Audit PDF]() - [Link to ChainSecurity](https://chainsecurity.com/security-audit/threshold-network) | IStaking | unmatched — not counted | — | listed in scope table | no |
| * **Report:** [View Audit PDF]() - [Link to ChainSecurity](https://chainsecurity.com/security-audit/threshold-network) | StakingProviders | unmatched — not counted | — | listed in scope table | no |
| * **Report:** [View Audit PDF]() - [Link to ChainSecurity](https://chainsecurity.com/security-audit/threshold-network) | TokenStaking | unmatched — not counted | — | listed in scope table | no |
| * **Report:** [View Audit PDF]() - [Link to ChainSecurity](https://chainsecurity.com/security-audit/threshold-network) | PercentUtils | unmatched — not counted | — | listed in scope table | no |
| Link to Least Authority | tBTC Bridge v2 | unmatched — not counted | — | mentioned in title and description as the audited system | no |
| Link to CertiK | T | own contract | T (selected) `0xcdf702...94bee5` — deployed 2021-12-31 12:49:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Link to CertiK | VendingMachine | unmatched — not counted | — | listed in audited files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x7d7b62...6d811a` | CoveragePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5499f5...e3d80b` | RandomBeacon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7570a2...6437e6` | VendingMachineV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x30019d...fbdec2` | WalletProposalValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 197 |
| upstream | 0 |
| standard_library | 25 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 50 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=10, low=5, medium=1
- Match method counts: unique_name=3

Zero-match audit list:

- [18384] DL audit link
- [18385] View Audit 1 PDF
- [18386] View Audit 2 PDF
- [18387] View PDF
- [18388] View PDF
- [18389] View PDF
- [18390] View PDF
- [18391] View PDF
- [18392] View PDF
- [18393] Link to Least Authority
- [18395] * **Report:** [View Audit PDF]() - [Link to CertiK](https://www.certik.com/projects/threshold-network)
- [18397] Link to Least Authority
- [18399] Link to ChainSecurity

Fork inheritance lineage and inherited audits are included when available.
