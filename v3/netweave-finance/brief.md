# Agentic Audit Brief: NetWeave Finance

## Project Overview

- Project: NetWeave Finance (`netweave-finance`)
- Website: [https://www.netweave.finance](https://www.netweave.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:36.413Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: mode
- Contract surface: 12 unique implementations (14 raw deployments)
- DeFi Llama TVL: $12,125.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 10 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 4 common project-authored base contract(s) (comptrollererrorreporter, ctokeninterface, cdelegatorinterface). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 14 (0 live, 14 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/10
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 12
- Raw deployments: 14
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 20.0% | 2024-06 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Comptroller | unknown | mode | n/a | [`0x545f4c...bea593`](./contracts/mode-34443/0x545f4c1cfa6ef2dd7c1239887384d6baf9bea593/) | ✅ Audited |
| RewardDistributor | unknown | mode | n/a | [`0x792190...46629b`](./contracts/mode-34443/0x792190cb3a8df67daab6c71929a963718846629b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CErc20Delegate | unknown | mode | n/a | [`0xb0290b...571c05`](./contracts/mode-34443/0xb0290b0efc67c2fe0b1ff7f35a3f3b394d571c05/) | ⚠️ Unaudited |
| CErc20Delegator | unknown | mode | n/a | 3 deployments: mode [`0x666170...b41339`](./contracts/mode-34443/0x6661705b319b2148aaec0ce4ba9da4acf4b41339/); mode `0xa66841...8e4fb4`; mode `0xfc2a08...708b57` | ⚠️ Unaudited |
| CEtherDelegate | unknown | mode | n/a | [`0xc7aeef...16def8`](./contracts/mode-34443/0xc7aeefe9819450a081627fe51ed86b850016def8/) | ⚠️ Unaudited |
| CEtherDelegator | unknown | mode | n/a | [`0xd16c5b...15ba9a`](./contracts/mode-34443/0xd16c5b79990a131f679b0d4729e44fc0e115ba9a/) | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | mode | n/a | [`0x907637...eb2be9`](./contracts/mode-34443/0x907637e6e7664d2e6a4a6c26c4586e4797eb2be9/) | ⚠️ Unaudited |
| TimelockController | governance | mode | n/a | [`0x31e2d6...022d16`](./contracts/mode-34443/0x31e2d664bca7e5a6502a0be25d90a3bfb1022d16/) | ⚠️ Unaudited |
| Token | token | mode | n/a | [`0x0fa000...b53a90`](./contracts/mode-34443/0x0fa000cf4018e7a5069437a06f73120db0b53a90/) | ⚠️ Unaudited |
| Unitroller | unknown | mode | n/a | [`0x86112d...e7bffe`](./contracts/mode-34443/0x86112d3176c537b953560ea6fe43f79382e7bffe/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | mode | n/a | `0x5ca8c2...6e7523` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x755a59...41ce49` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [NetWeave Smart Contracts Audit Report - QuillAudits.pdf](https://github.com/Quillhash/QuillAudit_Reports/blob/master/NetWeave%20Smart%20Contracts%20Audit%20Report%20-%20QuillAudits.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
