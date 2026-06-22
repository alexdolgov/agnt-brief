# Agentic Audit Brief: Fractal Protocol

⚠️ Lifecycle status: DECLINING - TVL dropped 57.6% over 90 days

## Project Overview

- Project: Fractal Protocol (`fractal-protocol`)
- Website: [https://www.fractalprotocol.org](https://www.fractalprotocol.org)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-19T22:11:30.110Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $10,894.46
- On-chain TVL (included contracts): $2,804,044.09
- TVL by chain: Ethereum $2,804,044.09

## Project Description

Fractal Protocol is a yield optimization platform that aggregates user deposits into vaults to generate returns. It automates yield farming strategies, allowing users to earn passive income on their crypto assets.

### Architecture

The Vault contract pools user funds and interacts with the YieldReserve to manage yield distribution and risk. Both contracts are deployed together and share the same deployer, indicating a tightly integrated system.

## Contract Surface Quality

- Indexed contracts: 74; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 72 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Unverified dependencies: 1/8.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,804,044.09
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $2,804,044.09 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ReceiptToken | token | ethereum | n/a | [`0x51acb1...6dc8aa`](./contracts/ethereum-1/0x51acb1ea45c1ec2512ae4202b9076c13016dc8aa/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | [`0x3eaa4b...838dfc`](./contracts/ethereum-1/0x3eaa4b3e8967c02ce1304c1eb35e8c5409838dfc/) | ⚠️ Unaudited |

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
| [DL audit link](https://docs.google.com/viewerng/viewer?url=https://fractalprotocol.s3.amazonaws.com/Fractal%2BAudit%2BReport.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x51acb1...6dc8aa`](./contracts/ethereum-1/0x51acb1ea45c1ec2512ae4202b9076c13016dc8aa/) | ReceiptToken | token | $2,804,029.76 | Verified native implementation with $2,804,029.76 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3eaa4b...838dfc`](./contracts/ethereum-1/0x3eaa4b3e8967c02ce1304c1eb35e8c5409838dfc/) | Vault | core_logic | $14.32 | Verified native implementation with $14.32 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13134] DL audit link

Fork inheritance lineage and inherited audits are included when available.
