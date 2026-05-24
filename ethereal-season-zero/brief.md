# Agentic Audit Brief: Ethereal Season Zero

⚠️ Lifecycle status: DEAD - TVL dropped 44.6% over 90 days

## Project Overview

- Project: Ethereal Season Zero (`ethereal-season-zero`)
- Website: [https://www.ethereal.trade/](https://www.ethereal.trade/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-05-24T09:40:24.823Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $2,854,620.49
- On-chain TVL (included contracts): $2,820,387.98
- TVL by chain: Ethereum $2,820,387.98

## Project Description

Ethereal Season Zero is a farming protocol that allows users to deposit assets into a pre-deposit vault to earn rewards.

### Architecture

The protocol consists of a single product family with one core vault contract; there are no supporting contracts or shared infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 4
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,820,387.98
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 4 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $2,820,387.98 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| EtherealPreDepositVault | core_logic | ethereum | [`0x90d2af...74cc8f`](./contracts/ethereum-1/0x90d2af7d622ca3141efa4d8f1f24d86e5974cc8f/) | ⚠️ Unaudited |

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
| [DL audit link](https://drive.google.com/file/d/1HMihTcqKwt75pTAct9F0H3noqDtCJ3u3/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Guardian Audits - Exchange](https://drive.google.com/file/d/1HeJGheenSIK2AcA113GV-ErQNFELDAGD/view?usp=sharing) | Guardian | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Chain Security - Exchange](https://drive.google.com/file/d/1bgSfCaiyfC438nUNB3K8UVe5Eg006yKb/view?usp=sharing) | Guardian | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Guardian Audits - Season Zero](https://drive.google.com/file/d/1HMihTcqKwt75pTAct9F0H3noqDtCJ3u3/view) | Guardian | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x90d2af...74cc8f`](./contracts/ethereum-1/0x90d2af7d622ca3141efa4d8f1f24d86e5974cc8f/) | EtherealPreDepositVault | core_logic | $2,820,387.98 | Verified native implementation with $2,820,387.98 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2776] DL audit link
- [2777] Guardian Audits - Exchange
- [2778] Chain Security - Exchange
- [2779] Guardian Audits - Season Zero

Fork inheritance lineage and inherited audits are included when available.
