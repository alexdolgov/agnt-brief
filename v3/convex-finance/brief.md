# Agentic Audit Brief: Convex Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 10 across 4 audit(s)
- Eligible audit results: 7 (4 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Convex Finance (`convex-finance`)
- Website: [https://www.convexfinance.com/](https://www.convexfinance.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, polygon
- Contract surface: 96 unique implementations (99 raw deployments)
- Coverage basis: 10/68 confirmed own live verified implementations (14.7%); conservative 14.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $569,504,311.64
- On-chain TVL (included contracts): $174,985,995.01
- TVL by chain: Ethereum $174,985,995.01

## Project Description

This brief describes the observed EVM deployment and audit surface for Convex Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 72 contract row(s) across arbitrum, ethereum, polygon. Structural roles: 34 core, 30 unclassified, 8 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 72
- Structural roles: core (34), unclassified (30), supporting (8)
- Contract kinds: contract (72)
- Detected standards: erc20 (11), ownable (3), erc1967proxy (1)
- Frameworks: openzeppelin (37), boringcrypto (2)
- Upgradeable-pattern rows: 1

## Fork Analysis

4 of 88 contracts are derived from known codebases. 84 contracts have no detected origin.

### Forked Contracts

**Booster** (`0xaffe96...c762f8`, chain 1)
Origin: frax-finance (`0x2b8b30...2ffc95`)
Containment: 69.2% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- claimBoostFees()
- setFeeToken(address,address)
- setTokenMinter(address,bool)

Removals (removed from original):
- addProxyOwner(address,address)
- castVote(address,uint256,bool)
- checkpointFeeRewards(address)
- claimFees(address,address)
- setFeeClaimer(address)
- setFeeClaimPair(address,address,bool)
- setOnChainDelegate(address,address)
- setVeFXSProxy(address,address)

**Booster** (`0xf403c1...8aae31`, chain 1)
Origin: aura (`0xf403c1...8aae31`)
Containment: 100.0% - 22 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CvxLocker** (`0xd18140...94af50`, chain 1)
Origin: frax-finance (`0x5ae0fc...ce56a1`)
Containment: 100.0% - 22 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CvxLockerV2** (`0x72a193...2db86e`, chain 1)
Origin: abracadabra (`0x72a193...2db86e`)
Containment: 100.0% - 24 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x138938...541bb7`, chain 1)
- UnnamedContract (`0x25e124...c21616`, chain 1)
- UnnamedContract (`0x27445d...a7a04b`, chain 1)
- UnnamedContract (`0x3c995e...147ab9`, chain 1)
- UnnamedContract (`0x3ce640...80f1e6`, chain 1)
- UnnamedContract (`0x41a588...851a69`, chain 1)
- UnnamedContract (`0x5f4701...5c5c1b`, chain 1)
- UnnamedContract (`0x5fba69...8e5cd1`, chain 1)
- UnnamedContract (`0x60bd3d...f6738b`, chain 1)
- UnnamedContract (`0x782bce...a37f95`, chain 1)
- UnnamedContract (`0x877288...47de75`, chain 1)
- UnnamedContract (`0x8f55d7...a3181e`, chain 1)
- UnnamedContract (`0x92cf9e...a65070`, chain 1)
- UnnamedContract (`0x989aeb...24ad80`, chain 1)
- UnnamedContract (`0x9b622f...fab702`, chain 1)
- UnnamedContract (`0xa1bc2c...142991`, chain 1)
- UnnamedContract (`0xa2cf21...a86ee5`, chain 1)
- UnnamedContract (`0xadd2f5...29c673`, chain 1)
- UnnamedContract (`0xb5bbc8...586a4e`, chain 1)
- UnnamedContract (`0xba9801...20272d`, chain 1)
- UnnamedContract (`0xd20904...91d1e1`, chain 1)
- UnnamedContract (`0xdd49a9...5ec82b`, chain 1)
- UnnamedContract (`0xdecc7d...79360d`, chain 1)
- UnnamedContract (`0xe98984...e28fcc`, chain 1)
- UnnamedContract (`0xedccb3...08aa8d`, chain 1)
- UnnamedContract (`0xf3bd66...50d973`, chain 1)
- UnnamedContract (`0xfcb28d...0749cf`, chain 1)
- BaseRewardPool (`0x3fe656...a7587e`, chain 1)
- BoostDelegate (`0x806d47...6ade60`, chain 1)
- Booster (`0x79a50f...c3799e`, chain 1)
- Booster (`0xf403c1...8aae31`, chain 137)
- Booster (`0xf403c1...8aae31`, chain 42161)
- BoosterPlaceholder (`0xd363d1...bbf4e0`, chain 42161)
- BoostFeeClaimer (`0x394bfb...1847b6`, chain 1)
- Burner (`0xcfc7b3...1896e5`, chain 1)
- ClaimZap (`0x3f29cb...cf2516`, chain 1)
- ConvexMasterChef (`0x5f465e...d60605`, chain 1)
- ConvexRewardPool (`0x65eee1...68a1f5`, chain 137)
- ConvexRewardPool (`0xf2afb3...044c23`, chain 42161)
- ConvexToken (`0x4e3fbd...5b9d2b`, chain 1)
- CrvDepositor (`0x801459...dc86ae`, chain 1)
- CvxCrvStakingWrapper (`0xaa0c3f...dbe434`, chain 1)
- cvxCrvToken (`0x62b9c7...810aa7`, chain 1)
- cvxFpisStaking (`0xfa87db...6bc483`, chain 1)
- cvxFpisToken (`0xa28473...427df6`, chain 1)
- cvxFxnStaking (`0xec60cd...e06bef`, chain 1)
- cvxFxnToken (`0x183395...fffcb3`, chain 1)
- cvxFxsStaking (`0x49b4d1...37e31a`, chain 1)
- cvxFxsToken (`0xfeef77...4bdf74`, chain 1)
- cvxPrismaStaking (`0x0c73f1...0be108`, chain 1)
- cvxPrismaToken (`0x346352...e78185`, chain 1)
- cvxRewardPool (`0xcf50b8...139332`, chain 1)
- DropMinter (`0x886418...76d712`, chain 1)
- DropMinter (`0x9c4d60...ec9292`, chain 1)
- ExtraRewardPool (`0xa46944...7c861b`, chain 137)
- ExtraRewardPool (`0x665d4b...8c6ad4`, chain 42161)
- FeeDeposit (`0x665d4b...8c6ad4`, chain 137)
- FeeDeposit (`0xe7cdd5...5b878a`, chain 42161)
- FeeDepositV2 (`0x4b33e9...1fb5d5`, chain 1)
- FeeDepositV2 (`0x7a527d...a0d769`, chain 1)
- FeeDepositV2 (`0x8133f7...01395d`, chain 1)
- FeeDepositV2 (`0xe91861...b63efa`, chain 1)
- FeeReceiverCvxPrisma (`0xaf9240...76cf3f`, chain 1)
- FraxVoterProxy (`0x59cfcd...66800b`, chain 1)
- FxnDepositor (`0x56b3c8...b82b91`, chain 1)
- FxnVoterProxy (`0xd11a4e...7b7881`, chain 1)
- MerkleAirdrop (`0x2e088a...e4accd`, chain 1)
- PoolManager (`0xfc0a2f...2f8017`, chain 137)
- PoolManager (`0x98ece0...2faa8b`, chain 42161)
- PoolRewardHook (`0xedccb3...08aa8d`, chain 137)
- PoolRewardHook (`0xedccb3...08aa8d`, chain 42161)
- PoolUtilities (`0xb20e68...76eb42`, chain 42161)
- PrismaVoterProxy (`0x8ad7a9...dfdd5b`, chain 1)
- Proxy (`0xa3c5a1...3de2fb`, chain 1)
- RewardFactory (`0xcf50b8...139332`, chain 137)
- RewardFactory (`0x801459...dc86ae`, chain 42161)
- RewardManager (`0x3c995e...147ab9`, chain 137)
- RewardManager (`0x972794...519bd7`, chain 42161)
- TreasuryManager (`0xbb48c2...b09ea7`, chain 1)
- UniswapV2Pair (`0x05767d...3de906`, chain 1)
- UniswapV2Pair (`0x33f6dd...df4007`, chain 1)
- VoterProxy (`0x989aeb...24ad80`, chain 137)
- VoterProxy (`0x989aeb...24ad80`, chain 42161)
- VoterProxyOwner (`0xb1d7c7...0e69e8`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 72; live-surface contracts included: 72 (71 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 98/101 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 10/68 (14.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 95 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 95 of 96 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 10/68
- Verified + Unaudited implementations: 58
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 96
- Raw deployments: 99
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $141,367,329.15
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 6 | 8.8% | 2021-04 |
| yAudit | Tier 2 | 4 | 5.9% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BaseRewardPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232837 | `0x3fe656...a7587e` | ✅ Audited |
| cvxRewardPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232921 | `0xcf50b8...139332` | ✅ Audited |
| cvxFxsToken | token | project_anchor | own_supporting | 0 | ethereum | unit-232952 | `0xfeef77...4bdf74` | ✅ Audited |
| Booster | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232946 | `0xf403c1...8aae31` | ✅ Audited |
| Booster | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-233004 | `0xf403c1...8aae31` | ✅ Audited |
| CrvDepositor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232874 | `0x801459...dc86ae` | ✅ Audited |
| CvxCrvStakingWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232905 | `0xaa0c3f...dbe434` | ✅ Audited |
| FraxVoterProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232849 | `0x59cfcd...66800b` | ✅ Audited |
| RewardFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-232980 | `0x801459...dc86ae` | ✅ Audited |
| VoterProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232985 | `0x989aeb...24ad80` | ✅ Audited |

### ⚠️ Verified + Unaudited (59)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ConvexToken | token | project_anchor | own_supporting | 0 | ethereum | unit-232845 | `0x4e3fbd...5b9d2b` | ⚠️ Unaudited |
| cvxCrvToken | token | project_anchor | own_supporting | 0 | ethereum | unit-232861 | `0x62b9c7...810aa7` | ⚠️ Unaudited |
| cvxFpisToken | token | project_anchor | own_supporting | 0 | ethereum | unit-232901 | `0xa28473...427df6` | ⚠️ Unaudited |
| cvxFxnToken | token | project_anchor | own_supporting | 0 | ethereum | unit-232813 | `0x183395...fffcb3` | ⚠️ Unaudited |
| cvxPrismaToken | token | project_anchor | own_supporting | 0 | ethereum | unit-232823 | `0x346352...e78185` | ⚠️ Unaudited |
| BoostDelegate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232876 | `0x806d47...6ade60` | ⚠️ Unaudited |
| Booster | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232868 | `0x79a50f...c3799e` | ⚠️ Unaudited |
| Booster | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232911 | `0xaffe96...c762f8` | ⚠️ Unaudited |
| Booster | core_logic | project_anchor | own_supporting | 0 | polygon | unit-232970 | `0xf403c1...8aae31` | ⚠️ Unaudited |
| BoosterOwner | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-232976 | `0x2ca775...4c5558` | ⚠️ Unaudited |
| BoosterPlaceholder | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-232996 | `0xd363d1...bbf4e0` | ⚠️ Unaudited |
| BoostFeeClaimer | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232825 | `0x394bfb...1847b6` | ⚠️ Unaudited |
| Burner | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232809 | `0x0f6e12...421e94` | ⚠️ Unaudited |
| Burner | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232923 | `0xcfc7b3...1896e5` | ⚠️ Unaudited |
| ClaimZap | adapter | project_anchor | own_supporting | 0 | ethereum | unit-232833 | `0x3f29cb...cf2516` | ⚠️ Unaudited |
| ConvexMasterChef | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232851 | `0x5f465e...d60605` | ⚠️ Unaudited |
| ConvexRewardPool | core_logic | project_anchor | own_supporting | 0 | polygon | unit-232958 | 2 deployments: polygon `0x65eee1...68a1f5`; arbitrum `0xf2afb3...044c23` | ⚠️ Unaudited |
| cvxFpisStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232948 | `0xfa87db...6bc483` | ⚠️ Unaudited |
| cvxFxnStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232940 | `0xec60cd...e06bef` | ⚠️ Unaudited |
| cvxFxsStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232842 | `0x49b4d1...37e31a` | ⚠️ Unaudited |
| CvxLocker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232926 | `0xd18140...94af50` | ⚠️ Unaudited |
| CvxLockerV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232864 | `0x72a193...2db86e` | ⚠️ Unaudited |
| cvxPrismaStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232807 | `0x0c73f1...0be108` | ⚠️ Unaudited |
| DropMinter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232883 | `0x886418...76d712` | ⚠️ Unaudited |
| DropMinter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232897 | `0x9c4d60...ec9292` | ⚠️ Unaudited |
| ExtraRewardPool | core_logic | project_anchor | own_supporting | 0 | polygon | unit-232964 | `0xa46944...7c861b` | ⚠️ Unaudited |
| ExtraRewardPool | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-232978 | `0x665d4b...8c6ad4` | ⚠️ Unaudited |
| FeeDeposit | unknown | project_anchor | own_supporting | 0 | polygon | unit-232960 | 2 deployments: polygon `0x665d4b...8c6ad4`; arbitrum `0xe7cdd5...5b878a` | ⚠️ Unaudited |
| FeeDepositV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232843 | `0x4b33e9...1fb5d5` | ⚠️ Unaudited |
| FeeDepositV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232870 | `0x7a527d...a0d769` | ⚠️ Unaudited |
| FeeDepositV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232879 | `0x8133f7...01395d` | ⚠️ Unaudited |
| FeeDepositV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232936 | `0xe91861...b63efa` | ⚠️ Unaudited |
| FeeReceiverCvxPrisma | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232827 | `0x3c716e...2efe6a` | ⚠️ Unaudited |
| FeeReceiverCvxPrisma | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232909 | `0xaf9240...76cf3f` | ⚠️ Unaudited |
| FxnDepositor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232847 | `0x56b3c8...b82b91` | ⚠️ Unaudited |
| FxnVoterProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232925 | `0xd11a4e...7b7881` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-233006 | `0xa3c5a1...3de2fb` | ⚠️ Unaudited |
| MerkleAirdrop | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232818 | `0x2e088a...e4accd` | ⚠️ Unaudited |
| PlatformFeeClaimer | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232820 | `0x2f30ef...4b9ba8` | ⚠️ Unaudited |
| PoolManager | core_logic | project_anchor | own_supporting | 0 | polygon | unit-232972 | `0xfc0a2f...2f8017` | ⚠️ Unaudited |
| PoolManager | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-232987 | `0x98ece0...2faa8b` | ⚠️ Unaudited |
| PoolRewardHook | core_logic | project_anchor | own_supporting | 0 | polygon | unit-232968 | `0xedccb3...08aa8d` | ⚠️ Unaudited |
| PoolRewardHook | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-233000 | `0xedccb3...08aa8d` | ⚠️ Unaudited |
| PoolUtilities | core_logic | project_anchor | own_supporting | 0 | polygon | unit-232954 | `0x25e124...c21616` | ⚠️ Unaudited |
| PoolUtilities | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-232991 | `0xb20e68...76eb42` | ⚠️ Unaudited |
| PoolUtilities | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-232994 | `0xcf50b8...139332` | ⚠️ Unaudited |
| PrismaDepositor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232859 | `0x61404f...c2d5b8` | ⚠️ Unaudited |
| PrismaVoterProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232885 | `0x8ad7a9...dfdd5b` | ⚠️ Unaudited |
| ProxyVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232913 | `0xb20b38...37674a` | ⚠️ Unaudited |
| RewardFactory | registry | project_anchor | own_supporting | 0 | polygon | unit-232966 | `0xcf50b8...139332` | ⚠️ Unaudited |
| RewardManager | governance | project_anchor | own_supporting | 0 | polygon | unit-232956 | `0x3c995e...147ab9` | ⚠️ Unaudited |
| RewardManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-232982 | `0x972794...519bd7` | ⚠️ Unaudited |
| TreasuryManager | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232919 | `0xbb48c2...b09ea7` | ⚠️ Unaudited |
| TreasuryManagerPrisma | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232930 | `0xd60cd4...726dfd` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232805 | 2 deployments: ethereum `0x05767d...3de906`; ethereum `0x33f6dd...df4007` | ⚠️ Unaudited |
| Utilities | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232835 | `0x3fc264...8f7951` | ⚠️ Unaudited |
| VestingClaim | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232872 | `0x7e2ca1...9065e7` | ⚠️ Unaudited |
| VoterProxy | unknown | project_anchor | own_supporting | 0 | polygon | unit-232962 | `0x989aeb...24ad80` | ⚠️ Unaudited |
| VoterProxyOwner | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232989 | `0xb1d7c7...0e69e8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232811 | `0x138938...541bb7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232815 | `0x25e124...c21616` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232817 | `0x27445d...a7a04b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232829 | `0x3c995e...147ab9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232831 | `0x3ce640...80f1e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232840 | `0x41a588...851a69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232853 | `0x5f4701...5c5c1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232855 | `0x5fba69...8e5cd1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232857 | `0x60bd3d...f6738b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232866 | `0x782bce...a37f95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232881 | `0x877288...47de75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232887 | `0x8f55d7...a3181e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232889 | `0x92cf9e...a65070` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232893 | `0x989aeb...24ad80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232894 | `0x9b622f...fab702` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232899 | `0xa1bc2c...142991` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232903 | `0xa2cf21...a86ee5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232907 | `0xadd2f5...29c673` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232915 | `0xb5bbc8...586a4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232917 | `0xba9801...20272d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232928 | `0xd20904...91d1e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232932 | `0xdd49a9...5ec82b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232934 | `0xdecc7d...79360d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232938 | `0xe98984...e28fcc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232942 | `0xedccb3...08aa8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232944 | `0xf3bd66...50d973` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232950 | `0xfcb28d...0749cf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Convex Platform Security Audit Report.pdf](https://github.com/convex-eth/platform/blob/main/audit/Convex%20Platform%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2021-04 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 14 | high |
| [PeckShield-Audit-Report-ConvexStakingWrapperOhmSync-v1.0.pdf](https://github.com/convex-eth/platform/blob/main/audit/PeckShield-Audit-Report-ConvexStakingWrapperOhmSync-v1.0.pdf) | PeckShield | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf](https://github.com/convex-eth/platform/blob/main/audit/Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf) | ChainSecurity | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [convex-cvxcrv-staking-wrapper.pdf](https://github.com/convex-eth/platform/blob/main/audit/convex-cvxcrv-staking-wrapper.pdf) | PeckShield | Audit | 2021-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf](https://github.com/convex-eth/frax-cvx-platform/blob/main/audits/PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf) | PeckShield | Audit | 2021-04 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 8 | high |
| [PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf](https://github.com/convex-eth/sidechain-platform/blob/main/audits/PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf) | PeckShield | Audit | 2021-04 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 3 | medium |
| [convex-sidechain-audit-nomoi.pdf](https://github.com/convex-eth/sidechain-platform/blob/main/audits/convex-sidechain-audit-nomoi.pdf) | PeckShield | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12945] Convex Platform Security Audit Report.pdf — matched: All contracts listed in the 'FILES LISTING' section are in scope.
- [12946] PeckShield-Audit-Report-ConvexStakingWrapperOhmSync-v1.0.pdf — no match: Only one contract in scope: ConvexStakingWrapperOhmSync. Audit date from cover page and latest audit report date.
- [12947] Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf — no match: Scope includes contracts under contracts/priceProviders/curve/*, contracts/priceProviders/curveLPTokens/*, contracts/external/convex/*, contracts/wrappers/*, ForwarderPriceProvider.sol, and SiloRouterV2.sol. Version 2 removed curve/* and renamed convex wrappers. Version 4 added reentrancy check files. The audit date is April 4, 2023 from the cover page.
- [12948] convex-cvxcrv-staking-wrapper.pdf — matched: No reason recorded
- [12949] PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf — matched: Extracted contract names from findings targets and mentions. No explicit scope table, but contracts are clearly audited targets.
- [12950] PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf — matched: No explicit scope table; contracts extracted from findings targets and descriptions.
- [12951] convex-sidechain-audit-nomoi.pdf — no match: No explicit scope section found; contracts inferred from findings. No date found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Convex Platform Security Audit Report.pdf | VoterProxy | ambiguous — not counted | VoterProxy (alternative) `0x989aeb...24ad80` — deployed 2022-11-15 06:14:04+03 — liveness: live (code_present_context)<br>VoterProxy (alternative) `0x989aeb...24ad80` — deployed 2023-03-08 08:37:10+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Convex Platform Security Audit Report.pdf | BaseRewardPool | own contract | BaseRewardPool (selected) `0x3fe656...a7587e` — deployed 2021-05-17 12:20:51+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Convex Platform Security Audit Report.pdf | CrvDepositor | own contract | CrvDepositor (selected) `0x801459...dc86ae` — deployed 2021-05-17 12:15:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Convex Platform Security Audit Report.pdf | Interfaces | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | StashFactory | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | DepositToken | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | Cvx | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | ExtraRewardStashV2 | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | Booster | own contract | Booster (alternative) `0x79a50f...c3799e` — deployed 2023-12-19 03:08:23+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c1...8aae31` — deployed 2022-11-15 07:03:41+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xaffe96...c762f8` — deployed 2024-03-01 04:35:35+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c1...8aae31` — deployed 2023-03-08 08:37:56+03 — liveness: live (code_present_context)<br>Booster (selected) `0xf403c1...8aae31` — deployed 2021-05-17 12:09:59+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2021-05-17 was 28d from audit; next candidate 575d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Convex Platform Security Audit Report.pdf | ManagedRewardPool | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | RewardFactory | ambiguous — not counted | RewardFactory (alternative) `0x801459...dc86ae` — deployed 2022-11-15 08:35:44+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0xcf50b8...139332` — deployed 2023-03-08 08:39:50+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Convex Platform Security Audit Report.pdf | cCrv | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | DebugInterfaces | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | cCrvRewardPool | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | TokenFactory | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | ExtraRewardStashV1 | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | cvxRewardPool | own contract | cvxRewardPool (selected) `0xcf50b8...139332` — deployed 2021-05-17 12:21:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Convex Platform Security Audit Report.pdf | VirtualBalanceRewardPool | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-ConvexStakingWrapperOhmSync-v1.0.pdf | ConvexStakingWrapperOhmSync | unmatched — not counted | — | listed in scope table and throughout report | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | ForwarderPriceProvider | unmatched — not counted | — | listed in scope table | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | SiloRouterV2 | unmatched — not counted | — | listed in scope table | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | CurveReentrancyCheck | unmatched — not counted | — | added in version 4, included in scope | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | ICurveReentrancyCheck | unmatched — not counted | — | added in version 4, included in scope | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | ICurveHackyPool | unmatched — not counted | — | added in version 4, included in scope | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | ConvexStakingWrapperSilo | unmatched — not counted | — | listed in scope (renamed to ConvexSiloWrapper in version 2) | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | ConvexStakingWrapperSiloFactory | unmatched — not counted | — | listed in scope (renamed to ConvexSiloWrapperFactory in version 2) | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | ConvexSiloWrapper | unmatched — not counted | — | renamed from ConvexStakingWrapperSilo in version 2 | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | ConvexSiloWrapperFactory | unmatched — not counted | — | renamed from ConvexStakingWrapperSiloFactory in version 2 | no |
| convex-cvxcrv-staking-wrapper.pdf | CvxCrvStakingWrapper | own contract | CvxCrvStakingWrapper (selected) `0xaa0c3f...dbe434` — deployed 2023-01-20 04:19:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | FxsDepositor | unmatched — not counted | — | Target in finding PVE-001 and mentioned in PVE-003 | no |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | IVoteEscrow | unmatched — not counted | — | Interface mentioned in finding PVE-001 | no |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | StakingProxyERC20 | unmatched — not counted | — | Target in finding PVE-002 and mentioned in PVE-004 | no |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | StakingProxyUniV3 | unmatched — not counted | — | Target in finding PVE-002 and PVE-004 | no |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | Booster | ambiguous — not counted | Booster (alternative) `0x79a50f...c3799e` — deployed 2023-12-19 03:08:23+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c1...8aae31` — deployed 2022-11-15 07:03:41+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xaffe96...c762f8` — deployed 2024-03-01 04:35:35+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c1...8aae31` — deployed 2023-03-08 08:37:56+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c1...8aae31` — deployed 2021-05-17 12:09:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | cvxFxsToken | own contract | cvxFxsToken (selected) `0xfeef77...4bdf74` — deployed 2021-12-22 12:09:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | FeeRegistry | unmatched — not counted | — | Mentioned in finding PVE-003 | no |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | MultiRewards | unmatched — not counted | — | Mentioned in findings PVE-003 and PVE-004 | no |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | PoolRegistry | unmatched — not counted | — | Mentioned in finding PVE-003 | no |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | FraxVoterProxy | own contract | FraxVoterProxy (selected) `0x59cfcd...66800b` — deployed 2021-12-21 10:21:06+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf | ConvexRewardPool | ambiguous — not counted | ConvexRewardPool (alternative) `0xf2afb3...044c23` — deployed 2023-03-15 04:55:31+03 — liveness: live (current_address_book_code)<br>ConvexRewardPool (alternative) `0x65eee1...68a1f5` — deployed 2023-03-15 05:00:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf | VoterProxy | own contract | VoterProxy (selected) `0x989aeb...24ad80` — deployed 2022-11-15 06:14:04+03 — liveness: live (code_present_context)<br>VoterProxy (alternative) `0x989aeb...24ad80` — deployed 2023-03-08 08:37:10+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-11-15 was 6d from audit; next candidate 119d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf | Booster | own contract | Booster (alternative) `0x79a50f...c3799e` — deployed 2023-12-19 03:08:23+03 — liveness: live (code_present_context)<br>Booster (selected) `0xf403c1...8aae31` — deployed 2022-11-15 07:03:41+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xaffe96...c762f8` — deployed 2024-03-01 04:35:35+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c1...8aae31` — deployed 2023-03-08 08:37:56+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c1...8aae31` — deployed 2021-05-17 12:09:59+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-11-15 was 6d from audit; next candidate 119d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf | RewardManager | ambiguous — not counted | RewardManager (alternative) `0x972794...519bd7` — deployed 2023-02-27 07:12:16+03 — liveness: live (current_address_book_code)<br>RewardManager (alternative) `0x3c995e...147ab9` — deployed 2023-03-08 08:38:34+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf | RewardFactory | own contract | RewardFactory (selected) `0x801459...dc86ae` — deployed 2022-11-15 08:35:44+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0xcf50b8...139332` — deployed 2023-03-08 08:39:50+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-11-15 was 6d from audit; next candidate 119d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf | TokenFactory | unmatched — not counted | — | Mentioned in description of PVE-003 | no |
| convex-sidechain-audit-nomoi.pdf | ConvexRewardPool | ambiguous — not counted | ConvexRewardPool (alternative) `0xf2afb3...044c23` — deployed 2023-03-15 04:55:31+03 — liveness: live (current_address_book_code)<br>ConvexRewardPool (alternative) `0x65eee1...68a1f5` — deployed 2023-03-15 05:00:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| convex-sidechain-audit-nomoi.pdf | Booster | ambiguous — not counted | Booster (alternative) `0x79a50f...c3799e` — deployed 2023-12-19 03:08:23+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c1...8aae31` — deployed 2022-11-15 07:03:41+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xaffe96...c762f8` — deployed 2024-03-01 04:35:35+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c1...8aae31` — deployed 2023-03-08 08:37:56+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c1...8aae31` — deployed 2021-05-17 12:09:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| convex-sidechain-audit-nomoi.pdf | VoterProxy | ambiguous — not counted | VoterProxy (alternative) `0x989aeb...24ad80` — deployed 2022-11-15 06:14:04+03 — liveness: live (code_present_context)<br>VoterProxy (alternative) `0x989aeb...24ad80` — deployed 2023-03-08 08:37:10+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| convex-sidechain-audit-nomoi.pdf | ExtraRewardPool | ambiguous — not counted | ExtraRewardPool (alternative) `0xa46944...7c861b` — deployed 2023-03-08 08:39:08+03 — liveness: live (code_present_context)<br>ExtraRewardPool (alternative) `0x665d4b...8c6ad4` — deployed 2022-11-17 16:55:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x4e3fbd...5b9d2b` | ConvexToken | token | $105,466,529.64 | Verified native implementation with $105,466,529.64 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x62b9c7...810aa7` | cvxCrvToken | token | $31,331,091.33 | Verified native implementation with $31,331,091.33 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa28473...427df6` | cvxFpisToken | token | $2,129,509.33 | Verified native implementation with $2,129,509.33 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x183395...fffcb3` | cvxFxnToken | token | $2,054,177.22 | Verified native implementation with $2,054,177.22 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x346352...e78185` | cvxPrismaToken | token | $386,021.62 | Verified native implementation with $386,021.62 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x806d47...6ade60` | BoostDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x79a50f...c3799e` | Booster | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaffe96...c762f8` | Booster | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xf403c1...8aae31` | Booster | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2ca775...4c5558` | BoosterOwner | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd363d1...bbf4e0` | BoosterPlaceholder | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x394bfb...1847b6` | BoostFeeClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0f6e12...421e94` | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcfc7b3...1896e5` | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3f29cb...cf2516` | ClaimZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5f465e...d60605` | ConvexMasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x65eee1...68a1f5` | ConvexRewardPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfa87db...6bc483` | cvxFpisStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xec60cd...e06bef` | cvxFxnStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x49b4d1...37e31a` | cvxFxsStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd18140...94af50` | CvxLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x72a193...2db86e` | CvxLockerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0c73f1...0be108` | cvxPrismaStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x886418...76d712` | DropMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9c4d60...ec9292` | DropMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa46944...7c861b` | ExtraRewardPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x665d4b...8c6ad4` | ExtraRewardPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x665d4b...8c6ad4` | FeeDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4b33e9...1fb5d5` | FeeDepositV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7a527d...a0d769` | FeeDepositV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8133f7...01395d` | FeeDepositV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe91861...b63efa` | FeeDepositV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3c716e...2efe6a` | FeeReceiverCvxPrisma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaf9240...76cf3f` | FeeReceiverCvxPrisma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x56b3c8...b82b91` | FxnDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd11a4e...7b7881` | FxnVoterProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2e088a...e4accd` | MerkleAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2f30ef...4b9ba8` | PlatformFeeClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xfc0a2f...2f8017` | PoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x98ece0...2faa8b` | PoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xedccb3...08aa8d` | PoolRewardHook | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xedccb3...08aa8d` | PoolRewardHook | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x25e124...c21616` | PoolUtilities | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb20e68...76eb42` | PoolUtilities | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x61404f...c2d5b8` | PrismaDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8ad7a9...dfdd5b` | PrismaVoterProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb20b38...37674a` | ProxyVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xcf50b8...139332` | RewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x3c995e...147ab9` | RewardManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x972794...519bd7` | RewardManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbb48c2...b09ea7` | TreasuryManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd60cd4...726dfd` | TreasuryManagerPrisma | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3fc264...8f7951` | Utilities | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7e2ca1...9065e7` | VestingClaim | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x989aeb...24ad80` | VoterProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb1d7c7...0e69e8` | VoterProxyOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 66 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 10 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 9 ambiguous, 30 unmatched
- Matched-own operational status: 10 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=1, medium=1
- Match method counts: temporal_name=4, unique_name=6

Zero-match audit list:

- [12946] PeckShield-Audit-Report-ConvexStakingWrapperOhmSync-v1.0.pdf
- [12947] Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf
- [12951] convex-sidechain-audit-nomoi.pdf

Fork inheritance lineage and inherited audits are included when available.
