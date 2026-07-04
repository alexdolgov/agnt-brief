# Agentic Audit Brief: KLend

## Project Overview

- Project: KLend (`klend`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.270Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: bsc
- Contract surface: 25 unique implementations (28 raw deployments)
- DeFi Llama TVL: $5,802.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 11 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 8 common project-authored base contract(s) (ctokeninterface, ctokenstorage, cerc20interface). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 57; live-surface contracts included: 28 (7 live, 21 unknown).
- Excluded by liveness: 29 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/4 (50.0%)
- Deployed-live implementations: 4 of 25 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/4
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 21
- Unique implementations: 25
- Raw deployments: 28
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 50.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 2 | 50.0% | 2021-03 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CEther | unknown | bsc | n/a | [`0x2c334c...7ff481`](./contracts/bsc-56/0x2c334c6cbc0547e759084bd8d469f933b17ff481/) | ✅ Audited |
| Comp | unknown | bsc | n/a | 3 deployments: bsc [`0x532581...4a8651`](./contracts/bsc-56/0x532581462d91b7b2087a5be54110f10c884a8651/); bsc `0x999532...66acf3`; bsc `0xf95995...c6d0fb` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Comptroller | unknown | bsc | n/a | [`0x500db8...391096`](./contracts/bsc-56/0x500db844220fa49fe8cbf9ee35159c4094391096/) | ⚠️ Unaudited |
| Comptroller | unknown | bsc | n/a | 2 deployments: bsc [`0xa6bed5...dd1e5c`](./contracts/bsc-56/0xa6bed5b7320941ea185a315d1292492f7fdd1e5c/); bsc `0xc9b51b...0765e7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (21)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x05fa23...e57297` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x08627a...51426a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x12eadb...f72316` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x154159...fc3b2c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2141d2...812dee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d811b...5f3844` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37773f...08e48d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e88fb...ef5ca8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4899f3...e03a67` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6cda81...c9fa7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ed83e...61ac99` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x795331...b8a211` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ea83d...41a2b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a600d...66f81a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf4370...95e7b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb779bf...ecd158` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcf4150...55fe79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd52e72...3472fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe51afb...6024a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe7a89b...2a55ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf92e95...20ab52` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [slowmist.pdf](https://github.com/klend-lab/klend-protocol/blob/main/slowmist.pdf) | SlowMist | Audit | 2021-03 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x500db8...391096`](./contracts/bsc-56/0x500db844220fa49fe8cbf9ee35159c4094391096/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa6bed5...dd1e5c`](./contracts/bsc-56/0xa6bed5b7320941ea185a315d1292492f7fdd1e5c/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
