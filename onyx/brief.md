# Agentic Audit Brief: Onyx

## Project Overview

- Project: Onyx (`onyx`)
- Website: [https://app.onyx.org/](https://app.onyx.org/)
- Lifecycle: active (Tier 1, dead)
- Generated: 2026-06-17T07:00:40.604Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $46,620,839.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Onyx is an Onyxcoin/XCN-powered app and protocol ecosystem on Ethereum that includes staking and app features such as swap, bridge, farm and governance, alongside a Compound-style liquidity/lending market with oTokens and a Comptroller for risk management.

### Architecture

The Lending family relies on the OnyxDAORegistry for configuration and access control, while the Governance & Staking family manages protocol parameters and incentives. Both families share the same deployer clusters and are part of the broader Onyx ecosystem.

## Contract Surface Quality

- Indexed contracts: 46; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 16 inactive, 25 singleton, 0 uninitialized.
- Deployment units: 0/8 live.
- Detected codebases: compound-v2
- Dependencies extracted: 23; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CHNGovernance | unknown | ethereum | n/a | [`0xdec2f3...4ef767`](./contracts/ethereum-1/0xdec2f31c3984f3440540dc78ef21b1369d4ef767/) | ⚠️ Unaudited |
| CHNReward | unknown | ethereum | n/a | [`0x28ca9c...a5da93`](./contracts/ethereum-1/0x28ca9caae31602d0312ebf6466c9dd57fca5da93/) | ⚠️ Unaudited |
| CHNStaking | unknown | ethereum | n/a | [`0x23445c...0e19a9`](./contracts/ethereum-1/0x23445c63feef8d85956dc0f19ade87606d0e19a9/) | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | n/a | [`0x3fa642...249216`](./contracts/ethereum-1/0x3fa642c0bbad64569eb8424af35f518347249216/) | ⚠️ Unaudited |
| OnyxDAORegistry | registry | ethereum | n/a | [`0xadb90c...df3b31`](./contracts/ethereum-1/0xadb90c593e0bc8395a53087d8c558f5563df3b31/) | ⚠️ Unaudited |

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
| [XCN-token-Certik-Audit-2022-03-06.pdf](https://github.com/chain/chain-token/blob/main/XCN-token-Certik-Audit-2022-03-06.pdf) | CertiK | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11640] XCN-token-Certik-Audit-2022-03-06.pdf

Fork inheritance lineage and inherited audits are included when available.
