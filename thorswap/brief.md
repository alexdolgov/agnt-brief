# Agentic Audit Brief: THORSwap

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: THORSwap (`thorswap`)
- Website: [https://www.thorswap.finance/](https://www.thorswap.finance/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:42.598Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, ethereum
- Contract surface: 14 unique implementations (18 raw deployments)
- DeFi Llama TVL: $12,576,995.78
- On-chain TVL (included contracts): $15,542,115.04
- TVL by chain: Ethereum $15,542,115.04

## Project Description

THORSwap is a decentralized exchange aggregator that enables cross-chain token swaps by leveraging the THORChain liquidity network. It provides users with a unified interface to trade assets across multiple blockchains without wrapped tokens or centralized intermediaries.

### Architecture

The THORSwap family shares the ThorToken as the base asset, with uTHOR, vTHOR, and yTHOR representing wrapped or staked variants used across the protocol's staking and governance mechanisms. These contracts are deployed from a common deployer cluster, indicating a unified infrastructure for token management.

## Contract Surface Quality

- Indexed contracts: 90; live-surface contracts included: 18 (18 live, 0 unknown).
- Excluded by liveness: 72 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 45; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/13 (23.1%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 14
- Raw deployments: 18
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $15,542,115.04
- Latest audit: 2022-04 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $15,542,115.04 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 3 | 23.1% | 2022-04 |
| PeckShield | Tier 2 | 2 | 15.4% | 2022-03 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TSAggregatorGeneric | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0ccd5d...f63c3c`](./contracts/ethereum-1/0x0ccd5dd5bcf1af77dc358d1e2f06ee880ef63c3c/); ethereum `0xd31f7e...c49fd2` | ✅ Audited |
| TSAggregatorTokenTransferProxy | token | base | n/a | 2 deployments: ethereum `0xf892fe...33abe8`; base [`0x5505be...f9bf5a`](./contracts/base-8453/0x5505be604dfa8a1ad402a71f8a357fba47f9bf5a/) | ✅ Audited |
| vTHOR | unknown | ethereum | n/a | [`0x815c23...c24d8d`](./contracts/ethereum-1/0x815c23eca83261b6ec689b60cc4a58b54bc24d8d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ThorToken | token | ethereum | n/a | [`0xa5f221...468044`](./contracts/ethereum-1/0xa5f2211b9b8170f694421f2046281775e8468044/) | ⚠️ Unaudited |
| SingleStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x675563...b34922`](./contracts/ethereum-1/0x6755630c583f12ffbd10568eb633c0319db34922/); ethereum `0xae1fc3...88bc24` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x0c3c9e...da2223`](./contracts/ethereum-1/0x0c3c9e5d9b08131dbd82a8648a23592b4dda2223/); ethereum `0xb54147...c0d25f` | ⚠️ Unaudited |
| TSAggregatorGeneric_V1 | unknown | base | n/a | [`0xb1970f...7aaeed`](./contracts/base-8453/0xb1970f2157a1b24d40f98b252f4f60b45c7aaeed/) | ⚠️ Unaudited |
| TSAggregatorUniswapV3_V1 | unknown | arbitrum | n/a | [`0x50cbe1...d78012`](./contracts/arbitrum-42161/0x50cbe1330100df9086f6fbc994a300b75dd78012/) | ⚠️ Unaudited |
| TSAirdrop | operational_periphery | ethereum | n/a | [`0x5505be...f9bf5a`](./contracts/ethereum-1/0x5505be604dfa8a1ad402a71f8a357fba47f9bf5a/) | ⚠️ Unaudited |
| TSFeeDistributor_V3 | operational_periphery | ethereum | n/a | [`0x546e7b...e04ba7`](./contracts/ethereum-1/0x546e7b1f4b4df6cdb19fbddff325133ebfe04ba7/) | ⚠️ Unaudited |
| TSSwapGeneric | unknown | ethereum | n/a | [`0x213255...5906e2`](./contracts/ethereum-1/0x213255345a740324cbce0242e32076ab735906e2/) | ⚠️ Unaudited |
| uTHOR | unknown | ethereum | n/a | [`0x34deff...e03588`](./contracts/ethereum-1/0x34deff97889f3a6a483e3b9255cafcb9a6e03588/) | ⚠️ Unaudited |
| yTHOR | unknown | ethereum | n/a | [`0x8793cd...764775`](./contracts/ethereum-1/0x8793cd69895c45b2d2474236b3cb28fc5c764775/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | avalanche | n/a | `0x17e7e5...da7d10` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-THORSwap-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-THORSwap-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | 3 | high |
| [Audit Report](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-04 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa5f221...468044`](./contracts/ethereum-1/0xa5f2211b9b8170f694421f2046281775e8468044/) | ThorToken | token | $15,542,115.04 | Verified native implementation with $15,542,115.04 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x675563...b34922`](./contracts/ethereum-1/0x6755630c583f12ffbd10568eb633c0319db34922/) | SingleStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c3c9e...da2223`](./contracts/ethereum-1/0x0c3c9e5d9b08131dbd82a8648a23592b4dda2223/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb1970f...7aaeed`](./contracts/base-8453/0xb1970f2157a1b24d40f98b252f4f60b45c7aaeed/) | TSAggregatorGeneric_V1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x50cbe1...d78012`](./contracts/arbitrum-42161/0x50cbe1330100df9086f6fbc994a300b75dd78012/) | TSAggregatorUniswapV3_V1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5505be...f9bf5a`](./contracts/ethereum-1/0x5505be604dfa8a1ad402a71f8a357fba47f9bf5a/) | TSAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x546e7b...e04ba7`](./contracts/ethereum-1/0x546e7b1f4b4df6cdb19fbddff325133ebfe04ba7/) | TSFeeDistributor_V3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x213255...5906e2`](./contracts/ethereum-1/0x213255345a740324cbce0242e32076ab735906e2/) | TSSwapGeneric | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34deff...e03588`](./contracts/ethereum-1/0x34deff97889f3a6a483e3b9255cafcb9a6e03588/) | uTHOR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8793cd...764775`](./contracts/ethereum-1/0x8793cd69895c45b2d2474236b3cb28fc5c764775/) | yTHOR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=13

Fork inheritance lineage and inherited audits are included when available.
