# Agentic Audit Brief: Alita Finance

## Project Overview

- Project: Alita Finance (`alita-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:52:59.768Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: bsc
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $221,176.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 6 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 3 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/6 (33.3%)
- Deployed-live implementations: 6 of 6 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/6
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 2 | 33.3% | 2021-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlitaSwapFactory | unknown | bsc | n/a | [`0xc7a506ab3ac668eab6bf9ecf971433d6cfef05d9`](./contracts/bsc-56/0xc7a506ab3ac668eab6bf9ecf971433d6cfef05d9/) | ✅ Audited |
| Incentive | unknown | bsc | n/a | [`0x28162cda1e767663f68b759af47801171aa58815`](./contracts/bsc-56/0x28162cda1e767663f68b759af47801171aa58815/) | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlitaRouter | unknown | bsc | n/a | [`0x730acc3bbf2443f2eaeacfc7ac7b4d8dc9e32db8`](./contracts/bsc-56/0x730acc3bbf2443f2eaeacfc7ac7b4d8dc9e32db8/) | ⚠️ Unaudited |
| AliToken | unknown | bsc | n/a | [`0x557233e794d1a5fbcc6d26dca49147379ea5073c`](./contracts/bsc-56/0x557233e794d1a5fbcc6d26dca49147379ea5073c/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | [`0x4f7b2be2bc3c61009e9ae520ccfc830612a10694`](./contracts/bsc-56/0x4f7b2be2bc3c61009e9ae520ccfc830612a10694/) | ⚠️ Unaudited |
| Staking | unknown | bsc | n/a | [`0xc057c6c2dfb25c9a613052dcea73e21b50f7f838`](./contracts/bsc-56/0xc057c6c2dfb25c9a613052dcea73e21b50f7f838/) | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/alitafinance) | CertiK | Audit | 2021-08 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x730acc3bbf2443f2eaeacfc7ac7b4d8dc9e32db8`](./contracts/bsc-56/0x730acc3bbf2443f2eaeacfc7ac7b4d8dc9e32db8/) | AlitaRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x557233e794d1a5fbcc6d26dca49147379ea5073c`](./contracts/bsc-56/0x557233e794d1a5fbcc6d26dca49147379ea5073c/) | AliToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4f7b2be2bc3c61009e9ae520ccfc830612a10694`](./contracts/bsc-56/0x4f7b2be2bc3c61009e9ae520ccfc830612a10694/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc057c6c2dfb25c9a613052dcea73e21b50f7f838`](./contracts/bsc-56/0xc057c6c2dfb25c9a613052dcea73e21b50f7f838/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
