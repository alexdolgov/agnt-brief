# Agentic Audit Brief: Gnosis Protocol v1

⚠️ Lifecycle status: DECLINING - TVL changed 9.2% over 90 days

## Project Overview

- Project: Gnosis Protocol v1 (`gnosis-protocol-v1`)
- Website: [https://gnosis.io/](https://gnosis.io/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:38.391Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 18 unique implementations (19 raw deployments)
- DeFi Llama TVL: $1,884,678.99
- On-chain TVL (included contracts): $94,385,998.56
- TVL by chain: Ethereum $94,385,998.56

## Project Description

Gnosis Protocol v1 is a legacy decentralized exchange protocol centered on batch auctions for token trading, with on-chain order settlement through its BatchExchange contracts. Conditional Tokens, prediction-market infrastructure, GPv2/CoW Swap, Hashi, and other Gnosis ecosystem products should be treated as separate scopes unless explicitly tied to GPv1 deployments.

### Architecture

The BatchExchange contract relies on IdToAddressBiMap for efficient address-to-ID mapping, while ConditionalTokens enable prediction market outcomes. Proxy contracts like AdminUpgradeabilityProxy and MassetProxy provide upgradeability and asset management, with various tokens serving as trading pairs or governance assets.

## Contract Surface Quality

- Indexed contracts: 166; live-surface contracts included: 19 (19 live, 0 unknown).
- Excluded by liveness: 135 inactive, 12 singleton, 0 uninitialized.
- Deployment units: 7/23 live.
- Detected codebases: none
- Unverified dependencies: 6/45.

## Audit Coverage Summary

- Verified implementations audited: 0/18 (0.0%)
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 18
- Raw deployments: 19
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $94,385,998.56
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $94,385,998.56 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Api3Token | token | ethereum | n/a | [`0x0b3821...31b88a`](./contracts/ethereum-1/0x0b38210ea11411557c13457d4da7dc6ea731b88a/) | ⚠️ Unaudited |
| DIAToken | token | ethereum | n/a | [`0x84ca8b...3c9419`](./contracts/ethereum-1/0x84ca8bc7997272c7cfb4d0cd3d55cd942b3c9419/) | ⚠️ Unaudited |
| MetaToken | token | ethereum | n/a | [`0xa3bed4...e9acd2`](./contracts/ethereum-1/0xa3bed4e1c75d00fa6f4e5e6922db7261b5e9acd2/) | ⚠️ Unaudited |
| BoostedSavingsVault_imusd_mainnet_2 | core_logic | ethereum | unit-24183 | [`0x78befc...1a6c7b`](./contracts/ethereum-1/0x78befca7de27d07dc6e71da295cc2946681a6c7b/) | ⚠️ Unaudited |
| BaseToken | token | ethereum | n/a | [`0x22eeab...a0f0e4`](./contracts/ethereum-1/0x22eeab2f980e8ed7824f8ea548c9595564a0f0e4/) | ⚠️ Unaudited |
| ConditionalTokens | unknown | ethereum | n/a | [`0xc59b0e...407e0c`](./contracts/ethereum-1/0xc59b0e4de5f1248c1140964e0ff287b192407e0c/) | ⚠️ Unaudited |
| DecentralizedAutonomousTrust | unknown | ethereum | unit-24185 | [`0xa1d65e...725521`](./contracts/ethereum-1/0xa1d65e8fb6e87b60feccbc582f7f97804b725521/) | ⚠️ Unaudited |
| FeederPoolV2 | core_logic | ethereum | unit-24178 (2 proxies) | 2 deployments: ethereum [`0x4fb30c...90752d`](./contracts/ethereum-1/0x4fb30c5a3ac8e85bc32785518633303c4590752d/); ethereum `0xfe842e...1381c6` | ⚠️ Unaudited |
| IncentivisedVotingLockup | unknown | ethereum | n/a | [`0xae8bc9...a0e1bf`](./contracts/ethereum-1/0xae8bc96da4f9a9613c323478be181fdb2aa0e1bf/) | ⚠️ Unaudited |
| InvariantValidator | unknown | ethereum | n/a | [`0xca480d...e7d705`](./contracts/ethereum-1/0xca480d596e6717c95a62a4dc1bd4fbd7b7e7d705/) | ⚠️ Unaudited |
| MassetBtcV2 | unknown | ethereum | unit-24184 | [`0x945fac...7330a1`](./contracts/ethereum-1/0x945facb997494cc2570096c74b5f66a3507330a1/) | ⚠️ Unaudited |
| MusdV3 | unknown | ethereum | n/a | [`0x15b283...945aee`](./contracts/ethereum-1/0x15b2838cd28cc353afbe59385db3f366d8945aee/) | ⚠️ Unaudited |
| MusdV3_deprecated | unknown | ethereum | unit-24191 | [`0xe2f2a5...5935a5`](./contracts/ethereum-1/0xe2f2a5c287993345a840db3b0845fbc70f5935a5/) | ⚠️ Unaudited |
| SavingsContract_imbtc_mainnet_22 | unknown | ethereum | unit-24174 | [`0x17d8cb...7a6c24`](./contracts/ethereum-1/0x17d8cbb6bce8cee970a4027d1198f6700a7a6c24/) | ⚠️ Unaudited |
| SavingsContract_imusd_mainnet_22_deprecated | unknown | ethereum | unit-24175 | [`0x30647a...7eac19`](./contracts/ethereum-1/0x30647a72dc82d7fbb1123ea74716ab8a317eac19/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | [`0x9b4aba...6c9a6f`](./contracts/ethereum-1/0x9b4aba35b35eee7481775ccb4055ce4e176c9a6f/) | ⚠️ Unaudited |
| StakingRewardsWithPlatformToken | token | ethereum | n/a | [`0xf4a7d2...f7f027`](./contracts/ethereum-1/0xf4a7d2d85f4ba11b5c73c35e27044c0c49f7f027/) | ⚠️ Unaudited |
| YieldContract | unknown | ethereum | n/a | [`0x90ef22...2a5f4f`](./contracts/ethereum-1/0x90ef220f222e8c319504bdb510a2b739222a5f4f/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x78befc...1a6c7b`](./contracts/ethereum-1/0x78befca7de27d07dc6e71da295cc2946681a6c7b/) | BoostedSavingsVault_imusd_mainnet_2 | core_logic | $43,248.51 | Verified native implementation with $43,248.51 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fb30c...90752d`](./contracts/ethereum-1/0x4fb30c5a3ac8e85bc32785518633303c4590752d/) | FeederPoolV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae8bc9...a0e1bf`](./contracts/ethereum-1/0xae8bc96da4f9a9613c323478be181fdb2aa0e1bf/) | IncentivisedVotingLockup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca480d...e7d705`](./contracts/ethereum-1/0xca480d596e6717c95a62a4dc1bd4fbd7b7e7d705/) | InvariantValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x945fac...7330a1`](./contracts/ethereum-1/0x945facb997494cc2570096c74b5f66a3507330a1/) | MassetBtcV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe2f2a5...5935a5`](./contracts/ethereum-1/0xe2f2a5c287993345a840db3b0845fbc70f5935a5/) | MusdV3_deprecated | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17d8cb...7a6c24`](./contracts/ethereum-1/0x17d8cbb6bce8cee970a4027d1198f6700a7a6c24/) | SavingsContract_imbtc_mainnet_22 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30647a...7eac19`](./contracts/ethereum-1/0x30647a72dc82d7fbb1123ea74716ab8a317eac19/) | SavingsContract_imusd_mainnet_22_deprecated | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 3 |
| standard_library | 1 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
