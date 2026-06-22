# Agentic Audit Brief: Atoll

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Atoll (`atoll`)
- Website: [https://atoll.money/](https://atoll.money/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-19T09:01:04.375Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: sonic
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): $19,722.40
- TVL by chain: Sonic $19,722.40

## Project Description

Atoll is a yield protocol on Sonic that issues a yield-bearing token (AtToken) backed by stablecoins, using automated market operations to manage reserves and maintain its peg.

### Architecture

The Atoll family uses GovToken for governance, while PsmAMO and RebalanceAMO manage AtToken's reserves and peg. GnosisSafeProxy likely controls administrative functions across the protocol.

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $19,722.40
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $19,722.40 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AtToken | token | sonic | n/a | [`0x284d81...5cbe0e`](./contracts/sonic-146/0x284d81e48fbc782aa9186a03a226690aea5cbe0e/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | sonic | n/a | [`0x66bb47...77a667`](./contracts/sonic-146/0x66bb478787705a2c7e0a6ff21d4370230277a667/) | ⚠️ Unaudited |
| GovToken | token | sonic | n/a | [`0xd1da31...7688b7`](./contracts/sonic-146/0xd1da314f7db27dbe3c61ac172be13d86e67688b7/) | ⚠️ Unaudited |
| Vesting | operational_periphery | sonic | n/a | [`0x6fa136...5b2e70`](./contracts/sonic-146/0x6fa136b46be0e8b73bade53ff60ac4d6545b2e70/) | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-Atoll-v1.0.pdf](https://github.com/Marvin051499/atoll-smart-contracts/blob/main/PeckShield-Audit-Report-Atoll-v1.0.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x284d81...5cbe0e`](./contracts/sonic-146/0x284d81e48fbc782aa9186a03a226690aea5cbe0e/) | AtToken | token | $19,722.40 | Verified native implementation with $19,722.40 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xd1da31...7688b7`](./contracts/sonic-146/0xd1da314f7db27dbe3c61ac172be13d86e67688b7/) | GovToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6fa136...5b2e70`](./contracts/sonic-146/0x6fa136b46be0e8b73bade53ff60ac4d6545b2e70/) | Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12698] PeckShield-Audit-Report-Atoll-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
