# Agentic Audit Brief: Neemo Finance

## Project Overview

- Project: Neemo Finance (`neemo-finance`)
- Website: [https://neemo.finance/](https://neemo.finance/)
- Lifecycle: active (Tier 0, 74.5% below peak)
- Generated: 2026-06-14T00:23:40.262Z
- Pipeline run: v2-pipeline-2026-06-13-e4a349-24d8
- Chains: ethereum
- Contract surface: 14 unique implementations (15 raw deployments)
- DeFi Llama TVL: $1,118,880.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Neemo Finance is an Astar/Soneium-focused liquid staking and restaking protocol for ASTR and ETH. Users receive liquid derivative tokens such as nsASTR and nrETH while participating in staking/restaking strategies. Current public TVL attribution should be treated as Astar/Soneium-focused rather than Ethereum-mainnet-primary unless supported by matching chain TVL and deployed contracts.

### Architecture

The Neemo Finance family contains the core protocol logic, which is used by the Ethereum Mainnet and Soneium families through proxy contracts. The Ethereum Mainnet family includes a proxy pointing to an implementation shared with the Neemo Finance family, indicating shared infrastructure for liquid restaking across chains.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 14
- Raw deployments: 15
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ERC1967Proxy | proxy | ethereum | 2 deployments: ethereum [`0x54cd23...c13525`](./contracts/ethereum-1/0x54cd23460df45559fd5feeaada7ba25f89c13525/); ethereum `0x653415...ae2bdf` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x02c5b1...da785a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0b43ae...64d807` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x131ae8...210f4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5e6d79...b19342` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6dcdd4...ba141d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x85031e...16559c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x873059...b4ef63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaa75e4...6f364d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc67476...b44337` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcfa66f...d0cec2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf13790...64dfe1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf18229...9d9418` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfb01af...fea0d3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://hacken.io/audits/neemo-finance) | Hacken | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3061] DL audit link

Fork inheritance lineage and inherited audits are included when available.
