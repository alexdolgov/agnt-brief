# Agentic Audit Brief: LooksRare

## Project Overview

- Project: LooksRare (`looksrare`)
- Website: [https://looksrare.org/](https://looksrare.org/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:21.675Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: ethereum
- Contract surface: 24 unique implementations (26 raw deployments)
- DeFi Llama TVL: $27,054.97
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

NFT Marketplace. Structurally: 49 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 1 common project-authored base contract(s) (rescuebase). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 47; live-surface contracts included: 26 (26 live, 0 unknown).
- Excluded by liveness: 21 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/24 (16.7%)
- Deployed-live implementations: 24 of 24 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/24
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 24
- Raw deployments: 26
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 12.5% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 3 | 12.5% | 2022-03 |
| Trail of Bits | Tier 1 | 3 | 12.5% | 2022-03 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AggregatorFeeSharingWithUniswapV3 | unknown | ethereum | n/a | [`0x3ab16a...0fd9ba`](./contracts/ethereum-1/0x3ab16af1315dc6c95f83cbf522fecf98d00fd9ba/) | ✅ Audited |
| FeeSharingSystem | unknown | ethereum | n/a | [`0xbcd725...cc12ce`](./contracts/ethereum-1/0xbcd7254a1d759efa08ec7c3291b2e85c5dcc12ce/) | ✅ Audited |
| LooksRareExchange | unknown | ethereum | n/a | [`0x597285...17ce3a`](./contracts/ethereum-1/0x59728544b08ab483533076417fbbb2fd0b17ce3a/) | ✅ Audited |
| LooksRareToken | token | ethereum | n/a | [`0xf4d288...92421e`](./contracts/ethereum-1/0xf4d2888d29d722226fafa5d9b24f9164c092421e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CurrencyManager | unknown | ethereum | n/a | [`0xc881ad...b93d25`](./contracts/ethereum-1/0xc881addf409ee2c4b6bbc8b607c2c5cafab93d25/) | ⚠️ Unaudited |
| ExecutionManager | unknown | ethereum | n/a | [`0x9cc58b...5d62b2`](./contracts/ethereum-1/0x9cc58bf22a173c0fa8791c13df396d18185d62b2/) | ⚠️ Unaudited |
| FeeSharingSetter | unknown | ethereum | n/a | [`0x5924a2...81f3c1`](./contracts/ethereum-1/0x5924a28caaf1cc016617874a2f0c3710d881f3c1/) | ⚠️ Unaudited |
| LooksRareProtocol | unknown | ethereum | n/a | [`0x000000...3b2377`](./contracts/ethereum-1/0x0000000000e655fae4d56241588680f86e3b2377/) | ⚠️ Unaudited |
| OperatorControllerForRewards | unknown | ethereum | n/a | [`0xb6c40e...7ebe01`](./contracts/ethereum-1/0xb6c40eb22dbdc87fddf4b70d460934a44b7ebe01/) | ⚠️ Unaudited |
| OperatorControllerForRewardsV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x91cc8b...0f9ee3`](./contracts/ethereum-1/0x91cc8be3ddcb2d4cb27aab987e5b5675af0f9ee3/); ethereum `0xc8c3c6...9f1ca6` | ⚠️ Unaudited |
| OrderValidatorV1 | unknown | ethereum | n/a | [`0x69bab1...9fbcdd`](./contracts/ethereum-1/0x69bab1c0f26870751f79a9b73428235e8e9fbcdd/) | ⚠️ Unaudited |
| OrderValidatorV1B | unknown | ethereum | n/a | [`0xdc56de...eed395`](./contracts/ethereum-1/0xdc56de26c64b14f1a8e95582a16b6a9aefeed395/) | ⚠️ Unaudited |
| OrderValidatorV2A | unknown | ethereum | n/a | [`0x2a784a...4961b7`](./contracts/ethereum-1/0x2a784a5b5c8ae0bd738fbc67e4c069db4f4961b7/) | ⚠️ Unaudited |
| RaffleV2 | unknown | ethereum | n/a | [`0x000000...52c1d0`](./contracts/ethereum-1/0x0000000000adead599c11a0c9a7475b67852c1d0/) | ⚠️ Unaudited |
| SeasonRewardsDistributor | operational_periphery | ethereum | n/a | [`0x5c073c...8ed472`](./contracts/ethereum-1/0x5c073cecafc56ee9f4335230a09933965c8ed472/) | ⚠️ Unaudited |
| StakingPoolForUniswapV2Tokens | core_logic | ethereum | n/a | [`0x2a70e7...bfadc5`](./contracts/ethereum-1/0x2a70e7f51f6cd40c3e9956aa964137668cbfadc5/) | ⚠️ Unaudited |
| StrategyCollectionOffer | core_logic | ethereum | n/a | [`0x000000...bfc8d2`](./contracts/ethereum-1/0x0000000000e58692bf5fa347312da78ca8bfc8d2/) | ⚠️ Unaudited |
| TokenDistributor | unknown | ethereum | n/a | [`0x465a79...e0d3b1`](./contracts/ethereum-1/0x465a790b428268196865a3ae2648481ad7e0d3b1/) | ⚠️ Unaudited |
| TokenSplitter | unknown | ethereum | n/a | [`0xfec306...6c8203`](./contracts/ethereum-1/0xfec3069df398faaf689c559151e41fa8036c8203/) | ⚠️ Unaudited |
| TransferManager | governance | ethereum | n/a | 2 deployments: ethereum [`0x000000...d29e1d`](./contracts/ethereum-1/0x00000000000ea4af05656c17b90f4d64add29e1d/); ethereum `0x000000...33fe3d` | ⚠️ Unaudited |
| TransferSelectorNFT | unknown | ethereum | n/a | [`0x9ba628...cd9e2c`](./contracts/ethereum-1/0x9ba628f27aac9b2d78a9f2bf40a8a6df4ccd9e2c/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0xdc00ba...1a32f7`](./contracts/ethereum-1/0xdc00ba87cc2d99468f7f34bc04cbf72e111a32f7/) | ⚠️ Unaudited |
| WrappedLooksRareToken | token | ethereum | n/a | [`0xe7bac7...e13ce4`](./contracts/ethereum-1/0xe7bac7d798d66d353b9e50ebfc6859950fe13ce4/) | ⚠️ Unaudited |
| Yolo | unknown | ethereum | n/a | [`0x000000...e4a231`](./contracts/ethereum-1/0x00000000007767d79f9f4aa1ff0d71b8e2e4a231/) | ⚠️ Unaudited |

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
| [LooksRare.pdf](https://github.com/trailofbits/publications/blob/master/reviews/LooksRare.pdf) | Trail of Bits | Audit | 2022-03 | stale | Direct | contract_name | 3 | n/a |
| [PeckShield-Audit-Report-LooksRare-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-LooksRare-v1.0.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | contract_name | 2 | n/a |
| [PeckShield-Audit-Report-LooksRare-AggregatorFeeSharing-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-LooksRare-AggregatorFeeSharing-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=6

Fork inheritance lineage and inherited audits are included when available.
