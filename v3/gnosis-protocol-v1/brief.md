# Agentic Audit Brief: Gnosis Protocol v1

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Gnosis Protocol v1 (`gnosis-protocol-v1`)
- Website: [https://gnosis.io/](https://gnosis.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: chain-4, ethereum, gnosis
- Contract surface: 129 unique implementations (171 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $1,808,350.91
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Gnosis Protocol v1 in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6f4008...aa841f`, chain 1)
- UnnamedContract (`0x7d071f...5cd457`, chain 1)
- UnnamedContract (`0xa1c956...07e68a`, chain 1)
- UnnamedContract (`0xa3b3fb...e4ce9e`, chain 1)
- UnnamedContract (`0xcddb32...8d2636`, chain 1)
- UnnamedContract (`0xed4d05...8d1761`, chain 1)
- UnnamedContract (`0x048e53...5495cb`, chain 100)
- UnnamedContract (`0x25b063...e26313`, chain 100)
- UnnamedContract (`0x51138a...6bfb64`, chain 100)
- UnnamedContract (`0x57e6b9...d88f91`, chain 100)
- UnnamedContract (`0xa18c8f...46e1a5`, chain 100)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 11 own, 5 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 113 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 23
- Confirmed-live implementations: 11 of 129 unique; 118 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/82
- Verified + Unaudited implementations: 82
- Verified by bytecode match: 0
- Unverified implementations: 47
- Unique implementations: 129
- Raw deployments: 171
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (82)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveIntegration | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf61734...3d9d39` | ⚠️ Unaudited |
| Api3Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b3821...31b88a` | ⚠️ Unaudited |
| BaseToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22eeab...a0f0e4` | ⚠️ Unaudited |
| BasketManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x66126b...dea96d`; ethereum `0x6efa26...79bf61` | ⚠️ Unaudited |
| BasketManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x968030...69d7db` | ⚠️ Unaudited |
| BoostDirector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8892d7...e10aaf` | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x760ea8...dc0731` | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x8dacbe...476958`; ethereum `0x931420...fd7df8`; ethereum `0xa283fc...559d5d`; ethereum `0xb1ad72...99851b`; ethereum `0xce1284...d33dc4`; ethereum `0xf5ad2b...352107` | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xadeedd...343c99` | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd124b5...2a6207` | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf65d53...75e35c` | ⚠️ Unaudited |
| BoostedSavingsVault_imbtc_mainnet_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf38522...8a3016` | ⚠️ Unaudited |
| BoostedSavingsVault_imusd_mainnet_2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x78befc...1a6c7b` | ⚠️ Unaudited |
| Collector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f63e5...6c0e43` | ⚠️ Unaudited |
| CompoundIntegration | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd55684...9db735` | ⚠️ Unaudited |
| ConditionalTokens | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc59b0e...407e0c` | ⚠️ Unaudited |
| DecentralizedAutonomousTrust | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2825f4...016cfa`; ethereum `0x334cd6...0a7764` | ⚠️ Unaudited |
| DecentralizedAutonomousTrust | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa1d65e...725521` | ⚠️ Unaudited |
| DelayedProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c8eb5...f92386` | ⚠️ Unaudited |
| DIACoingeckoOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07e412...c35d60` | ⚠️ Unaudited |
| DIACompanyLockup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfaeb4f...503d85` | ⚠️ Unaudited |
| DIAToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84ca8b...3c9419` | ⚠️ Unaudited |
| Disbursement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff2e23...377370` | ⚠️ Unaudited |
| Dispute | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x889cdd...92af86` | ⚠️ Unaudited |
| DutchXCompleteModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba22d7...1cfcd6` | ⚠️ Unaudited |
| DutchXSellerModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3ebeb...0aa84d` | ⚠️ Unaudited |
| DXDBurnRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95f823...4635db` | ⚠️ Unaudited |
| DXDPayRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa96e6c...2e0576` | ⚠️ Unaudited |
| DXDSellRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdee210...e5c095` | ⚠️ Unaudited |
| DXTokenRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14a588...21fafb` | ⚠️ Unaudited |
| Ejector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71061e...7a0434` | ⚠️ Unaudited |
| Enum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1e1ae...2f43ee` | ⚠️ Unaudited |
| ETHRefund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34af7d...ffb7b9` | ⚠️ Unaudited |
| FeederLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2837c7...4125de` | ⚠️ Unaudited |
| FeederManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90ae54...0abd8b` | ⚠️ Unaudited |
| FeederPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x48c591...2c4ba7`; ethereum `0xbb128b...060c64` | ⚠️ Unaudited |
| FeederPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x62aa1d...9e063c`; ethereum `0x9ab586...8c90e2` | ⚠️ Unaudited |
| FeederPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa88328...22b9ea`; ethereum `0xb61a6f...4921e0` | ⚠️ Unaudited |
| FeederPoolV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x4fb30c...90752d`; ethereum `0xfe842e...1381c6` | ⚠️ Unaudited |
| FeederWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc6611...9f3a35` | ⚠️ Unaudited |
| Fixed192x64Math | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75a6d6...3805f3` | ⚠️ Unaudited |
| ForgeValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4ca912...138ded`; ethereum `0xbb90d0...12eaa1` | ⚠️ Unaudited |
| IncentivisedVotingLockup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae8bc9...a0e1bf` | ⚠️ Unaudited |
| InterestValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x98c54f...f7ba0e`; ethereum `0xf1049a...ff3262` | ⚠️ Unaudited |
| InvariantValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xca480d...e7d705`; ethereum `0xd36050...0f2f3f` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x87a59a...449b01`; ethereum `0x8bd8ec...e093cc`; ethereum `0xb7c77d...0d5b9d` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe595d6...1f1dbd` | ⚠️ Unaudited |
| LMSRMarketMakerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37186b...256c4b` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e91f8...188848` | ⚠️ Unaudited |
| Masset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x69ad13...2b587f`; ethereum `0xb83a5a...686f7e`; ethereum `0xe0d0d0...3df1c4`; ethereum `0xe4c5b1...a7668e` | ⚠️ Unaudited |
| MassetBtcV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x945fac...7330a1` | ⚠️ Unaudited |
| MassetRedemptionValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7e41f...9d5944` | ⚠️ Unaudited |
| MassetValidationHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4c5e03...eac89b`; ethereum `0xabcc93...c16911` | ⚠️ Unaudited |
| MerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6e53b...9bc7a5` | ⚠️ Unaudited |
| MetaToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3bed4...e9acd2` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda681d...df9001` | ⚠️ Unaudited |
| MStableHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe15aad...f6e8a3` | ⚠️ Unaudited |
| MStableVoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x10d96b...585a6e`; ethereum `0x7c4cf0...a5c78e` | ⚠️ Unaudited |
| MusdV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15b283...945aee` | ⚠️ Unaudited |
| MusdV3_deprecated | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe2f2a5...5935a5` | ⚠️ Unaudited |
| Nexus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafce80...845eb3` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x07ed32...e7fb5e`; ethereum `0x3cd782...ace0c0`; ethereum `0xc8451d...d79cc6` | ⚠️ Unaudited |
| PSYieldContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x057657...d36eca` | ⚠️ Unaudited |
| ReserveBuyBackLimit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40da0d...286477` | ⚠️ Unaudited |
| RevenueRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa78242...14fed5`; ethereum `0xffe2cd...6b6bec` | ⚠️ Unaudited |
| RewardClaimHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8be71...ae4316` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04dfdf...916c50` | ⚠️ Unaudited |
| SaveWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7cb157...270eb9`; ethereum `0xd7c346...09dcad` | ⚠️ Unaudited |
| SavingsContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1c728f...572a39`; ethereum `0x3563cb...0b2bf8`; ethereum `0xcf3f73...b2c2a1` | ⚠️ Unaudited |
| SavingsContract_imbtc_mainnet_22 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x17d8cb...7a6c24` | ⚠️ Unaudited |
| SavingsContract_imusd_mainnet_22_deprecated | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x30647a...7eac19` | ⚠️ Unaudited |
| SavingsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x6f0566...e07d3f`; ethereum `0x7046b0...815370`; ethereum `0x7594ae...e46136`; ethereum `0x84e563...2ee6d1`; ethereum `0x9781c4...b6b301`; ethereum `0xcefcbb...50234f` | ⚠️ Unaudited |
| SimpleAirdropper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda13e3...b178fd` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0d4cd2...f94be4`; ethereum `0x6de3a9...651fb5`; ethereum `0x9b4aba...6c9a6f`; ethereum `0xe6e6e2...a1d261` | ⚠️ Unaudited |
| StakingRewardsWithPlatformToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x259702...ad4e70`; ethereum `0x881c72...790c80`; ethereum `0xf4a7d2...f7f027`; ethereum `0xf7575d...baa7fb` | ⚠️ Unaudited |
| StrategyMStableVaultFpMbtcHbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x54d06a...f603f3` | ⚠️ Unaudited |
| StrategyMStableVaultImbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd409c5...06d30a` | ⚠️ Unaudited |
| TimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75dae1...ab1478` | ⚠️ Unaudited |
| TimelockManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x41ab01...ba1f03`; ethereum `0xfaef86...f02baa` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x18ccbc...69ec79`; ethereum `0xbd12eb...ae3fd0` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3af2ae...2157c9`; ethereum `0x5250b9...d8ae7d` | ⚠️ Unaudited |
| YieldContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x594900...56d353`; ethereum `0x90ef22...2a5f4f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (47)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08eee5...0affad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19f7f0...ee2973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a1bab...f96d6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bf9f7...290dfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25c676...64721f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25dd5b...f3da3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x321899...20efd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36f74b...95ec9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4186c5...17f287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x423998...5a6671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47a38c...335a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x539c54...6d81fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ca061...65b7ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60cbf3...fad4d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x657bd4...428ef9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241063 | `0x6f4008...aa841f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241064 | `0x7d071f...5cd457` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x880d95...006788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9827b8...6b5883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d066c...48a673` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241065 | `0xa1c956...07e68a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa20f2a...66dca6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241066 | `0xa3b3fb...e4ce9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa64d0b...aa20f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa05a0...dec8bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1dba9...4cdacd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd88e1...3c6bdb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241067 | `0xcddb32...8d2636` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4a510...85b102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7b94f...bd8b44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf4482...973d20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe290c1...3c5c81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe97b78...8a9114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeaa5a2...d6d709` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241068 | `0xed4d05...8d1761` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef2abc...9a4af9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf02391...7388b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-4 | unit-241074 | `0x0a7a7e...6e8ce3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-4 | unit-241075 | `0x0d47d0...cddbcb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-4 | unit-241076 | `0x5c4c6b...6e2fea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-4 | unit-241077 | `0x7be8d0...b1f8e6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-4 | unit-241078 | `0xc576ea...a34de2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241069 | `0x048e53...5495cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241070 | `0x25b063...e26313` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241071 | `0x51138a...6bfb64` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241072 | `0x57e6b9...d88f91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241073 | `0xa18c8f...46e1a5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Exchange_audit_report.pdf](https://github.com/gnosis/dex-contracts/blob/master/Exchange_audit_report.pdf) | unknown | Audit | 2020-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20631] Exchange_audit_report.pdf — no match: Scope section lists files; contract names extracted from file paths.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Exchange_audit_report.pdf | TokenConservation | unmatched — not counted | — | listed in scope | no |
| Exchange_audit_report.pdf | BatchExchange | ambiguous — not counted | 0x6f4008… (alternative) `0x6f4008...aa841f` — liveness: live (current_address_book_code)<br>0x25b063… (alternative) `0x25b063...e26313` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Exchange_audit_report.pdf | DevDependencies | unmatched — not counted | — | listed in scope | no |
| Exchange_audit_report.pdf | EpochTokenLocker | unmatched — not counted | — | listed in scope | no |
| Exchange_audit_report.pdf | IdToAddressBiMap | ambiguous — not counted | 0x048e53… (alternative) `0x048e53...5495cb` — liveness: live (current_address_book_code)<br>0xed4d05… (alternative) `0xed4d05...8d1761` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Exchange_audit_report.pdf | IterableAppendOnlySet | ambiguous — not counted | 0xcddb32… (alternative) `0xcddb32...8d2636` — liveness: live (current_address_book_code)<br>0x57e6b9… (alternative) `0x57e6b9...d88f91` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Exchange_audit_report.pdf | TokenOWL | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 79 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 47 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20631] Exchange_audit_report.pdf

Fork inheritance lineage and inherited audits are included when available.
