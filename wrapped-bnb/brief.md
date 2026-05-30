# Agentic Audit Brief: Wrapped BNB

⚠️ Lifecycle status: DECLINING - TVL changed 4.5% over 90 days

## Project Overview

- Project: Wrapped BNB (`wrapped-bnb`)
- Website: [https://www.kava.io](https://www.kava.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-30T11:41:37.418Z
- Pipeline run: v2-pipeline-2026-05-30-255779-2e4e
- Chains: kava
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $6,014,080.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Wrapped BNB is a cross-chain bridge protocol that enables the transfer and use of BNB tokens across multiple blockchain networks. It provides wrapped BNB tokens and associated DeFi infrastructure such as vaults, staking, and liquidity pools to facilitate yield generation and asset management on non-BSC chains.

### Architecture

The Wrapped BNB family relies on shared token contracts like ERC20Peg and MantaMintableERC20 for wrapped asset representation, while governance controllers (FarmV2Controller, FarmV3Controller) manage farming operations across multiple vaults and pools. Proxy contracts (ArcProxy, TransparentUpgradeableProxy) provide upgradeability for core logic such as staking and cross-chain gateways.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 5
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 4 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | kava | `0xa8e48f...49fc1f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Auditsarrow_outward](https://skynet.certik.com/projects/kava) | CertiK | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [Telemetry.md](https://github.com/kava-labs/kava/blob/master/docs/Telemetry.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [proto-docs.md](https://github.com/kava-labs/kava/blob/master/docs/core/proto-docs.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [faqs.md](https://github.com/kava-labs/switch/blob/master/docs/faqs.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [lightning-setup.md](https://github.com/kava-labs/switch/blob/master/docs/lightning-setup.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2397] Auditsarrow_outward
- [11376] Telemetry.md
- [11377] proto-docs.md
- [11378] faqs.md
- [11379] lightning-setup.md

Fork inheritance lineage and inherited audits are included when available.
