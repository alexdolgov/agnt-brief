# Agentic Audit Brief: Fyde Protocol

## Project Overview

- Project: Fyde Protocol (`fyde-protocol`)
- Website: [http://www.fyde.fi](http://www.fyde.fi)
- Lifecycle: active (Tier 0, 92.5% below peak)
- Generated: 2026-06-21T10:55:14.352Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: ethereum
- Contract surface: 11 unique implementations (11 raw deployments)
- DeFi Llama TVL: $255,897.07
- On-chain TVL (included contracts): $26,648.64
- TVL by chain: Ethereum $26,648.64

## Project Description

Fyde Protocol is a yield aggregator that optimizes returns on liquid staking tokens and other yield-bearing assets. It manages deposits into curated strategies, distributes rewards, and issues yield-bearing tokens representing user shares.

### Architecture

The Yield Aggregation family relies on the Governance family for parameter updates and access control, while the Tokenization family provides the asset representations used within yield strategies. Shared infrastructure includes the OracleModule for price feeds and the RewardsDistributor for incentive distribution across strategies.

## Contract Surface Quality

- Indexed contracts: 50; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 31 inactive, 8 singleton, 0 uninitialized.
- Deployment units: 1/5 live.
- Detected codebases: uniswap-v3
- Unverified dependencies: 5/37.

## Audit Coverage Summary

- Verified implementations audited: 0/11 (0.0%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 11
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $26,648.64
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PendlePrincipalToken | token | ethereum | n/a | [`0x1c0851...7f93b1`](./contracts/ethereum-1/0x1c085195437738d73d75dc64bc5a3e098b7f93b1/) | ⚠️ Unaudited |
| Fyde | unknown | ethereum | n/a | [`0x87cc45...7df2ee`](./contracts/ethereum-1/0x87cc45fff5c0933bb6af6bae7fc013b7ec7df2ee/) | ⚠️ Unaudited |
| FydeOFTAdapter | adapter | ethereum | n/a | [`0x72527f...bcb519`](./contracts/ethereum-1/0x72527fec7d84764c405f28bd7e00e2693bbcb519/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-42305 | [`0x24b3b5...eba999`](./contracts/ethereum-1/0x24b3b50c1b87b549374876d31f919e5e6eeba999/) | ⚠️ Unaudited |
| RelayerV2 | unknown | ethereum | n/a | [`0x6830c6...f32078`](./contracts/ethereum-1/0x6830c61df103946b63c786e63222c59677f32078/) | ⚠️ Unaudited |
| StakingTRSY | unknown | ethereum | n/a | [`0x6c7441...5c32f7`](./contracts/ethereum-1/0x6c7441c76d85d7ab43eacd076d37b0775f5c32f7/) | ⚠️ Unaudited |
| sTRSY | unknown | ethereum | n/a | [`0xe11df8...1566b9`](./contracts/ethereum-1/0xe11df8c0e9b5697bd31515d0fc5f4c9bd71566b9/) | ⚠️ Unaudited |
| TrsyFeeDistributor | operational_periphery | ethereum | n/a | [`0x4e48b2...eb9687`](./contracts/ethereum-1/0x4e48b226b49797e50892bfb0feafb9c503eb9687/) | ⚠️ Unaudited |
| VestingDistributor | operational_periphery | ethereum | n/a | [`0x320407...418045`](./contracts/ethereum-1/0x3204074ad7555cf6149bc21441313611b6418045/) | ⚠️ Unaudited |
| VoteEscrow | operational_periphery | ethereum | n/a | [`0x6fa0b2...93c9ed`](./contracts/ethereum-1/0x6fa0b27ba2f951a68fa7a097f6c6ccecad93c9ed/) | ⚠️ Unaudited |
| WithdrawETH | operational_periphery | ethereum | n/a | [`0x14fba2...341fb3`](./contracts/ethereum-1/0x14fba2a6c5a4d9ceb73956ac0a4a18ca8f341fb3/) | ⚠️ Unaudited |

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
| [DL audit link](https://2610459056-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FbQllaeunfO4BPaZU1ABc%2Fuploads%2FDrOUIAG2nAdc0Lf0RxD8%2FFyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://2610459056-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FbQllaeunfO4BPaZU1ABc%2Fuploads%2FKXNIVvRuIB6ImuEIo7dt%2FFyde-security-review.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x87cc45...7df2ee`](./contracts/ethereum-1/0x87cc45fff5c0933bb6af6bae7fc013b7ec7df2ee/) | Fyde | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6830c6...f32078`](./contracts/ethereum-1/0x6830c61df103946b63c786e63222c59677f32078/) | RelayerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c7441...5c32f7`](./contracts/ethereum-1/0x6c7441c76d85d7ab43eacd076d37b0775f5c32f7/) | StakingTRSY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe11df8...1566b9`](./contracts/ethereum-1/0xe11df8c0e9b5697bd31515d0fc5f4c9bd71566b9/) | sTRSY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e48b2...eb9687`](./contracts/ethereum-1/0x4e48b226b49797e50892bfb0feafb9c503eb9687/) | TrsyFeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x320407...418045`](./contracts/ethereum-1/0x3204074ad7555cf6149bc21441313611b6418045/) | VestingDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6fa0b2...93c9ed`](./contracts/ethereum-1/0x6fa0b27ba2f951a68fa7a097f6c6ccecad93c9ed/) | VoteEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14fba2...341fb3`](./contracts/ethereum-1/0x14fba2a6c5a4d9ceb73956ac0a4a18ca8f341fb3/) | WithdrawETH | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13176] DL audit link
- [13177] DL audit link

Fork inheritance lineage and inherited audits are included when available.
