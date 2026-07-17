# Agentic Audit Brief: Spartan

## Project Overview

- Project: Spartan (`spartan`)
- Website: [https://spartanprotocol.org](https://spartanprotocol.org)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.433Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: bsc
- Contract surface: 13 unique implementations (15 raw deployments)
- DeFi Llama TVL: $5,543.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 15 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 52; live-surface contracts included: 15 (5 live, 10 unknown).
- Excluded by liveness: 37 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/3 (66.7%)
- Deployed-live implementations: 3 of 13 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/3
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 13
- Raw deployments: 15
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 66.7% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 2 | 66.7% | 2021-07 |
| CertiK | Tier 2 | 1 | 33.3% | 2020-10 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Dao | unknown | bsc | n/a | [`0x80531284f27d8b479aca8dba18fd6303b4bf1567`](./contracts/bsc-56/0x80531284f27d8b479aca8dba18fd6303b4bf1567/) | ✅ Audited |
| Router | adapter | bsc | n/a | 2 deployments: bsc [`0x6239891fc4030dc050fb9f7083aa68a2e4fe426d`](./contracts/bsc-56/0x6239891fc4030dc050fb9f7083aa68a2e4fe426d/); bsc `0xf73d255d1e2b184cdb7ee0a8a064500eb3f6b352` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Sparta | unknown | bsc | n/a | 2 deployments: bsc [`0x3910db0600ea925f63c36ddb1351ab6e2c6eb102`](./contracts/bsc-56/0x3910db0600ea925f63c36ddb1351ab6e2c6eb102/); bsc `0xe4ae305ebe1abe663f261bc00534067c80ad677c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0cefc07f056edce3753d2e92c628424e0b1558c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1347a3884feab46054f70d1de041090f3cd3354c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x384c4b3bb9f94d27691f2dae6a2b80514ca2b97a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8949572b8cf8ce0b31f69cd10640409e2722b7c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9776bb8ae59bb4e4f3b0074b2a1e9f9b6a51b115` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xadba6acaf23841c3029b014ff262350a1350b756` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7b43af5deb54e62d2cdffa9ed1e9f58199ec75e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd1755e883a39c0d4643733e02003044a3b2d7a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe0438ef7cd98ff4d557eb083e03a3999bc30ad68` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe19bc16c76de6ad522aad3f3e2480399a5a45e3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [certik-audit.pdf](https://github.com/spartan-protocol/resources/blob/master/certik-audit.pdf) | CertiK | Audit | 2020-10 | stale | Direct | contract_name | 1 | n/a |
| [code4rena.com/reports/2021-07-spartan](https://code4rena.com/reports/2021-07-spartan) | Code4rena | Contest | 2021-07 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x3910db0600ea925f63c36ddb1351ab6e2c6eb102`](./contracts/bsc-56/0x3910db0600ea925f63c36ddb1351ab6e2c6eb102/) | Sparta | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Fork inheritance lineage and inherited audits are included when available.
