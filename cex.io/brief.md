# Agentic Audit Brief: CEX.IO

## Project Overview

- Project: CEX.IO (`cex.io`)
- Website: [http://cex.io/](http://cex.io/)
- Lifecycle: active (Tier 0, 77.4% below peak)
- Generated: 2026-05-31T07:39:57.191Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: ethereum, polygon
- Contract surface: 3 unique implementations (4 raw deployments)
- DeFi Llama TVL: $7,647,676.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CEX.IO is a centralized exchange (CEX) that uses on-chain multisig wallets (Gnosis Safe) for treasury management and operational custody of funds on Ethereum and Polygon.

### Architecture

All contracts are Gnosis Safe multisig wallets deployed by the same deployer cluster, indicating a single operational entity managing funds across multiple chains.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 4
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

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| GnosisSafe | governance | ethereum | [`0x2818e5...5932ca`](./contracts/ethereum-1/0x2818e54e0489274f61f33f163504074bee5932ca/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | [`0xc48c74...69d996`](./contracts/ethereum-1/0xc48c74c4eda47f915e8580391ec2f386f769d996/) | ⚠️ Unaudited |
| SafeProxy | unknown | polygon | 2 deployments: polygon [`0x8e7b54...91684d`](./contracts/polygon-137/0x8e7b542d93901560583c0c22d156ecca5191684d/); polygon `0xc48c74...69d996` | ⚠️ Unaudited |

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
| [PCI DSS Level 1 certification](https://static.cex.io/img/legal/pci.pdf) | PCI DSS | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2134] PCI DSS Level 1 certification

Fork inheritance lineage and inherited audits are included when available.
