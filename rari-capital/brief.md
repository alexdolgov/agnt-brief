# Agentic Audit Brief: Rari Capital

⚠️ Lifecycle status: DEAD - TVL dropped 2.3% over 90 days

## Project Overview

- Project: Rari Capital (`rari-capital`)
- Lifecycle: dead (Tier 0, 99.9% below peak)
- Generated: 2026-06-17T07:00:49.763Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 20 unique implementations (20 raw deployments)
- DeFi Llama TVL: $1,336,766.73
- On-chain TVL (included contracts): $2,586,133.48
- TVL by chain: Ethereum $2,586,133.48

## Project Description

Rari Capital is a yield aggregation protocol that optimizes user deposits across lending markets and stablecoin pools. It includes Fuse, a permissionless lending pool creation platform, and Rari Fund, which auto-allocates stablecoins to earn yield.

### Architecture

The FusePoolDirectory manages lending pools, while RariFundProxy handles stablecoin yield strategies; both rely on shared governance and token distribution contracts like RariGovernanceTokenUniswapDistributor.

## Contract Surface Quality

- Indexed contracts: 511; live-surface contracts included: 20 (20 live, 0 unknown).
- Excluded by liveness: 334 inactive, 157 singleton, 0 uninitialized.
- Deployment units: 11/51 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 2/35.

## Audit Coverage Summary

