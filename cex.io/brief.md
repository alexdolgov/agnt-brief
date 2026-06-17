# Agentic Audit Brief: CEX.IO

## Project Overview

- Project: CEX.IO (`cex.io`)
- Website: [http://cex.io/](http://cex.io/)
- Lifecycle: active (Tier 0, 77.4% below peak)
- Generated: 2026-06-17T07:00:52.420Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc, ethereum, polygon
- Contract surface: 4 unique implementations (6 raw deployments)
- DeFi Llama TVL: $12,099,478.96
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CEX.IO is a centralized cryptocurrency exchange offering services such as buying, selling, trading, holding, earn/staking products, fiat on/off-ramps, margin trading, and related wallet/payment services. The on-chain contract surface identified for this brief is limited to Safe/Gnosis Safe wallet proxies used for custody or treasury operations, and should be distinguished from the broader centralized exchange business and reserve/TVL footprint.

### Architecture

All contracts are Gnosis Safe multisig wallets deployed by the same deployer cluster, indicating a single operational entity managing funds across multiple chains.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 6
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

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GnosisSafe | governance | ethereum | unit-20298 | [`0x2818e5...5932ca`](./contracts/ethereum-1/0x2818e54e0489274f61f33f163504074bee5932ca/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | unit-20299 | [`0xc48c74...69d996`](./contracts/ethereum-1/0xc48c74c4eda47f915e8580391ec2f386f769d996/) | ⚠️ Unaudited |
| SafeL2 | unknown | bsc | unit-20300 | [`0x8e7b54...91684d`](./contracts/bsc-56/0x8e7b542d93901560583c0c22d156ecca5191684d/) | ⚠️ Unaudited |
| SafeProxy | unknown | polygon | n/a | 3 deployments: bsc `0xc48c74...69d996`; polygon [`0x8e7b54...91684d`](./contracts/polygon-137/0x8e7b542d93901560583c0c22d156ecca5191684d/); polygon `0xc48c74...69d996` | ⚠️ Unaudited |

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
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11551] PCI DSS Level 1 certification

Fork inheritance lineage and inherited audits are included when available.
