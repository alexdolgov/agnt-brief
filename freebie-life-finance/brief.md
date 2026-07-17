# Agentic Audit Brief: Freebie Life Finance

## Project Overview

- Project: Freebie Life Finance (`freebie-life-finance`)
- Website: [https://freebielife.me/](https://freebielife.me/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.505Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-17a2
- Chains: avalanche
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $32.96
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Lottery. Structurally: 3 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 3 contract(s).

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 4 (2 live, 2 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Freebie | unknown | avalanche | n/a | [`0x9bedce29f79076b21dd04958a9fd4b22f63fd86d`](./contracts/avalanche-43114/0x9bedce29f79076b21dd04958a9fd4b22f63fd86d/) | ⚠️ Unaudited |
| JoePair | unknown | avalanche | n/a | [`0xa862ff4a1d2393818dbdbfbeb33bf5e35e9156f0`](./contracts/avalanche-43114/0xa862ff4a1d2393818dbdbfbeb33bf5e35e9156f0/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | avalanche | n/a | `0x590c6519768b1ad56ad52918a04cdbcd919deb0b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8351bb88827a1fb2a4bc5509d31d6416a6d0e92f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Freebie_0x9BedCE29F79076b21DD04958a9Fd4B22F63fD86D.pdf](https://github.com/SpyWolfNetwork/Smart_Contract_Audits/blob/main/May/Freebie_0x9BedCE29F79076b21DD04958a9Fd4B22F63fD86D.pdf) | unknown | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x9bedce29f79076b21dd04958a9fd4b22f63fd86d`](./contracts/avalanche-43114/0x9bedce29f79076b21dd04958a9fd4b22f63fd86d/) | Freebie | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa862ff4a1d2393818dbdbfbeb33bf5e35e9156f0`](./contracts/avalanche-43114/0xa862ff4a1d2393818dbdbfbeb33bf5e35e9156f0/) | JoePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13133] Freebie_0x9BedCE29F79076b21DD04958a9Fd4B22F63fD86D.pdf

Fork inheritance lineage and inherited audits are included when available.
