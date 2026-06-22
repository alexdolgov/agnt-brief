# Agentic Audit Brief: Bridge Mutual

⚠️ Lifecycle status: DEAD - TVL dropped 67.7% over 90 days

## Project Overview

- Project: Bridge Mutual (`bridge-mutual`)
- Website: [https://www.bridgemutual.io](https://www.bridgemutual.io)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-21T07:28:10.069Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: bsc, ethereum, polygon
- Contract surface: 5 unique implementations (6 raw deployments)
- DeFi Llama TVL: $56,212.47
- On-chain TVL (included contracts): $109,440.26
- TVL by chain: Ethereum $83,920.00 | Bsc $25,520.26

## Project Description

Bridge Mutual is a decentralized insurance protocol that allows users to purchase coverage for smart contract risks, stablecoin depegs, and exchange hacks. It pools capital from liquidity providers to underwrite policies and uses a claims voting system to assess and pay out valid claims.

### Architecture

The CapitalPool holds the underwriting capital and interacts with PolicyBookRegistry to manage policy books. ClaimVoting relies on staked BMI tokens from BMIStaking for voting power, while ShieldMining distributes rewards to incentivize participation. BridgeToken instances represent wrapped versions of the BMI token on different chains, and vesting contracts manage token distribution.

## Contract Surface Quality

- Indexed contracts: 56; live-surface contracts included: 6 (4 live, 2 unknown).
- Excluded by liveness: 46 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 2/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/5 (40.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 1
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 6
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $109,440.26
- Latest audit: 2021-06 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $109,440.26 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 40.0% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PolicyBookRegistry | registry | ethereum | unit-41627 | [`0xff13c3...8f9613`](./contracts/ethereum-1/0xff13c3d2c7931e86e13c993a8cb02d68848f9613/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BMIToken | token | ethereum | n/a | [`0x725c26...1ee688`](./contracts/ethereum-1/0x725c263e32c72ddc3a19bea12c5a0479a81ee688/) | ⚠️ Unaudited |
| STARToken | token | bsc | n/a | [`0x31d0a7...e57610`](./contracts/bsc-56/0x31d0a7ada4d4c131eb612db48861211f63e57610/) | ⚠️ Unaudited |
| BMIStaking | unknown | ethereum | unit-41621 | [`0x55978a...d0890c`](./contracts/ethereum-1/0x55978a6f6a4cfa00d5a8b442e93e42c025d0890c/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CapitalPool | core_logic | ethereum | unit-41620 | 2 deployments: ethereum [`0x426f72...082b02`](./contracts/ethereum-1/0x426f72ab027da5f5a462d377a5eb057f63082b02/); polygon `0xab7c73...a76116` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://uploads-ssl.webflow.com/5fac3e348dbd5932a7578690/60da267d76850e5acfe4e4c2_Bridge%20Mutual%20SC%20Audit_%20ZOkyo.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 2 | high |
| [DL audit link](https://diligence.security/audits/2021/03/bridge-mutual) | unknown | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x725c26...1ee688`](./contracts/ethereum-1/0x725c263e32c72ddc3a19bea12c5a0479a81ee688/) | BMIToken | token | $83,920.00 | Verified native implementation with $83,920.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=3

Zero-match audit list:

- [12865] DL audit link

Fork inheritance lineage and inherited audits are included when available.
