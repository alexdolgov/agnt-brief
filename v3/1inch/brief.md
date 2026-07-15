# Agentic Audit Brief: 1inch

## Export Authority

- Production state: **published scope**
- Raw selected rows: 7 across 7 audit(s)
- Eligible audit results: 145 (7 matched; 138 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 22.4% over 90 days

## Project Overview

- Project: 1inch (`1inch`)
- Website: [https://1inch.com](https://1inch.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, zksync-era
- Contract surface: 390 unique implementations (969 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,274,711.87
- On-chain TVL (included contracts): $16,092,203.53
- TVL by chain: Ethereum $16,092,203.53

## Project Description

This brief describes the observed EVM deployment and audit surface for 1inch. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc, ethereum, zksync-era. Structural roles: 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: ownable (1), pausable (1)
- Frameworks: openzeppelin (1), permit2 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6fd438...d561ff`, chain 324)
- AggregationRouterV6 (`0x111111...842a65`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 388 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 24
- Confirmed-live implementations: 2 of 390 unique; 388 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/115
- Verified + Unaudited implementations: 114
- Verified by bytecode match: 0
- Unverified implementations: 275
- Unique implementations: 390
- Raw deployments: 969
- Audits discovered: 145 (145 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 8 fresh, 24 aging, 111 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 100.0% (ConsenSys Diligence, OpenZeppelin)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Consensys | Tier 1 | 1 | 0.9% | 2024-07 |
| Decurity | Tier 2 | 1 | 0.9% | 2025-08 |
| Hexens | Tier 2 | 1 | 0.9% | 2025-08 |
| OpenZeppelin | Tier 1 | 1 | 0.9% | 2025-08 |
| Pessimistic | Tier 2 | 1 | 0.9% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AggregationRouterV6 | adapter | project_anchor | own_supporting | 0 | ethereum | unit-378314 | `0x111111...842a65` | ✅ Audited |

### ⚠️ Verified + Unaudited (114)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MiniMeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x53f2ea...c7a793`; ethereum `0xcd62b1...80b184`; ethereum `0xf60e55...ceab44` | ⚠️ Unaudited |
| HolyToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x11777d...10daab`; ethereum `0x39eae9...1a6e09`; ethereum `0xa59b00...17cf4e` | ⚠️ Unaudited |
| HolyPoolV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1e7062...efdb58`; ethereum `0xaf9854...523719` | ⚠️ Unaudited |
| MoverToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3fa729...d5324c`; ethereum `0xb05e8d...2203a5` | ⚠️ Unaudited |
| HolyValorYearnUSDCVaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xfa9ba2...184e61` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1fac81...b8e755`; ethereum `0x6ad299...1c48b4`; ethereum `0xbb2390...b123ad` | ⚠️ Unaudited |
| AggregationRouterV6 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x111111...842a65` | ⚠️ Unaudited |
| CEOofMoneyNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c4075...2e4411` | ⚠️ Unaudited |
| CrosschainWhitelistRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe8934...1b1201` | ⚠️ Unaudited |
| CumulativeMerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb68655...2d9548`; ethereum `0xee262a...4dafaf` | ⚠️ Unaudited |
| DAPFToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb9284...8ea677` | ⚠️ Unaudited |
| Dice | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa60184...080456`; ethereum `0xb75ace...99edd2` | ⚠️ Unaudited |
| EscrowFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa7bcb4...ddf99a`; bsc `0xa7bcb4...ddf99a` | ⚠️ Unaudited |
| EvmHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x77340c...d5f91c`; bsc `0xb97cd6...f17afb` | ⚠️ Unaudited |
| ExchangeGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: ethereum `0x32d12a...fc9df8`; ethereum `0x544319...46690f`; ethereum `0xb2b418...f9c7d9`; ethereum `0xb33839...4d110d`; ethereum `0xd5c5c4...2c93ef`; bsc `0x13927a...5d2106`; bsc `0x2a7169...92ab38`; bsc `0xccf6b1...6686fb` | ⚠️ Unaudited |
| FarmingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 44 deployments: ethereum `0x0da1b3...5437e6`; ethereum `0x1055f6...7415fa`; ethereum `0x13927a...5d2106`; ethereum `0x18d410...4f4560`; ethereum `0x2cb9e7...b4182f`; ethereum `0x2ec255...48ffba`; ethereum `0x2ede37...d25de8`; ethereum `0x302a6e...986677`; ethereum `0x322e22...3c2d4c`; ethereum `0x3eb586...2b640d`; ethereum `0x483715...8640fa`; ethereum `0x4dab1b...b9c45e`; ethereum `0x598032...2ec9f0`; ethereum `0x73f5e5...ec465e`; ethereum `0x7cb203...1ca356`; ethereum `0x7ded1b...890e95`; ethereum `0x8acdb3...376fe8`; ethereum `0x8b1af1...7521e5`; ethereum `0x8ba0ef...b9761b`; ethereum `0x907083...3eabd9`; ethereum `0x94bc2a...08734f`; ethereum `0x950a94...0e9257`; ethereum `0x98484d...f00ae6`; ethereum `0xa21854...a82155`; ethereum `0xa355b4...fbc51b`; ethereum `0xa83fce...9339e8`; ethereum `0xafea56...5e500d`; ethereum `0xb54fc9...ed3ce7`; ethereum `0xc1e160...ac6df5`; ethereum `0xc7c42e...01d388`; ethereum `0xc84dcd...23f6eb`; ethereum `0xca6e3e...69f2a7`; ethereum `0xd7012c...5a3f52`; ethereum `0xd79360...108480`; ethereum `0xe0c701...a3596e`; ethereum `0xe22f6a...99703e`; ethereum `0xe49055...0d9583`; ethereum `0xe65184...64a240`; ethereum `0xeb7dbc...21eacd`; ethereum `0xfbd61b...c2c550`; bsc `0x5d0ec1...4d71ef`; bsc `0x7731f8...82f697`; bsc `0x8b01d2...122fb2`; bsc `0xcb06df...da85b1` | ⚠️ Unaudited |
| FarmingVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11a550...6b09dc` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2359ab...e58dda` | ⚠️ Unaudited |
| FeeTaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c30a1...8ee401` | ⚠️ Unaudited |
| FixedFeeSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0115d0...814043`; ethereum `0xc61f21...300637` | ⚠️ Unaudited |
| FixedRateSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x27fe0f...8e64f3`; ethereum `0x40bbde...4b0bb4`; ethereum `0x92b384...9ddcd1`; bsc `0xa83fce...9339e8`; bsc `0xd9c696...64ae96` | ⚠️ Unaudited |
| FulcrumWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf971ff...a9073c` | ⚠️ Unaudited |
| FulcrumWrapperLegacy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5335e0...def60c` | ⚠️ Unaudited |
| GovernanceFeeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dfa40...609af4` | ⚠️ Unaudited |
| GovernanceMothership | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xa0446d...42caba`; bsc `0x73f0a6...3e799d` | ⚠️ Unaudited |
| GovernanceRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0f85a9...54b594`; bsc `0x59a0a6...063ade`; bsc `0x735247...31295f` | ⚠️ Unaudited |
| HHToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62d4f5...b8d7b5` | ⚠️ Unaudited |
| HHTokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedfd04...3fc6ca` | ⚠️ Unaudited |
| HolderVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0811ad...913c12`; ethereum `0xffe680...dde5a3` | ⚠️ Unaudited |
| HolyHand | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e6097...944770` | ⚠️ Unaudited |
| HolyHandV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x038f4f...f80fc7` | ⚠️ Unaudited |
| HolyHandV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14dae6...01e377` | ⚠️ Unaudited |
| HolyHandV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2504b6...80f1b8` | ⚠️ Unaudited |
| HolyHandV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7a55c...f10134` | ⚠️ Unaudited |
| HolyHandV5_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52c1e7...be2f2d` | ⚠️ Unaudited |
| HolyHandV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5ba57...8119fc` | ⚠️ Unaudited |
| HolyHandV7 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1ef7a5...7fda0e`; ethereum `0xd33d88...e1e1f3` | ⚠️ Unaudited |
| HolyPaladin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x26fb67...037fb3`; ethereum `0x4afe68...888e3c` | ⚠️ Unaudited |
| HolyPassageV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29f2a1...3ad4af` | ⚠️ Unaudited |
| HolyPassageV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x80179c...f61e91`; ethereum `0xf70fd0...39f407` | ⚠️ Unaudited |
| HolyPassageV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x39ac24...8ff5b3`; ethereum `0xc09d9d...bde363` | ⚠️ Unaudited |
| HolyPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1058fb...337051` | ⚠️ Unaudited |
| HolyRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2576c0...da361a`; ethereum `0x496599...25c6dd` | ⚠️ Unaudited |
| HolyVisor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x153dd4...5e8bd9` | ⚠️ Unaudited |
| HolyVisorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0c946c...627697`; ethereum `0x636356...5cda6c` | ⚠️ Unaudited |
| HolyWing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ea3e4...7d1d45` | ⚠️ Unaudited |
| HolyWingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9b986b...b8ace1`; ethereum `0xd5b323...50427b` | ⚠️ Unaudited |
| HolyWingV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbf944...a10198` | ⚠️ Unaudited |
| HumanitarianAidNFT | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xdb33de...ef0911`; ethereum `0xebfb3b...f41d8b` | ⚠️ Unaudited |
| KyberDmmOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xf74d3a...06f101`; bsc `0x2eea44...301e40` | ⚠️ Unaudited |
| LeftoverExchanger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: ethereum `0x18763f...5fc778`; ethereum `0x285e33...4105e3`; ethereum `0x89125b...f8af3f`; ethereum `0xe9f142...781b58`; bsc `0x080ab7...9b24d0`; bsc `0x4749b3...0fe8bc`; bsc `0x5500f4...55dc39`; bsc `0x8b1af1...7521e5` | ⚠️ Unaudited |
| LimitOrderProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: ethereum `0x119c71...2d2828`; ethereum `0x3ef517...ffe782`; ethereum `0xf667e1...3221a2`; bsc `0x0da1b3...5437e6`; bsc `0x1e38ef...bf6362`; bsc `0xe3456f...1b84eb` | ⚠️ Unaudited |
| LimitOrderProtocolPro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5349df...3346de` | ⚠️ Unaudited |
| Maverick2TickHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1666ef...11dcd4`; bsc `0x9fd3cc...d304d4` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x4ee7c0...92d5f5`; ethereum `0x97e40d...b8ab62`; ethereum `0xb5256c...5448c3`; ethereum `0xe295ad...088afe` | ⚠️ Unaudited |
| MerkleDrop128 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x518ddb...54c043`; ethereum `0x9ce614...e1b35d` | ⚠️ Unaudited |
| Migrations | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0f9abb...ac90cd`; ethereum `0x7e166b...f070ee` | ⚠️ Unaudited |
| Mooniswap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59a0a6...063ade` | ⚠️ Unaudited |
| MooniswapDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: ethereum `0xa31bb3...b3b28e`; ethereum `0xcb06df...da85b1`; bsc `0x11431a...117187` | ⚠️ Unaudited |
| MooniswapFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0xbaf9a5...3a9643`; ethereum `0xc4a8b7...5a148d`; ethereum `0xe1b8ff...dc04d3`; bsc `0xd41b24...83cd64` | ⚠️ Unaudited |
| MooniswapOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1488a1...fec25e`; ethereum `0x1ad5ed...b94097`; ethereum `0x30829f...41be1d` | ⚠️ Unaudited |
| MoverCEOCapNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x470373...f31bc6`; ethereum `0x802630...69ef70`; ethereum `0xf2bfa8...806267` | ⚠️ Unaudited |
| MoverNFT1 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa00942...23df5a` | ⚠️ Unaudited |
| MoverNFT1v2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x076974...a0aaa1`; ethereum `0xcf55b3...33da71` | ⚠️ Unaudited |
| MoverNFTSWS | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x129b90...c73701`; ethereum `0xc649a0...827534` | ⚠️ Unaudited |
| MoverOlympusNFT | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2733a7...f67f22`; ethereum `0x76dc7e...aaa409` | ⚠️ Unaudited |
| MoverUBTStakeNode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x00834e...d43753`; ethereum `0x8c1e98...274768` | ⚠️ Unaudited |
| MoverUBTStakeNodeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | ethereum | n/a | 7 deployments: ethereum `0x3f1256...26fb49`; ethereum `0x4690d1...4dad73`; ethereum `0x67686e...66cace`; ethereum `0x88e7e1...5f1ee8`; ethereum `0xb494c1...410450`; ethereum `0xd39f52...e77b88`; ethereum `0xd5f911...991526` | ⚠️ Unaudited |
| MoverUBTStakePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81cbc2...3f1f9e` | ⚠️ Unaudited |
| MoverUBTStakePoolV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1f15f2...dfeaff`; ethereum `0x61b3bb...4f183f` | ⚠️ Unaudited |
| MoverValorYearnUSDCv2VaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x541d78...9a18db` | ⚠️ Unaudited |
| MultiWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x931e32...0fe18c` | ⚠️ Unaudited |
| OffchainOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x07d91f...6893bb`; ethereum `0x080ab7...9b24d0`; ethereum `0x6d68d9...b831f1`; ethereum `0xcfd674...afded1`; ethereum `0xe3c6b9...829aa8`; bsc `0xe26a18...115edd`; bsc `0xfbd61b...c2c550` | ⚠️ Unaudited |
| OGShirtNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e0c98...e26fcb` | ⚠️ Unaudited |
| OneInch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x111111...20c302`; bsc `0x111111...20c302` | ⚠️ Unaudited |
| p1MToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1590c8...0223af` | ⚠️ Unaudited |
| PowerPod | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x806d90...7129e8`; ethereum `0x8dd297...3d1b9c`; ethereum `0xaccfac...b4f947`; ethereum `0xad9aeb...7792e3`; ethereum `0xdaf782...08fde9`; ethereum `0xeee4b3...448741` | ⚠️ Unaudited |
| PriorityFeeLimiter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e92d4...c7c912` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0f7615...360fff`; ethereum `0x9d2efa...c03466`; ethereum `0x9fc17a...87e532`; ethereum `0xca3391...fa5cce` | ⚠️ Unaudited |
| ReferralFeeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1cc617...d91b9d`; ethereum `0x2eea44...301e40`; ethereum `0x735247...31295f`; ethereum `0xf5ab9b...0bb538`; bsc `0x29bc86...882c22` | ⚠️ Unaudited |
| ResolverMetadata | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x2031a8...2792fd`; ethereum `0x755585...85610e`; ethereum `0x9c6883...49e15d`; ethereum `0xa18d49...bf2097`; ethereum `0xbf4543...90a58a`; ethereum `0xf18293...a1434f` | ⚠️ Unaudited |
| SeriesNonceManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: ethereum `0x2dadf9...df01aa`; ethereum `0x303389...b28e10`; bsc `0x1488a1...fec25e`; bsc `0x58ce0e...2ee2e4` | ⚠️ Unaudited |
| Settlement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x0634db...eb01a3`; ethereum `0x2ad500...b51ef5`; ethereum `0x5e918e...a2e335`; ethereum `0x62c142...96e69c`; ethereum `0x8273f3...a25d9c`; ethereum `0xa515e1...f4cc0f`; ethereum `0xa88800...b47647`; ethereum `0xac3225...715fdb`; ethereum `0xf4f4d1...2364bf`; bsc `0x1d0ae3...c7ac63`; bsc `0xadc1eb...be3648` | ⚠️ Unaudited |
| SignatureMerkleDrop128 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x153818...aaf79e`; ethereum `0x25ac81...4c2c77`; ethereum `0x64c671...df2680`; ethereum `0x6b7c8e...cdb261`; ethereum `0x7749eb...21cbe1`; ethereum `0x9bd9e0...5bdb69`; ethereum `0xa1df96...f91107`; ethereum `0xa2286c...ecfec6`; ethereum `0xc5a113...e42311`; ethereum `0xc890d5...71555a`; ethereum `0xe02469...26638f`; ethereum `0xe45007...a550cf`; ethereum `0xecd2f9...b212f9`; bsc `0x8dc76c...ea7292` | ⚠️ Unaudited |
| SmartTreasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedb2f4...ec6554` | ⚠️ Unaudited |
| SmartTreasuryFragmentPWC | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa8afb8...9a2e68`; ethereum `0xf5d7bd...de157d` | ⚠️ Unaudited |
| SmartTreasuryV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb63aee...7f3452` | ⚠️ Unaudited |
| SmartTreasuryV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcd791...2601ef` | ⚠️ Unaudited |
| SmartTreasuryV3_1 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c16bb...2813fa` | ⚠️ Unaudited |
| SmartTreasuryV4 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x47795a...c28315`; ethereum `0x94f748...4c960f` | ⚠️ Unaudited |
| St1inch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x03e93b...342241`; ethereum `0x0fd0c5...62bcf1`; ethereum `0x9a0c8f...7501d7` | ⚠️ Unaudited |
| St1inchPreview | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x069f63...5a7f83`; ethereum `0x45c2a2...8d09a4`; ethereum `0x722e14...446905` | ⚠️ Unaudited |
| StakingFarmingPod | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1a87c0...0260be`; ethereum `0x83c156...2ef27a` | ⚠️ Unaudited |
| StepVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 376 deployments: ethereum `0x003ea5...b05f30`; ethereum `0x009f54...1fe49a`; ethereum `0x0127d6...b09548`; ethereum `0x01e4b3...486846`; ethereum `0x035a2b...cdef14`; ethereum `0x06af18...718da7`; ethereum `0x06c49c...b3f391`; ethereum `0x07eb0d...1320b4`; ethereum `0x0820e5...5acd42`; ethereum `0x0880a0...b3ea1a`; ethereum `0x088763...9df908`; ethereum `0x091ab6...268f72`; ethereum `0x09a8e8...a697a1`; ethereum `0x0a0747...3fbc45`; ethereum `0x0a47c9...a1b52e`; ethereum `0x0a5fa4...3e2f6a`; ethereum `0x0a678d...5ff4b0`; ethereum `0x0ac6ff...a013ab`; ethereum `0x0c0538...86e55d`; ethereum `0x0da1fc...d139c0`; ethereum `0x0ec26f...c08dae`; ethereum `0x0f66df...3b366e`; ethereum `0x103bf8...3a31d6`; ethereum `0x116f04...578ef5`; ethereum `0x1217f2...1d4cc8`; ethereum `0x12a02b...f3acc8`; ethereum `0x135c8c...a24a93`; ethereum `0x13a283...50f8b2`; ethereum `0x13bed7...13165d`; ethereum `0x13f25f...b75714`; ethereum `0x13fb4f...005cdb`; ethereum `0x15daa6...2ec8d2`; ethereum `0x1632af...15d3c1`; ethereum `0x16be52...f0574d`; ethereum `0x1707e0...6ed297`; ethereum `0x177f86...3720ef`; ethereum `0x17d112...bb4146`; ethereum `0x1816cd...a17cb4`; ethereum `0x196937...5b2551`; ethereum `0x1b548b...c34bec`; ethereum `0x1c2947...bf9468`; ethereum `0x1c30bc...987905`; ethereum `0x1d4805...7edd9a`; ethereum `0x1dd6cb...b433e9`; ethereum `0x1e00e6...a36753`; ethereum `0x1e2064...696b8a`; ethereum `0x1f83c3...477354`; ethereum `0x1fb2f2...57a4b4`; ethereum `0x2013e6...e9e4a8`; ethereum `0x204165...9cbea9`; ethereum `0x2046ab...fc274c`; ethereum `0x20fd6f...3495d9`; ethereum `0x211ba5...277837`; ethereum `0x215603...a7b0e8`; ethereum `0x218d06...60c31e`; ethereum `0x21c69f...cc0493`; ethereum `0x24029d...d5f796`; ethereum `0x24a262...475b27`; ethereum `0x24cb49...57ca5f`; ethereum `0x24e9de...6ad3b0`; ethereum `0x25149f...fc3f8e`; ethereum `0x25ea4b...7f5787`; ethereum `0x261ec1...118a75`; ethereum `0x26a34f...fcc2c5`; ethereum `0x271136...48e329`; ethereum `0x27669f...d6125d`; ethereum `0x27e999...71eac5`; ethereum `0x2872aa...57829d`; ethereum `0x293c22...01b086`; ethereum `0x29c679...f9b1ea`; ethereum `0x2a2028...1cb1d1`; ethereum `0x2ad08a...d922ee`; ethereum `0x2be171...680129`; ethereum `0x2c6358...70df71`; ethereum `0x2da3ad...e75cb9`; ethereum `0x2e03e4...5c7b34`; ethereum `0x2e25be...cd3d1d`; ethereum `0x2ea4b8...cfcb21`; ethereum `0x2ef848...a1a2fb`; ethereum `0x2f273d...572111`; ethereum `0x2f5cb4...09b757`; ethereum `0x2fae47...48de1b`; ethereum `0x2fb07f...c8baf4`; ethereum `0x2fde74...e3ffc9`; ethereum `0x2ff244...f72bc7`; ethereum `0x3053c0...027b19`; ethereum `0x30d7a5...637797`; ethereum `0x31d2bc...00607d`; ethereum `0x321c03...efc386`; ethereum `0x32757d...e63a45`; ethereum `0x330410...826d24`; ethereum `0x33a2d5...6ffbe1`; ethereum `0x34dd2b...5a4d14`; ethereum `0x35a88e...744c7b`; ethereum `0x35d668...391a6b`; ethereum `0x36179c...247780`; ethereum `0x3755f2...86356d`; ethereum `0x375640...a4ddb1`; ethereum `0x38240b...0ccb7a`; ethereum `0x38ff58...2e0823`; ethereum `0x3a3f0c...3c1063`; ethereum `0x3c081d...73bf1f`; ethereum `0x3c98cd...4d8b1b`; ethereum `0x3eea61...ccff19`; ethereum `0x401d20...fe76b6`; ethereum `0x40bfc3...d5742b`; ethereum `0x42324a...6bfd75`; ethereum `0x4314db...c68045`; ethereum `0x434f5a...0a00fa`; ethereum `0x445b5f...ff27f4`; ethereum `0x449f03...ceeb96`; ethereum `0x451ab1...ea4775`; ethereum `0x455525...62b457`; ethereum `0x46f6bb...e38714`; ethereum `0x4826e0...768469`; ethereum `0x482897...58255c`; ethereum `0x494e56...1b9e6b`; ethereum `0x49ddd2...091659`; ethereum `0x4a2d44...3da304`; ethereum `0x4a35e5...bc9b6b`; ethereum `0x4cd383...4cd502`; ethereum `0x4d6692...c62194`; ethereum `0x4d8c1e...0c3845`; ethereum `0x4eea9f...7bd7b1`; ethereum `0x4fd984...28c411`; ethereum `0x500ee3...479860`; ethereum `0x5012a4...fb3326`; ethereum `0x502fd7...98a0fd`; ethereum `0x50980e...88e958`; ethereum `0x51e053...4f9040`; ethereum `0x51f9a1...bf1a65`; ethereum `0x532f1b...a706f9`; ethereum `0x5393a1...d6de9d`; ethereum `0x53aca5...96eedd`; ethereum `0x54534c...110475`; ethereum `0x54620d...259ea0`; ethereum `0x55d311...ad2b50`; ethereum `0x56217d...0598d7`; ethereum `0x572a53...987980`; ethereum `0x576181...7cbc4f`; ethereum `0x578813...83f9bb`; ethereum `0x5816a3...88fc2c`; ethereum `0x58f858...32d39a`; ethereum `0x5928b7...11c61c`; ethereum `0x59d8e2...0296d5`; ethereum `0x5a214a...4867f3`; ethereum `0x5a8fa0...ede4c6`; ethereum `0x5ce16e...8cb91d`; ethereum `0x5ce550...dbd96f`; ethereum `0x5dadbd...1e46dd`; ethereum `0x5f08b2...133236`; ethereum `0x5f30da...d814d2`; ethereum `0x5fcfcb...a414f6`; ethereum `0x6140ae...f73358`; ethereum `0x63b7c4...8f6214`; ethereum `0x650589...b75e6a`; ethereum `0x651cdc...921c93`; ethereum `0x6717f2...2e4fc5`; ethereum `0x67624c...7cb3c5`; ethereum `0x694d50...5a52f8`; ethereum `0x69804f...f33c13`; ethereum `0x698d3d...a8f994`; ethereum `0x6b3c64...419e5d`; ethereum `0x6b4a1d...6f9920`; ethereum `0x6c8caf...ebd816`; ethereum `0x6cb472...d1116d`; ethereum `0x6da358...2d910d`; ethereum `0x6dc428...3800ba`; ethereum `0x6e8d01...77442f`; ethereum `0x70888b...e096b9`; ethereum `0x70b341...fb5dc9`; ethereum `0x72d0a7...3ac230`; ethereum `0x732c8d...a90e61`; ethereum `0x73a30f...e19ab7`; ethereum `0x73a81b...f052bf`; ethereum `0x76b8b5...665312`; ethereum `0x783082...095e18`; ethereum `0x785cf0...fa317f`; ethereum `0x78c425...a6933a`; ethereum `0x794bd4...81079b`; ethereum `0x794c47...c9ab7e`; ethereum `0x798da0...cf320d`; ethereum `0x79febd...460f81`; ethereum `0x7af3c6...276562`; ethereum `0x7c9662...b8926a`; ethereum `0x7cf86c...2efbe6`; ethereum `0x7df428...ab18b8`; ethereum `0x7dfdbb...e5793b`; ethereum `0x7e7300...a3b02f`; ethereum `0x7e979e...d4e40b`; ethereum `0x7ebe87...8f1a6a`; ethereum `0x7f0772...33c02f`; ethereum `0x811e1f...8c9349`; ethereum `0x819071...787ab4`; ethereum `0x8598f5...ebaebc`; ethereum `0x873ef5...1f7263`; ethereum `0x873ff4...8c3162`; ethereum `0x8a410a...d9c0c8`; ethereum `0x8a7f32...07fa7e`; ethereum `0x8a8fb1...734a38`; ethereum `0x8aebe3...765412`; ethereum `0x8b5995...ebff61`; ethereum `0x8b90f6...e56ee3`; ethereum `0x8bf0b1...b9246a`; ethereum `0x8d877f...95a07d`; ethereum `0x8de929...731b95`; ethereum `0x8e0c26...952ad5`; ethereum `0x8e12c2...43ea79`; ethereum `0x8ee131...b49e43`; ethereum `0x8f1b1d...055462`; ethereum `0x92a77c...57d1e8`; ethereum `0x92fb71...09e6f7`; ethereum `0x942488...4b0f07`; ethereum `0x943988...864047`; ethereum `0x94b14c...509409`; ethereum `0x956258...3d0df4`; ethereum `0x95b12e...3a0006`; ethereum `0x95e4ea...0d670b`; ethereum `0x960bbe...dee8fd`; ethereum `0x97cdd3...2730a6`; ethereum `0x980f36...d29170`; ethereum `0x9851bf...f59844`; ethereum `0x99398c...1809d1`; ethereum `0x99c32e...f24beb`; ethereum `0x99ffa8...2df71b`; ethereum `0x9a24b6...8963a8`; ethereum `0x9af2f9...e2f46d`; ethereum `0x9b8fc2...52ccd6`; ethereum `0x9c5972...277213`; ethereum `0x9cbe10...b2f36b`; ethereum `0x9e0caa...eb5037`; ethereum `0x9f3c7b...4d10de`; ethereum `0x9fc80e...a3990e`; ethereum `0xa0daab...b3ef98`; ethereum `0xa1ac92...f69b36`; ethereum `0xa26175...d89cf6`; ethereum `0xa2ffae...05ad60`; ethereum `0xa349c7...e3d633`; ethereum `0xa3ca7c...b10f48`; ethereum `0xa52e8d...bff921`; ethereum `0xa65b82...4d45f8`; ethereum `0xa76a1a...5ef276`; ethereum `0xa77996...ec8ee2`; ethereum `0xa88643...5052eb`; ethereum `0xa8ccf2...c1c262`; ethereum `0xa8e7fc...293d10`; ethereum `0xa9d306...37795f`; ethereum `0xadf94f...e9afcc`; ethereum `0xae31b2...907dd5`; ethereum `0xaec4ab...3f94ac`; ethereum `0xaf0647...b3e65e`; ethereum `0xb0cdb9...9504d4`; ethereum `0xb0fde6...a99992`; ethereum `0xb1a2e8...b50874`; ethereum `0xb1b8b6...92e65d`; ethereum `0xb35ce5...f271d9`; ethereum `0xb39f50...e1589d`; ethereum `0xb4e4d7...27c005`; ethereum `0xb5ecaf...5f1dc9`; ethereum `0xb7286a...37536e`; ethereum `0xb83159...f52911`; ethereum `0xb93217...fb5faf`; ethereum `0xba7d79...588801`; ethereum `0xbc15e3...b31e09`; ethereum `0xbd3170...74016a`; ethereum `0xbda870...7ec74d`; ethereum `0xbddf91...4522d7`; ethereum `0xbecf1d...4ab955`; ethereum `0xbfa13e...edd787`; ethereum `0xbffb77...4b7a02`; ethereum `0xc01cf0...40ff8a`; ethereum `0xc061df...87513f`; ethereum `0xc0dfbe...2bdf1e`; ethereum `0xc1cb96...1322f3`; ethereum `0xc2175a...e415c4`; ethereum `0xc25b56...ccf120`; ethereum `0xc3016c...4bc6fc`; ethereum `0xc30685...8108f1`; ethereum `0xc41494...a56908`; ethereum `0xc425fd...41a209`; ethereum `0xc50fa5...2f628b`; ethereum `0xc554d4...9d2f6d`; ethereum `0xc5ea79...9c9f8d`; ethereum `0xc6b0fc...2628f3`; ethereum `0xc7650a...5674dc`; ethereum `0xc7818a...cabfa3`; ethereum `0xc7dfab...4dae12`; ethereum `0xc87065...4ca442`; ethereum `0xc8b514...74d389`; ethereum `0xc8e0bb...5b8cea`; ethereum `0xc98f4f...143abc`; ethereum `0xca64b6...fe894d`; ethereum `0xca98a0...80a77f`; ethereum `0xcaac73...c2b618`; ethereum `0xcad8f8...5755a6`; ethereum `0xcb945a...2348f7`; ethereum `0xcbc7af...20aa86`; ethereum `0xcc4122...f172ce`; ethereum `0xcc6a49...8d1b16`; ethereum `0xcca41c...bc94ef`; ethereum `0xcd4384...a99ad4`; ethereum `0xcdb884...d5aeb1`; ethereum `0xce08f8...030f59`; ethereum `0xce283d...badfcd`; ethereum `0xce4259...b7316c`; ethereum `0xce5f7e...fd7ce5`; ethereum `0xcfe117...0f875b`; ethereum `0xd18231...65c256`; ethereum `0xd21816...096985`; ethereum `0xd239ab...5ab0a0`; ethereum `0xd24536...2d5388`; ethereum `0xd2f29d...8c9d65`; ethereum `0xd37fe3...4aa416`; ethereum `0xd44293...2bf202`; ethereum `0xd47c24...866c9a`; ethereum `0xd4a6c7...75b7dd`; ethereum `0xd54706...356f60`; ethereum `0xd5c9b6...ed8b65`; ethereum `0xd619ec...e9f061`; ethereum `0xd631b1...fca5e0`; ethereum `0xd67832...e27075`; ethereum `0xd7fa3b...d6152e`; ethereum `0xd9b311...0f0704`; ethereum `0xda5cc7...2559a4`; ethereum `0xdb662a...9801d2`; ethereum `0xdc4fa1...93e592`; ethereum `0xdcdd91...f11988`; ethereum `0xdd1a6c...6b15a9`; ethereum `0xddad32...5df122`; ethereum `0xdde836...c3a3b5`; ethereum `0xddf6b6...97ad0b`; ethereum `0xde65b0...bc6b37`; ethereum `0xdeff4c...f734cf`; ethereum `0xe09634...2dd2b7`; ethereum `0xe15e24...70bf94`; ethereum `0xe17440...ff7607`; ethereum `0xe2bb28...39044c`; ethereum `0xe44c9a...13071c`; ethereum `0xe4cc35...164dd1`; ethereum `0xe523d0...f7f1f6`; ethereum `0xe75825...a87e45`; ethereum `0xe88b88...4495f2`; ethereum `0xeab3fa...855ed1`; ethereum `0xeb39e1...3580b6`; ethereum `0xec0043...f2108e`; ethereum `0xededb5...dc52f3`; ethereum `0xeeb100...111f71`; ethereum `0xeeef4f...a05413`; ethereum `0xef1c0d...0cd49e`; ethereum `0xf06e83...b939f4`; ethereum `0xf11741...b5545f`; ethereum `0xf24cba...a9e691`; ethereum `0xf3f04d...3635c0`; ethereum `0xf493cd...cf4c45`; ethereum `0xf51e64...ad4fa5`; ethereum `0xf55f2e...01bd68`; ethereum `0xf56af2...496c78`; ethereum `0xf7884a...50498e`; ethereum `0xf808a9...073f7e`; ethereum `0xf8b4a0...5f457d`; ethereum `0xf8d4ab...f5d859`; ethereum `0xf90e15...ed5325`; ethereum `0xf96aae...38845b`; ethereum `0xf9bc6b...72b03a`; ethereum `0xfa2175...dea27b`; ethereum `0xfa80f7...54cad7`; ethereum `0xfaa029...a78647`; ethereum `0xfbe5e6...a29e99`; ethereum `0xfca5cc...b07d48`; ethereum `0xfcd6fc...7cc870`; ethereum `0xfe149f...40a2fc`; ethereum `0xfe15be...f99da2`; ethereum `0xfed072...8b775c`; ethereum `0xff55aa...a30896`; ethereum `0xffb603...2e1e43`; ethereum `0xffd683...006b71` | ⚠️ Unaudited |
| SynthetixOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x19c23a...153a8a`; ethereum `0x4d4872...0be63d` | ⚠️ Unaudited |
| TimestampGetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x739d98...94c46d` | ⚠️ Unaudited |
| TokenMock | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5ab9b...0bb538` | ⚠️ Unaudited |
| TORN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77777f...6a116c` | ⚠️ Unaudited |
| TraderJoeHelper_v2_1 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf39702...9b78cf` | ⚠️ Unaudited |
| USD1Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x199921...1e2e7f` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0a95c...90631c` | ⚠️ Unaudited |
| VaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0b7438...9689e3`; ethereum `0x96aa3b...3e815a` | ⚠️ Unaudited |
| VestedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03d1b1...6a16d2` | ⚠️ Unaudited |
| VestedVotingPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x19bcba...a041e3`; ethereum `0xba978b...ae02b3`; ethereum `0xfb7246...c4677c` | ⚠️ Unaudited |
| VestingValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0df9a5...a6f942`; ethereum `0x4275ca...229986`; ethereum `0x439130...8c86a1`; ethereum `0xfe9dcc...295b17` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf81c77...ceee88` | ⚠️ Unaudited |
| WethUnwrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x08b067...628b06`; ethereum `0x1282d0...82437b`; ethereum `0x21f818...e9418f`; ethereum `0x8290db...d6605e`; ethereum `0xa18651...1866dc`; bsc `0x0eee00...63e7e4`; bsc `0x787944...93678c`; bsc `0xdb4056...72078f` | ⚠️ Unaudited |
| WhitelistChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x32921c...16e4ef`; ethereum `0x40a04c...b19367`; ethereum `0x9a1cb3...3c93d6` | ⚠️ Unaudited |
| WhitelistHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x1ad2ae...6d3963`; ethereum `0x441619...4a5c54`; ethereum `0x8c3e43...26a2fa`; ethereum `0xb61c79...79c96d`; ethereum `0xf6b000...ae4a93`; ethereum `0xf779bd...65642d` | ⚠️ Unaudited |
| WhitelistRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x105bc5...e53aa7`; ethereum `0x8797c2...9efad5`; ethereum `0xa49ecb...461a0b`; ethereum `0xbcf2e5...21fbcb`; ethereum `0xcb8308...e5cc77`; ethereum `0xd64134...5093b0`; ethereum `0xf55684...e45e26` | ⚠️ Unaudited |
| WhitelistRegistrySimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x52096d...50eebd`; ethereum `0xac8d32...ce4f35`; ethereum `0xfc0e24...aba83b` | ⚠️ Unaudited |
| Yobitcoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dcae4...8e96ac` | ⚠️ Unaudited |
| YVaultWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ff110...c6eaf8` | ⚠️ Unaudited |
| Zedxion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbc4f3...9a9341` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (275)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02f56b...30d265` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03d0ab...863151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x047891...7b40ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x063a5d...9cc087` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075c42...9fea85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x081d5b...47266c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09483f...c29990` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b3f6d...c0dbda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bf16c...bb33c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f4d99...e29e99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1040ad...15e936` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1136b2...173ce4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11cb4a...c42cd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x129925...d217ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12e427...53b678` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x153eff...dd445f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15a3c2...3de233` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15a57d...2a63bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x168d49...656d41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18acf2...25ef6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18bcfc...b50b1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19ea2e...e0797b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d68da...4d6fa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ecd10...2ada97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2057cf...e7189a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2086cc...b739f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20d83a...16db4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21c83b...19f6ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2207f0...7ddbf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x220bda...2196d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x228fb0...20f112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22c7e7...25c344` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25af92...690756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x272395...5b1fd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x288931...2b9fef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29142e...df6f81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x298a51...b807b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a037b...bded55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b6e7f...de076e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c26cc...8f3b74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d96fd...a59a39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e5748...4d5f11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30dcf9...c97901` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x320868...b7d4f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3451b6...a1e812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35ea38...28ab15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39f2bc...9f76bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a78de...564c72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b1705...a978f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c3f3c...8c7c19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c9696...59fe60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d75b3...b4909b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e430c...158e37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e7751...59f092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4487cc...a47caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x449c9d...e27c48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4aaffc...bdf8e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c5f47...5e8e6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cbb5f...4dc884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d8f74...91533c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4da45f...e32365` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e5622...6f6881` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521aba...eabfc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x532224...e63f20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54fc51...a3dbe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57eaec...c87ba2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58730a...7a20cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58e156...913f1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5acc37...2c3e77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5deb3f...b0982f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x609262...233741` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x611207...32538c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62c9c2...45ace9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x673e8e...d3c4a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aa7a8...94d0c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e9746...d4f127` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x702fb6...e68d7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7122db...fbd0e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x720b9b...5b670e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74f332...b15763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76d299...9927c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x772418...b14775` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x777c7f...9d2fb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78ff2e...c51045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x794e56...ef3103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b5396...98a7a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c327e...5a0c04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c6ce2...a33f42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d8e61...272331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f22fc...20422b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80833e...2e5e70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84ab1d...2c9f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84d99a...c4e9b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8607bc...73e186` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88d674...0f0b17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88e417...87f6eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b1ac2...906a51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b4f62...8f7027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x910b9b...f26021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92f3f7...f33588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94a68d...1e6c1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94dadd...b5e36c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x989c41...22a00d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9942e9...ac061d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x994380...f55ced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99edd1...46f33d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ad44a...62723d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b934b...797ed3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cea17...b8f756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2e955...b00261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa77c88...37bbc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7cd98...3aa308` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8418d...698a65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa5ad0...3cc222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaffdd3...999d95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb712e4...72ddf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb71cce...45bdba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7b2a7...32393a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8a335...8aae22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbae79c...87c8e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd74ec...d36e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf683b...8b525a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc17676...8ae09c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1cbfc...a10c76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2c3f8...c5dd17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6f9b1...cdddbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb13e9...4f895d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc0333...544d2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcccf7d...142c2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd9797...a268fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd01ecc...e8516b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0bae9...8e2866` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1821b...2dc76c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6a5ca...132ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6eedc...489495` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7304b...1c187e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7e1c8...9155e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8f177...13c7dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9ac77...ff162b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda63a3...524090` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda90ab...f548c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdab676...4f6c00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb38ae...ef5944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbe8fd...cfb727` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc9398...7b8be7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd3971...ab0536` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdebf89...1289cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdecf04...276140` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf660a...28d1bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0e294...0054a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe408d8...fd4269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5c375...b124b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe78794...c9507b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe872e6...510fea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe93f1a...9786a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea2a75...180fb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec193b...cefb0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee0ea8...910931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef3cff...673394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef6fa3...c18d4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf021f0...db19e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2445e...c38e37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf28b44...cb38be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2f400...b1b8a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf313b3...c4ec04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf37b9a...ae24e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4c0b8...5e6049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4fce3...60a4b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5903b...2a91b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf62678...f6884f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf62bb7...0a5681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6784f...7cbc8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf67b40...1e8a59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8439e...8595a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8a152...f1ce27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9088d...3fdbe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc79e9...529e35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd3dfb...540626` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd4875...38fcb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff0822...9baf5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05ad60...bea16f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06cc74...04105f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c10ea...0d84c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0dd29a...11168f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e6b88...f0008f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f85a9...54b594` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11523c...9e61cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11dee3...365d4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14831f...6e4353` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x170d2e...49ffa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18101a...e79e7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b4018...998421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e8ae0...9b8b9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f667d...5cfdea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x220b71...cbcdc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x230797...a38378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2403f8...36bbb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25b230...086521` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26bbe8...2e1279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2dfe49...40329f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ede37...d25de8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3169de...e0be11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x322e22...3c2d4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3436fd...2b96b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35df99...725af8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36d912...3b5251` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3790c9...868e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3eb586...2b640d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x403a94...a5cbd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x544319...46690f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56f9c3...f7b2e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d4e66...b83dcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5fdb07...cbd3e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64768a...c9872d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x672279...94a9ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6df58b...52fb9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ecacd...964331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78ff2e...c51045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f9e34...91403b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x826802...f6b5e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x84ab1d...2c9f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x851de4...400e76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x864a6a...e1a453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x875773...c5d39e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8789f0...dc86db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x878fd0...cb438b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x888888...65ec11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a75e9...9dca9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x907083...3eabd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x950a94...0e9257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98484d...f00ae6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c4350...ec0432` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0446d...42caba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0f3b1...b5a12d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa31bb3...b3b28e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3c7c4...1f019d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa7a9c...0f0a6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab4c21...26f591` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab6391...4c041a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab8bdf...9adbb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac383e...3de751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaea46a...41ad85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaec4a3...7ac68b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xafc12b...320baf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb13c19...8c4c27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2b418...f9c7d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb37689...72fc52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb482ce...521553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb63aae...3d10ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbaf9a5...3a9643` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0702e...6457b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0e626...60628b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1e160...ac6df5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc4368c...7ec6f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc603a0...ba6258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc66a8b...9f32ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7c42e...01d388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc92452...180d71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd143c...bc28fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd9797...a268fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcfd674...afded1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd0937e...d1491a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd79360...108480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd81214...f9be09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe2942b...c84202` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe295ad...088afe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3c6b9...829aa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5c375...b124b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe68018...200872` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe796d6...0031cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea7caf...f9d15c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed60f3...5595df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8a152...f1ce27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf94feb...314ef3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-378315 | `0x6fd438...d561ff` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [1inch Aggregation Router V5_ABDK Consulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_ABDK%20Consulting.pdf) | ABDK | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |
| [1inch Aggregation Router V5_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_CoinFabrik.pdf) | CoinFabrik | Audit | 2022-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [1inch Aggregation Router V5_Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Consensys.pdf) | Consensys | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |
| [1inch Aggregation Router V5_IgorGulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_IgorGulamov.pdf) | Igor Gulamov | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |
| [1inch Aggregation Router V5_MixBytes.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_MixBytes.pdf) | MixBytes | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |
| [1inch Aggregation Router V5_OpenZepplin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_OpenZepplin.pdf) | OpenZeppelin | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [1inch Aggregation Router V5_PeckShield.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_PeckShield.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [1inch Aggregation Router V5_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Pessimistic.pdf) | Pessimistic | Audit | 2022-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 15 | n/a |
| [1inch Aggregation Router V5_Statemind.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Statemind.pdf) | Statemind | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [1inch Aggregation Router V5_Zokyo.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Zokyo.pdf) | Zokyo | Audit | 2022-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [1inch Aggregation Router V6.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_Decurity.pdf) | Decurity | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [1inch Aggregation Router V6.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_Hexens.pdf) | Hexens | Audit | 2023-11 | stale | Direct | n/a | matched | 1 | 0 | 0 | 5 | n/a |
| [1inch Aggregation Router V6.1_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-12 | stale | Direct | n/a | matched | 1 | 0 | 0 | 3 | n/a |
| [1inch Aggregation Router V6.1_PeckShield.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_PeckShield.pdf) | PeckShield | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [1inch Aggregation Router V6.2_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Decurity.pdf) | Decurity | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [1inch Aggregation Router V6.2_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Hexens.pdf) | Hexens | Audit | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [1inch Aggregation Router V6.2_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Pessimistic.pdf) | Pessimistic | Audit | 2024-02 | stale | Direct | n/a | matched | 1 | 0 | 0 | 18 | n/a |
| [1inch Aggregation Router V6_Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Consensys.pdf) | Consensys | Audit | 2023-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 19 | n/a |
| [1inch Aggregation Router V6_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Decurity.pdf) | Decurity | Audit | 2023-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 18 | n/a |
| [1inch Aggregation Router V6_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Hexens.pdf) | Hexens | Audit | 2023-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 13 | n/a |
| [1inch Aggregation Router V6_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 5 | n/a |
| [1inch Aggregation Router V6_PeckShield.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_PeckShield.pdf) | PeckShield | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [1inch Aggregation Router V6_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Pessimistic.pdf) | Pessimistic | Audit | 2023-10 | stale | Direct | n/a | matched | 1 | 0 | 0 | 18 | n/a |
| [1inch Limit Order Protocol v4.1_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Limit%20Order%20Protocol%20v4.1_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [1inch Limit Order Protocol v4_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Limit%20Order%20Protocol%20v4_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [Certik - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Certik%20-%201inch%20v2%20Audit%20Report.pdf) | CertiK | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Chainsulting - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Chainsulting%20-%201inch%20v2%20Audit%20Report.pdf) | Chainsulting | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Coinfabrik - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Coinfabrik%20-%201inch%20v2%20Audit%20Report.pdf) | CoinFabrik | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Hacken - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Hacken%20-%201inch%20v2%20Audit%20Report.pdf) | Hacken | Audit | 2020-11 | stale | Direct | address | no match | 0 | 0 | 0 | 6 | high |
| [Haechi - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Haechi%20-%201inch%20v2%20Audit%20Report.pdf) | HAECHI | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [MixBytes - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/MixBytes%20-%201inch%20v2%20Audit%20Report.pdf) | MixBytes | Audit | 2020-11 | stale | Direct | address | no match | 0 | 0 | 0 | 5 | high |
| [Scott Bigelow - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Scott%20Bigelow%20-%201inch%20v2%20Audit%20Report.pdf) | Scott Bigelow | Audit | 2020-11 | stale | Direct | address | no match | 0 | 0 | 0 | 6 | high |
| [Slowmist - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Slowmist%20-%201inch%20v2%20Audit%20Report.pdf) | SlowMist | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Certik - 1inch v3 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V3/Certik%20-%201inch%20v3%20Audit%20Report.pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Gulamov - 1inch v3 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V3/Gulamov%20-%201inch%20v3%20Audit%20Report.pdf) | Igor Gulamov | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [MixBytes - 1inch v3 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V3/MixBytes%20-%201inch%20v3%20Audit%20Report.pdf) | MixBytes | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [1Inch Aggregation Router v4 Audit_MixBites.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1Inch%20Aggregation%20Router%20v4%20Audit_MixBites.pdf) | MixBytes | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [1inch Aggregation Router v4 Audit_ABDK.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_ABDK.pdf) | ABDK | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [1inch Aggregation Router v4 Audit_Chainsulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Chainsulting.pdf) | Chainsulting | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [1inch Aggregation Router v4 Audit_Coinfabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Coinfabrik.pdf) | CoinFabrik | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [1inch Aggregation Router v4 Audit_Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Consensys.pdf) | Consensys | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [1inch Aggregation Router v4 Audit_Igor Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Igor%20Gulamov.pdf) | Igor Gulamov | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [1inch Aggregation Router v4 Audit_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Pessimistic.pdf) | Pessimistic | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [1inch-cross-chain-swap-v1-AstraSec.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-AstraSec.pdf) | AstraSec | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [1inch-cross-chain-swap-v1-Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Consensys.pdf) | Consensys | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [1inch-cross-chain-swap-v1-Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Decurity.pdf) | Decurity | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [1inch-cross-chain-swap-v1-Igor Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Igor%20Gulamov.pdf) | Igor Gulamov | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [1inch-cross-chain-swap-v1-Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [1inch-cross-chain-swap-v1-Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Pessimistic.pdf) | Pessimistic | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [1inch-cross-chain-v2-Astrasec.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Astrasec.pdf) | AstraSec | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [1inch-cross-chain-v2-Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Consensys.pdf) | Consensys | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [1inch-cross-chain-v2-Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Decurity.pdf) | Decurity | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [1inch-cross-chain-v2-Igor Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Igor%20Gulamov.pdf) | Igor Gulamov | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 23 | n/a |
| [1inch-cross-chain-v2-Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2024-09 | aging | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [1inch-cross-chain-v2-Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Pessimistic.pdf) | Pessimistic | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [1inch Crosschain Fee v1.1_Certora.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Certora.pdf) | Certora | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [1inch Crosschain Fee v1.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Decurity.pdf) | Decurity | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [1inch Crosschain Fee v1.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Hexens.pdf) | Hexens | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [1inch Crosschain Fee v1.1_Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 13 | n/a |
| [1inch Crosschain Fee v1.1_Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Sherlock.pdf) | Sherlock | Contest | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 24 | n/a |
| [Fee flow v1-AstraSec.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-AstraSec.pdf) | AstraSec | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Fee flow v1-Bailsec.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Bailsec.pdf) | Bailsec | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Fee flow v1-ChainLight.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-ChainLight.pdf) | ChainLight | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Fee flow v1-Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Decurity.pdf) | Decurity | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Fee flow v1-Open Zepplin.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Open%20Zepplin.pdf) | OpenZeppelin | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Fee flow v1-Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Sherlock.pdf) | Sherlock | Contest | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [1inch FixedRateSwap_Ackee Blockchain.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2021-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [1inch FixedRateSwap_Chainsulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_Chainsulting.pdf) | Chainsulting | Audit | 2021-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [1inch FixedRateSwap_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_CoinFabrik.pdf) | CoinFabrik | Audit | 2021-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [1inch FixedRateSwap_MixedBytes.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_MixedBytes.pdf) | MixBytes | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [1inch FixedRateSwap_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_Pessimistic.pdf) | Pessimistic | Audit | 2021-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [1inch Settlement v2.1_AstraSec.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_AstraSec.pdf) | AstraSec | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [1inch Settlement v2.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Decurity.pdf) | Decurity | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [1inch Settlement v2.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Hexens.pdf) | Hexens | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [1inch Settlement v2.1_Open Zepplin.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Open%20Zepplin.pdf) | OpenZeppelin | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [1inch Settlement v2.1_Pashov.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Pashov.pdf) | Pashov Audit Group | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [1inch Settlement v2.1_Pessemistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Pessemistic.pdf) | Pessimistic | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [1inch Settlement v2_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Decurity.pdf) | Decurity | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [1inch Settlement v2_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Hexens.pdf) | Hexens | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [1inch Settlement v2_Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [1inch Settlement v2_Peckshield.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Peckshield.pdf) | PeckShield | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [1inch Settlement v2_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Pessimistic.pdf) | Pessimistic | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [1inch_FusionMode_ABDK.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ABDK.pdf) | ABDK | Audit | 2023-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 25 | n/a |
| [1inch_FusionMode_ChainSecurity1.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ChainSecurity1.pdf) | ChainSecurity | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 20 | n/a |
| [1inch_FusionMode_ChainSecurity2.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ChainSecurity2.pdf) | ChainSecurity | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [1inch_FusionMode_ChainSecurity3.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ChainSecurity3.pdf) | ChainSecurity | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [1inch_FusionMode_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Decurity.pdf) | Decurity | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 13 | n/a |
| [1inch_FusionMode_Hexens.1.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Hexens.1.pdf) | Hexens | Audit | 2022-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [1inch_FusionMode_Hexens.2.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Hexens.2.pdf) | Hexens | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [1inch_FusionMode_OpenZepplin.1.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_OpenZepplin.1.pdf) | OpenZeppelin | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [1inch_FusionMode_OpenZepplin.2.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_OpenZepplin.2.pdf) | OpenZeppelin | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [1inch_FusionMode_Oxorio.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Oxorio.pdf) | Oxorio | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [1inch_FusionMode_Peckshield.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Peckshield.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [1inch_FusionMode_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Pessimistic.pdf) | Pessimistic | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 17 | n/a |
| [1inch_FusionMode_iosiro.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_iosiro.pdf) | Iosiro | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [1inch_TokenPlugins-Pashov.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_TokenPlugins-Pashov.pdf) | Pashov Audit Group | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [1Inch Limit Order Protocol_ABDK.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_ABDK.pdf) | ABDK | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [1Inch Limit Order Protocol_Chainsulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_Chainsulting.pdf) | Chainsulting | Audit | 2021-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 17 | n/a |
| [1Inch Limit Order Protocol_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_CoinFabrik.pdf) | CoinFabrik | Audit | 2021-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 13 | n/a |
| [1Inch Limit Order Protocol_IgorGulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_IgorGulamov.pdf) | Igor Gulamov | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [1Inch Limit Order Protocol_MixBytes.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_MixBytes.pdf) | MixBytes | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 13 | n/a |
| [1inch Limit Order Portocol_Certik.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1inch%20Limit%20Order%20Portocol_Certik.pdf) | CertiK | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [ABDK - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/ABDK%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | ABDK | Audit | 2021-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [Chainsulting - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Chainsulting%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | Chainsulting | Audit | 2021-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [Coinfabrik - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Coinfabrik%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | CoinFabrik | Audit | 2021-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 12 | n/a |
| [Coinspect - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Coinspect%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | Coinspect | Audit | 2021-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 13 | n/a |
| [LimitSwap audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/LimitSwap%20audit.pdf) | unknown | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Pessimistic - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Pessimistic%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | Pessimistic | Audit | 2021-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [Certik - 1inch Liquidity Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Certik%20-%201inch%20Liquidity%20Protocol%20audit.pdf) | CertiK | Audit | 2020-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 24 | n/a |
| [Chainsulting - 1inch Liquidity Protocol Audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Chainsulting%20-%201inch%20Liquidity%20Protocol%20Audit.pdf) | Chainsulting | Audit | 2020-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 24 | n/a |
| [Coinfabrik - 1inch Liquidity Protocol Audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Coinfabrik%20-%201inch%20Liquidity%20Protocol%20Audit.pdf) | CoinFabrik | Audit | 2020-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 23 | n/a |
| [Cure53 - 1inch Liquidity Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Cure53%20-%201inch%20Liquidity%20Protocol%20audit.pdf) | Cure53 | Audit | 2020-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 32 | n/a |
| [Gulamov - 1inch Farming audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Farming/Gulamov%20-%201inch%20Farming%20audit.pdf) | Igor Gulamov | Audit | 2021-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Gulamov - 1inch Liquidity Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Gulamov%20-%201inch%20Liquidity%20Protocol%20audit.pdf) | Igor Gulamov | Audit | 2021-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [MixBytes - 1inch Liquidity Protocol Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/MixBytes%20-%201inch%20Liquidity%20Protocol%20Report.pdf) | MixBytes | Audit | 2021-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 23 | n/a |
| [1inch Multi-Farming Contracts V3_Chainsafe.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Chainsafe.pdf) | ChainSafe | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [1inch Multi-Farming Contracts V3_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_CoinFabrik.pdf) | CoinFabrik | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [1inch Multi-Farming Contracts V3_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Decurity.pdf) | Decurity | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [1inch Multi-Farming Contracts V3_Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Gulamov.pdf) | Igor Gulamov | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [1inch Multi-Farming Contracts V3_Peckshield.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Peckshield.pdf) | PeckShield | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [1inch Multi-Farming Contracts V3_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Pessimistic.pdf) | Pessimistic | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [1inch Multi-Farming Contracts V3_Smartstate.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Smartstate.pdf) | SmartState | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Solana Fusion - Decurity v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Decurity%20v1.pdf) | Decurity | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Solana Fusion - Hexens v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Hexens%20v1.pdf) | Hexens | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Solana Fusion - Open Zepplin v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Open%20Zepplin%20v1.pdf) | OpenZeppelin | Audit | 2025-04 | aging | Direct | address | no match | 0 | 0 | 0 | 2 | high |
| [Solana Fusion - Ottersec v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Ottersec%20v1.pdf) | OtterSec | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Solana Fusion - Quantstamp v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Quantstamp%20v1.pdf) | Quantstamp | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Solana Fusion - Zenith v1.01.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Zenith%20v1.01.pdf) | Zenith | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Solana Fusion v1_Kudelski.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20v1_Kudelski.pdf) | Kudelski Security | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Solana Fusion v1_OffsideLabs.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20v1_OffsideLabs.pdf) | Offside Labs | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Solana cross-chain v1.0-Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0-Hexens.pdf) | Hexens | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Solana cross-chain v1.0-Zenith.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0-Zenith.pdf) | Zenith | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Solana cross-chain v1.0_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0_Decurity.pdf) | Decurity | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Solana cross-chain v1.0_OffsideLabs.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0_OffsideLabs.pdf) | Offside Labs | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Solana cross-chain v1.0_Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0_Sherlock.pdf) | Sherlock | Contest | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Solana cross-chain v1.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Decurity.pdf) | Decurity | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Solana cross-chain v1.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Hexens.pdf) | Hexens | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Solana cross-chain v1.1_OffsideLabs.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_OffsideLabs.pdf) | Offside Labs | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Solana cross-chain v1.1_Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Sherlock.pdf) | Sherlock | Contest | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Solana cross-chain v1.1_Zenith.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Zenith.pdf) | Zenith | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Chainsulting - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Chainsulting%20-%201inch%20Vesting%20Contract%20audit.pdf) | Chainsulting | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [Coinfabrik - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Coinfabrik%20-%201inch%20Vesting%20Contract%20audit.pdf) | CoinFabrik | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [Gulamov - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Gulamov%20-%201inch%20Vesting%20Contract%20audit.pdf) | Igor Gulamov | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [Pessimistic - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Pessimistic%20-%201inch%20Vesting%20Contract%20audit.pdf) | Pessimistic | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [MixBytes.pdf](https://github.com/1inch/1inch-token/blob/master/audits/MixBytes.pdf) | MixBytes | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [8160] 1inch Aggregation Router V5_ABDK Consulting.pdf — no match: Extracted 30 contract names from the scope section listing files in the repository. Audit date found on cover page: 16th September 2022.
- [8161] 1inch Aggregation Router V5_CoinFabrik.pdf — no match: No reason recorded
- [8162] 1inch Aggregation Router V5_Consensys.pdf — no match: All files listed in Appendix 1 - Files in Scope were extracted. The audit date is the end date of the review period (September 16, 2022).
- [8163] 1inch Aggregation Router V5_IgorGulamov.pdf — no match: Extracted all contracts from the scope section of the audit report. The date is from the title line.
- [8164] 1inch Aggregation Router V5_MixBytes.pdf — no match: All contracts listed in the Project Scope section of the report.
- [8165] 1inch Aggregation Router V5_OpenZepplin.pdf — no match: Extracted 21 contract names from the scope section listing files in 1inch-contract and limit-order-protocol repositories. Audit date from title: 'September 22, 2022'.
- [8166] 1inch Aggregation Router V5_PeckShield.pdf — no match: Extracted contract names from findings targets and report description. Audit date from cover page and table.
- [8167] 1inch Aggregation Router V5_Pessimistic.pdf — no match: No reason recorded
- [8168] 1inch Aggregation Router V5_Statemind.pdf — no match: Extracted 21 contract names from the Project Scope section listing files. Audit date from timeline: 18-07-2022 - 29-07-2022, using end date.
- [8169] 1inch Aggregation Router V5_Zokyo.pdf — no match: No reason recorded
- [8170] 1inch Aggregation Router V6.1_Decurity.pdf — no match: Extracted contract names from findings table and file paths. Audit date from report header and status date.
- [8171] 1inch Aggregation Router V6.1_Hexens.pdf — matched: No reason recorded
- [8172] 1inch Aggregation Router V6.1_OpenZeppelin.pdf — matched: No reason recorded
- [8173] 1inch Aggregation Router V6.1_PeckShield.pdf — no match: No explicit scope table; contracts extracted from findings targets. Audit date from cover page and latest audit report date.
- [8174] 1inch Aggregation Router V6.2_Decurity.pdf — no match: Scope section only lists pull requests, not specific contracts. Only one contract name extracted from findings.
- [8175] 1inch Aggregation Router V6.2_Hexens.pdf — no match: The scope section only mentions pull requests (PRs) on GitHub repositories, not specific contract names or file paths. No contract names could be extracted.
- [8176] 1inch Aggregation Router V6.2_Pessimistic.pdf — matched: No reason recorded
- [8177] 1inch Aggregation Router V6_Consensys.pdf — matched: No reason recorded
- [8178] 1inch Aggregation Router V6_Decurity.pdf — matched: No reason recorded
- [8179] 1inch Aggregation Router V6_Hexens.pdf — no match: No reason recorded
- [8180] 1inch Aggregation Router V6_OpenZeppelin.pdf — matched: No reason recorded
- [8181] 1inch Aggregation Router V6_PeckShield.pdf — no match: Only one contract name (UnoswapRouter) found in findings. No explicit scope section listing contracts. Audit date from cover page.
- [8182] 1inch Aggregation Router V6_Pessimistic.pdf — matched: No reason recorded
- [8183] 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf — no match: No reason recorded
- [8184] 1inch Limit Order Protocol v4_OpenZeppelin.pdf — no match: No reason recorded
- [8185] Certik - 1inch v2 Audit Report.pdf — no match: Scope table lists 5 contracts with file paths. Audit date from delivery date.
- [8186] Chainsulting - 1inch v2 Audit Report.pdf — no match: Scope explicitly lists OneInchExchange.sol, OneInchFlags.sol, helpers/RevertReasonParser.sol, helpers/UniERC20.sol, and indirect imports IOneInchCaller.sol, IERC20Permit.sol, IChi.sol. Audit date from cover page: 04.11.2020.
- [8187] Coinfabrik - 1inch v2 Audit Report.pdf — no match: Scope table lists 5 files with SHA256 hashes. Audit date is November 2020, approximated to last day of month.
- [8188] Hacken - 1inch v2 Audit Report.pdf — no match: All contracts listed in scope section of the audit report.
- [8189] Haechi - 1inch v2 Audit Report.pdf — no match: Scope section lists 5 contracts: OneInchExchange.sol, RevertReasonParser.sol, UniERC20.sol, GasDiscountCalculator.sol, OneInchFlags.sol. Audit date from cover page: 16th November 2020.
- [8190] MixBytes - 1inch v2 Audit Report.pdf — no match: Scope section lists 5 contracts with file paths and one address.
- [8191] Scott Bigelow - 1inch v2 Audit Report.pdf — no match: Scope explicitly lists OneInchExchange.sol, OneInchCaller.sol, OneInchFlags.sol. ChiSpender, BytesPatcher, and PatcherExtension are mentioned in findings as audited contracts. Audit date is clearly stated at the top.
- [8192] Slowmist - 1inch v2 Audit Report.pdf — no match: Audit report explicitly lists three contracts in scope: OneInchExchange, RevertReasonParser, and UniERC20. Audit date is Nov.12,2020.
- [8193] Certik - 1inch v3 Audit Report.pdf — no match: Scope table lists 5 contracts with file paths. Audit date from delivery date.
- [8194] Gulamov - 1inch v3 Audit Report.pdf — no match: Scope section explicitly lists five contracts: OneInchExchange.sol, OneInchUnoswap.sol, helpers/Permitable.sol, helpers/UniERC20.sol, helpers/RevertReasonParser.sol. Audit date is '26 Feb 2021' in the title.
- [8195] MixBytes - 1inch v3 Audit Report.pdf — no match: All contracts listed in FILES LISTING section are in scope.
- [8196] 1Inch Aggregation Router v4 Audit_MixBites.pdf — no match: All contracts listed in the FILES LISTING table are in scope. Audit date is October 01, 2021 from the title.
- [8197] 1inch Aggregation Router v4 Audit_ABDK.pdf — no match: Scope explicitly lists 7 Solidity files at commit 93868c. Date from cover page: 4th October 2021.
- [8198] 1inch Aggregation Router v4 Audit_Chainsulting.pdf — no match: Scope section lists 4 contracts in scope. Audit date from executive summary: final debriefs on September 23, 2021.
- [8199] 1inch Aggregation Router v4 Audit_Coinfabrik.pdf — no match: Audit report for 1inch Aggregation Router v4, dated September 2021. Contracts explicitly listed in scope section. Permitable is a helper contract mentioned in findings.
- [8200] 1inch Aggregation Router v4 Audit_Consensys.pdf — no match: Scope section explicitly lists files in scope. Audit date is end date of engagement period (September 13-24, 2021).
- [8201] 1inch Aggregation Router v4 Audit_Igor Gulamov.pdf — no match: Scope section lists four Solidity files; contract names extracted from filenames.
- [8202] 1inch Aggregation Router v4 Audit_Pessimistic.pdf — no match: Scope explicitly lists four files: AggregationRouterV4.sol, UnoswapV3Router.sol, ClipperRouter.sol, LimitOrderProtocolRFQ.sol. Date found in header and footer.
- [8203] 1inch-cross-chain-swap-v1-AstraSec.pdf — no match: No reason recorded
- [8204] 1inch-cross-chain-swap-v1-Consensys.pdf — no match: No reason recorded
- [8205] 1inch-cross-chain-swap-v1-Decurity.pdf — no match: No reason recorded
- [8206] 1inch-cross-chain-swap-v1-Igor Gulamov.pdf — no match: No reason recorded
- [8207] 1inch-cross-chain-swap-v1-Open Zeppelin.pdf — no match: No reason recorded
- [8208] 1inch-cross-chain-swap-v1-Pessimistic.pdf — no match: Only one contract name explicitly mentioned in the report. The scope says 'entire repository excluding mock contracts' but no other contract names are given.
- [8209] 1inch-cross-chain-v2-Astrasec.pdf — no match: Extracted contract names from vulnerability targets and compiler version table. No explicit scope section found, but contracts are clearly in scope.
- [8210] 1inch-cross-chain-v2-Consensys.pdf — no match: No reason recorded
- [8211] 1inch-cross-chain-v2-Decurity.pdf — no match: Audit scope includes the cross-chain-swap repository; contracts explicitly listed in findings table and sections.
- [8212] 1inch-cross-chain-v2-Igor Gulamov.pdf — no match: No reason recorded
- [8213] 1inch-cross-chain-v2-Open Zeppelin.pdf — no match: No reason recorded
- [8214] 1inch-cross-chain-v2-Pessimistic.pdf — no match: Scope stated 'everything' but only two contract names explicitly mentioned in findings. No file paths provided.
- [8215] 1inch Crosschain Fee v1.1_Certora.pdf — no match: Scope defined as contracts/* (excluding mocks). Three contracts identified from findings: BaseEscrowFactory, EscrowDst, EscrowSrc.
- [8216] 1inch Crosschain Fee v1.1_Decurity.pdf — no match: Audit scope includes contracts in the 1inch cross-chain-swap repository. Only two contracts are explicitly mentioned in findings: EscrowSrc and EscrowDst. No other contract names are provided in the scope section.
- [8217] 1inch Crosschain Fee v1.1_Hexens.pdf — no match: All contracts listed in the Scope section of the report. Audit date is the final report date (21 August 2025).
- [8218] 1inch Crosschain Fee v1.1_Open Zeppelin.pdf — no match: No reason recorded
- [8219] 1inch Crosschain Fee v1.1_Sherlock.pdf — no match: No reason recorded
- [8220] Fee flow v1-AstraSec.pdf — no match: Contracts explicitly listed in source code section of the audit report.
- [8221] Fee flow v1-Bailsec.pdf — no match: The report covers four contracts: AmountGetterBase, AmountGetterWithFee, FeeTaker, and SimpleSettlement. The audit date is inferred from 'April ‘2025' in the header, using the last day of the month.
- [8222] Fee flow v1-ChainLight.pdf — no match: Scope table lists four contracts with file paths. Audit date from revision history (May 14, 2025).
- [8223] Fee flow v1-Decurity.pdf — no match: Audit period from 8/4/2025 to 10/4/2025, so end date is 2025-04-10.
- [8224] Fee flow v1-Open Zepplin.pdf — no match: Scope section explicitly lists four contracts: SimpleSettlement.sol, AmountGetterBase.sol, AmountGetterWithFee.sol, FeeTaker.sol. Audit date is May 16, 2025 from the header.
- [8225] Fee flow v1-Sherlock.pdf — no match: Extracted 4 contracts from scope section. Audit date range April 14-17, 2025, used end date.
- [8226] 1inch FixedRateSwap_Ackee Blockchain.pdf — no match: No reason recorded
- [8227] 1inch FixedRateSwap_Chainsulting.pdf — no match: No reason recorded
- [8228] 1inch FixedRateSwap_CoinFabrik.pdf — no match: No reason recorded
- [8229] 1inch FixedRateSwap_MixedBytes.pdf — no match: Only one contract FixedFeeSwap.sol is in scope.
- [8230] 1inch FixedRateSwap_Pessimistic.pdf — no match: No reason recorded
- [8231] 1inch Settlement v2.1_AstraSec.pdf — no match: All contracts listed in the Source Code section (1.2) are in scope. The audit date is from the cover page.
- [8232] 1inch Settlement v2.1_Decurity.pdf — no match: Audit scope includes two repositories; contracts explicitly mentioned in findings: FeeTaker and ExtensionLib.
- [8233] 1inch Settlement v2.1_Hexens.pdf — no match: Only one contract (FeeTaker) is explicitly mentioned in the scope and findings. The scope references two GitHub repos but no specific contract files other than FeeTaker.sol.
- [8234] 1inch Settlement v2.1_Open Zepplin.pdf — no match: All contracts listed in the Scope section of the audit report.
- [8235] 1inch Settlement v2.1_Pashov.pdf — no match: Scope section lists FeeTaker, Settlement, SimpleSettlement, and extensions. Audit date is March 29th 2024 from executive summary.
- [8236] 1inch Settlement v2.1_Pessemistic.pdf — no match: Initial scope included SettlementExtension.sol, FeeBankCharger.sol, interfaces/IFeeBankCharger.sol. After codebase update, scope expanded to Settlement.sol, SimpleSettlement.sol, and five extension files.
- [8237] 1inch Settlement v2_Decurity.pdf — no match: Only one contract in scope: SettlementExtension.sol. Audit period start date 11/30/2023 used as audit date since end date not explicitly given.
- [8238] 1inch Settlement v2_Hexens.pdf — no match: Only SettlementExtension.sol is explicitly in scope; other contracts (OrderMixin, OrderLib) are referenced but not listed as audited targets.
- [8239] 1inch Settlement v2_Open Zeppelin.pdf — no match: Two contracts in scope: SettlementExtension and WhitelistRegistry. Audit date from cover page.
- [8240] 1inch Settlement v2_Peckshield.pdf — no match: Only one contract in scope: SettlementExtension.sol. Audit date from cover page and latest audit report date.
- [8241] 1inch Settlement v2_Pessimistic.pdf — no match: Scope explicitly listed three contracts: SettlementExtension.sol, FeeBankCharger.sol, interfaces/IFeeBankCharger.sol. Audit date from cover page.
- [8242] 1inch_FusionMode_ABDK.pdf — no match: No reason recorded
- [8243] 1inch_FusionMode_ChainSecurity1.pdf — no match: No reason recorded
- [8244] 1inch_FusionMode_ChainSecurity2.pdf — no match: Scope section explicitly lists 6 files from the contracts folder. Audit date is December 19, 2022 from the cover page.
- [8245] 1inch_FusionMode_ChainSecurity3.pdf — no match: Scope explicitly lists interfaces/IERC20Pods.sol, interfaces/IPod.sol, ERC20Pods.sol, Pod.sol, ReentrancyGuard.sol, and notes that AddressArray and AddressSet libraries are reviewed in context of their use in ERC20Pods.
- [8246] 1inch_FusionMode_Decurity.pdf — no match: No reason recorded
- [8247] 1inch_FusionMode_Hexens.1.pdf — no match: No reason recorded
- [8248] 1inch_FusionMode_Hexens.2.pdf — no match: No reason recorded
- [8249] 1inch_FusionMode_OpenZepplin.1.pdf — no match: No reason recorded
- [8250] 1inch_FusionMode_OpenZepplin.2.pdf — no match: All contracts listed in the Scope section of the audit report.
- [8251] 1inch_FusionMode_Oxorio.pdf — no match: No reason recorded
- [8252] 1inch_FusionMode_Peckshield.pdf — no match: No reason recorded
- [8253] 1inch_FusionMode_Pessimistic.pdf — no match: No reason recorded
- [8254] 1inch_FusionMode_iosiro.pdf — no match: No reason recorded
- [8255] 1inch_TokenPlugins-Pashov.pdf — no match: Scope section lists Plugin and ERC20Plugins contracts. Audit date from filename and header.
- [8257] 1Inch Limit Order Protocol_ABDK.pdf — no match: No reason recorded
- [8258] 1Inch Limit Order Protocol_Chainsulting.pdf — no match: No reason recorded
- [8259] 1Inch Limit Order Protocol_CoinFabrik.pdf — no match: No reason recorded
- [8260] 1Inch Limit Order Protocol_IgorGulamov.pdf — no match: Scope section mentions 'Smart contracts from 1inch/limit-order-protocol' and specific files are referenced in warnings.
- [8261] 1Inch Limit Order Protocol_MixBytes.pdf — no match: No reason recorded
- [8262] 1inch Limit Order Portocol_Certik.pdf — no match: No reason recorded
- [8263] ABDK - 1inch Limit Order Protocol audit.pdf — no match: No reason recorded
- [8264] Chainsulting - 1inch Limit Order Protocol audit.pdf — no match: No reason recorded
- [8265] Coinfabrik - 1inch Limit Order Protocol audit.pdf — no match: No reason recorded
- [8266] Coinspect - 1inch Limit Order Protocol audit.pdf — no match: No reason recorded
- [8267] LimitSwap audit.pdf — no match: Scope explicitly mentions 'Flatten version of LimitSwap.sol'. All contracts defined in the report are part of that file.
- [8268] Pessimistic - 1inch Limit Order Protocol audit.pdf — no match: No reason recorded
- [8269] Certik - 1inch Liquidity Protocol audit.pdf — no match: No reason recorded
- [8270] Chainsulting - 1inch Liquidity Protocol Audit.pdf — no match: No reason recorded
- [8271] Coinfabrik - 1inch Liquidity Protocol Audit.pdf — no match: No reason recorded
- [8272] Cure53 - 1inch Liquidity Protocol audit.pdf — no match: No reason recorded
- [8273] Gulamov - 1inch Farming audit.pdf — no match: No reason recorded
- [8274] Gulamov - 1inch Liquidity Protocol audit.pdf — no match: No reason recorded
- [8275] MixBytes - 1inch Liquidity Protocol Report.pdf — no match: No reason recorded
- [8276] 1inch Multi-Farming Contracts V3_Chainsafe.pdf — no match: Report states 6 contracts in scope but only FarmAccounting is explicitly named. Other contracts not identified.
- [8277] 1inch Multi-Farming Contracts V3_CoinFabrik.pdf — no match: Audit report for 1inch Farming project, scope includes 9 contracts/interfaces listed in the Scope section. Date inferred from 'December 2022' in title and changelog dates.
- [8278] 1inch Multi-Farming Contracts V3_Decurity.pdf — no match: Scope section lists contracts in the repository https://github.com/1inch/farming. The audit period is 11/22/2022 to 12/02/2022, and the report status date is Dec 2, 2022.
- [8279] 1inch Multi-Farming Contracts V3_Gulamov.pdf — no match: Only UserAccounting.sol is explicitly referenced in the findings; scope mentions 'Solidity contracts from 1inch/farming' but no other contract names are given.
- [8280] 1inch Multi-Farming Contracts V3_Peckshield.pdf — no match: No explicit scope section; contracts extracted from findings targets. Audit date from cover page and version history.
- [8281] 1inch Multi-Farming Contracts V3_Pessimistic.pdf — no match: Scope includes whole repository; contracts explicitly mentioned in audit process and findings.
- [8282] 1inch Multi-Farming Contracts V3_Smartstate.pdf — no match: Scope explicitly lists four contracts: FarmingLib.sol, FarmingPod.sol, FarmingPool.sol, MultiFarmingPod.sol. Audit date found in header: Dec 09 2022.
- [8284] Solana Fusion - Decurity v1.pdf — no match: Scope section mentions 'programs/**/*.*' and findings reference specific contracts: fusion-swap and whitelist.
- [8285] Solana Fusion - Hexens v1.pdf — no match: Extracted two programs: fusion-swap and whitelist from the scope section and findings.
- [8286] Solana Fusion - Open Zepplin v1.pdf — no match: Two Solana programs in scope: fusion_swap and whitelist, with their respective source files listed.
- [8287] Solana Fusion - Ottersec v1.pdf — no match: Only one program 'solana-fusion' is in scope. No individual contract names extracted from file paths; the program is a single Solana program.
- [8288] Solana Fusion - Quantstamp v1.pdf — no match: The scope includes the fusion-swap program from the 1inch/solana-fusion repository. No individual contract names are provided; the scope is the entire program directory.
- [8289] Solana Fusion - Zenith v1.01.pdf — no match: The scope section lists the repository and files (programs/*) but does not name individual contracts. The only contract referenced in findings is fusion-swap (from file paths).
- [8290] Solana Fusion v1_Kudelski.pdf — no match: Scope section lists two programs: fusion-swap and whitelist, each with lib.rs, error.rs, and auction.rs (fusion-swap only). Audit date is 22 May 2025 from cover page and document properties.
- [8291] Solana Fusion v1_OffsideLabs.pdf — no match: Audit scope includes programs/fusion-swap/src/*.rs and programs/whitelist/src/*.rs. Audit concluded on April 16, 2025.
- [8292] Solana cross-chain v1.0-Hexens.pdf — no match: Extracted contracts from scope and findings sections. Audit date from final report date (11 July 2025).
- [8293] Solana cross-chain v1.0-Zenith.pdf — no match: Scope table lists three targets: cross-chain-escrow-dst, cross-chain-escrow-src, and whitelist. Findings reference specific files within these targets. Audit end date is June 26, 2025.
- [8294] Solana cross-chain v1.0_Decurity.pdf — no match: Scope includes programs/**/src/*.rs and common/src/*.rs. Contracts identified from file paths and findings.
- [8295] Solana cross-chain v1.0_OffsideLabs.pdf — no match: Audit scope includes three programs: cross-chain-escrow-src, cross-chain-escrow-dst, and whitelist. Audit concluded on July 10, 2025.
- [8296] Solana cross-chain v1.0_Sherlock.pdf — no match: Extracted contract names from scope file paths. Audit date from 'Date Audited: June 16 - June 20, 2025'.
- [8297] Solana cross-chain v1.1_Decurity.pdf — no match: Audit scope includes contracts in repository solana-crosschain-protocol. Two main contract files identified: cross-chain-escrow-src/src/lib.rs and cross-chain-escrow-dst/src/lib.rs. Audit period: 2025-07-18 to 2025-07-24.
- [8298] Solana cross-chain v1.1_Hexens.pdf — no match: The audit report covers two Solana programs: cross-chain-escrow-dst and cross-chain-escrow-src. The final report date is August 5, 2025.
- [8299] Solana cross-chain v1.1_OffsideLabs.pdf — no match: Audit scope includes three Solana programs: cross-chain-escrow-src, cross-chain-escrow-dst, and whitelist. The audit date is the conclusion date (August 29, 2025).
- [8300] Solana cross-chain v1.1_Sherlock.pdf — no match: Extracted 3 programs from scope section. Audit date is July 21-24, 2025, using end date.
- [8301] Solana cross-chain v1.1_Zenith.pdf — no match: Scope section mentions repository and commit hash but no specific contract or file names. The audit appears to be for a Solana cross-chain protocol, but no Solidity or Rust contract names are listed.
- [8302] Chainsulting - 1inch Vesting Contract audit.pdf — no match: No reason recorded
- [8303] Coinfabrik - 1inch Vesting Contract audit.pdf — no match: No reason recorded
- [8304] Gulamov - 1inch Vesting Contract audit.pdf — no match: No reason recorded
- [8305] Pessimistic - 1inch Vesting Contract audit.pdf — no match: No reason recorded
- [8416] MixBytes.pdf — no match: All files listed in FILES LISTING section are in scope. Audit date is December 23, 2020.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 1inch Aggregation Router V5_ABDK Consulting.pdf | AggregationRouterV5 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | IAggregationExecutor | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | IClipperExchangeInterface | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | IUniswapV3Pool | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | ClipperRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | GenericRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | UnoswapRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | AmountCalculator | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | NonceManager | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | PredicateHelper | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | IOrderMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | NotificationReceiver | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | Callib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | OrderLib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | OrderMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | OrderRFQLib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | OrderRFQMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | EthReceiver | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | IDaiLikePermit | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | IWETH | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | ECDSA | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | RevertReasonForwarder | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | SafeERC20 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | StringUtil | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | UniERC20 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | Callib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | Errors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | NonceManager | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | OrderRFQLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | OrderRFQMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Consensys.pdf | AggregationRouterV5 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | ClipperRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | GenericRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | UnoswapRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | IAggregationExecutor | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | IClipperExchangeInterface | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | IUniswapV3Pool | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | OrderLib | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | OrderMixin | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | OrderRFQLib | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | OrderRFQMixin | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | AmountCalculator | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | NonceManager | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | PredicateHelper | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | IOrderMixin | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | NotificationReceiver | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | EthReceiver | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | OnlyWethReceiver | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | StringUtil | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | SafeERC20 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | UniERC20 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | RevertReasonForwarder | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | ECDSA | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | IDaiLikePermit | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | IWETH | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | AggregationRouterV5 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | ClipperRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | GenericRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | UnoswapRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | IClipperExchangeInterface | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | IAggregationExecutor | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | IUniswapV3Pool | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | OrderMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | OrderRFQMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | OrderLib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | OrderRFQLib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | AmountCalculator | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | NonceManager | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | PredicateHelper | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | IOrderMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | NotificationReceiver | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | Callib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | EthReceiver | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | StringUtil | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | UniERC20 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | SafeERC20 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | ECDSA | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | RevertReasonForwarder | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | IWETH | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | IDaiLikePermit | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_MixBytes.pdf | AggregationRouterV5 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | ClipperRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | GenericRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | UnoswapRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | IClipperExchangeInterface | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | IAggregationExecutor | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | IUniswapV3Pool | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | OrderMixin | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | OrderRFQMixin | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | OrderLib | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | OrderRFQLib | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | AmountCalculator | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | NonceManager | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | PredicateHelper | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | IOrderMixin | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | NotificationReceiver | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | Callib | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | EthReceiver | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | StringUtil | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | UniERC20 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | SafeERC20 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | ECDSA | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | RevertReasonForwarder | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | IWETH | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | IDaiLikePermit | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | IAggregationExecutor | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | IClipperExchangeInterface | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | IUniswapV3Pool | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | ClipperRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | GenericRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | UnoswapRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | AggregationRouterV5 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | AmountCalculator | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | NonceManager | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | PredicateHelper | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | IOrderMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | NotificationReceiver | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | OrderLib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | OrderMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | OrderRFQLib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | OrderRFQMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_PeckShield.pdf | LimitedAmountExtension | unmatched — not counted | — | Target in finding PVE-001 | no |
| 1inch Aggregation Router V5_PeckShield.pdf | LeftoversExtension | unmatched — not counted | — | Target in finding PVE-002 | no |
| 1inch Aggregation Router V5_PeckShield.pdf | UniswapV2Extension | unmatched — not counted | — | Target in finding PVE-003 | no |
| 1inch Aggregation Router V5_PeckShield.pdf | AggregationRouterV5 | unmatched — not counted | — | Target in finding PVE-004 and mentioned as main contract | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | AggregationRouterV5 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | ECDSA | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | NonceManager | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | OrderRFQLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | OrderRFQMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | RevertReasonForwarder | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | SafeERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | UniERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | UnoswapV3Router | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Statemind.pdf | AggregationRouterV5 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | ClipperRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | GenericRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | UnoswapRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | OrderMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | OrderRFQMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | OrderLib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | OrderRFQLib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | AmountCalculator | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | NonceManager | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | PredicateHelper | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | Callib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | EthReceiver | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | StringUtil | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | UniERC20 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | SafeERC20 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | ECDSA | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | RevertReasonForwarder | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Zokyo.pdf | AggregationRouterV5 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | Callib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | ECDSA | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | Errors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | EthReceiver | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | NonceManager | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | OrderRFQLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | OrderRFQMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | RevertReasonForwarder | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | SafeERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | StringUtil | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | UniERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | UnoswapV3Router | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_Decurity.pdf | OrderLib | unmatched — not counted | — | listed in findings table | no |
| 1inch Aggregation Router V6.1_Decurity.pdf | UnoswapRouter | unmatched — not counted | — | listed in findings table | no |
| 1inch Aggregation Router V6.1_Decurity.pdf | ChainlinkCalculator | unmatched — not counted | — | listed in findings table | no |
| 1inch Aggregation Router V6.1_Decurity.pdf | OrderMixin | unmatched — not counted | — | listed in findings table | no |
| 1inch Aggregation Router V6.1_Decurity.pdf | ETHOrders | unmatched — not counted | — | listed in findings table | no |
| 1inch Aggregation Router V6.1_Hexens.pdf | AggregationRouterV6 | own contract | AggregationRouterV6 (selected) `0x111111...842a65` — deployed 2024-02-12 18:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1inch Aggregation Router V6.1_Hexens.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_Hexens.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_Hexens.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_Hexens.pdf | TakerTraitsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_Hexens.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_OpenZeppelin.pdf | AggregationRouterV6 | own contract | AggregationRouterV6 (selected) `0x111111...842a65` — deployed 2024-02-12 18:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1inch Aggregation Router V6.1_OpenZeppelin.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_OpenZeppelin.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_OpenZeppelin.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_PeckShield.pdf | UnoswapRouter | unmatched — not counted | — | Target in findings PVE-001 and PVE-002 | no |
| 1inch Aggregation Router V6.1_PeckShield.pdf | OrderMixin | unmatched — not counted | — | Target in finding PVE-003 | no |
| 1inch Aggregation Router V6.2_Decurity.pdf | AggregationExecutorBase | unmatched — not counted | — | mentioned in findings section as the contract containing the SELFDESTRUCT issue | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | AggregationRouterV6 | own contract | AggregationRouterV6 (selected) `0x111111...842a65` — deployed 2024-02-12 18:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | BitInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | ConstraintsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | Errors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | ExtensionLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | LimitsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | OffsetsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | ProtocolLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | RemainingInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | RouterErrors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | SafeERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | SeriesEpochManager | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | AggregationRouterV6 | own contract | AggregationRouterV6 (selected) `0x111111...842a65` — deployed 2024-02-12 18:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1inch Aggregation Router V6_Consensys.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | BitInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | Errors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | ExtensionLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | MakerTraitsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | OffsetsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | ProtocolLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | RemainingInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | RouterErrors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | SafeERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | SeriesEpochManager | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | TakerTraitsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | AggregationRouterV6 | own contract | AggregationRouterV6 (selected) `0x111111...842a65` — deployed 2024-02-12 18:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1inch Aggregation Router V6_Decurity.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | BitInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | ConstraintsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | Errors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | ExtensionLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | LimitsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | OffsetsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | ProtocolLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | RemainingInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | RouterErrors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | SafeERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | SeriesEpochManager | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | ECDSA | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | ETHOrders | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | IOrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | MakerTraitsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | OnlyWethReceiver | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | SafeERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | WethUnwrapper | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_OpenZeppelin.pdf | AggregationRouterV6 | own contract | AggregationRouterV6 (selected) `0x111111...842a65` — deployed 2024-02-12 18:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1inch Aggregation Router V6_OpenZeppelin.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_OpenZeppelin.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_OpenZeppelin.pdf | ProtocolLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_OpenZeppelin.pdf | RouterErrors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_OpenZeppelin.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_PeckShield.pdf | UnoswapRouter | unmatched — not counted | — | Target in finding PVE-002: UnoswapRouter | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | AggregationRouterV6 | own contract | AggregationRouterV6 (selected) `0x111111...842a65` — deployed 2024-02-12 18:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1inch Aggregation Router V6_Pessimistic.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | BitInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | ConstraintsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | Errors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | ExtensionLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | LimitsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | OffsetsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | ProtocolLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | RemainingInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | RouterErrors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | SafeERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | SeriesEpochManager | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf | ExtensionLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf | MakerTraitsLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf | RemainingInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf | TakerTraitsLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | BitInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | Errors | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | ExtensionLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | MakerTraitsLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | OffsetsLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | OrderIdInvalidator | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | RemainingInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | SeriesEpochManager | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | TakerTraitsLib | unmatched — not counted | — | — | no |
| Certik - 1inch v2 Audit Report.pdf | GasDiscountCalculator | unmatched — not counted | — | listed in scope table | no |
| Certik - 1inch v2 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope table | no |
| Certik - 1inch v2 Audit Report.pdf | OneInchFlags | unmatched — not counted | — | listed in scope table | no |
| Certik - 1inch v2 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope table | no |
| Certik - 1inch v2 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope table | no |
| Chainsulting - 1inch v2 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope section | no |
| Chainsulting - 1inch v2 Audit Report.pdf | OneInchFlags | unmatched — not counted | — | listed in scope section | no |
| Chainsulting - 1inch v2 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope section | no |
| Chainsulting - 1inch v2 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope section | no |
| Chainsulting - 1inch v2 Audit Report.pdf | IOneInchCaller | unmatched — not counted | — | listed as indirect import in scope | no |
| Chainsulting - 1inch v2 Audit Report.pdf | IERC20Permit | unmatched — not counted | — | listed as indirect import in scope | no |
| Chainsulting - 1inch v2 Audit Report.pdf | IChi | unmatched — not counted | — | listed as indirect import in scope | no |
| Coinfabrik - 1inch v2 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope table | no |
| Coinfabrik - 1inch v2 Audit Report.pdf | GasDiscountCalculator | unmatched — not counted | — | listed in scope table | no |
| Coinfabrik - 1inch v2 Audit Report.pdf | OneInchFlags | unmatched — not counted | — | listed in scope table | no |
| Coinfabrik - 1inch v2 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope table | no |
| Coinfabrik - 1inch v2 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope table | no |
| Hacken - 1inch v2 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope | no |
| Hacken - 1inch v2 Audit Report.pdf | OneInchFlags | unmatched — not counted | — | listed in scope | no |
| Hacken - 1inch v2 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope | no |
| Hacken - 1inch v2 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope | no |
| Hacken - 1inch v2 Audit Report.pdf | OneInchCaller | unmatched — not counted | — | listed in scope | no |
| Hacken - 1inch v2 Audit Report.pdf | GasDiscountCalculator | unmatched — not counted | — | listed in scope | no |
| Haechi - 1inch v2 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope | no |
| Haechi - 1inch v2 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope | no |
| Haechi - 1inch v2 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope | no |
| Haechi - 1inch v2 Audit Report.pdf | GasDiscountCalculator | unmatched — not counted | — | listed in scope | no |
| Haechi - 1inch v2 Audit Report.pdf | OneInchFlags | unmatched — not counted | — | listed in scope | no |
| MixBytes - 1inch v2 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope | no |
| MixBytes - 1inch v2 Audit Report.pdf | OneInchFlags | unmatched — not counted | — | listed in scope | no |
| MixBytes - 1inch v2 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope | no |
| MixBytes - 1inch v2 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope | no |
| MixBytes - 1inch v2 Audit Report.pdf | GasDiscountCalculator | unmatched — not counted | — | listed in scope | no |
| Scott Bigelow - 1inch v2 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope and deployed address provided | no |
| Scott Bigelow - 1inch v2 Audit Report.pdf | OneInchCaller | unmatched — not counted | — | listed in scope | no |
| Scott Bigelow - 1inch v2 Audit Report.pdf | OneInchFlags | unmatched — not counted | — | listed in scope | no |
| Scott Bigelow - 1inch v2 Audit Report.pdf | ChiSpender | unmatched — not counted | — | mentioned in findings as audited contract | no |
| Scott Bigelow - 1inch v2 Audit Report.pdf | BytesPatcher | unmatched — not counted | — | mentioned in findings as audited contract | no |
| Scott Bigelow - 1inch v2 Audit Report.pdf | PatcherExtension | unmatched — not counted | — | mentioned in findings as audited contract | no |
| Slowmist - 1inch v2 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope | no |
| Slowmist - 1inch v2 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope | no |
| Slowmist - 1inch v2 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope | no |
| Certik - 1inch v3 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope table | no |
| Certik - 1inch v3 Audit Report.pdf | OneInchUnoswap | unmatched — not counted | — | listed in scope table | no |
| Certik - 1inch v3 Audit Report.pdf | Permitable | unmatched — not counted | — | listed in scope table | no |
| Certik - 1inch v3 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope table | no |
| Certik - 1inch v3 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope table | no |
| Gulamov - 1inch v3 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope | no |
| Gulamov - 1inch v3 Audit Report.pdf | OneInchUnoswap | unmatched — not counted | — | listed in scope | no |
| Gulamov - 1inch v3 Audit Report.pdf | Permitable | unmatched — not counted | — | listed in scope | no |
| Gulamov - 1inch v3 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope | no |
| Gulamov - 1inch v3 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope | no |
| MixBytes - 1inch v3 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in FILES LISTING | no |
| MixBytes - 1inch v3 Audit Report.pdf | OneInchUnoswap | unmatched — not counted | — | listed in FILES LISTING | no |
| MixBytes - 1inch v3 Audit Report.pdf | Permitable | unmatched — not counted | — | listed in FILES LISTING | no |
| MixBytes - 1inch v3 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in FILES LISTING | no |
| MixBytes - 1inch v3 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in FILES LISTING | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | AggregationRouterV4 | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | ClipperRouter | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | LimitOrderProtocolRFQ | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | UnoswapRouter | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | EthReceiver | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | Permitable | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | UniERC20 | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | IAggregationExecutorExtended | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | IChi | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | IClipperExchangeInterface | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | IDaiLikePermit | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | IERC1271 | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | IUniswapV3Pool | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | IWETH | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_ABDK.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_ABDK.pdf | AggregationRouterV4 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_ABDK.pdf | XLimitOrderProtocolRFQ | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_ABDK.pdf | ClipperRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_ABDK.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_ABDK.pdf | Permitable | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_ABDK.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Chainsulting.pdf | AggregationRouterV4 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Chainsulting.pdf | ClipperRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Chainsulting.pdf | LimitOrderProtocolRFQ | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Chainsulting.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Coinfabrik.pdf | AggregationRouterV4 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Coinfabrik.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Coinfabrik.pdf | ClipperRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Coinfabrik.pdf | LimitOrderProtocolRFQ | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Coinfabrik.pdf | Permitable | unmatched — not counted | — | mentioned in findings as an audited contract | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | AggregationRouterV4 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | ClipperRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | EthReceiver | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | Permitable | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | UniERC20 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | LimitOrderProtocolRFQ | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | UnoswapRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Igor Gulamov.pdf | AggregationRouterV4 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Igor Gulamov.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Igor Gulamov.pdf | ClipperRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Igor Gulamov.pdf | LimitOrderProtocolRFQ | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Pessimistic.pdf | AggregationRouterV4 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Pessimistic.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Pessimistic.pdf | ClipperRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Pessimistic.pdf | LimitOrderProtocolRFQ | unmatched — not counted | — | listed in scope | no |
| 1inch-cross-chain-swap-v1-AstraSec.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-AstraSec.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-AstraSec.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | Clones | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | IEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | IEscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | IEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | IEscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | ImmutablesLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Decurity.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Decurity.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Decurity.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Decurity.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Decurity.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | Clones | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | IEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | IEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | IEscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | ImmutablesLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | Clones | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | IEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | IEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | IEscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | ImmutablesLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Pessimistic.pdf | EscrowSrc | unmatched — not counted | — | mentioned in M01 finding: 'According to EscrowSrc.sol' | no |
| 1inch-cross-chain-v2-Astrasec.pdf | BaseEscrowFactory | unmatched — not counted | — | mentioned in vulnerability M-1 target | no |
| 1inch-cross-chain-v2-Astrasec.pdf | MerkleStorageInvalidator | unmatched — not counted | — | mentioned in vulnerability M-1 target | no |
| 1inch-cross-chain-v2-Astrasec.pdf | IBaseEscrow | unmatched — not counted | — | listed in I-1 table | no |
| 1inch-cross-chain-v2-Astrasec.pdf | IEscrow | unmatched — not counted | — | listed in I-1 table | no |
| 1inch-cross-chain-v2-Astrasec.pdf | IEscrowDst | unmatched — not counted | — | listed in I-1 table | no |
| 1inch-cross-chain-v2-Astrasec.pdf | IEscrowFactory | unmatched — not counted | — | listed in I-1 table | no |
| 1inch-cross-chain-v2-Astrasec.pdf | IEscrowSrc | unmatched — not counted | — | listed in I-1 table | no |
| 1inch-cross-chain-v2-Astrasec.pdf | ImmutablesLib | unmatched — not counted | — | listed in I-1 table | no |
| 1inch-cross-chain-v2-Astrasec.pdf | ProxyHashLib | unmatched — not counted | — | listed in I-1 table | no |
| 1inch-cross-chain-v2-Astrasec.pdf | TimelocksLib | unmatched — not counted | — | listed in I-1 table | no |
| 1inch-cross-chain-v2-Consensys.pdf | BaseEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | BaseEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | EscrowDstZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | EscrowFactoryZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | EscrowSrcZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | EscrowZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | IBaseEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | IEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | IEscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | IEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | IEscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | IMerkleStorageInvalidator | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | ImmutablesLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | MerkleStorageInvalidator | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | MinimalProxyZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | ProxyHashLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | ZkSyncLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Decurity.pdf | BaseEscrowFactory | unmatched — not counted | — | listed in findings table and section 5.1 | no |
| 1inch-cross-chain-v2-Decurity.pdf | MerkleStorageInvalidator | unmatched — not counted | — | listed in findings table and section 5.2 | no |
| 1inch-cross-chain-v2-Decurity.pdf | TimelocksLib | unmatched — not counted | — | listed in findings table and section 5.3 | no |
| 1inch-cross-chain-v2-Decurity.pdf | IBaseEscrow | unmatched — not counted | — | listed in findings table and section 5.4 | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | BaseEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | BaseEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | EscrowDstZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | EscrowFactoryZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | EscrowSrcZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | EscrowZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | IBaseEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | IEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | IEscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | IEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | IEscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | IMerkleStorageInvalidator | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | IResolverMock | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | ImmutablesLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | MerkleStorageInvalidator | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | MinimalProxyZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | ProxyHashLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | ZkSyncLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | BaseEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | BaseEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | EscrowDstZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | EscrowFactoryZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | EscrowSrcZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | EscrowZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | IBaseEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | IEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | IEscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | IEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | IEscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | IMerkleStorageInvalidator | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | ImmutablesLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | MerkleStorageInvalidator | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | MinimalProxyZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | ProxyHashLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | ZkSyncLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Pessimistic.pdf | MerkleStorageInvalidator | unmatched — not counted | — | mentioned in M01 finding | no |
| 1inch-cross-chain-v2-Pessimistic.pdf | BaseEscrowFactory | unmatched — not counted | — | mentioned in L01 and N01 findings | no |
| 1inch Crosschain Fee v1.1_Certora.pdf | BaseEscrowFactory | unmatched — not counted | — | mentioned in L-01 finding | no |
| 1inch Crosschain Fee v1.1_Certora.pdf | EscrowDst | unmatched — not counted | — | mentioned in L-02 and L-03 findings | no |
| 1inch Crosschain Fee v1.1_Certora.pdf | EscrowSrc | unmatched — not counted | — | mentioned in L-01 finding | no |
| 1inch Crosschain Fee v1.1_Decurity.pdf | EscrowSrc | unmatched — not counted | — | listed in scope and findings | no |
| 1inch Crosschain Fee v1.1_Decurity.pdf | EscrowDst | unmatched — not counted | — | listed in scope and findings | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | BaseEscrow | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | BaseEscrowFactory | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | Escrow | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | EscrowDst | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | EscrowFactory | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | EscrowSrc | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | IBaseEscrow | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | IEscrowFactory | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | ImmutablesLib | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | ResolverExample | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | EscrowDstZkSync | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | EscrowFactoryZkSync | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | EscrowSrcZkSync | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | EscrowZkSync | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | BaseEscrow | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | BaseEscrowFactory | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | EscrowDstZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | EscrowFactoryZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | EscrowSrcZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | EscrowZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | IBaseEscrow | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | IEscrowFactory | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | ImmutablesLib | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | BaseEscrow | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | BaseEscrowFactory | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | EscrowDstZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | EscrowFactoryContext | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | EscrowFactoryZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | EscrowSrcZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | EscrowZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | IBaseEscrow | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | IEscrow | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | IEscrowDst | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | IEscrowFactory | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | IEscrowSrc | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | IMerkleStorageInvalidator | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | IResolverExample | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | ImmutablesLib | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | MerkleStorageInvalidator | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | MinimalProxyZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | ProxyHashLib | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | ZkSyncLib | unmatched — not counted | — | — | no |
| Fee flow v1-AstraSec.pdf | SimpleSettlement | unmatched — not counted | — | listed in source code section | no |
| Fee flow v1-AstraSec.pdf | FeeTaker | unmatched — not counted | — | listed in source code section | no |
| Fee flow v1-AstraSec.pdf | AmountGetterWithFee | unmatched — not counted | — | listed in source code section | no |
| Fee flow v1-AstraSec.pdf | AmountGetterBase | unmatched — not counted | — | listed in source code section | no |
| Fee flow v1-Bailsec.pdf | AmountGetterBase | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Bailsec.pdf | AmountGetterWithFee | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Bailsec.pdf | FeeTaker | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Bailsec.pdf | SimpleSettlement | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-ChainLight.pdf | SimpleSettlement | unmatched — not counted | — | listed in scope table | no |
| Fee flow v1-ChainLight.pdf | FeeTaker | unmatched — not counted | — | listed in scope table | no |
| Fee flow v1-ChainLight.pdf | AmountGetterWithFee | unmatched — not counted | — | listed in scope table | no |
| Fee flow v1-ChainLight.pdf | AmountGetterBase | unmatched — not counted | — | listed in scope table | no |
| Fee flow v1-Decurity.pdf | SimpleSettlement | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Decurity.pdf | FeeTaker | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Decurity.pdf | AmountGetterWithFee | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Decurity.pdf | AmountGetterBase | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Open Zepplin.pdf | SimpleSettlement | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Open Zepplin.pdf | AmountGetterBase | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Open Zepplin.pdf | AmountGetterWithFee | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Open Zepplin.pdf | FeeTaker | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Sherlock.pdf | SimpleSettlement | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Sherlock.pdf | AmountGetterBase | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Sherlock.pdf | AmountGetterWithFee | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Sherlock.pdf | FeeTaker | unmatched — not counted | — | listed in scope | no |
| 1inch FixedRateSwap_Ackee Blockchain.pdf | FixedRateSwap | unmatched — not counted | — | — | no |
| 1inch FixedRateSwap_Chainsulting.pdf | FixedRateSwap | unmatched — not counted | — | — | no |
| 1inch FixedRateSwap_CoinFabrik.pdf | FixedRateSwap | unmatched — not counted | — | — | no |
| 1inch FixedRateSwap_MixedBytes.pdf | FixedFeeSwap | unmatched — not counted | — | listed in scope and findings | no |
| 1inch FixedRateSwap_Pessimistic.pdf | FixedRateSwap | unmatched — not counted | — | — | no |
| 1inch Settlement v2.1_AstraSec.pdf | FeeTaker | unmatched — not counted | — | listed in source code section | no |
| 1inch Settlement v2.1_AstraSec.pdf | Settlement | unmatched — not counted | — | listed in source code section | no |
| 1inch Settlement v2.1_AstraSec.pdf | SimpleSettlement | unmatched — not counted | — | listed in source code section | no |
| 1inch Settlement v2.1_AstraSec.pdf | BaseExtension | unmatched — not counted | — | listed in source code section | no |
| 1inch Settlement v2.1_AstraSec.pdf | ExtensionLib | unmatched — not counted | — | listed in source code section | no |
| 1inch Settlement v2.1_AstraSec.pdf | IntegratorFeeExtension | unmatched — not counted | — | listed in source code section | no |
| 1inch Settlement v2.1_AstraSec.pdf | ResolverFeeExtension | unmatched — not counted | — | listed in source code section | no |
| 1inch Settlement v2.1_AstraSec.pdf | WhitelistExtension | unmatched — not counted | — | listed in source code section | no |
| 1inch Settlement v2.1_Decurity.pdf | FeeTaker | unmatched — not counted | — | Listed in scope and findings section | no |
| 1inch Settlement v2.1_Decurity.pdf | ExtensionLib | unmatched — not counted | — | Listed in scope and findings section | no |
| 1inch Settlement v2.1_Hexens.pdf | FeeTaker | unmatched — not counted | — | listed in scope and findings | no |
| 1inch Settlement v2.1_Open Zepplin.pdf | FeeTaker | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Open Zepplin.pdf | Settlement | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Open Zepplin.pdf | SimpleSettlement | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Open Zepplin.pdf | BaseExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Open Zepplin.pdf | ExtensionLib | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Open Zepplin.pdf | IntegratorFeeExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Open Zepplin.pdf | ResolverFeeExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Open Zepplin.pdf | WhitelistExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pashov.pdf | FeeTaker | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pashov.pdf | Settlement | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pashov.pdf | SimpleSettlement | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pashov.pdf | BaseExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pashov.pdf | ExtensionLib | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pashov.pdf | ResolverFeeExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pashov.pdf | WhitelistExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pashov.pdf | IntegratorFeeExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pessemistic.pdf | SettlementExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pessemistic.pdf | FeeBankCharger | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pessemistic.pdf | IFeeBankCharger | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pessemistic.pdf | Settlement | unmatched — not counted | — | listed in scope after update | no |
| 1inch Settlement v2.1_Pessemistic.pdf | SimpleSettlement | unmatched — not counted | — | listed in scope after update | no |
| 1inch Settlement v2.1_Pessemistic.pdf | BaseExtension | unmatched — not counted | — | listed in scope after update | no |
| 1inch Settlement v2.1_Pessemistic.pdf | ExtensionLib | unmatched — not counted | — | listed in scope after update | no |
| 1inch Settlement v2.1_Pessemistic.pdf | IntegratorFeeExtension | unmatched — not counted | — | listed in scope after update | no |
| 1inch Settlement v2.1_Pessemistic.pdf | ResolverFeeExtension | unmatched — not counted | — | listed in scope after update | no |
| 1inch Settlement v2.1_Pessemistic.pdf | WhitelistExtension | unmatched — not counted | — | listed in scope after update | no |
| 1inch Settlement v2_Decurity.pdf | SettlementExtension | unmatched — not counted | — | listed in scope section 2.2 | no |
| 1inch Settlement v2_Hexens.pdf | SettlementExtension | unmatched — not counted | — | listed in scope and finding path | no |
| 1inch Settlement v2_Open Zeppelin.pdf | SettlementExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2_Open Zeppelin.pdf | WhitelistRegistry | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2_Peckshield.pdf | SettlementExtension | unmatched — not counted | — | listed in scope: 'this audit only covers the following contract – SettlementExtension.sol' | no |
| 1inch Settlement v2_Pessimistic.pdf | SettlementExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2_Pessimistic.pdf | FeeBankCharger | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2_Pessimistic.pdf | IFeeBankCharger | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_ABDK.pdf | BasicDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | BasicDelegationPodWithVotingPower | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | DelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | DynamicSuffix | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | FeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | FeeBankCharger | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IDelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IFeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IFeeBankCharger | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IResolver | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | ISettlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IVotable | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IWhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | OrderSaltParser | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | Pod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | RewardableDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | RewardableDelegationPodWithVotingPower | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | Settlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | VotingPowerCalculator | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | Address | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | BasicDelegationPodWithVotingPower | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | DynamicSuffix | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | FeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | FeeBankCharger | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | IFeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | IFeeBankCharger | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | IResolver | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | ISettlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | IVotable | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | IWhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | OrderSaltParser | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | ResolverMetadata | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | RewardableDelegationPodWithVotingPower | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | Settlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | St1inchPreview | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | VotingPowerCalculator | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | WhitelistHelper | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity2.pdf | IDelegatedShare | unmatched — not counted | — | listed in scope table | no |
| 1inch_FusionMode_ChainSecurity2.pdf | IDelegationPod | unmatched — not counted | — | listed in scope table | no |
| 1inch_FusionMode_ChainSecurity2.pdf | IRewardableDelegationPod | unmatched — not counted | — | listed in scope table | no |
| 1inch_FusionMode_ChainSecurity2.pdf | BasicDelegationPod | unmatched — not counted | — | listed in scope table | no |
| 1inch_FusionMode_ChainSecurity2.pdf | DelegatedShare | unmatched — not counted | — | listed in scope table | no |
| 1inch_FusionMode_ChainSecurity2.pdf | RewardableDelegationPod | unmatched — not counted | — | listed in scope table | no |
| 1inch_FusionMode_ChainSecurity3.pdf | IERC20Pods | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_ChainSecurity3.pdf | IPod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_ChainSecurity3.pdf | ERC20Pods | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_ChainSecurity3.pdf | Pod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_ChainSecurity3.pdf | ReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_ChainSecurity3.pdf | AddressArray | unmatched — not counted | — | reviewed as part of scope | no |
| 1inch_FusionMode_ChainSecurity3.pdf | AddressSet | unmatched — not counted | — | reviewed as part of scope | no |
| 1inch_FusionMode_Decurity.pdf | Address | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | DelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | FarmingDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | FarmingPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | FeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | MultiFarmingPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | OrderSaltParser | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | StakingFarmingPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | TokenizedDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | VotingPowerCalculator | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.1.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.1.pdf | Settlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.1.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.1.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | DelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | FeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | IDelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | IERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | IFeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | IFeeBankCharger | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | IPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | IVotable | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | PowerPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | RewardableDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | RewardableDelegationPodWithVotingPower | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | VotingPowerCalculator | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | DynamicSuffix | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | FeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | FeeBankCharger | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | IFeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | IFeeBankCharger | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | IResolver | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | ISettlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | ISt1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | IVotable | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | OrderSaltParser | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | OrderSuffix | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | PowerPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | ResolverMetadata | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | Settlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | St1inchPreview | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | StakingFarmingPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | TakingFee | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | TokensAndAmounts | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | VotingPowerCalculator | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | WhitelistHelper | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | ERC20Pods | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | Pod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | IERC20Pods | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | IPod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | ReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | DelegatedShare | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | DelegationPod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | FarmingDelegationPod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | TokenizedDelegationPod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | IDelegatedShare | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | IDelegationPod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | IFarmingDelegationPod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | ITokenizedDelegationPod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_Oxorio.pdf | BasicDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Oxorio.pdf | DelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Oxorio.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Oxorio.pdf | FeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Oxorio.pdf | RewardableDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Oxorio.pdf | Settlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Oxorio.pdf | St1Inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Oxorio.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | BasicDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | DelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | IVotable | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | Ownable | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | RewardableDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | Settlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | VotingPowerCalculator | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | AddressLib | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | BasicDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | DelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | FarmingDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | IERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | ITokenizedDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | OrderSuffix | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | Pod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | RewardableDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | Settlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | TakingFee | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | TokenizedDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | VotingPowerCalculator | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | WhitelistChecker | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | BasicDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | BasicDelegationTopicWithVotingPower | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | DelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | FeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | OrderSaltParser | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | Pod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | RewardableDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | RewardableDelegationTopicWithVotingPower | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | Settlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | VotingPowerCalculator | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | WhitelistChecker | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_TokenPlugins-Pashov.pdf | Plugin | unmatched — not counted | — | listed in scope section | no |
| 1inch_TokenPlugins-Pashov.pdf | ERC20Plugins | unmatched — not counted | — | listed in scope section | no |
| 1Inch Limit Order Protocol_ABDK.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | ArgumentDecoder | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | ChainlinkCalculator | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | NonceManager | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | OrderRFQMixin | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | Permitable | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | RevertReasonParser | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | AggregatorInterface | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | ChainlinkCalculator | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | ERC1155Proxy | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | ERC721Proxy | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | ERC721ProxySafe | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | IDaiLikePermit | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | ImmutableOwner | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | InteractiveNotificationReceiver | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | NonceManager | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | OrderRFQMixin | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | Permitable | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | RevertReasonParser | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | ERC1155Proxy | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | ERC20Proxy | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | ERC721Proxy | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | IEIP1271 | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | ImmutableOwner | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | InteractiveMaker | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | NonceManager | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | SilentECDSA | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | UncheckedAddress | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_IgorGulamov.pdf | ChainlinkCalculator | unmatched — not counted | — | mentioned in warnings | no |
| 1Inch Limit Order Protocol_IgorGulamov.pdf | ERC721Proxy | unmatched — not counted | — | mentioned in warnings | no |
| 1Inch Limit Order Protocol_IgorGulamov.pdf | ERC721ProxySafe | unmatched — not counted | — | mentioned in warnings | no |
| 1Inch Limit Order Protocol_IgorGulamov.pdf | ERC1155Proxy | unmatched — not counted | — | mentioned in warnings | no |
| 1Inch Limit Order Protocol_IgorGulamov.pdf | PredicateHelper | unmatched — not counted | — | mentioned in warnings | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | AggregatorInterface | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | ChainlinkCalculator | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | IDaiLikePermit | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | InteractiveNotificationReceiver | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | NonceManager | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | OrderRFQMixin | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | Permitable | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | RevertReasonParser | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | ChainlinkCalculator | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | ERC1155Proxy | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | ERC721Proxy | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | ERC721ProxySafe | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | ImmutableOwner | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | NonceManager | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | OrderRFQMixin | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | Permitable | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | RevertReasonParser | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | ERC1155Proxy | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | ERC20Proxy | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | ERC721Proxy | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | ImmutableOwner | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | InteractiveMaker | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | NonceManager | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | UncheckedAddress | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Limit Order Protocol audit.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | ERC1155Proxy | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | ERC20Proxy | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | ERC721Proxy | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | IEIP1271 | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | ImmutableOwner | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | InteractiveMaker | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | NonceManager | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | UncheckedAddress | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | ERC1155Proxy | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | ERC20Proxy | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | ERC721Proxy | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | IEIP1271 | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | ImmutableOwner | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | InteractiveMaker | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | NonceManager | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | TokenMock | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | UncheckedAddress | unmatched — not counted | — | — | no |
| LimitSwap audit.pdf | LimitSwap | unmatched — not counted | — | Scope section: 'Flatten version of LimitSwap.sol' | no |
| LimitSwap audit.pdf | ERC20Proxy | unmatched — not counted | — | Contract defined in report text | no |
| LimitSwap audit.pdf | ERC721Proxy | unmatched — not counted | — | Contract defined in report text | no |
| LimitSwap audit.pdf | ERC1155Proxy | unmatched — not counted | — | Contract defined in report text | no |
| LimitSwap audit.pdf | ArrayParser | unmatched — not counted | — | Library defined in report text | no |
| LimitSwap audit.pdf | GetMakerAmountHelper | unmatched — not counted | — | Contract defined in report text | no |
| Pessimistic - 1inch Limit Order Protocol audit.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| Pessimistic - 1inch Limit Order Protocol audit.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| Pessimistic - 1inch Limit Order Protocol audit.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | BalanceAccounting | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | BaseGovernanceModule | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | Converter | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | GovernanceFeeReceiver | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | GovernanceMothership | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | IGovernanceModule | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | IMooniswapDeployer | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | IMooniswapFactory | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | IMooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | IReferralFeeReceiver | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | LiquidVoting | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | Mooniswap | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | MooniswapConstants | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | MooniswapDeployer | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | MooniswapFactory | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | MooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | MooniswapGovernance | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | ReferralFeeReceiver | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | RewardDistributionRecipient | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | Rewards | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | Sqrt | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | UniERC20 | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | VirtualBalance | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | Vote | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | BalanceAccounting | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | BaseGovernanceModule | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | Converter | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | ERC20Permit | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | GovernanceFeeReceiver | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | GovernanceMothership | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | IGovernanceModule | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | IMooniswapDeployer | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | IMooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | IReferralFeeReceiver | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | IRewardDistributionRecipient | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | LiquidVoting | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | Mooniswap | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | MooniswapConstants | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | MooniswapDeployer | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | MooniswapFactory | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | MooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | MooniswapGovernance | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | ReferralFeeReceiver | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | Rewards | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | Sqrt | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | UniERC20 | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | VirtualBalance | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | Vote | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | BalanceAccounting | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | BaseGovernanceModule | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | Converter | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | GovernanceFeeReceiver | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | GovernanceMothership | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | IGovernanceModule | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | IMooniswapDeployer | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | IMooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | IReferralFeeReceiver | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | IRewardDistributionRecipient | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | LiquidVoting | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | Mooniswap | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | MooniswapConstants | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | MooniswapDeployer | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | MooniswapFactory | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | MooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | MooniswapGovernance | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | ReferralFeeReceiver | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | Rewards | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | Sqrt | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | UniERC20 | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | VirtualBalance | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | Vote | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | BalanceAccounting | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | BaseGovernanceModule | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | BaseRewards | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | Converter | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | ExchangeConstants | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | ExchangeGovernance | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | ExplicitLiquidVoting | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | FarmingRewards | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | GovernanceFeeReceiver | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | GovernanceMothership | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | GovernanceRewards | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | IGovernanceModule | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | IMooniswapDeployer | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | IMooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | IReferralFeeReceiver | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | IRewardDistributionRecipient | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | LiquidVoting | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | Mooniswap | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | MooniswapConstants | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | MooniswapDeployer | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | MooniswapFactory | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | MooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | MooniswapGovernance | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | ReferralFeeReceiver | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | Rewards | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | SafeCast | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | Sqrt | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | UniERC20 | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | VirtualBalance | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | VirtualVote | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | Vote | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | Voting | unmatched — not counted | — | — | no |
| Gulamov - 1inch Farming audit.pdf | BaseRewards | unmatched — not counted | — | — | no |
| Gulamov - 1inch Farming audit.pdf | FarmingRewards | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | Converter | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | ExplicitLiquidVoting | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | FarmingRewards | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | GovernanceFeeReceiver | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | GovernanceMothership | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | LiquidVoting | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | Mooniswap | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | ReferralFeeReceiver | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | Rewards | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | UniERC20 | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | BalanceAccounting | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | BaseGovernanceModule | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | Converter | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | GovernanceFeeReceiver | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | GovernanceMothership | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | IGovernanceModule | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | IMooniswapDeployer | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | IMooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | IReferralFeeReceiver | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | IRewardDistributionRecipient | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | LiquidVoting | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | Mooniswap | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | MooniswapConstants | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | MooniswapDeployer | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | MooniswapFactory | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | MooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | MooniswapGovernance | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | ReferralFeeReceiver | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | Rewards | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | Sqrt | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | UniERC20 | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | VirtualBalance | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | Vote | unmatched — not counted | — | — | no |
| 1inch Multi-Farming Contracts V3_Chainsafe.pdf | FarmAccounting | unmatched — not counted | — | mentioned in findings as 'FarmAccounting, line 38' and 'FarmAccounting, line 39' | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | FarmingLib | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | FarmingPod | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | FarmingPool | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | MultiFarmingPool | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | FarmAccounting | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | UserAccounting | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | IFarmingPod | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | IFarmingPool | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | IMultiFarmingPod | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_Decurity.pdf | FarmingPool | unmatched — not counted | — | Listed in scope table and findings | no |
| 1inch Multi-Farming Contracts V3_Decurity.pdf | FarmingPod | unmatched — not counted | — | Listed in scope table and findings | no |
| 1inch Multi-Farming Contracts V3_Decurity.pdf | MultiFarmingPod | unmatched — not counted | — | Listed in scope table and findings | no |
| 1inch Multi-Farming Contracts V3_Decurity.pdf | FarmAccounting | unmatched — not counted | — | Listed in scope table and findings | no |
| 1inch Multi-Farming Contracts V3_Decurity.pdf | UserAccounting | unmatched — not counted | — | Listed in scope table and findings | no |
| 1inch Multi-Farming Contracts V3_Gulamov.pdf | UserAccounting | unmatched — not counted | — | mentioned in findings and scope | no |
| 1inch Multi-Farming Contracts V3_Peckshield.pdf | FarmingPool | unmatched — not counted | — | Target in finding PVE-001 | no |
| 1inch Multi-Farming Contracts V3_Peckshield.pdf | ERC20Farmable | unmatched — not counted | — | Target in finding PVE-002 | no |
| 1inch Multi-Farming Contracts V3_Peckshield.pdf | BaseFarm | unmatched — not counted | — | Target in finding PVE-003 | no |
| 1inch Multi-Farming Contracts V3_Pessimistic.pdf | FarmingPool | unmatched — not counted | — | mentioned in audit process and findings | no |
| 1inch Multi-Farming Contracts V3_Pessimistic.pdf | FarmingPod | unmatched — not counted | — | mentioned in findings L01, N01, N02 | no |
| 1inch Multi-Farming Contracts V3_Pessimistic.pdf | MultiFarmingPod | unmatched — not counted | — | mentioned in project description and findings M01, L01, N01, N02 | no |
| 1inch Multi-Farming Contracts V3_Pessimistic.pdf | Pod | unmatched — not counted | — | mentioned in inheritance order L01 | no |
| 1inch Multi-Farming Contracts V3_Pessimistic.pdf | Ownable | unmatched — not counted | — | mentioned in inheritance order L01 | no |
| 1inch Multi-Farming Contracts V3_Pessimistic.pdf | FarmAccounting | unmatched — not counted | — | mentioned in finding L03 | no |
| 1inch Multi-Farming Contracts V3_Smartstate.pdf | FarmingLib | unmatched — not counted | — | listed in scope table and verification checksums | no |
| 1inch Multi-Farming Contracts V3_Smartstate.pdf | FarmingPod | unmatched — not counted | — | listed in scope table and verification checksums | no |
| 1inch Multi-Farming Contracts V3_Smartstate.pdf | FarmingPool | unmatched — not counted | — | listed in scope table and verification checksums | no |
| 1inch Multi-Farming Contracts V3_Smartstate.pdf | MultiFarmingPod | unmatched — not counted | — | listed in scope table and verification checksums | no |
| Solana Fusion - Decurity v1.pdf | fusion-swap | unmatched — not counted | — | listed in scope and findings | no |
| Solana Fusion - Decurity v1.pdf | whitelist | unmatched — not counted | — | listed in scope and findings | no |
| Solana Fusion - Hexens v1.pdf | FusionSwap | unmatched — not counted | — | listed in scope and findings | no |
| Solana Fusion - Hexens v1.pdf | Whitelist | unmatched — not counted | — | listed in scope and findings | no |
| Solana Fusion - Open Zepplin v1.pdf | fusion_swap | unmatched — not counted | — | listed in scope | no |
| Solana Fusion - Open Zepplin v1.pdf | whitelist | unmatched — not counted | — | listed in scope | no |
| Solana Fusion - Ottersec v1.pdf | solana-fusion | unmatched — not counted | — | Scope section: 'solana-fusion' program assessed | no |
| Solana Fusion - Quantstamp v1.pdf | fusion-swap | unmatched — not counted | — | listed in scope files | no |
| Solana Fusion - Zenith v1.01.pdf | fusion-swap | unmatched — not counted | — | Listed in scope as files programs/* under repository solana-fusion-protocol | no |
| Solana Fusion v1_Kudelski.pdf | fusion-swap | unmatched — not counted | — | listed in scope | no |
| Solana Fusion v1_Kudelski.pdf | whitelist | unmatched — not counted | — | listed in scope | no |
| Solana Fusion v1_OffsideLabs.pdf | fusion-swap | unmatched — not counted | — | listed in scope | no |
| Solana Fusion v1_OffsideLabs.pdf | whitelist | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.0-Hexens.pdf | Order | unmatched — not counted | — | mentioned in scope and findings | no |
| Solana cross-chain v1.0-Hexens.pdf | EscrowSrc | unmatched — not counted | — | mentioned in scope and findings | no |
| Solana cross-chain v1.0-Hexens.pdf | CreateEscrow | unmatched — not counted | — | mentioned in findings | no |
| Solana cross-chain v1.0-Hexens.pdf | Withdraw | unmatched — not counted | — | mentioned in findings | no |
| Solana cross-chain v1.0-Hexens.pdf | PublicWithdraw | unmatched — not counted | — | mentioned in findings | no |
| Solana cross-chain v1.0-Hexens.pdf | PublicCancelEscrow | unmatched — not counted | — | mentioned in findings | no |
| Solana cross-chain v1.0-Hexens.pdf | CancelEscrow | unmatched — not counted | — | mentioned in findings | no |
| Solana cross-chain v1.0-Hexens.pdf | CancelOrderbyResolver | unmatched — not counted | — | mentioned in findings | no |
| Solana cross-chain v1.0-Hexens.pdf | RescueFundsForOrder | unmatched — not counted | — | mentioned in findings | no |
| Solana cross-chain v1.0-Zenith.pdf | cross-chain-escrow-src | unmatched — not counted | — | listed in scope table and findings target | no |
| Solana cross-chain v1.0-Zenith.pdf | cross-chain-escrow-dst | unmatched — not counted | — | listed in scope table and findings target | no |
| Solana cross-chain v1.0-Zenith.pdf | whitelist | unmatched — not counted | — | listed in scope table | no |
| Solana cross-chain v1.0_Decurity.pdf | cross-chain-escrow-src | unmatched — not counted | — | listed in scope and findings | no |
| Solana cross-chain v1.0_Decurity.pdf | cross-chain-escrow-dst | unmatched — not counted | — | listed in scope and findings | no |
| Solana cross-chain v1.0_Decurity.pdf | escrow | unmatched — not counted | — | listed in scope and findings | no |
| Solana cross-chain v1.0_OffsideLabs.pdf | cross-chain-escrow-src | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.0_OffsideLabs.pdf | cross-chain-escrow-dst | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.0_OffsideLabs.pdf | whitelist | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.0_Sherlock.pdf | cross-chain-escrow-dst | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.0_Sherlock.pdf | cross-chain-escrow-src | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.0_Sherlock.pdf | whitelist | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.1_Decurity.pdf | cross-chain-escrow-src | unmatched — not counted | — | listed in scope and findings | no |
| Solana cross-chain v1.1_Decurity.pdf | cross-chain-escrow-dst | unmatched — not counted | — | listed in scope and findings | no |
| Solana cross-chain v1.1_Hexens.pdf | cross-chain-escrow-dst | unmatched — not counted | — | listed in scope and findings | no |
| Solana cross-chain v1.1_Hexens.pdf | cross-chain-escrow-src | unmatched — not counted | — | listed in scope and findings | no |
| Solana cross-chain v1.1_OffsideLabs.pdf | cross-chain-escrow-src | unmatched — not counted | — | listed in scope file listing | no |
| Solana cross-chain v1.1_OffsideLabs.pdf | cross-chain-escrow-dst | unmatched — not counted | — | listed in scope file listing | no |
| Solana cross-chain v1.1_OffsideLabs.pdf | whitelist | unmatched — not counted | — | listed in scope file listing | no |
| Solana cross-chain v1.1_Sherlock.pdf | cross-chain-escrow-dst | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.1_Sherlock.pdf | cross-chain-escrow-src | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.1_Sherlock.pdf | whitelist | unmatched — not counted | — | listed in scope | no |
| Chainsulting - 1inch Vesting Contract audit.pdf | StepVesting | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Vesting Contract audit.pdf | StepVesting | unmatched — not counted | — | — | no |
| Gulamov - 1inch Vesting Contract audit.pdf | StepVesting | unmatched — not counted | — | — | no |
| Pessimistic - 1inch Vesting Contract audit.pdf | StepVesting | unmatched — not counted | — | — | no |
| MixBytes.pdf | ERC20Permit | unmatched — not counted | — | listed in FILES LISTING | no |
| MixBytes.pdf | OneInch | unmatched — not counted | — | listed in FILES LISTING | no |
| MixBytes.pdf | ECDSA | unmatched — not counted | — | listed in FILES LISTING | no |
| MixBytes.pdf | EIP712 | unmatched — not counted | — | listed in FILES LISTING | no |
| MixBytes.pdf | IERC20Permit | unmatched — not counted | — | listed in FILES LISTING | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 128 |
| upstream | 4 |
| standard_library | 11 |
| needs_review | 247 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 138
- Inherited remapped matches: 0
- Address-book scope dispositions: 7 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1212 unmatched
- Matched-own operational status: 7 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=77, low=3, medium=7
- Match method counts: unique_name=7

Zero-match audit list:

- [8160] 1inch Aggregation Router V5_ABDK Consulting.pdf
- [8161] 1inch Aggregation Router V5_CoinFabrik.pdf
- [8162] 1inch Aggregation Router V5_Consensys.pdf
- [8163] 1inch Aggregation Router V5_IgorGulamov.pdf
- [8164] 1inch Aggregation Router V5_MixBytes.pdf
- [8165] 1inch Aggregation Router V5_OpenZepplin.pdf
- [8166] 1inch Aggregation Router V5_PeckShield.pdf
- [8167] 1inch Aggregation Router V5_Pessimistic.pdf
- [8168] 1inch Aggregation Router V5_Statemind.pdf
- [8169] 1inch Aggregation Router V5_Zokyo.pdf
- [8170] 1inch Aggregation Router V6.1_Decurity.pdf
- [8173] 1inch Aggregation Router V6.1_PeckShield.pdf
- [8174] 1inch Aggregation Router V6.2_Decurity.pdf
- [8175] 1inch Aggregation Router V6.2_Hexens.pdf
- [8179] 1inch Aggregation Router V6_Hexens.pdf
- [8181] 1inch Aggregation Router V6_PeckShield.pdf
- [8183] 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf
- [8184] 1inch Limit Order Protocol v4_OpenZeppelin.pdf
- [8185] Certik - 1inch v2 Audit Report.pdf
- [8186] Chainsulting - 1inch v2 Audit Report.pdf
- [8187] Coinfabrik - 1inch v2 Audit Report.pdf
- [8188] Hacken - 1inch v2 Audit Report.pdf
- [8189] Haechi - 1inch v2 Audit Report.pdf
- [8190] MixBytes - 1inch v2 Audit Report.pdf
- [8191] Scott Bigelow - 1inch v2 Audit Report.pdf
- [8192] Slowmist - 1inch v2 Audit Report.pdf
- [8193] Certik - 1inch v3 Audit Report.pdf
- [8194] Gulamov - 1inch v3 Audit Report.pdf
- [8195] MixBytes - 1inch v3 Audit Report.pdf
- [8196] 1Inch Aggregation Router v4 Audit_MixBites.pdf
- [8197] 1inch Aggregation Router v4 Audit_ABDK.pdf
- [8198] 1inch Aggregation Router v4 Audit_Chainsulting.pdf
- [8199] 1inch Aggregation Router v4 Audit_Coinfabrik.pdf
- [8200] 1inch Aggregation Router v4 Audit_Consensys.pdf
- [8201] 1inch Aggregation Router v4 Audit_Igor Gulamov.pdf
- [8202] 1inch Aggregation Router v4 Audit_Pessimistic.pdf
- [8203] 1inch-cross-chain-swap-v1-AstraSec.pdf
- [8204] 1inch-cross-chain-swap-v1-Consensys.pdf
- [8205] 1inch-cross-chain-swap-v1-Decurity.pdf
- [8206] 1inch-cross-chain-swap-v1-Igor Gulamov.pdf
- [8207] 1inch-cross-chain-swap-v1-Open Zeppelin.pdf
- [8208] 1inch-cross-chain-swap-v1-Pessimistic.pdf
- [8209] 1inch-cross-chain-v2-Astrasec.pdf
- [8210] 1inch-cross-chain-v2-Consensys.pdf
- [8211] 1inch-cross-chain-v2-Decurity.pdf
- [8212] 1inch-cross-chain-v2-Igor Gulamov.pdf
- [8213] 1inch-cross-chain-v2-Open Zeppelin.pdf
- [8214] 1inch-cross-chain-v2-Pessimistic.pdf
- [8215] 1inch Crosschain Fee v1.1_Certora.pdf
- [8216] 1inch Crosschain Fee v1.1_Decurity.pdf
- [8217] 1inch Crosschain Fee v1.1_Hexens.pdf
- [8218] 1inch Crosschain Fee v1.1_Open Zeppelin.pdf
- [8219] 1inch Crosschain Fee v1.1_Sherlock.pdf
- [8220] Fee flow v1-AstraSec.pdf
- [8221] Fee flow v1-Bailsec.pdf
- [8222] Fee flow v1-ChainLight.pdf
- [8223] Fee flow v1-Decurity.pdf
- [8224] Fee flow v1-Open Zepplin.pdf
- [8225] Fee flow v1-Sherlock.pdf
- [8226] 1inch FixedRateSwap_Ackee Blockchain.pdf
- [8227] 1inch FixedRateSwap_Chainsulting.pdf
- [8228] 1inch FixedRateSwap_CoinFabrik.pdf
- [8229] 1inch FixedRateSwap_MixedBytes.pdf
- [8230] 1inch FixedRateSwap_Pessimistic.pdf
- [8231] 1inch Settlement v2.1_AstraSec.pdf
- [8232] 1inch Settlement v2.1_Decurity.pdf
- [8233] 1inch Settlement v2.1_Hexens.pdf
- [8234] 1inch Settlement v2.1_Open Zepplin.pdf
- [8235] 1inch Settlement v2.1_Pashov.pdf
- [8236] 1inch Settlement v2.1_Pessemistic.pdf
- [8237] 1inch Settlement v2_Decurity.pdf
- [8238] 1inch Settlement v2_Hexens.pdf
- [8239] 1inch Settlement v2_Open Zeppelin.pdf
- [8240] 1inch Settlement v2_Peckshield.pdf
- [8241] 1inch Settlement v2_Pessimistic.pdf
- [8242] 1inch_FusionMode_ABDK.pdf
- [8243] 1inch_FusionMode_ChainSecurity1.pdf
- [8244] 1inch_FusionMode_ChainSecurity2.pdf
- [8245] 1inch_FusionMode_ChainSecurity3.pdf
- [8246] 1inch_FusionMode_Decurity.pdf
- [8247] 1inch_FusionMode_Hexens.1.pdf
- [8248] 1inch_FusionMode_Hexens.2.pdf
- [8249] 1inch_FusionMode_OpenZepplin.1.pdf
- [8250] 1inch_FusionMode_OpenZepplin.2.pdf
- [8251] 1inch_FusionMode_Oxorio.pdf
- [8252] 1inch_FusionMode_Peckshield.pdf
- [8253] 1inch_FusionMode_Pessimistic.pdf
- [8254] 1inch_FusionMode_iosiro.pdf
- [8255] 1inch_TokenPlugins-Pashov.pdf
- [8257] 1Inch Limit Order Protocol_ABDK.pdf
- [8258] 1Inch Limit Order Protocol_Chainsulting.pdf
- [8259] 1Inch Limit Order Protocol_CoinFabrik.pdf
- [8260] 1Inch Limit Order Protocol_IgorGulamov.pdf
- [8261] 1Inch Limit Order Protocol_MixBytes.pdf
- [8262] 1inch Limit Order Portocol_Certik.pdf
- [8263] ABDK - 1inch Limit Order Protocol audit.pdf
- [8264] Chainsulting - 1inch Limit Order Protocol audit.pdf
- [8265] Coinfabrik - 1inch Limit Order Protocol audit.pdf
- [8266] Coinspect - 1inch Limit Order Protocol audit.pdf
- [8267] LimitSwap audit.pdf
- [8268] Pessimistic - 1inch Limit Order Protocol audit.pdf
- [8269] Certik - 1inch Liquidity Protocol audit.pdf
- [8270] Chainsulting - 1inch Liquidity Protocol Audit.pdf
- [8271] Coinfabrik - 1inch Liquidity Protocol Audit.pdf
- [8272] Cure53 - 1inch Liquidity Protocol audit.pdf
- [8273] Gulamov - 1inch Farming audit.pdf
- [8274] Gulamov - 1inch Liquidity Protocol audit.pdf
- [8275] MixBytes - 1inch Liquidity Protocol Report.pdf
- [8276] 1inch Multi-Farming Contracts V3_Chainsafe.pdf
- [8277] 1inch Multi-Farming Contracts V3_CoinFabrik.pdf
- [8278] 1inch Multi-Farming Contracts V3_Decurity.pdf
- [8279] 1inch Multi-Farming Contracts V3_Gulamov.pdf
- [8280] 1inch Multi-Farming Contracts V3_Peckshield.pdf
- [8281] 1inch Multi-Farming Contracts V3_Pessimistic.pdf
- [8282] 1inch Multi-Farming Contracts V3_Smartstate.pdf
- [8284] Solana Fusion - Decurity v1.pdf
- [8285] Solana Fusion - Hexens v1.pdf
- [8286] Solana Fusion - Open Zepplin v1.pdf
- [8287] Solana Fusion - Ottersec v1.pdf
- [8288] Solana Fusion - Quantstamp v1.pdf
- [8289] Solana Fusion - Zenith v1.01.pdf
- [8290] Solana Fusion v1_Kudelski.pdf
- [8291] Solana Fusion v1_OffsideLabs.pdf
- [8292] Solana cross-chain v1.0-Hexens.pdf
- [8293] Solana cross-chain v1.0-Zenith.pdf
- [8294] Solana cross-chain v1.0_Decurity.pdf
- [8295] Solana cross-chain v1.0_OffsideLabs.pdf
- [8296] Solana cross-chain v1.0_Sherlock.pdf
- [8297] Solana cross-chain v1.1_Decurity.pdf
- [8298] Solana cross-chain v1.1_Hexens.pdf
- [8299] Solana cross-chain v1.1_OffsideLabs.pdf
- [8300] Solana cross-chain v1.1_Sherlock.pdf
- [8301] Solana cross-chain v1.1_Zenith.pdf
- [8302] Chainsulting - 1inch Vesting Contract audit.pdf
- [8303] Coinfabrik - 1inch Vesting Contract audit.pdf
- [8304] Gulamov - 1inch Vesting Contract audit.pdf
- [8305] Pessimistic - 1inch Vesting Contract audit.pdf
- [8416] MixBytes.pdf

Fork inheritance lineage and inherited audits are included when available.
