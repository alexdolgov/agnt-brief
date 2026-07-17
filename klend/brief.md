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
| CEther | unknown | bsc | n/a | [`0x2c334c6cbc0547e759084bd8d469f933b17ff481`](./contracts/bsc-56/0x2c334c6cbc0547e759084bd8d469f933b17ff481/) | ✅ Audited |
| Comp | unknown | bsc | n/a | 3 deployments: bsc [`0x532581462d91b7b2087a5be54110f10c884a8651`](./contracts/bsc-56/0x532581462d91b7b2087a5be54110f10c884a8651/); bsc `0x999532be4918a4faf3552c80e26f00e67a66acf3`; bsc `0xf95995d642c652e9a7d124d546a7bdf297c6d0fb` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Comptroller | unknown | bsc | n/a | [`0x500db844220fa49fe8cbf9ee35159c4094391096`](./contracts/bsc-56/0x500db844220fa49fe8cbf9ee35159c4094391096/) | ⚠️ Unaudited |
| Comptroller | unknown | bsc | n/a | 2 deployments: bsc [`0xa6bed5b7320941ea185a315d1292492f7fdd1e5c`](./contracts/bsc-56/0xa6bed5b7320941ea185a315d1292492f7fdd1e5c/); bsc `0xc9b51b99f42b3a59a818f7b2b14740fc6c0765e7` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x05fa238911f5cbb970ff5492679a08145ae57297` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x08627af97f556aa0b39039ed863fee836c51426a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x12eadbad11667a70a6968931a56aed9ac4f72316` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x154159a25ed1e6eea4f67a4df6689c5027fc3b2c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2141d23e18039147d70d9672d4b9398ea3812dee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d811b47e89be0c53f867fdbcda88252ea5f3844` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37773f54e72478c7bd027932d711e7a9bd08e48d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e88fb26215a0bd854996b6c9be6421105ef5ca8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4899f3d3a7c959d6415b26b7aaf9dbb202e03a67` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6cda812f20db8086f2a212808f1a53a62fc9fa7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ed83ef2c6b4051465389e09a8ff953dc161ac99` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x795331aeecf3dc7627bb2bc424f95976b0b8a211` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ea83d08796c37b6d1cbc39bb0cf526c7d41a2b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a600ddf3bf1e79c52a42177c7f336e5c766f81a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf4370120e5e4372cd43fdd5dfd2a31d4195e7b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb779bfd7a8aacb017fd0a6e5117cf473dcecd158` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcf415039c82033151b48fee4d2dfcd0ab555fe79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd52e72cd24edf839c745caabd61bf24e033472fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe51afbd5a23b6c255a0961876597b38b646024a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe7a89bb6d98e1c53aca0c86df1d92140082a55ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf92e951df45064ecc4d19e5a95a845d66f20ab52` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [slowmist.pdf](https://github.com/klend-lab/klend-protocol/blob/main/slowmist.pdf) | SlowMist | Audit | 2021-03 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x500db844220fa49fe8cbf9ee35159c4094391096`](./contracts/bsc-56/0x500db844220fa49fe8cbf9ee35159c4094391096/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa6bed5b7320941ea185a315d1292492f7fdd1e5c`](./contracts/bsc-56/0xa6bed5b7320941ea185a315d1292492f7fdd1e5c/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
