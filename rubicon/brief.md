# Agentic Audit Brief: Rubicon

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Rubicon (`rubicon`)
- Website: [https://app.rubicon.finance/swap](https://app.rubicon.finance/swap)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 330 unique implementations (335 raw deployments)
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
Origin: compound-finance (`0x0e3759...46eacf`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**OptimismBridgeExecutor** (`0x2b290e6c443ffb909eaee2c3269a2bfd6a39c442`, chain 10)
Origin: compound-finance (`0x0e3759...46eacf`)
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
- Outside the address book: 301 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 29 of 330 unique; 301 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/56
- Verified + Unaudited implementations: 56
- Verified by bytecode match: 0
- Unverified implementations: 274
- Unique implementations: 330
- Raw deployments: 335
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
| GladiusReactor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3c53c04d633bec3fb0de3492607c239bf92d07f9`; ethereum `0x9981bc54aa03e12310cde5221cbe5c2790016d48` | ⚠️ Unaudited |
| GovernanceStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391759 | `0x287672b1efcac09715cfb972aa747a9fcd8b0728` | ⚠️ Unaudited |
| HypervisorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb1e9934a7f668a4e3ce8845bc28a88c0ae43c96` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1456a1897509bb9a42610d8ff5fe869d2612c181`; ethereum `0xe82803a52d951dea19846a4c2eb0e922b8d33886` | ⚠️ Unaudited |
| MarketAid | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0fc9b5f4aeaf77d4aab26e0a3dd27710415db839` | ⚠️ Unaudited |
| MarketAidFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x04fdd1602c0a2f6a39fe64bb0f315080386ada1b` | ⚠️ Unaudited |
| MerkleClaimERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x2181f152d02712cb51072c4cbc1ef8ec2efd6ba3`; optimism `0x3a6c2b9833abbf7299fc24c51751951e904f02dd` | ⚠️ Unaudited |
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
| StrategistUtility | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x02d902f9e4d29f6143e79f82cca68a1fb8ab4566`; optimism `0xaaa001881225f33122ee1538949fd991098c4269` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3739488662524c8cdc0b41d2fa6a1bdf75434541` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x84647261db8d61fc9a1717cff5eb64b1d3db640c` | ⚠️ Unaudited |
| TransitionBathHouse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf7cad960fe1f621ce6d05cb1b3240aed135aba25` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x2641884bb28e3d832e7d57dc71e76e849f20ce02`; optimism `0xb3bc8b7c8f54387fd0a9c92f4fa1d6e7a76504cb` | ⚠️ Unaudited |
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

### ❓ Unverified (274)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bbe37d4866112cd83f8c584d00e4520b499073d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a31d8369abe37e17123d31fe94b81ad6d6959bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391758 | `0x27ec130ffcd2ca54bb9359a6f0a7cf3952617f8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28c7b0ae2be880d1c44f635c4f85fb6d1d5601b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dd10a6bb48d187cfb6c64a9be452879499a46bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3739488662524c8cdc0b41d2fa6a1bdf75434541` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cc35662d6aa5c4208dc9999c158fb3d68bf8e4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d76763831ac477a84d9e21bccd6582f6f992661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e282e79a0892473de71e8fc5615440ab92c7d70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65913298de6322461731019b68e2772ac253616f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c21c9cd5129e6e0307fa22c5710bfbbdb8ec23d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fdf8df8a58aa0bf546cae250503bc81f763a843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x703d150081268df954d5d36e0cfc51b2c443eb6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70d2473f911683fef696fb23ed25540e46d70734` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72826cd3c3040e00f2d831d835b1554ec02ef58a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391760 | `0x7483e83b481c69a93cb025395194e0dc4f32d9c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391761 | `0x7b42e90f0e5f3cd83b6d623020852e74f1131025` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bad585c3ae4ae266f92a4af13b388bc7b26067c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d99de70c70892db73e3bf94f165b3cd836e0a14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391762 | `0x80e429285e1a847edc2f3258a40f5df5622d9986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9618810201af3b61cbb50e08fa82f98df9e9af1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96f6f6b6a774f2ae00885b25301b0a08e6278221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa01a2b3a8c3ac72b096781d0d4b38a773458dfcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa06f338747e889d45e5605553ff53d375b3f7f56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb13d8346bc219e3eb74e95bcb8deb0a362396da9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391763 | `0xbabeb75c4e110515dc7d31353d404f0a1784d4a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391764 | `0xbc0f42bdc9491180742c4b4e9ce84dbbec2ffd86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe5bf84498ca8379eadcce1f7ead0d5988545fa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd4b4242f09f518a18156b6b46a35c5b96a73d3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd28301b86800bbcf1f09a55642ee3e115edb1f67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd37561acb24f2664e74d16f4c3d95a811848dc8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd37eea4c271bfe41a655ac1bd596ba80e631ceea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf62d9e51d7c08360dcd41931a2e6b97ff8c73e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf7e8987421f541c50f821f8cf22a6bda5e1e05b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecc3a3f107f52459e883afcb6d9d11a1a3bafa9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf08db8d79312ce610aeed9463ede1a6bb8ae4235` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf61730abae9e9921bc65a7d8380b54e86753707c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf81c5cfaa3736d728406a7800625f923494b17ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfabc93788df44b8a7c78fb62fc8720e41d8f07e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdb365ec02e728f80be22715543535afb2ae231b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe6ee0cd41c825b56363be64650d26dd1a48a018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfedc4ea0e842a610760a9de3a3446299395b905d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x05cee65cc4d2c59cb4b927ad25b2d6326af7401e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-391766 | `0x0a5f4d187415d94deb2a8576d96c64b7b5978114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1370ea7dc27c34d72a1a04207b967cdb817121bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1b1da1817b4a637cf81bcebd3357e3ca59ee5bde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1be63db5051c126f54ad0807e1b471ad9aa0befd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1c034c49aef924691ed6c6c3c28821ca2965d445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1ea6f492abac1f1b22259ab77e2f4b12ad6ab1c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x203328c161d23dceee3e439deeb25ca19e2c4984` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x224cea1e3f8c8bbe35cb88bfcc364b3c658e78b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x25d6c94ce4d8822efaf62238c97f79d59dd05551` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x267d94c6e67e4436effe092b08d040cff36b2da7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x293b1ce0048cf6264ee193fa7c6b9a999c3f2711` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x29da5213c75a1976452a27c8054e4c65ab0a3c53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2c79c0099ce6a9044ee6e05d5cf59389b387d22a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x30f5fe161da1cb92ac09e10b734de07d5c120fdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3a19b96b9599f63883c28a09f653b1b12b116670` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3cefa85be7f532fdcd54adf2e4ca38eebb5576b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4192119c9569916eef3a5996032306311eab0fff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x431f7276f5998156285d2019b9128c93a6ab9bd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x44591ed28ace30a583e6f327716fb9310b15ce2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x448130d049044d53ec22bc9750f5945ccd69db7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4498c5ee9fdbe2501c92f3b31639703e6d5d3fd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x485d674f5594716986a5530afa940aa768a3e62c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4882431863b26f0fd7d7905577e067ed3d2915ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4d5094edc4d2c95ef9f040c2bb6ea888ad2c9297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4d986c946f610b5c9978871b00581c9047dffc30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4f06912118dd95da06b97eed80ba593b9e0329f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x505fb5d94c3cf68e13b5ba2ca1868f2b580007cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5364a429cc1647e4adcac157168711bd8185fd83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x55824c11de8bae9a82215c51617ffe3a5f6a3744` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x55ca6826225dd775ad829c414ac040330f37f9f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x58063154a642ffaf2cf563b19358ac8ed12a4c61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x585a164b9c5cb115499ca2df0bcccbd798234b75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-391768 | `0x5c1fc5e57eaf3f56c1ce05f9508dbe179c713048` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5c8c6d48e771935a6cb14e5acc7020c026ec4844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5fafd12ead4234270db300352104632187ed763a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x60b30c1a7633e55248fcba53ab8f24f5c54984c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6128660b9e4a570971759008824d082b6d282057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x612d4eaf6879c4424e44d031d97aa3010e15499a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x62a16c6899e8fd8bec52307b0584dc92268eff8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x63614adc11e3bd10bdd502710c7e9fb4870f476c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6b04a55f47325fb095b866e38ca1e281f8f9d2db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6d6c6dfd8a4f952f5c015eaaf4263779029b4cda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x711a5c8ba2bfe94e6a9d37d5999e5bcab8ce8cf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x74449d5b13839a7fdbaf00811da67240f6eda8ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7478d71889cddb6ebdc8b9295d83fc554525e885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x75760bdbf7b71d9e68146684ef0a0c06701e6309` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7a665e4191d0c8a02dbfb0feb550ae25f02c0dbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7af14adc8aea70f063c7ea3b2c1ad0d7a59c4bff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7f9c2cb8393a5a5b1e0a1f38789da394912eda0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-391769 | `0x80bfd06271072c4eaa5fef2e3c1217f21bbc11a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x810cf5404f20270eb2249f07b5b1a2ed9deae16f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x88aa0ddbdd26495ece39d0190a282eedf29e1c78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x91f4c95369b7d6224bcd16317d5de12257dd0da9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x92c5da0bfdbfa9731741084bf41c12fa972f2641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x935ae1d1f8a5077d9aaea862fce40bb054d72f6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x951a84d192b143dd421bb2fb7a4cc866bb51d62e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x956f1787864b139597566a7e0198633c68bb6787` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x966572de3e5d5f83ce9b1d0b12d36038be6ec01f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9715b7ac3e4f8c3a1c57ceca5ae4870638ed058f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x98169248bdf25e0e297ea478ab46ac24058fac78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x98e51d3893171882e0af0c5c9b88bd17591bc6f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x98fe79124697774f96433690bab80c3b5044efb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9a62a11025351f4279e4af89228d16f69fa24dd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9c6e912e1ce3171b5bc44f3acb23792ede9ce646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9d274f053ed5c2aff203f337eda8169d7f29ab86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9d809021d92ed6b6ceeb5053b1081fbc32ec6729` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9e40c3f8ff0878d569a38ff328480cc601cc6f08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa4d20e7afa8f3cf1f089144f710d5bc28b0daee8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa54a732d7c0c3221e9caf3e9350af8a8af2ab276` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa567d65965b9dfb6389092ccefe6bd9c376f2f6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa5f89c50712a93cd6b21c444ef0c42f67cd55cfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa96da06e4b0b3c3b369aba9685d99c8459ebddaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xab0022fde9e19ebcff178bbc9cd621960ed7ffb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb0af6f4e8f0eb91ee2d058ba0ddbf472e76aabc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb28e765a5548c0bc8935e4390673c0d1b5073b7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb6efa81466ab4a93129245bd2aaa535280f7adbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb77dae11ca7364e0e6bdcaaa60c9dda5646c2d4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbb40ff27fd79ff1d275b4f955be16814d4b425ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbb66acb8b62c75400b7fa06ff49d8649ab8f2a78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-391770 | `0xbc547efb36be42fd71236c9858b6eee0a16fc06b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbde95d32c1a9ee4f41f64507869679118008421e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbe244dc919c90bd0229ae8a7dc35f1fd5f09894c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc0e065fbf0c3432847c80bc72fd5dbddcafd8c58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc69372f4f919ca09bceea5acba2501c18f7310c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc8a85072206aa8e4796de840b00efc331abd040d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc9a7d994c8f64582380b3eff4cdf2a9e59605dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcc7dc8e2908c5d09fef768a74b82dd1c3197529d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcf36d3ce95c16aa44aead1be3e1457a4731d3dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd26c0fc29d12b115cc86c5a4218c9acc04308853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd376b6bab4c5da3cd83dd49a346b3d432385724e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd528e1c99b0bdf1caf14f968f31adab81c59dcc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd5d62cd4a027d8cf65af86de31bb464825ad02e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd99c7c5f9f3a1c2773570dd958fd7e48eb45b06b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd9aaa6c2b57b1871919da39be3efa24d280ce9a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xddbcefda0fe893d4d7408fbb1c250207c4c0b601` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdf703d8ab675b7373701986e1d34f3ac32c1ca39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdffdbb54b9968fee543a8d2bd3ce7a80d66cd49f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe16d1f031aa363d211535d82b05024fbc3d79ad9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe27375343dd181fec634f69c46ba3827a6843a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe66b612153daf1d7c5121172d54ea53f18b4497f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe7043e97fdc28f507b9137c94df2e2a23a85acd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe80624fbf823057f3453d405dfcb01195472cf93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe82803a52d951dea19846a4c2eb0e922b8d33886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe872b20f755451c66f415316fba2e6bbbc6ffeb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe8f323f7eaa070c0e45e40744e3ddb656a6be19f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe9c95e87d2728ac8d122da483926c1f4360f44a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xebc9ea5560bd549ec1d5066a6ed7454d91735485` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xed33a81153fbf6bf18d24029bc596d329e935a4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf10638b8a3cd4820ae1aefeb27c40354fbf68672` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf12734d297232c566e1db790f5a1237132a68877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf3dab8691aed8d1ea640fec94df0e0adaaa2c24d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf633516025678d72e35843bdcf90ac1fe726061a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf665e9e3ab592207a8b6bf3421b2da79ddf6b8e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf8780e00ce8ed2e79aec10908a169900ed1d4afe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf882defd9d5d988d05c6bca9061fc6f817f491c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf8c8308a7c89315b8395a945c32e879a1295cd20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf8cc321bb516770bc3ce9f2f1dcef32d612cd0f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfd6fd41bea9fd489ffdf05cd8118a69bf98caa5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfdea4da674d280be218399f10452922c1404889f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-391771 | `0xfe3b2f655b725ba6cd0cc78961e013968ffb30fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfee5ee79d3b4cf5dd309bbe4ba6520a399e77998` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0bdec8a4c59b22a682ebd40e67a71b63c1218478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1456a1897509bb9a42610d8ff5fe869d2612c181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x155a7757bb22df998e97f63e719a8d9ef1c2bd42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1b146485f1cbc726fd08c89c703b807730cb71bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391778 | `0x1db5b42e760072bd981ae67435f73884aa659cba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x226b9cf113c32ab56ee2afb3ce252308c4fb1b95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x27d1395097960e5f33fc88b4e0d535bf6ac86640` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x28185700ec6e40b633e6f25dc447c1677036aec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x32b461e7163e8ad9d7993d4405b737e48895a9bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391779 | `0x3a9a3fc757122ba5c518d5d2ac8ce6d78e34b61c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4882431863b26f0fd7d7905577e067ed3d2915ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x49d48e36ba942e3250aaedd54d5d4034d05ca778` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391780 | `0x4e973a2cdc9b73b794139b0f7f57e379f5ccfe2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4ec5913256fb7ba41d3f70629fb0eb20bf89c822` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4eed13cc1624438daff13599cb5578bf9ae51bc5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391781 | `0x5a4f8efa33a2715304fed1363fd0029f185b98b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5b1198a0585ef74090a7e8c1eb0952998357fd9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5e49503c577b2968bc31f5666d843588c93d8761` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x611c87bdd050d0a928f53ed73ec1449d254d4d5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x620b7445f2e36d291dfae08306eb2749655e46c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x634f60cbb178aea037dc3dfa742c7401ae116605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6490483d77866e81743ce86e5dbd2c16391a4b85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6501c98b9b4e9ebb2879016f9c04e50e15046bf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6b49a0bd2744acbdb2a4a901a3d5655323bd567e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6b6b6aa808423fbecc9cceb4fdeffb76a550bae7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x74a15a9680be3b909dcdc862e6da4dc1193d5007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x784cc449a81f4434d97d817054a9fa6c1b059d2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x78f8ac461b4602083d652410f74a2b6f2b69323a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7a9f35d0d512325c88bff906d00cd91b3dd12fe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7cc20ad7599832b8066e0acb9fedb631bd9c3596` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x839630198b695b73549563d3d5f7a026a65de913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x87dceacf1051e17e2d39bc62dcbf348d6b7bf405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8814575bbff6f7f8084a34b6776660cbc7344c3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8dd16ffc6543aabb34cc6dd3aea0b2febd3bc143` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8f64b8238959807c362fa176a3af7cbd02821178` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391782 | `0x91b4a1f2bd97c3b577ce944d81260aa3b1fd5a3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x929675f6a6ac12d7cc3463be1df7221ca35b8a00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391783 | `0x95827f79a23b4d51af2b28a9a4fd65a25cc579ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9a5215e96e1185d4e6002c95c3cc0ab6eead354f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa5667f000156a8f619e232e5d0b292ae90b683a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa5ca8ba2e3017e9af3bd9eda69e9e8c263abf6cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa5e0afff5df05329222c143e0616cd4ca0b3ce5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391784 | `0xa6311e3998cf02947853d14974401fda5950bddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac9f95c6f4edb6621648094b093347a6731a9c14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb25afa8521012f9e0e532781b3be2f9f148f26ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb5e5a9e628fef819150a6e5127ab481cee5d6ca9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb9921dabda9598a82b04ce6ecf0b66f4f1dc0974` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbb603a3c68cd9625b77d4367d000fe71460d2a9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd2c95ec0a9807edeb4013929541e322707c562b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc2b33a7601f3f0ecff2ee4b5b7c647770069a836` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc474a7fef98d79f69ed798eec774bc28884c588b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc4c438343d31a609022fd77fb0924b4b7a0cde91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc715a30fde987637a082cf5f19c74648b67f2db8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc7d4371f2742fc790693f75d4dd6945df442b10a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcfcf1eae74570c21647969ababdbc0b926324716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd3d67e0338c466b33f292a174ca8fd939babab34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd4dcb4e92b0f434f1297d5239a3aad875e25f675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdbed2728a0a4205e623e55656d8beb899e8b4186` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe14c2fdde8ae7f8db463fb10814a75abbf9b8bc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe3d116ca7b1f88beaa677af72b99749043f364ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe915b714f23d5eef44f65053caa02e38ef897166` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf151c0d62c8aa14189b97e88ad05efff91223abe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf75a94e360502618c838219f8954ce8b7666b42f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf967db129324556d4fd83ce679b2b86fd8d5f26b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfd7d68467193b798282ecd5fce9ad29f8d477b16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xff53aa370d66459bf7672014eb3a279d342c5a8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x074c9b8d7a5d477e83eb75d9d8fcfdc05951ad74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e07c6809b80e0f84df3f360e3db1fb15744c5e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17c29206c3702ff44c0f1d27fa8900bbd40d1c4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x188cd981263c31ffdc02e6d7d2d62517bfdc5a9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x28c7b0ae2be880d1c44f635c4f85fb6d1d5601b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391772 | `0x2e5e5f790558d23a9f38fdc573490745c651fdf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30f25fb5a2b4bc8da093f28ddce120721fc70166` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x343918b00b872e3608db36b069f6a28c237bb732` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c57834ab85f7d9f036ef1c3147817694171dc03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3cc35662d6aa5c4208dc9999c158fb3d68bf8e4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391773 | `0x3e0eb76458991959c0a267d75780de7933558d1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5248485f8e13c40c0ce195dd846924cc34165743` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391774 | `0x524cbc5b0b57eb910827cd132b7b68feef3e29c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d58c0668fe862e6e0f7861a325c9a8c80896b04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x692a293a4bd85200754650b79cb00eee2957dc77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391776 | `0x6cf1f406210704558c7d99a0d14222b1c7b4043b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6d81571b4c75ccf08bd16032d0ae54dbaff548b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f17b8b9fa99af2deb61c2465ce6726d5e8d4eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6fdf8df8a58aa0bf546cae250503bc81f763a843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7988f58d6708ad5fa7597e0d19be59ed75027555` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7d99de70c70892db73e3bf94f165b3cd836e0a14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b848639d3bed6db856b3a69e3c33fbebd672e6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9c42fae9e3c63150bcbe4aaba292681d5b0b0720` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d69b3b0ccd388276303a73a816561e35bd35405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9e7395c4f81b1cc448a8f2d813fc6f2991c6551a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9eb5e5608a5c8ef054354c3f3b5c361532041675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa01a2b3a8c3ac72b096781d0d4b38a773458dfcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb37eca4f379fefad950e64ce84ac7e60a3922827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6efa81466ab4a93129245bd2aaa535280f7adbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc1a19c0784558042697be0c0d67689b9f31359b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc830db683568a88b08b943f99af678186f80b582` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391777 | `0xcc07b85d956de5cdf44d6eed42e1d22d4c87d521` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd150b753bb4905beae1e973cc55a28e2a5505322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd28301b86800bbcf1f09a55642ee3e115edb1f67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd928fd978a9142dd311645658ebb10dec38ed033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdab9f9e22b876fe439e1ac000e996843854d4ab9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdf7e8987421f541c50f821f8cf22a6bda5e1e05b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe154208e44503ac07d0a355499625004a2901523` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeca3ea559b7566e610d113bba8d1b15b085c9c68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xecd584aa6f994d6cf526f037c958e7f71db06c1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf37f4da360da171229963113eeebed25fcf5a4fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf61730abae9e9921bc65a7d8380b54e86753707c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9aa81afba1fdedc74c5d1426c124bae07b86830` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfabc93788df44b8a7c78fb62fc8720e41d8f07e0` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 256
- Live contracts: 0
- Unknown liveness contracts: 256
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=256

Showing first 200 of 256 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x17c29206c3702ff44c0f1d27fa8900bbd40d1c4f` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x28c7b0ae2be880d1c44f635c4f85fb6d1d5601b6` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x30f25fb5a2b4bc8da093f28ddce120721fc70166` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3c57834ab85f7d9f036ef1c3147817694171dc03` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3cc35662d6aa5c4208dc9999c158fb3d68bf8e4b` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x692a293a4bd85200754650b79cb00eee2957dc77` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6fdf8df8a58aa0bf546cae250503bc81f763a843` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7d99de70c70892db73e3bf94f165b3cd836e0a14` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa01a2b3a8c3ac72b096781d0d4b38a773458dfcf` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdf7e8987421f541c50f821f8cf22a6bda5e1e05b` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfabc93788df44b8a7c78fb62fc8720e41d8f07e0` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x074c9b8d7a5d477e83eb75d9d8fcfdc05951ad74` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0e07c6809b80e0f84df3f360e3db1fb15744c5e3` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x188cd981263c31ffdc02e6d7d2d62517bfdc5a9e` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x343918b00b872e3608db36b069f6a28c237bb732` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5248485f8e13c40c0ce195dd846924cc34165743` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5d58c0668fe862e6e0f7861a325c9a8c80896b04` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6d81571b4c75ccf08bd16032d0ae54dbaff548b0` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6f17b8b9fa99af2deb61c2465ce6726d5e8d4eaa` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7988f58d6708ad5fa7597e0d19be59ed75027555` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9b848639d3bed6db856b3a69e3c33fbebd672e6b` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9c42fae9e3c63150bcbe4aaba292681d5b0b0720` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9d69b3b0ccd388276303a73a816561e35bd35405` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9e7395c4f81b1cc448a8f2d813fc6f2991c6551a` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9eb5e5608a5c8ef054354c3f3b5c361532041675` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb37eca4f379fefad950e64ce84ac7e60a3922827` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb6efa81466ab4a93129245bd2aaa535280f7adbb` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc1a19c0784558042697be0c0d67689b9f31359b7` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc830db683568a88b08b943f99af678186f80b582` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd150b753bb4905beae1e973cc55a28e2a5505322` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd28301b86800bbcf1f09a55642ee3e115edb1f67` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd928fd978a9142dd311645658ebb10dec38ed033` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdab9f9e22b876fe439e1ac000e996843854d4ab9` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe154208e44503ac07d0a355499625004a2901523` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xeca3ea559b7566e610d113bba8d1b15b085c9c68` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xecd584aa6f994d6cf526f037c958e7f71db06c1c` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf37f4da360da171229963113eeebed25fcf5a4fd` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf61730abae9e9921bc65a7d8380b54e86753707c` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf9aa81afba1fdedc74c5d1426c124bae07b86830` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| base | unverified unclassified | UnnamedContract<br>`0x155a7757bb22df998e97f63e719a8d9ef1c2bd42` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0x1b146485f1cbc726fd08c89c703b807730cb71bb` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0x226b9cf113c32ab56ee2afb3ce252308c4fb1b95` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0x27d1395097960e5f33fc88b4e0d535bf6ac86640` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0x28185700ec6e40b633e6f25dc447c1677036aec5` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0x32b461e7163e8ad9d7993d4405b737e48895a9bd` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0x49d48e36ba942e3250aaedd54d5d4034d05ca778` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0x4ec5913256fb7ba41d3f70629fb0eb20bf89c822` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0x4eed13cc1624438daff13599cb5578bf9ae51bc5` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0x5b1198a0585ef74090a7e8c1eb0952998357fd9b` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0x620b7445f2e36d291dfae08306eb2749655e46c5` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0x6501c98b9b4e9ebb2879016f9c04e50e15046bf8` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0x74a15a9680be3b909dcdc862e6da4dc1193d5007` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0x784cc449a81f4434d97d817054a9fa6c1b059d2d` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0x7a9f35d0d512325c88bff906d00cd91b3dd12fe6` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0x839630198b695b73549563d3d5f7a026a65de913` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0x8814575bbff6f7f8084a34b6776660cbc7344c3c` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0x8dd16ffc6543aabb34cc6dd3aea0b2febd3bc143` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0xa5667f000156a8f619e232e5d0b292ae90b683a1` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0xac9f95c6f4edb6621648094b093347a6731a9c14` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0xb5e5a9e628fef819150a6e5127ab481cee5d6ca9` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0xc7d4371f2742fc790693f75d4dd6945df442b10a` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0xd3d67e0338c466b33f292a174ca8fd939babab34` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0xe14c2fdde8ae7f8db463fb10814a75abbf9b8bc9` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0xf75a94e360502618c838219f8954ce8b7666b42f` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0xfd7d68467193b798282ecd5fce9ad29f8d477b16` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0xff53aa370d66459bf7672014eb3a279d342c5a8f` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| base | unverified unclassified | UnnamedContract<br>`0x0bdec8a4c59b22a682ebd40e67a71b63c1218478` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| base | unverified unclassified | UnnamedContract<br>`0x1456a1897509bb9a42610d8ff5fe869d2612c181` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| base | unverified unclassified | UnnamedContract<br>`0x4882431863b26f0fd7d7905577e067ed3d2915ad` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| base | unverified unclassified | UnnamedContract<br>`0x5e49503c577b2968bc31f5666d843588c93d8761` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| base | unverified unclassified | UnnamedContract<br>`0x611c87bdd050d0a928f53ed73ec1449d254d4d5a` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| base | unverified unclassified | UnnamedContract<br>`0x634f60cbb178aea037dc3dfa742c7401ae116605` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| base | unverified unclassified | UnnamedContract<br>`0x6b49a0bd2744acbdb2a4a901a3d5655323bd567e` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| base | unverified unclassified | UnnamedContract<br>`0x6b6b6aa808423fbecc9cceb4fdeffb76a550bae7` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| base | unverified unclassified | UnnamedContract<br>`0x7cc20ad7599832b8066e0acb9fedb631bd9c3596` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| base | unverified unclassified | UnnamedContract<br>`0x87dceacf1051e17e2d39bc62dcbf348d6b7bf405` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| base | unverified unclassified | UnnamedContract<br>`0x8f64b8238959807c362fa176a3af7cbd02821178` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| base | unverified unclassified | UnnamedContract<br>`0xa5ca8ba2e3017e9af3bd9eda69e9e8c263abf6cd` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| base | unverified unclassified | UnnamedContract<br>`0xa5e0afff5df05329222c143e0616cd4ca0b3ce5f` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| base | unverified unclassified | UnnamedContract<br>`0xb25afa8521012f9e0e532781b3be2f9f148f26ab` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| base | unverified unclassified | UnnamedContract<br>`0xb9921dabda9598a82b04ce6ecf0b66f4f1dc0974` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| base | unverified unclassified | UnnamedContract<br>`0xbb603a3c68cd9625b77d4367d000fe71460d2a9f` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| base | unverified unclassified | UnnamedContract<br>`0xbd2c95ec0a9807edeb4013929541e322707c562b` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| base | unverified unclassified | UnnamedContract<br>`0xc474a7fef98d79f69ed798eec774bc28884c588b` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| base | unverified unclassified | UnnamedContract<br>`0xc4c438343d31a609022fd77fb0924b4b7a0cde91` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| base | unverified unclassified | UnnamedContract<br>`0xcfcf1eae74570c21647969ababdbc0b926324716` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| base | unverified unclassified | UnnamedContract<br>`0xdbed2728a0a4205e623e55656d8beb899e8b4186` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| base | unverified unclassified | UnnamedContract<br>`0xe3d116ca7b1f88beaa677af72b99749043f364ce` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| base | unverified unclassified | UnnamedContract<br>`0xe915b714f23d5eef44f65053caa02e38ef897166` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| base | unverified unclassified | UnnamedContract<br>`0xf151c0d62c8aa14189b97e88ad05efff91223abe` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| base | unverified unclassified | UnnamedContract<br>`0xf967db129324556d4fd83ce679b2b86fd8d5f26b` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| base | unverified unclassified | UnnamedContract<br>`0x6490483d77866e81743ce86e5dbd2c16391a4b85` | non_address_book | unknown | unknown | unverified | n/a | `0xc96495c314879586761d991a2b68ebeab12c03fe` |
| base | unverified unclassified | UnnamedContract<br>`0x78f8ac461b4602083d652410f74a2b6f2b69323a` | non_address_book | unknown | unknown | unverified | n/a | `0xc96495c314879586761d991a2b68ebeab12c03fe` |
| base | unverified unclassified | UnnamedContract<br>`0x929675f6a6ac12d7cc3463be1df7221ca35b8a00` | non_address_book | unknown | unknown | unverified | n/a | `0xc96495c314879586761d991a2b68ebeab12c03fe` |
| base | unverified unclassified | UnnamedContract<br>`0x9a5215e96e1185d4e6002c95c3cc0ab6eead354f` | non_address_book | unknown | unknown | unverified | n/a | `0xc96495c314879586761d991a2b68ebeab12c03fe` |
| base | unverified unclassified | UnnamedContract<br>`0xc2b33a7601f3f0ecff2ee4b5b7c647770069a836` | non_address_book | unknown | unknown | unverified | n/a | `0xc96495c314879586761d991a2b68ebeab12c03fe` |
| base | unverified unclassified | UnnamedContract<br>`0xc715a30fde987637a082cf5f19c74648b67f2db8` | non_address_book | unknown | unknown | unverified | n/a | `0xc96495c314879586761d991a2b68ebeab12c03fe` |
| base | unverified unclassified | UnnamedContract<br>`0xd4dcb4e92b0f434f1297d5239a3aad875e25f675` | non_address_book | unknown | unknown | unverified | n/a | `0xc96495c314879586761d991a2b68ebeab12c03fe` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0bbe37d4866112cd83f8c584d00e4520b499073d` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a31d8369abe37e17123d31fe94b81ad6d6959bc` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x28c7b0ae2be880d1c44f635c4f85fb6d1d5601b6` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3739488662524c8cdc0b41d2fa6a1bdf75434541` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3cc35662d6aa5c4208dc9999c158fb3d68bf8e4b` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4d76763831ac477a84d9e21bccd6582f6f992661` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x65913298de6322461731019b68e2772ac253616f` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6c21c9cd5129e6e0307fa22c5710bfbbdb8ec23d` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6fdf8df8a58aa0bf546cae250503bc81f763a843` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7d99de70c70892db73e3bf94f165b3cd836e0a14` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9618810201af3b61cbb50e08fa82f98df9e9af1a` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa01a2b3a8c3ac72b096781d0d4b38a773458dfcf` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa06f338747e889d45e5605553ff53d375b3f7f56` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbe5bf84498ca8379eadcce1f7ead0d5988545fa0` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd37561acb24f2664e74d16f4c3d95a811848dc8c` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd37eea4c271bfe41a655ac1bd596ba80e631ceea` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdf62d9e51d7c08360dcd41931a2e6b97ff8c73e8` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdf7e8987421f541c50f821f8cf22a6bda5e1e05b` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xecc3a3f107f52459e883afcb6d9d11a1a3bafa9a` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfabc93788df44b8a7c78fb62fc8720e41d8f07e0` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfdb365ec02e728f80be22715543535afb2ae231b` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfedc4ea0e842a610760a9de3a3446299395b905d` | non_address_book | unknown | unknown | unverified | n/a | `0x00b20eed81122763a393f11765d821ea0b8d4d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2dd10a6bb48d187cfb6c64a9be452879499a46bc` | non_address_book | unknown | unknown | unverified | n/a | `0x4140620cb591c15ef31510c602c40ab8b972d897` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x70d2473f911683fef696fb23ed25540e46d70734` | non_address_book | unknown | unknown | unverified | n/a | `0x4140620cb591c15ef31510c602c40ab8b972d897` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x72826cd3c3040e00f2d831d835b1554ec02ef58a` | non_address_book | unknown | unknown | unverified | n/a | `0x4140620cb591c15ef31510c602c40ab8b972d897` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7bad585c3ae4ae266f92a4af13b388bc7b26067c` | non_address_book | unknown | unknown | unverified | n/a | `0x4140620cb591c15ef31510c602c40ab8b972d897` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9981bc54aa03e12310cde5221cbe5c2790016d48` | non_address_book | unknown | unknown | unverified | n/a | `0x4140620cb591c15ef31510c602c40ab8b972d897` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcd4b4242f09f518a18156b6b46a35c5b96a73d3e` | non_address_book | unknown | unknown | unverified | n/a | `0x4140620cb591c15ef31510c602c40ab8b972d897` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4e282e79a0892473de71e8fc5615440ab92c7d70` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x703d150081268df954d5d36e0cfc51b2c443eb6e` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x96f6f6b6a774f2ae00885b25301b0a08e6278221` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb13d8346bc219e3eb74e95bcb8deb0a362396da9` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd28301b86800bbcf1f09a55642ee3e115edb1f67` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe82803a52d951dea19846a4c2eb0e922b8d33886` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf08db8d79312ce610aeed9463ede1a6bb8ae4235` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf61730abae9e9921bc65a7d8380b54e86753707c` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf81c5cfaa3736d728406a7800625f923494b17ee` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe6ee0cd41c825b56363be64650d26dd1a48a018` | non_address_book | unknown | unknown | unverified | n/a | `0x86df6e29ee8494c389dffdfb7ce2ce2a62b41bb4` |
| optimism | unverified unclassified | UnnamedContract<br>`0x05cee65cc4d2c59cb4b927ad25b2d6326af7401e` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x1370ea7dc27c34d72a1a04207b967cdb817121bf` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x1b1da1817b4a637cf81bcebd3357e3ca59ee5bde` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x1be63db5051c126f54ad0807e1b471ad9aa0befd` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x1c034c49aef924691ed6c6c3c28821ca2965d445` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x1ea6f492abac1f1b22259ab77e2f4b12ad6ab1c5` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x203328c161d23dceee3e439deeb25ca19e2c4984` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x224cea1e3f8c8bbe35cb88bfcc364b3c658e78b0` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x25d6c94ce4d8822efaf62238c97f79d59dd05551` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x267d94c6e67e4436effe092b08d040cff36b2da7` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x29da5213c75a1976452a27c8054e4c65ab0a3c53` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x2c79c0099ce6a9044ee6e05d5cf59389b387d22a` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x30f5fe161da1cb92ac09e10b734de07d5c120fdd` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x3a19b96b9599f63883c28a09f653b1b12b116670` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x3a6c2b9833abbf7299fc24c51751951e904f02dd` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x3cefa85be7f532fdcd54adf2e4ca38eebb5576b8` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x431f7276f5998156285d2019b9128c93a6ab9bd4` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x44591ed28ace30a583e6f327716fb9310b15ce2c` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x448130d049044d53ec22bc9750f5945ccd69db7c` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x485d674f5594716986a5530afa940aa768a3e62c` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x4d5094edc4d2c95ef9f040c2bb6ea888ad2c9297` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x4d986c946f610b5c9978871b00581c9047dffc30` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x4f06912118dd95da06b97eed80ba593b9e0329f3` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x505fb5d94c3cf68e13b5ba2ca1868f2b580007cc` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x5364a429cc1647e4adcac157168711bd8185fd83` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x55824c11de8bae9a82215c51617ffe3a5f6a3744` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x55ca6826225dd775ad829c414ac040330f37f9f2` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x58063154a642ffaf2cf563b19358ac8ed12a4c61` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x585a164b9c5cb115499ca2df0bcccbd798234b75` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x5c8c6d48e771935a6cb14e5acc7020c026ec4844` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x5fafd12ead4234270db300352104632187ed763a` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x60b30c1a7633e55248fcba53ab8f24f5c54984c3` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x6128660b9e4a570971759008824d082b6d282057` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x612d4eaf6879c4424e44d031d97aa3010e15499a` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x62a16c6899e8fd8bec52307b0584dc92268eff8d` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x63614adc11e3bd10bdd502710c7e9fb4870f476c` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x6b04a55f47325fb095b866e38ca1e281f8f9d2db` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x6d6c6dfd8a4f952f5c015eaaf4263779029b4cda` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x711a5c8ba2bfe94e6a9d37d5999e5bcab8ce8cf1` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x74449d5b13839a7fdbaf00811da67240f6eda8ef` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x7478d71889cddb6ebdc8b9295d83fc554525e885` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x75760bdbf7b71d9e68146684ef0a0c06701e6309` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x7a665e4191d0c8a02dbfb0feb550ae25f02c0dbf` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x7af14adc8aea70f063c7ea3b2c1ad0d7a59c4bff` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x7f9c2cb8393a5a5b1e0a1f38789da394912eda0d` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x810cf5404f20270eb2249f07b5b1a2ed9deae16f` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x88aa0ddbdd26495ece39d0190a282eedf29e1c78` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x91f4c95369b7d6224bcd16317d5de12257dd0da9` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x92c5da0bfdbfa9731741084bf41c12fa972f2641` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x951a84d192b143dd421bb2fb7a4cc866bb51d62e` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x956f1787864b139597566a7e0198633c68bb6787` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x966572de3e5d5f83ce9b1d0b12d36038be6ec01f` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x9715b7ac3e4f8c3a1c57ceca5ae4870638ed058f` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x98e51d3893171882e0af0c5c9b88bd17591bc6f6` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x98fe79124697774f96433690bab80c3b5044efb4` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x9a62a11025351f4279e4af89228d16f69fa24dd3` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x9c6e912e1ce3171b5bc44f3acb23792ede9ce646` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x9d274f053ed5c2aff203f337eda8169d7f29ab86` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x9d809021d92ed6b6ceeb5053b1081fbc32ec6729` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x9e40c3f8ff0878d569a38ff328480cc601cc6f08` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0xa4d20e7afa8f3cf1f089144f710d5bc28b0daee8` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0xa567d65965b9dfb6389092ccefe6bd9c376f2f6b` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0xaaa001881225f33122ee1538949fd991098c4269` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |
| optimism | unverified unclassified | UnnamedContract<br>`0xab0022fde9e19ebcff178bbc9cd621960ed7ffb5` | non_address_book | unknown | unknown | unverified | n/a | `0x3204ac6f848e05557c6c7876e09059882e07962f` |

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
| needs_review | 274 |

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
