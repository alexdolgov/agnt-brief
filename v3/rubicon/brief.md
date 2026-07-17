# Agentic Audit Brief: Rubicon

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

- Project: Rubicon (`rubicon`)
- Website: [https://app.rubicon.finance/swap](https://app.rubicon.finance/swap)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 79 unique implementations (79 raw deployments)
- Coverage basis: 0/6 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $152,211.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Rubicon. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across arbitrum, base, ethereum, optimism. Structural roles: 4 core, 1 infra, 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (4), infra (1), supporting (1)
- Contract kinds: contract (6)
- Detected standards: erc165 (1), erc20 (1), ownable (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 1

## Fork Analysis

2 of 29 contracts are derived from known codebases. 27 contracts have no detected origin.

### Forked Contracts

**ArbitrumBridgeExecutor** (`0x64307c2668cf9a8e55dbbe276e33e78fbfb7a16d`, chain 42161)
Origin: compound-finance (`0x0e37599436974a25ddeedf795c848d30af46eacf`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**OptimismBridgeExecutor** (`0x2b290e6c443ffb909eaee2c3269a2bfd6a39c442`, chain 10)
Origin: compound-finance (`0x0e37599436974a25ddeedf795c848d30af46eacf`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x27ec130ffcd2ca54bb9359a6f0a7cf3952617f8a`, chain 1)
- UnnamedContract (`0x7483e83b481c69a93cb025395194e0dc4f32d9c4`, chain 1)
- UnnamedContract (`0x7b42e90f0e5f3cd83b6d623020852e74f1131025`, chain 1)
- UnnamedContract (`0x80e429285e1a847edc2f3258a40f5df5622d9986`, chain 1)
- UnnamedContract (`0xbabeb75c4e110515dc7d31353d404f0a1784d4a4`, chain 1)
- UnnamedContract (`0xbc0f42bdc9491180742c4b4e9ce84dbbec2ffd86`, chain 1)
- UnnamedContract (`0x0a5f4d187415d94deb2a8576d96c64b7b5978114`, chain 10)
- UnnamedContract (`0x5c1fc5e57eaf3f56c1ce05f9508dbe179c713048`, chain 10)
- UnnamedContract (`0x80bfd06271072c4eaa5fef2e3c1217f21bbc11a2`, chain 10)
- UnnamedContract (`0xbc547efb36be42fd71236c9858b6eee0a16fc06b`, chain 10)
- UnnamedContract (`0xfe3b2f655b725ba6cd0cc78961e013968ffb30fb`, chain 10)
- UnnamedContract (`0x1db5b42e760072bd981ae67435f73884aa659cba`, chain 8453)
- UnnamedContract (`0x3a9a3fc757122ba5c518d5d2ac8ce6d78e34b61c`, chain 8453)
- UnnamedContract (`0x4e973a2cdc9b73b794139b0f7f57e379f5ccfe2a`, chain 8453)
- UnnamedContract (`0x5a4f8efa33a2715304fed1363fd0029f185b98b6`, chain 8453)
- UnnamedContract (`0x91b4a1f2bd97c3b577ce944d81260aa3b1fd5a3d`, chain 8453)
- UnnamedContract (`0x95827f79a23b4d51af2b28a9a4fd65a25cc579ff`, chain 8453)
- UnnamedContract (`0xa6311e3998cf02947853d14974401fda5950bddf`, chain 8453)
- UnnamedContract (`0x2e5e5f790558d23a9f38fdc573490745c651fdf3`, chain 42161)
- UnnamedContract (`0x3e0eb76458991959c0a267d75780de7933558d1d`, chain 42161)
- UnnamedContract (`0x524cbc5b0b57eb910827cd132b7b68feef3e29c7`, chain 42161)
- UnnamedContract (`0x6cf1f406210704558c7d99a0d14222b1c7b4043b`, chain 42161)
- UnnamedContract (`0xcc07b85d956de5cdf44d6eed42e1d22d4c87d521`, chain 42161)
- ClonableBeaconProxy (`0x565f12c7f08d906ea9f32c0826412ec13d4f8030`, chain 42161)
- GovernanceStrategy (`0x287672b1efcac09715cfb972aa747a9fcd8b0728`, chain 1)
- MerkleClaimFactory (`0x07f4d8b815458b42ecc27440140c99c764e33b6c`, chain 10)
- OptimismMintableERC20 (`0xb3836098d1e94ec651d74d053d4a0813316b2a2f`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 29/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/6 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 50 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 3 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 29 of 79 unique; 50 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/56
- Verified + Unaudited implementations: 56
- Verified by bytecode match: 0
- Unverified implementations: 23
- Unique implementations: 79
- Raw deployments: 79
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (56)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Admin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8d38290f53aa056726f30fe972b454a63c8843b4` | ⚠️ Unaudited |
| AquilaFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03502261a6aa8e911643cd0d71c6dc6ba570d2b0` | ⚠️ Unaudited |
| AquilaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x109074b31759a5b08164e54c44333f33247e7fd1` | ⚠️ Unaudited |
| ArbitrumBridgeExecutor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391775 | `0x64307c2668cf9a8e55dbbe276e33e78fbfb7a16d` | ⚠️ Unaudited |
| BathBuddy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0299d5f49dcccdd56b80f9fc2730ac3b75d3ffac` | ⚠️ Unaudited |
| BathHouse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0daaf796d2b87cad097908399a0b7e8a1b8b52f5` | ⚠️ Unaudited |
| BathPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x03660e5261c8effd8ec62971ae64e18c4d878a57` | ⚠️ Unaudited |
| BathToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2fd610e57b0239635de4ebd56c178d0d33e4b8fa` | ⚠️ Unaudited |
| BebraVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55982546e8814770753e9b7c3c7b51340f550858` | ⚠️ Unaudited |
| BondAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xece03d9d58086ad6e5e04fcc88d21fb1d1bbe897` | ⚠️ Unaudited |
| BondFixedTermSDA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c2eff644b6084bbd9a57bacb16788048d37ac77` | ⚠️ Unaudited |
| BondFixedTermTeller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd13a6f548f29dea6efb4b26654885e4a97724e5f` | ⚠️ Unaudited |
| ClearingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x79f17c4d4fdb9db42e2b7839d56a2cff10231e04` | ⚠️ Unaudited |
| ClonableBeaconProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-391786 | `0x565f12c7f08d906ea9f32c0826412ec13d4f8030` | ⚠️ Unaudited |
| Collector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1115cfebdb1a4761514b9d3b3d0fd30f503a3170` | ⚠️ Unaudited |
| Executor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c27278542ec10c205d475ea382d9be348fcccd8` | ⚠️ Unaudited |
| GladiusOrderQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56e43695d183dcfa9d8fe95e796227a491627fd9` | ⚠️ Unaudited |
| GladiusReactor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3c53c04d633bec3fb0de3492607c239bf92d07f9` | ⚠️ Unaudited |
| GovernanceStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391759 | `0x287672b1efcac09715cfb972aa747a9fcd8b0728` | ⚠️ Unaudited |
| HypervisorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb1e9934a7f668a4e3ce8845bc28a88c0ae43c96` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1456a1897509bb9a42610d8ff5fe869d2612c181` | ⚠️ Unaudited |
| MarketAid | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0fc9b5f4aeaf77d4aab26e0a3dd27710415db839` | ⚠️ Unaudited |
| MarketAidFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x04fdd1602c0a2f6a39fe64bb0f315080386ada1b` | ⚠️ Unaudited |
| MerkleClaimERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x2181f152d02712cb51072c4cbc1ef8ec2efd6ba3` | ⚠️ Unaudited |
| MerkleClaimFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-391765 | `0x07f4d8b815458b42ecc27440140c99c764e33b6c` | ⚠️ Unaudited |
| MerkleClaimFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5e08f194553c329323db7ccdc5cdd918cc6a0a63` | ⚠️ Unaudited |
| MerkleMerkleMerkle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2618bee17579a416db232cfa7c0afa43586f59ec` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x085ffe068af0ac80dc70d8c0c6e04389dc0c6745` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x001c8124f4d63a6b44c904a9eff620df1be702ab` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x106aa881c7fd4cc8b9ffa613721c49b890c68a52` | ⚠️ Unaudited |
| OptimismBridgeExecutor | unknown | project_anchor | own_supporting | 0 | optimism | unit-391767 | `0x2b290e6c443ffb909eaee2c3269a2bfd6a39c442` | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | project_anchor | own_supporting | 0 | base | unit-391785 | `0xb3836098d1e94ec651d74d053d4a0813316b2a2f` | ⚠️ Unaudited |
| PoolArbExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x455f8f98b52b38ac15dfb628dcee7eeeb57e0b24` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c4bf098a570d4f2dac5fdb9b74bbb84c70da593` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x22066f5a85076630cf9deeb0a12186b73cd3284c` | ⚠️ Unaudited |
| RolesAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x865c9ccc7c5ac4a6cc206a23ce299a61408829a4` | ⚠️ Unaudited |
| RubiconFeeController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c27278542ec10c205d475ea382d9be348fcccd8` | ⚠️ Unaudited |
| RubiconGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x902618f10bf52cfdc19e89de5fb6c107c0ccc935` | ⚠️ Unaudited |
| RubiconMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2d39edaa2fce28752e487dc1693e0b5309353aa0` | ⚠️ Unaudited |
| RubiconRewardsVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39eb71ac275f69e7e7a3a698309fb56b11d78569` | ⚠️ Unaudited |
| RubiconRFQ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x293e354a45a07d25ae1b2f9f00c91115a12986af` | ⚠️ Unaudited |
| RubiconRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x01fb1ad98ff51eb9e218dd74af54cbe213497d37` | ⚠️ Unaudited |
| RubiconV3Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x045b7012cbd158c1b48874310f985adb48aa62ba` | ⚠️ Unaudited |
| RubiLPFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x424f7653afa3e8d5818591e6e7b34e41e33f0c3d` | ⚠️ Unaudited |
| RubiLPFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0ea5bcdf410f7fbf67837b060cbce92a27a7b8b7` | ⚠️ Unaudited |
| StakingMultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1bcbc996fc9e57ab4d3b08a1e7a54b7ae030329c` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x568cc64a86248d02542b20d66f2f7d30d3a2cbe9` | ⚠️ Unaudited |
| StrategistUtility | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x02d902f9e4d29f6143e79f82cca68a1fb8ab4566` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3739488662524c8cdc0b41d2fa6a1bdf75434541` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x84647261db8d61fc9a1717cff5eb64b1d3db640c` | ⚠️ Unaudited |
| TransitionBathHouse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf7cad960fe1f621ce6d05cb1b3240aed135aba25` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x2641884bb28e3d832e7d57dc71e76e849f20ce02` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x63998c67f051a21dc11bceb07e0719a81c1cfd90` | ⚠️ Unaudited |
| UniProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5365df15547fd5475041e7a3c0879d0e49d06d93` | ⚠️ Unaudited |
| UniswapV3Staker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22066f5a85076630cf9deeb0a12186b73cd3284c` | ⚠️ Unaudited |
| WETH9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4200000000000000000000000000000000000006` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (23)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391758 | `0x27ec130ffcd2ca54bb9359a6f0a7cf3952617f8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391760 | `0x7483e83b481c69a93cb025395194e0dc4f32d9c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391761 | `0x7b42e90f0e5f3cd83b6d623020852e74f1131025` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391762 | `0x80e429285e1a847edc2f3258a40f5df5622d9986` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391763 | `0xbabeb75c4e110515dc7d31353d404f0a1784d4a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391764 | `0xbc0f42bdc9491180742c4b4e9ce84dbbec2ffd86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-391766 | `0x0a5f4d187415d94deb2a8576d96c64b7b5978114` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-391768 | `0x5c1fc5e57eaf3f56c1ce05f9508dbe179c713048` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-391769 | `0x80bfd06271072c4eaa5fef2e3c1217f21bbc11a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-391770 | `0xbc547efb36be42fd71236c9858b6eee0a16fc06b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-391771 | `0xfe3b2f655b725ba6cd0cc78961e013968ffb30fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391778 | `0x1db5b42e760072bd981ae67435f73884aa659cba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391779 | `0x3a9a3fc757122ba5c518d5d2ac8ce6d78e34b61c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391780 | `0x4e973a2cdc9b73b794139b0f7f57e379f5ccfe2a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391781 | `0x5a4f8efa33a2715304fed1363fd0029f185b98b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391782 | `0x91b4a1f2bd97c3b577ce944d81260aa3b1fd5a3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391783 | `0x95827f79a23b4d51af2b28a9a4fd65a25cc579ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391784 | `0xa6311e3998cf02947853d14974401fda5950bddf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391772 | `0x2e5e5f790558d23a9f38fdc573490745c651fdf3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391773 | `0x3e0eb76458991959c0a267d75780de7933558d1d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391774 | `0x524cbc5b0b57eb910827cd132b7b68feef3e29c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391776 | `0x6cf1f406210704558c7d99a0d14222b1c7b4043b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391777 | `0xcc07b85d956de5cdf44d6eed42e1d22d4c87d521` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Sherlock bug bounty (opens in a new tab)](https://audits.sherlock.xyz/bug-bounties/77) | Sherlock | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [public Code4rena contest (opens in a new tab)](https://code4rena.com/audits/2023-04-rubicon-v2) | Code4rena | Contest | 2023-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Audit Report (opens in a new tab)](https://code4rena.com/reports/2023-04-rubicon) | Code4rena | Contest | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [Audit Report (opens in a new tab)](https://code4rena.com/reports/2022-05-rubicon) | Code4rena | Contest | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18098] Sherlock bug bounty (opens in a new tab) — no match: The provided text is a bug bounty page header with no contract names or audit report content.
- [18099] public Code4rena contest (opens in a new tab) — no match: The provided text is a leaderboard for a Code4rena audit contest, not the audit report itself. No contracts in scope are listed.
- [18100] Audit Report (opens in a new tab) — no match: Extracted from the audit report's Scope section and findings. The audit took place between April 5 and April 13, 2023, so the end date is used.
- [18101] Audit Report (opens in a new tab) — no match: Scope section explicitly lists 6 smart contracts. Audit date from report header.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit Report (opens in a new tab) | RubiconMarket | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | FeeWrapper | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | BathBuddy | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | Position | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | BathHouseV2 | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | V2Migrator | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | RubiconRouter | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | PoolsUtility | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | SimpleMarket | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | ExpiringMarket | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | Comptroller | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | CErc20Delegate | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | CErc20 | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | CToken | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | WhitePaperInterestRateModel | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | DummyPriceOracle | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | TokenWithFaucet | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | IWETH | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | IBathBuddy | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | IBathToken | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | Some3rdPartyProtocol | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | RubiconRouter | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | RubiconMarket | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | BathBuddy | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | BathToken | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | BathPair | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | BathHouse | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x64307c2668cf9a8e55dbbe276e33e78fbfb7a16d` | ArbitrumBridgeExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x565f12c7f08d906ea9f32c0826412ec13d4f8030` | ClonableBeaconProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x287672b1efcac09715cfb972aa747a9fcd8b0728` | GovernanceStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x07f4d8b815458b42ecc27440140c99c764e33b6c` | MerkleClaimFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x2b290e6c443ffb909eaee2c3269a2bfd6a39c442` | OptimismBridgeExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb3836098d1e94ec651d74d053d4a0813316b2a2f` | OptimismMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 51 |
| upstream | 1 |
| standard_library | 4 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 27 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=2
- Match method counts: n/a

Zero-match audit list:

- [18098] Sherlock bug bounty (opens in a new tab)
- [18099] public Code4rena contest (opens in a new tab)
- [18100] Audit Report (opens in a new tab)
- [18101] Audit Report (opens in a new tab)

Fork inheritance lineage and inherited audits are included when available.
