# Agentic Audit Brief: BabyDoge Bridge

## Project Overview

- Project: BabyDoge Bridge (`babydoge-bridge`)
- Website: [https://bridge.babydoge.com/](https://bridge.babydoge.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:05.142Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: bsc
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $447,928.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 3 project-authored contract(s) across 1 chain(s); 1 ERC20 token; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 4 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgeAssist | unknown | bsc | n/a | [`0x1d09d3...e65909`](./contracts/bsc-56/0x1d09d3458cc150016f0fd7b079af41e17ce65909/) | ⚠️ Unaudited |
| CoinToken | unknown | bsc | n/a | [`0xc74867...02e8de`](./contracts/bsc-56/0xc748673057861a797275cd8a068abb95a902e8de/) | ⚠️ Unaudited |
| TimelockController | unknown | bsc | n/a | [`0x860e6c...c47d54`](./contracts/bsc-56/0x860e6cc13381988631c6eb4ad391294a2fc47d54/) | ⚠️ Unaudited |
| Vault | unknown | bsc | n/a | [`0x58ecef...75af33`](./contracts/bsc-56/0x58ecef26335af7b04a998105a6603b0dc475af33/) | ⚠️ Unaudited |

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
| [skynet.certik.com/projects/baby-doge-coin](https://skynet.certik.com/projects/baby-doge-coin?auditId=Baby%20Doge%20-%20Bridge) | CertiK | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Manual audit seed](https://skynet.certik.com/projects/baby-doge-coin) | CertiK | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x1d09d3...e65909`](./contracts/bsc-56/0x1d09d3458cc150016f0fd7b079af41e17ce65909/) | BridgeAssist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc74867...02e8de`](./contracts/bsc-56/0xc748673057861a797275cd8a068abb95a902e8de/) | CoinToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x58ecef...75af33`](./contracts/bsc-56/0x58ecef26335af7b04a998105a6603b0dc475af33/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21375] skynet.certik.com/projects/baby-doge-coin
- [23933] Manual audit seed

Fork inheritance lineage and inherited audits are included when available.
