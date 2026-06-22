# Agentic Audit Brief: BounceBit pre-launch Farm

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: BounceBit pre-launch Farm (`bouncebit-pre-launch-farm`)
- Website: [https://bouncebit.io](https://bouncebit.io)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-19T11:31:22.256Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: ethereum
- Contract surface: 2 unique implementations (3 raw deployments)
- DeFi Llama TVL: $0.12
- On-chain TVL (included contracts): $28,312,995.06
- TVL by chain: Ethereum $28,312,995.06

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 220; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 123 inactive, 94 singleton, 0 uninitialized.
- Deployment units: 0/51 live.
- Detected codebases: none
- Unverified dependencies: 1/1.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 3
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $28,312,995.06
- Latest audit: 2024-02 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $28,312,995.06 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BounceAuctionToken | token | ethereum | n/a | [`0xa9b1eb...009096`](./contracts/ethereum-1/0xa9b1eb5908cfc3cdf91f9b8b3a74108598009096/) | ⚠️ Unaudited |
| BRC20 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1981e3...f13ce1`](./contracts/ethereum-1/0x1981e32c2154936741ab6541a737b87c68f13ce1/); ethereum `0x38e382...51de93` | ⚠️ Unaudited |

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
| [DL audit link](https://3876813834-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaNWumH92fd1205exOOBs%2Fuploads%2FKFpCcHfuzqSvO1yGpUJL%2FBounceBit-Vault_audit_report_2024-02-09.pdf) | unknown | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa9b1eb...009096`](./contracts/ethereum-1/0xa9b1eb5908cfc3cdf91f9b8b3a74108598009096/) | BounceAuctionToken | token | $28,312,995.06 | Verified native implementation with $28,312,995.06 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12853] DL audit link

Fork inheritance lineage and inherited audits are included when available.
