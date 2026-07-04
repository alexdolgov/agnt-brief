# Agentic Audit Brief: 0x0.ai

## Project Overview

- Project: 0x0.ai (`0x0.ai`)
- Website: [https://0x0.ai](https://0x0.ai)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:23.550Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $164,446.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Privacy. Structurally: 6 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 6 contract(s).

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 6 of 6 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AltBn128 | unknown | ethereum | n/a | [`0x04b597...0463c6`](./contracts/ethereum-1/0x04b597a1e8d1526ac8168174f426b5f47c0463c6/) | ⚠️ Unaudited |
| LSAG | unknown | ethereum | n/a | [`0x09489b...c614fc`](./contracts/ethereum-1/0x09489bceb5b8ce3b6010801c4760ee9d1cc614fc/) | ⚠️ Unaudited |
| OxO | unknown | ethereum | n/a | [`0x5a3e6a...811ad5`](./contracts/ethereum-1/0x5a3e6a77ba2f983ec0d371ea3b475f8bc0811ad5/) | ⚠️ Unaudited |
| OxODashboardClaim | unknown | ethereum | n/a | [`0x02b15c...8a2169`](./contracts/ethereum-1/0x02b15c47b4b516a22fd2d8b1fc662afb808a2169/) | ⚠️ Unaudited |
| OxOFactory | unknown | ethereum | n/a | [`0x39bb77...4bec3f`](./contracts/ethereum-1/0x39bb7720796f474d5e9fe66495a45719914bec3f/) | ⚠️ Unaudited |
| OxOMixerFactory | unknown | ethereum | n/a | [`0x1b3279...9c70a4`](./contracts/ethereum-1/0x1b32797451b388988b1c01b249cbf6f5679c70a4/) | ⚠️ Unaudited |

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
| [app.solidproof.io/projects/0x0factory](https://app.solidproof.io/projects/0x0factory) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [app.solidproof.io/projects/0x0factory](https://app.solidproof.io/projects/0x0factory?audit=d3103372-54c8-40d5-a14a-dc31686c607d) | SolidProof | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [app.solidproof.io/projects/0x0factory](https://app.solidproof.io/projects/0x0factory?audit=164b43b6-6ded-43db-8482-753b545c5b53) | SolidProof | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [app.solidproof.io/projects/0x0factory](https://app.solidproof.io/projects/0x0factory?audit=02631741-dccf-495f-8e18-4ce28edd03cb) | SolidProof | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20761] app.solidproof.io/projects/0x0factory
- [20762] app.solidproof.io/projects/0x0factory
- [20763] app.solidproof.io/projects/0x0factory
- [20764] app.solidproof.io/projects/0x0factory

Fork inheritance lineage and inherited audits are included when available.
