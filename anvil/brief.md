# Agentic Audit Brief: Anvil

⚠️ Lifecycle status: DECLINING - TVL dropped 65.3% over 90 days

## Project Overview

- Project: Anvil (`anvil`)
- Website: [https://anvil.xyz/](https://anvil.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-18T20:35:59.893Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-4ae8
- Chains: ethereum
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $11,196,966.19
- On-chain TVL (included contracts): $672,999.95
- TVL by chain: Ethereum $672,999.95

## Project Description

Anvil is a collateral-management protocol for fully backed credit and letter-of-credit guarantees. It enables users to deposit collateral into vaults and issue letters of credit or credit guarantees backed by that collateral, rather than operating primarily as an overcollateralized lending market.

### Architecture

The CollateralVault holds user deposits and interacts with TimeBasedCollateralPool for time-locked collateral management, while the LetterOfCredit contract issues credit instruments backed by the vault's collateral.

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 6 (5 live, 1 unknown).
- Excluded by liveness: 7 inactive, 9 singleton, 0 uninitialized.
- Deployment units: 0/3 live.
- Detected codebases: none
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/6 (16.7%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 4
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Staleness: 1 fresh, 2 aging, 1 stale, 0 unknown
- Tier 1 coverage: 16.7% (OpenZeppelin)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 1 | 16.7% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CollateralVault | core_logic | ethereum | n/a | [`0x5d2725...1d675f`](./contracts/ethereum-1/0x5d2725fde4d7aa3388da4519ac0449cc031d675f/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Claim | unknown | ethereum | n/a | [`0xefd194...7e29ac`](./contracts/ethereum-1/0xefd194d4ff955e8958d132319f31d2ab9f7e29ac/) | ⚠️ Unaudited |
| PassThroughLiquidator | operational_periphery | ethereum | n/a | [`0x9ae1ca...1342b8`](./contracts/ethereum-1/0x9ae1caa5ce6fa330fce98315159bcd433b1342b8/) | ⚠️ Unaudited |
| Permit2PassThroughLiquidator | operational_periphery | ethereum | n/a | [`0x8aa57e...e2eb4c`](./contracts/ethereum-1/0x8aa57e442e4562c80fddad1b71adf0ba75e2eb4c/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | [`0x12225b...6e341d`](./contracts/ethereum-1/0x12225bb169b38ef8849dd4f5cc466ae5996e341d/) | ⚠️ Unaudited |
| Reward | unknown | ethereum | n/a | [`0xc6a06f...da22da`](./contracts/ethereum-1/0xc6a06f2d000b8cfdd392c4d6ab715a9ff1da22da/) | ⚠️ Unaudited |

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
| [<>\](https://www.openzeppelin.com/news/anvil-protocol-diff-audit) | OpenZeppelin | Audit | 2025-10 | fresh | Direct | contract_name | 0 | n/a |
| [<>](https://www.openzeppelin.com/news/anvil-protocol-audit) | OpenZeppelin | Audit | 2024-10 | aging | Direct | contract_name | 1 | high |
| [<>](https://github.com/trailofbits/publications/blob/master/reviews/2023-12-acronym-foundation-securityreview.pdf) | Trail of Bits | Audit | 2023-12 | stale | Direct | contract_name | 0 | n/a |
| [[](< https://blog.openzeppelin.com/anvil-audit>)](https://www.openzeppelin.com/news/anvil-audit) | OpenZeppelin | Audit | 2024-10 | aging | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xefd194...7e29ac`](./contracts/ethereum-1/0xefd194d4ff955e8958d132319f31d2ab9f7e29ac/) | Claim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ae1ca...1342b8`](./contracts/ethereum-1/0x9ae1caa5ce6fa330fce98315159bcd433b1342b8/) | PassThroughLiquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8aa57e...e2eb4c`](./contracts/ethereum-1/0x8aa57e442e4562c80fddad1b71adf0ba75e2eb4c/) | Permit2PassThroughLiquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6a06f...da22da`](./contracts/ethereum-1/0xc6a06f2d000b8cfdd392c4d6ab715a9ff1da22da/) | Reward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=13

Zero-match audit list:

- [1947] <>\
- [1949] <>
- [1950] [](< https://blog.openzeppelin.com/anvil-audit>)

Fork inheritance lineage and inherited audits are included when available.
