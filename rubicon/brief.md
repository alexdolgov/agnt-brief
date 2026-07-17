# Agentic Audit Brief: Rubicon

## Project Overview

- Project: Rubicon (`rubicon`)
- Website: [https://app.rubicon.finance/swap](https://app.rubicon.finance/swap)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:53.784Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 56 unique implementations (56 raw deployments)
- DeFi Llama TVL: $152,211.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 51 project-authored contract(s) across 4 chain(s); 2 ERC4626 vaults, 2 ERC20 tokens, 2 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 19 common project-authored base contract(s) (proxy, versionedinitializable, multicall). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 56; live-surface contracts included: 56 (56 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/51 (13.7%)
- Deployed-live implementations: 56 of 56 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/56
- Verified + Unaudited implementations: 49
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 56
- Raw deployments: 56
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 7 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 13.7% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 7 | 12.5% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BathBuddy | unknown | optimism | n/a | [`0x0299d5f49dcccdd56b80f9fc2730ac3b75d3ffac`](./contracts/optimism-10/0x0299d5f49dcccdd56b80f9fc2730ac3b75d3ffac/) | ✅ Audited |
| BathHouse | unknown | optimism | n/a | [`0x0daaf796d2b87cad097908399a0b7e8a1b8b52f5`](./contracts/optimism-10/0x0daaf796d2b87cad097908399a0b7e8a1b8b52f5/) | ✅ Audited |
| BathPair | unknown | optimism | n/a | [`0x03660e5261c8effd8ec62971ae64e18c4d878a57`](./contracts/optimism-10/0x03660e5261c8effd8ec62971ae64e18c4d878a57/) | ✅ Audited |
| BathToken | unknown | optimism | n/a | [`0x2fd610e57b0239635de4ebd56c178d0d33e4b8fa`](./contracts/optimism-10/0x2fd610e57b0239635de4ebd56c178d0d33e4b8fa/) | ✅ Audited |
| RubiconMarket | unknown | base | n/a | [`0x2d39edaa2fce28752e487dc1693e0b5309353aa0`](./contracts/base-8453/0x2d39edaa2fce28752e487dc1693e0b5309353aa0/) | ✅ Audited |
| RubiconRouter | unknown | base | n/a | [`0x01fb1ad98ff51eb9e218dd74af54cbe213497d37`](./contracts/base-8453/0x01fb1ad98ff51eb9e218dd74af54cbe213497d37/) | ✅ Audited |
| WETH9 | unknown | optimism | n/a | [`0x4200000000000000000000000000000000000006`](./contracts/optimism-10/0x4200000000000000000000000000000000000006/) | ✅ Audited |

### ⚠️ Verified + Unaudited (49)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Admin | unknown | base | n/a | [`0x8d38290f53aa056726f30fe972b454a63c8843b4`](./contracts/base-8453/0x8d38290f53aa056726f30fe972b454a63c8843b4/) | ⚠️ Unaudited |
| AquilaFactory | unknown | base | n/a | [`0x03502261a6aa8e911643cd0d71c6dc6ba570d2b0`](./contracts/base-8453/0x03502261a6aa8e911643cd0d71c6dc6ba570d2b0/) | ⚠️ Unaudited |
| AquilaRouter | unknown | base | n/a | [`0x109074b31759a5b08164e54c44333f33247e7fd1`](./contracts/base-8453/0x109074b31759a5b08164e54c44333f33247e7fd1/) | ⚠️ Unaudited |
| ArbitrumBridgeExecutor | unknown | arbitrum | n/a | [`0x64307c2668cf9a8e55dbbe276e33e78fbfb7a16d`](./contracts/arbitrum-42161/0x64307c2668cf9a8e55dbbe276e33e78fbfb7a16d/) | ⚠️ Unaudited |
| BebraVesting | unknown | ethereum | n/a | [`0x55982546e8814770753e9b7c3c7b51340f550858`](./contracts/ethereum-1/0x55982546e8814770753e9b7c3c7b51340f550858/) | ⚠️ Unaudited |
| BondAggregator | unknown | base | n/a | [`0xece03d9d58086ad6e5e04fcc88d21fb1d1bbe897`](./contracts/base-8453/0xece03d9d58086ad6e5e04fcc88d21fb1d1bbe897/) | ⚠️ Unaudited |
| BondFixedTermSDA | unknown | base | n/a | [`0x1c2eff644b6084bbd9a57bacb16788048d37ac77`](./contracts/base-8453/0x1c2eff644b6084bbd9a57bacb16788048d37ac77/) | ⚠️ Unaudited |
| BondFixedTermTeller | unknown | base | n/a | [`0xd13a6f548f29dea6efb4b26654885e4a97724e5f`](./contracts/base-8453/0xd13a6f548f29dea6efb4b26654885e4a97724e5f/) | ⚠️ Unaudited |
| ClearingV2 | unknown | base | n/a | [`0x79f17c4d4fdb9db42e2b7839d56a2cff10231e04`](./contracts/base-8453/0x79f17c4d4fdb9db42e2b7839d56a2cff10231e04/) | ⚠️ Unaudited |
| ClonableBeaconProxy | unknown | arbitrum | n/a | [`0x565f12c7f08d906ea9f32c0826412ec13d4f8030`](./contracts/arbitrum-42161/0x565f12c7f08d906ea9f32c0826412ec13d4f8030/) | ⚠️ Unaudited |
| Collector | unknown | base | n/a | [`0x1115cfebdb1a4761514b9d3b3d0fd30f503a3170`](./contracts/base-8453/0x1115cfebdb1a4761514b9d3b3d0fd30f503a3170/) | ⚠️ Unaudited |
| Executor | unknown | ethereum | n/a | [`0x0c27278542ec10c205d475ea382d9be348fcccd8`](./contracts/ethereum-1/0x0c27278542ec10c205d475ea382d9be348fcccd8/) | ⚠️ Unaudited |
| GladiusOrderQuoter | unknown | ethereum | n/a | [`0x56e43695d183dcfa9d8fe95e796227a491627fd9`](./contracts/ethereum-1/0x56e43695d183dcfa9d8fe95e796227a491627fd9/) | ⚠️ Unaudited |
| GladiusReactor | unknown | ethereum | n/a | [`0x3c53c04d633bec3fb0de3492607c239bf92d07f9`](./contracts/ethereum-1/0x3c53c04d633bec3fb0de3492607c239bf92d07f9/) | ⚠️ Unaudited |
| GovernanceStrategy | unknown | ethereum | n/a | [`0x287672b1efcac09715cfb972aa747a9fcd8b0728`](./contracts/ethereum-1/0x287672b1efcac09715cfb972aa747a9fcd8b0728/) | ⚠️ Unaudited |
| HypervisorFactory | unknown | base | n/a | [`0xeb1e9934a7f668a4e3ce8845bc28a88c0ae43c96`](./contracts/base-8453/0xeb1e9934a7f668a4e3ce8845bc28a88c0ae43c96/) | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x1456a1897509bb9a42610d8ff5fe869d2612c181`](./contracts/ethereum-1/0x1456a1897509bb9a42610d8ff5fe869d2612c181/) | ⚠️ Unaudited |
| MarketAid | unknown | optimism | n/a | [`0x0fc9b5f4aeaf77d4aab26e0a3dd27710415db839`](./contracts/optimism-10/0x0fc9b5f4aeaf77d4aab26e0a3dd27710415db839/) | ⚠️ Unaudited |
| MarketAidFactory | unknown | optimism | n/a | [`0x04fdd1602c0a2f6a39fe64bb0f315080386ada1b`](./contracts/optimism-10/0x04fdd1602c0a2f6a39fe64bb0f315080386ada1b/) | ⚠️ Unaudited |
| MerkleClaimERC20 | unknown | optimism | n/a | [`0x2181f152d02712cb51072c4cbc1ef8ec2efd6ba3`](./contracts/optimism-10/0x2181f152d02712cb51072c4cbc1ef8ec2efd6ba3/) | ⚠️ Unaudited |
| MerkleClaimFactory | unknown | optimism | n/a | [`0x07f4d8b815458b42ecc27440140c99c764e33b6c`](./contracts/optimism-10/0x07f4d8b815458b42ecc27440140c99c764e33b6c/) | ⚠️ Unaudited |
| MerkleClaimFactoryV2 | unknown | base | n/a | [`0x5e08f194553c329323db7ccdc5cdd918cc6a0a63`](./contracts/base-8453/0x5e08f194553c329323db7ccdc5cdd918cc6a0a63/) | ⚠️ Unaudited |
| MerkleMerkleMerkle | unknown | base | n/a | [`0x2618bee17579a416db232cfa7c0afa43586f59ec`](./contracts/base-8453/0x2618bee17579a416db232cfa7c0afa43586f59ec/) | ⚠️ Unaudited |
| NFTDescriptor | unknown | arbitrum | n/a | [`0x085ffe068af0ac80dc70d8c0c6e04389dc0c6745`](./contracts/arbitrum-42161/0x085ffe068af0ac80dc70d8c0c6e04389dc0c6745/) | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | optimism | n/a | [`0x001c8124f4d63a6b44c904a9eff620df1be702ab`](./contracts/optimism-10/0x001c8124f4d63a6b44c904a9eff620df1be702ab/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | ethereum | n/a | [`0x106aa881c7fd4cc8b9ffa613721c49b890c68a52`](./contracts/ethereum-1/0x106aa881c7fd4cc8b9ffa613721c49b890c68a52/) | ⚠️ Unaudited |
| OptimismBridgeExecutor | unknown | optimism | n/a | [`0x2b290e6c443ffb909eaee2c3269a2bfd6a39c442`](./contracts/optimism-10/0x2b290e6c443ffb909eaee2c3269a2bfd6a39c442/) | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | base | n/a | [`0xb3836098d1e94ec651d74d053d4a0813316b2a2f`](./contracts/base-8453/0xb3836098d1e94ec651d74d053d4a0813316b2a2f/) | ⚠️ Unaudited |
| PoolArbExecutor | unknown | base | n/a | [`0x455f8f98b52b38ac15dfb628dcee7eeeb57e0b24`](./contracts/base-8453/0x455f8f98b52b38ac15dfb628dcee7eeeb57e0b24/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | base | n/a | [`0x1c4bf098a570d4f2dac5fdb9b74bbb84c70da593`](./contracts/base-8453/0x1c4bf098a570d4f2dac5fdb9b74bbb84c70da593/) | ⚠️ Unaudited |
| QuoterV2 | unknown | arbitrum | n/a | [`0x22066f5a85076630cf9deeb0a12186b73cd3284c`](./contracts/arbitrum-42161/0x22066f5a85076630cf9deeb0a12186b73cd3284c/) | ⚠️ Unaudited |
| RolesAuthority | unknown | base | n/a | [`0x865c9ccc7c5ac4a6cc206a23ce299a61408829a4`](./contracts/base-8453/0x865c9ccc7c5ac4a6cc206a23ce299a61408829a4/) | ⚠️ Unaudited |
| RubiconFeeController | unknown | arbitrum | n/a | [`0x0c27278542ec10c205d475ea382d9be348fcccd8`](./contracts/arbitrum-42161/0x0c27278542ec10c205d475ea382d9be348fcccd8/) | ⚠️ Unaudited |
| RubiconGovernance | unknown | ethereum | n/a | [`0x902618f10bf52cfdc19e89de5fb6c107c0ccc935`](./contracts/ethereum-1/0x902618f10bf52cfdc19e89de5fb6c107c0ccc935/) | ⚠️ Unaudited |
| RubiconRewardsVestingWallet | unknown | ethereum | n/a | [`0x39eb71ac275f69e7e7a3a698309fb56b11d78569`](./contracts/ethereum-1/0x39eb71ac275f69e7e7a3a698309fb56b11d78569/) | ⚠️ Unaudited |
| RubiconRFQ | unknown | arbitrum | n/a | [`0x293e354a45a07d25ae1b2f9f00c91115a12986af`](./contracts/arbitrum-42161/0x293e354a45a07d25ae1b2f9f00c91115a12986af/) | ⚠️ Unaudited |
| RubiconV3Factory | unknown | arbitrum | n/a | [`0x045b7012cbd158c1b48874310f985adb48aa62ba`](./contracts/arbitrum-42161/0x045b7012cbd158c1b48874310f985adb48aa62ba/) | ⚠️ Unaudited |
| RubiLPFactory | unknown | arbitrum | n/a | [`0x424f7653afa3e8d5818591e6e7b34e41e33f0c3d`](./contracts/arbitrum-42161/0x424f7653afa3e8d5818591e6e7b34e41e33f0c3d/) | ⚠️ Unaudited |
| RubiLPFactoryV2 | unknown | base | n/a | [`0x0ea5bcdf410f7fbf67837b060cbce92a27a7b8b7`](./contracts/base-8453/0x0ea5bcdf410f7fbf67837b060cbce92a27a7b8b7/) | ⚠️ Unaudited |
| StakingMultiRewards | unknown | base | n/a | [`0x1bcbc996fc9e57ab4d3b08a1e7a54b7ae030329c`](./contracts/base-8453/0x1bcbc996fc9e57ab4d3b08a1e7a54b7ae030329c/) | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | base | n/a | [`0x568cc64a86248d02542b20d66f2f7d30d3a2cbe9`](./contracts/base-8453/0x568cc64a86248d02542b20d66f2f7d30d3a2cbe9/) | ⚠️ Unaudited |
| StrategistUtility | unknown | optimism | n/a | [`0x02d902f9e4d29f6143e79f82cca68a1fb8ab4566`](./contracts/optimism-10/0x02d902f9e4d29f6143e79f82cca68a1fb8ab4566/) | ⚠️ Unaudited |
| SwapRouter | unknown | arbitrum | n/a | [`0x3739488662524c8cdc0b41d2fa6a1bdf75434541`](./contracts/arbitrum-42161/0x3739488662524c8cdc0b41d2fa6a1bdf75434541/) | ⚠️ Unaudited |
| TickLens | unknown | optimism | n/a | [`0x84647261db8d61fc9a1717cff5eb64b1d3db640c`](./contracts/optimism-10/0x84647261db8d61fc9a1717cff5eb64b1d3db640c/) | ⚠️ Unaudited |
| TransitionBathHouse | unknown | optimism | n/a | [`0xf7cad960fe1f621ce6d05cb1b3240aed135aba25`](./contracts/optimism-10/0xf7cad960fe1f621ce6d05cb1b3240aed135aba25/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x2641884bb28e3d832e7d57dc71e76e849f20ce02`](./contracts/optimism-10/0x2641884bb28e3d832e7d57dc71e76e849f20ce02/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x63998c67f051a21dc11bceb07e0719a81c1cfd90`](./contracts/optimism-10/0x63998c67f051a21dc11bceb07e0719a81c1cfd90/) | ⚠️ Unaudited |
| UniProxy | unknown | base | n/a | [`0x5365df15547fd5475041e7a3c0879d0e49d06d93`](./contracts/base-8453/0x5365df15547fd5475041e7a3c0879d0e49d06d93/) | ⚠️ Unaudited |
| UniswapV3Staker | unknown | ethereum | n/a | [`0x22066f5a85076630cf9deeb0a12186b73cd3284c`](./contracts/ethereum-1/0x22066f5a85076630cf9deeb0a12186b73cd3284c/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Sherlock bug bounty (opens in a new tab)](https://audits.sherlock.xyz/bug-bounties/77) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [public Code4rena contest (opens in a new tab)](https://code4rena.com/audits/2023-04-rubicon-v2) | Code4rena | Contest | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [Audit Report (opens in a new tab)](https://code4rena.com/reports/2023-04-rubicon) | Code4rena | Contest | 2023-04 | stale | Direct | contract_name | 4 | high |
| [Audit Report (opens in a new tab)](https://code4rena.com/reports/2022-05-rubicon) | Code4rena | Contest | 2022-05 | stale | Direct | contract_name | 6 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x8d38290f53aa056726f30fe972b454a63c8843b4`](./contracts/base-8453/0x8d38290f53aa056726f30fe972b454a63c8843b4/) | Admin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x03502261a6aa8e911643cd0d71c6dc6ba570d2b0`](./contracts/base-8453/0x03502261a6aa8e911643cd0d71c6dc6ba570d2b0/) | AquilaFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x109074b31759a5b08164e54c44333f33247e7fd1`](./contracts/base-8453/0x109074b31759a5b08164e54c44333f33247e7fd1/) | AquilaRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x64307c2668cf9a8e55dbbe276e33e78fbfb7a16d`](./contracts/arbitrum-42161/0x64307c2668cf9a8e55dbbe276e33e78fbfb7a16d/) | ArbitrumBridgeExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55982546e8814770753e9b7c3c7b51340f550858`](./contracts/ethereum-1/0x55982546e8814770753e9b7c3c7b51340f550858/) | BebraVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xece03d9d58086ad6e5e04fcc88d21fb1d1bbe897`](./contracts/base-8453/0xece03d9d58086ad6e5e04fcc88d21fb1d1bbe897/) | BondAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1c2eff644b6084bbd9a57bacb16788048d37ac77`](./contracts/base-8453/0x1c2eff644b6084bbd9a57bacb16788048d37ac77/) | BondFixedTermSDA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd13a6f548f29dea6efb4b26654885e4a97724e5f`](./contracts/base-8453/0xd13a6f548f29dea6efb4b26654885e4a97724e5f/) | BondFixedTermTeller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x79f17c4d4fdb9db42e2b7839d56a2cff10231e04`](./contracts/base-8453/0x79f17c4d4fdb9db42e2b7839d56a2cff10231e04/) | ClearingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x565f12c7f08d906ea9f32c0826412ec13d4f8030`](./contracts/arbitrum-42161/0x565f12c7f08d906ea9f32c0826412ec13d4f8030/) | ClonableBeaconProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1115cfebdb1a4761514b9d3b3d0fd30f503a3170`](./contracts/base-8453/0x1115cfebdb1a4761514b9d3b3d0fd30f503a3170/) | Collector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c27278542ec10c205d475ea382d9be348fcccd8`](./contracts/ethereum-1/0x0c27278542ec10c205d475ea382d9be348fcccd8/) | Executor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56e43695d183dcfa9d8fe95e796227a491627fd9`](./contracts/ethereum-1/0x56e43695d183dcfa9d8fe95e796227a491627fd9/) | GladiusOrderQuoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c53c04d633bec3fb0de3492607c239bf92d07f9`](./contracts/ethereum-1/0x3c53c04d633bec3fb0de3492607c239bf92d07f9/) | GladiusReactor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x287672b1efcac09715cfb972aa747a9fcd8b0728`](./contracts/ethereum-1/0x287672b1efcac09715cfb972aa747a9fcd8b0728/) | GovernanceStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xeb1e9934a7f668a4e3ce8845bc28a88c0ae43c96`](./contracts/base-8453/0xeb1e9934a7f668a4e3ce8845bc28a88c0ae43c96/) | HypervisorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0fc9b5f4aeaf77d4aab26e0a3dd27710415db839`](./contracts/optimism-10/0x0fc9b5f4aeaf77d4aab26e0a3dd27710415db839/) | MarketAid | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x04fdd1602c0a2f6a39fe64bb0f315080386ada1b`](./contracts/optimism-10/0x04fdd1602c0a2f6a39fe64bb0f315080386ada1b/) | MarketAidFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2181f152d02712cb51072c4cbc1ef8ec2efd6ba3`](./contracts/optimism-10/0x2181f152d02712cb51072c4cbc1ef8ec2efd6ba3/) | MerkleClaimERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x07f4d8b815458b42ecc27440140c99c764e33b6c`](./contracts/optimism-10/0x07f4d8b815458b42ecc27440140c99c764e33b6c/) | MerkleClaimFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5e08f194553c329323db7ccdc5cdd918cc6a0a63`](./contracts/base-8453/0x5e08f194553c329323db7ccdc5cdd918cc6a0a63/) | MerkleClaimFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2618bee17579a416db232cfa7c0afa43586f59ec`](./contracts/base-8453/0x2618bee17579a416db232cfa7c0afa43586f59ec/) | MerkleMerkleMerkle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x085ffe068af0ac80dc70d8c0c6e04389dc0c6745`](./contracts/arbitrum-42161/0x085ffe068af0ac80dc70d8c0c6e04389dc0c6745/) | NFTDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x001c8124f4d63a6b44c904a9eff620df1be702ab`](./contracts/optimism-10/0x001c8124f4d63a6b44c904a9eff620df1be702ab/) | NonfungiblePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x106aa881c7fd4cc8b9ffa613721c49b890c68a52`](./contracts/ethereum-1/0x106aa881c7fd4cc8b9ffa613721c49b890c68a52/) | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2b290e6c443ffb909eaee2c3269a2bfd6a39c442`](./contracts/optimism-10/0x2b290e6c443ffb909eaee2c3269a2bfd6a39c442/) | OptimismBridgeExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb3836098d1e94ec651d74d053d4a0813316b2a2f`](./contracts/base-8453/0xb3836098d1e94ec651d74d053d4a0813316b2a2f/) | OptimismMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x455f8f98b52b38ac15dfb628dcee7eeeb57e0b24`](./contracts/base-8453/0x455f8f98b52b38ac15dfb628dcee7eeeb57e0b24/) | PoolArbExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x22066f5a85076630cf9deeb0a12186b73cd3284c`](./contracts/arbitrum-42161/0x22066f5a85076630cf9deeb0a12186b73cd3284c/) | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x865c9ccc7c5ac4a6cc206a23ce299a61408829a4`](./contracts/base-8453/0x865c9ccc7c5ac4a6cc206a23ce299a61408829a4/) | RolesAuthority | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0c27278542ec10c205d475ea382d9be348fcccd8`](./contracts/arbitrum-42161/0x0c27278542ec10c205d475ea382d9be348fcccd8/) | RubiconFeeController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x902618f10bf52cfdc19e89de5fb6c107c0ccc935`](./contracts/ethereum-1/0x902618f10bf52cfdc19e89de5fb6c107c0ccc935/) | RubiconGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39eb71ac275f69e7e7a3a698309fb56b11d78569`](./contracts/ethereum-1/0x39eb71ac275f69e7e7a3a698309fb56b11d78569/) | RubiconRewardsVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x293e354a45a07d25ae1b2f9f00c91115a12986af`](./contracts/arbitrum-42161/0x293e354a45a07d25ae1b2f9f00c91115a12986af/) | RubiconRFQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x045b7012cbd158c1b48874310f985adb48aa62ba`](./contracts/arbitrum-42161/0x045b7012cbd158c1b48874310f985adb48aa62ba/) | RubiconV3Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x424f7653afa3e8d5818591e6e7b34e41e33f0c3d`](./contracts/arbitrum-42161/0x424f7653afa3e8d5818591e6e7b34e41e33f0c3d/) | RubiLPFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0ea5bcdf410f7fbf67837b060cbce92a27a7b8b7`](./contracts/base-8453/0x0ea5bcdf410f7fbf67837b060cbce92a27a7b8b7/) | RubiLPFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1bcbc996fc9e57ab4d3b08a1e7a54b7ae030329c`](./contracts/base-8453/0x1bcbc996fc9e57ab4d3b08a1e7a54b7ae030329c/) | StakingMultiRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x568cc64a86248d02542b20d66f2f7d30d3a2cbe9`](./contracts/base-8453/0x568cc64a86248d02542b20d66f2f7d30d3a2cbe9/) | StakingRewardsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x02d902f9e4d29f6143e79f82cca68a1fb8ab4566`](./contracts/optimism-10/0x02d902f9e4d29f6143e79f82cca68a1fb8ab4566/) | StrategistUtility | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3739488662524c8cdc0b41d2fa6a1bdf75434541`](./contracts/arbitrum-42161/0x3739488662524c8cdc0b41d2fa6a1bdf75434541/) | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x84647261db8d61fc9a1717cff5eb64b1d3db640c`](./contracts/optimism-10/0x84647261db8d61fc9a1717cff5eb64b1d3db640c/) | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xf7cad960fe1f621ce6d05cb1b3240aed135aba25`](./contracts/optimism-10/0xf7cad960fe1f621ce6d05cb1b3240aed135aba25/) | TransitionBathHouse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5365df15547fd5475041e7a3c0879d0e49d06d93`](./contracts/base-8453/0x5365df15547fd5475041e7a3c0879d0e49d06d93/) | UniProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 51 |
| upstream | 1 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=10

Zero-match audit list:

- [18098] Sherlock bug bounty (opens in a new tab)
- [18099] public Code4rena contest (opens in a new tab)

Fork inheritance lineage and inherited audits are included when available.
