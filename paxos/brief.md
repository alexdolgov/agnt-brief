# Agentic Audit Brief: Paxos

## Project Overview

- Project: Paxos (`paxos`)
- Website: [https://www.paxos.com/](https://www.paxos.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:42.989Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $1,812,141,203.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 1 of 1 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 3 fresh, 4 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x458048...cbaf78`](./contracts/ethereum-1/0x45804880de22913dafe09f4980848ece6ecbaf78/) | ⚠️ Unaudited |

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
| [Domain Separator - Halborn.pdf](https://github.com/paxosglobal/paxos-token-contracts/blob/master/audits/Domain%20Separator%20-%20Halborn.pdf) | Halborn | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Enhance Signature Validation - Zellic Audit Report.pdf](https://github.com/paxosglobal/paxos-token-contracts/blob/master/audits/Enhance%20Signature%20Validation%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [PAXG V2 - Zellic Audit Report.pdf](https://github.com/paxosglobal/paxos-token-contracts/blob/master/audits/PAXG%20V2%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Paxos - Cross Chain Integration - Trail Of Bits Audit Report.pdf](https://github.com/paxosglobal/paxos-token-contracts/blob/master/audits/Paxos%20-%20Cross%20Chain%20Integration%20-%20Trail%20Of%20Bits%20Audit%20Report.pdf) | Trail of Bits | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Paxos Stablecoin - Zellic Audit Report.pdf](https://github.com/paxosglobal/paxos-token-contracts/blob/master/audits/Paxos%20Stablecoin%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Paxos Token Contracts Halborn Audit Report.pdf](https://github.com/paxosglobal/paxos-token-contracts/blob/master/audits/Paxos%20Token%20Contracts%20Halborn%20Audit%20Report.pdf) | Halborn | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [Paxos USDG Rewards - Zellic Audit Report.pdf](https://github.com/paxosglobal/paxos-token-contracts/blob/master/audits/Paxos%20USDG%20Rewards%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20915] Domain Separator - Halborn.pdf
- [20916] Enhance Signature Validation - Zellic Audit Report.pdf
- [20917] PAXG V2 - Zellic Audit Report.pdf
- [20918] Paxos - Cross Chain Integration - Trail Of Bits Audit Report.pdf
- [20919] Paxos Stablecoin - Zellic Audit Report.pdf
- [20920] Paxos Token Contracts Halborn Audit Report.pdf
- [20921] Paxos USDG Rewards - Zellic Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