- Verified implementations audited: 0/19 (0.0%)
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 20
- Raw deployments: 20
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,586,133.48
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $2,586,133.48 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MetaToken | token | ethereum | n/a | [`0xa3bed4...e9acd2`](./contracts/ethereum-1/0xa3bed4e1c75d00fa6f4e5e6922db7261b5e9acd2/) | ⚠️ Unaudited |
| BoostedSavingsVault_imusd_mainnet_2 | core_logic | ethereum | unit-30280 | [`0x78befc...1a6c7b`](./contracts/ethereum-1/0x78befca7de27d07dc6e71da295cc2946681a6c7b/) | ⚠️ Unaudited |
| IncentivisedVotingLockup | unknown | ethereum | n/a | [`0xae8bc9...a0e1bf`](./contracts/ethereum-1/0xae8bc96da4f9a9613c323478be181fdb2aa0e1bf/) | ⚠️ Unaudited |
| InvariantValidator | unknown | ethereum | n/a | [`0xca480d...e7d705`](./contracts/ethereum-1/0xca480d596e6717c95a62a4dc1bd4fbd7b7e7d705/) | ⚠️ Unaudited |
| MassetBtcV2 | unknown | ethereum | unit-30285 | [`0x945fac...7330a1`](./contracts/ethereum-1/0x945facb997494cc2570096c74b5f66a3507330a1/) | ⚠️ Unaudited |
| MusdV3 | unknown | ethereum | n/a | [`0x15b283...945aee`](./contracts/ethereum-1/0x15b2838cd28cc353afbe59385db3f366d8945aee/) | ⚠️ Unaudited |
| MusdV3_deprecated | unknown | ethereum | unit-30303 | [`0xe2f2a5...5935a5`](./contracts/ethereum-1/0xe2f2a5c287993345a840db3b0845fbc70f5935a5/) | ⚠️ Unaudited |
| RariFundManager | governance | ethereum | unit-30274 | [`0x59fa43...13fce6`](./contracts/ethereum-1/0x59fa438cd0731ebf5f4cdcaf72d4960efd13fce6/) | ⚠️ Unaudited |
| RariFundManager | governance | ethereum | unit-30293 | [`0xb465ba...7d9635`](./contracts/ethereum-1/0xb465baf04c087ce3ed1c266f96ca43f4847d9635/) | ⚠️ Unaudited |
| RariFundManager | governance | ethereum | unit-30295 | [`0xc6bf8c...8ddf4a`](./contracts/ethereum-1/0xc6bf8c8a55f77686720e0a88e2fd1feef58ddf4a/) | ⚠️ Unaudited |
| RariFundProxy | unknown | ethereum | n/a | [`0x35ddef...42c6e8`](./contracts/ethereum-1/0x35ddefa2a30474e64314aaa7370abe14c042c6e8/) | ⚠️ Unaudited |
| RariGovernanceTokenDistributor | operational_periphery | ethereum | unit-30287 | [`0x9c0cae...fc1043`](./contracts/ethereum-1/0x9c0caeb986c003417d21a7daaf30221d61fc1043/) | ⚠️ Unaudited |
| RariGovernanceTokenUniswapDistributor | operational_periphery | ethereum | unit-30266 | [`0x1fa69a...cd98c7`](./contracts/ethereum-1/0x1fa69a416bcf8572577d3949b742fbb0a9cd98c7/) | ⚠️ Unaudited |
| SavingsContract_imbtc_mainnet_22 | unknown | ethereum | unit-30264 | [`0x17d8cb...7a6c24`](./contracts/ethereum-1/0x17d8cbb6bce8cee970a4027d1198f6700a7a6c24/) | ⚠️ Unaudited |
| SavingsContract_imusd_mainnet_22_deprecated | unknown | ethereum | unit-30268 | [`0x30647a...7eac19`](./contracts/ethereum-1/0x30647a72dc82d7fbb1123ea74716ab8a317eac19/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | [`0x9b4aba...6c9a6f`](./contracts/ethereum-1/0x9b4aba35b35eee7481775ccb4055ce4e176c9a6f/) | ⚠️ Unaudited |
| StakingRewardsWithPlatformToken | token | ethereum | n/a | [`0xf4a7d2...f7f027`](./contracts/ethereum-1/0xf4a7d2d85f4ba11b5c73c35e27044c0c49f7f027/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | unit-30277 | [`0x6c806e...739bec`](./contracts/ethereum-1/0x6c806eddad78a5505fce27b18c6f859fc9739bec/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x18a797...cacf04`](./contracts/ethereum-1/0x18a797c7c70c1bf22fdee1c09062aba709cacf04/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x7c332f...3dc399` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://www.notion.so/Rari-Capital-Audit-Quantstamp-December-2020-24a1d1df94894d6881ee190686f47bc7) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa3bed4...e9acd2`](./contracts/ethereum-1/0xa3bed4e1c75d00fa6f4e5e6922db7261b5e9acd2/) | MetaToken | token | $2,542,884.97 | Verified native implementation with $2,542,884.97 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca480d...e7d705`](./contracts/ethereum-1/0xca480d596e6717c95a62a4dc1bd4fbd7b7e7d705/) | InvariantValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x945fac...7330a1`](./contracts/ethereum-1/0x945facb997494cc2570096c74b5f66a3507330a1/) | MassetBtcV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe2f2a5...5935a5`](./contracts/ethereum-1/0xe2f2a5c287993345a840db3b0845fbc70f5935a5/) | MusdV3_deprecated | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6bf8c...8ddf4a`](./contracts/ethereum-1/0xc6bf8c8a55f77686720e0a88e2fd1feef58ddf4a/) | RariFundManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35ddef...42c6e8`](./contracts/ethereum-1/0x35ddefa2a30474e64314aaa7370abe14c042c6e8/) | RariFundProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17d8cb...7a6c24`](./contracts/ethereum-1/0x17d8cbb6bce8cee970a4027d1198f6700a7a6c24/) | SavingsContract_imbtc_mainnet_22 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b4aba...6c9a6f`](./contracts/ethereum-1/0x9b4aba35b35eee7481775ccb4055ce4e176c9a6f/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf4a7d2...f7f027`](./contracts/ethereum-1/0xf4a7d2d85f4ba11b5c73c35e27044c0c49f7f027/) | StakingRewardsWithPlatformToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3048] DL audit link

Fork inheritance lineage and inherited audits are included when available.
