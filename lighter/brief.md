# Agentic Audit Brief: Lighter

## Project Overview

- Project: Lighter (`lighter`)
- Website: [https://app.lighter.xyz/trade/ETH?referral=FHT1N8AYKHP4](https://app.lighter.xyz/trade/ETH?referral=FHT1N8AYKHP4)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.054Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: arbitrum, ethereum
- Contract surface: 9 unique implementations (9 raw deployments)
- DeFi Llama TVL: $511,583,797.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 6 project-authored contract(s) across 2 chain(s); 1 ERC20 token; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 3 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/8 (0.0%)
- Deployed-live implementations: 9 of 9 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Factory | unknown | arbitrum | n/a | [`0x13022f...ce5182`](./contracts/arbitrum-42161/0x13022f85d87d18c8e2b50de6c7c809698dce5182/) | ⚠️ Unaudited |
| Lighter | unknown | ethereum | n/a | [`0x232ce3...784ee2`](./contracts/ethereum-1/0x232ce3bd40fcd6f80f3d55a522d03f25df784ee2/) | ⚠️ Unaudited |
| LinkedListLib | unknown | arbitrum | n/a | [`0x43ccc6...5af8b3`](./contracts/arbitrum-42161/0x43ccc6d2a517a9a0955fba24c73f2202da5af8b3/) | ⚠️ Unaudited |
| MaxLinkedListLib | unknown | arbitrum | n/a | [`0x0f3949...99ea3c`](./contracts/arbitrum-42161/0x0f39497a76f33efebb88c903bd3d5a175499ea3c/) | ⚠️ Unaudited |
| MinLinkedListLib | unknown | arbitrum | n/a | [`0x8dd063...962c60`](./contracts/arbitrum-42161/0x8dd0635fef368ee7caa7d8f2d6de4792f5962c60/) | ⚠️ Unaudited |
| OrderBookDeployerLib | unknown | arbitrum | n/a | [`0x7882f8...0b1877`](./contracts/arbitrum-42161/0x7882f88895666781e472f8e1b6cd8b84440b1877/) | ⚠️ Unaudited |
| OrderBookHelper | unknown | arbitrum | n/a | [`0xa1e787...ffee97`](./contracts/arbitrum-42161/0xa1e78740217910ba0bb65eeee875cfcf8bffee97/) | ⚠️ Unaudited |
| Router | unknown | arbitrum | n/a | [`0x033c00...b81d57`](./contracts/arbitrum-42161/0x033c00fd922af40b6683fe5371380831a5b81d57/) | ⚠️ Unaudited |
| TimelockController | unknown | arbitrum | n/a | [`0x2b2489...3e7a1c`](./contracts/arbitrum-42161/0x2b24894c03391e95846e74abca605231ee3e7a1c/) | ⚠️ Unaudited |

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
| [skynet.certik.com/projects/lighter](https://skynet.certik.com/projects/lighter) | CertiK | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x13022f...ce5182`](./contracts/arbitrum-42161/0x13022f85d87d18c8e2b50de6c7c809698dce5182/) | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x232ce3...784ee2`](./contracts/ethereum-1/0x232ce3bd40fcd6f80f3d55a522d03f25df784ee2/) | Lighter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x43ccc6...5af8b3`](./contracts/arbitrum-42161/0x43ccc6d2a517a9a0955fba24c73f2202da5af8b3/) | LinkedListLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0f3949...99ea3c`](./contracts/arbitrum-42161/0x0f39497a76f33efebb88c903bd3d5a175499ea3c/) | MaxLinkedListLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8dd063...962c60`](./contracts/arbitrum-42161/0x8dd0635fef368ee7caa7d8f2d6de4792f5962c60/) | MinLinkedListLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7882f8...0b1877`](./contracts/arbitrum-42161/0x7882f88895666781e472f8e1b6cd8b84440b1877/) | OrderBookDeployerLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa1e787...ffee97`](./contracts/arbitrum-42161/0xa1e78740217910ba0bb65eeee875cfcf8bffee97/) | OrderBookHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x033c00...b81d57`](./contracts/arbitrum-42161/0x033c00fd922af40b6683fe5371380831a5b81d57/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
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

- [20768] skynet.certik.com/projects/lighter

Fork inheritance lineage and inherited audits are included when available.
