# Agentic Audit Brief: Sable Finance

## Project Overview

- Project: Sable Finance (`sable-finance`)
- Website: [https://sable.finance](https://sable.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:53.845Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: bsc
- Contract surface: 20 unique implementations (20 raw deployments)
- DeFi Llama TVL: $571,941.06
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 25 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 4 common project-authored base contract(s) (liquitybase, basemath, checkcontract). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 25; live-surface contracts included: 20 (18 live, 2 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/18 (5.6%)
- Deployed-live implementations: 18 of 20 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/18
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 20
- Raw deployments: 20
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 5.6% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 1 | 5.6% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SableStakingV2 | unknown | bsc | n/a | [`0xfbc81a...25b16c`](./contracts/bsc-56/0xfbc81aeb7e5c11d4a60a0690db9f36f93e25b16c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ActivePool | unknown | bsc | n/a | [`0x0ccb12...edd72c`](./contracts/bsc-56/0x0ccb12c9fb1e1252e60d29ac5c4fdc0640edd72c/) | ⚠️ Unaudited |
| BorrowerOperations | unknown | bsc | n/a | [`0xa49bec...c0602f`](./contracts/bsc-56/0xa49bec2146fbeea7314cdbe0fd222419b0c0602f/) | ⚠️ Unaudited |
| CollSurplusPool | unknown | bsc | n/a | [`0xbe4006...d93cd0`](./contracts/bsc-56/0xbe40060aef1a2acb4425823c82978f976fd93cd0/) | ⚠️ Unaudited |
| CommunityIssuance | unknown | bsc | n/a | [`0x7fd517...dc9c9e`](./contracts/bsc-56/0x7fd517b06b898f1a6081e0891265516f83dc9c9e/) | ⚠️ Unaudited |
| DefaultPool | unknown | bsc | n/a | [`0x654ed8...121088`](./contracts/bsc-56/0x654ed83ab231550001fc1d2281b78fcd84121088/) | ⚠️ Unaudited |
| GasPool | unknown | bsc | n/a | [`0xe9bc9a...088d01`](./contracts/bsc-56/0xe9bc9adbdf67343b5a66d73cf2e521bb3f088d01/) | ⚠️ Unaudited |
| MultiTroveGetter | unknown | bsc | n/a | [`0x97c984...2804e9`](./contracts/bsc-56/0x97c984497b81fa38baaf684e7afd2685052804e9/) | ⚠️ Unaudited |
| OracleRateCalculation | unknown | bsc | n/a | [`0x76dcd4...1e6632`](./contracts/bsc-56/0x76dcd40843c1de96839bf83790257a36011e6632/) | ⚠️ Unaudited |
| PriceFeed | unknown | bsc | n/a | [`0xa5220f...bcdcb3`](./contracts/bsc-56/0xa5220fd82c098b7f1c711e2f1c1d599ccfbcdcb3/) | ⚠️ Unaudited |
| SABLEToken | token | bsc | n/a | [`0x1ee098...5a878d`](./contracts/bsc-56/0x1ee098cbaf1f846d5df1993f7e2d10afb35a878d/) | ⚠️ Unaudited |
| SortedTroves | unknown | bsc | n/a | [`0x97c131...9dc87c`](./contracts/bsc-56/0x97c131c309a04bfa1aae82856d64b696b89dc87c/) | ⚠️ Unaudited |
| StabilityPool | unknown | bsc | n/a | [`0x598913...073f18`](./contracts/bsc-56/0x598913568093ab9f3d549236eb98388271073f18/) | ⚠️ Unaudited |
| SystemState | unknown | bsc | n/a | [`0x698ad7...5ec0ad`](./contracts/bsc-56/0x698ad77e62679c8e6acfafea03547c38fc5ec0ad/) | ⚠️ Unaudited |
| TimeLock | unknown | bsc | n/a | [`0x638675...9a258a`](./contracts/bsc-56/0x638675b7c2e056917567571307c6f6a7d69a258a/) | ⚠️ Unaudited |
| TroveHelper | unknown | bsc | n/a | [`0xd1bf4d...3d80f8`](./contracts/bsc-56/0xd1bf4d208028cbfe65c6b4d68c12e68f5f3d80f8/) | ⚠️ Unaudited |
| TroveManager | unknown | bsc | n/a | [`0xec0350...483b85`](./contracts/bsc-56/0xec035081376ce975ba9eaf28dfec7c7a4c483b85/) | ⚠️ Unaudited |
| USDSToken | token | bsc | n/a | [`0x0c6ed1...240fa0`](./contracts/bsc-56/0x0c6ed1e73ba73b8441868538e210ebd5dd240fa0/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x43a146...6d652a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x466333...10696f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Mainnet_SlowMist Audit Report - Sable Finance.pdf](https://github.com/Sable-Finance/sable_audit/blob/main/reports/Mainnet_SlowMist%20Audit%20Report%20-%20Sable%20Finance.pdf) | SlowMist | Audit | 2023-05 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x0ccb12...edd72c`](./contracts/bsc-56/0x0ccb12c9fb1e1252e60d29ac5c4fdc0640edd72c/) | ActivePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa49bec...c0602f`](./contracts/bsc-56/0xa49bec2146fbeea7314cdbe0fd222419b0c0602f/) | BorrowerOperations | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbe4006...d93cd0`](./contracts/bsc-56/0xbe40060aef1a2acb4425823c82978f976fd93cd0/) | CollSurplusPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7fd517...dc9c9e`](./contracts/bsc-56/0x7fd517b06b898f1a6081e0891265516f83dc9c9e/) | CommunityIssuance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x654ed8...121088`](./contracts/bsc-56/0x654ed83ab231550001fc1d2281b78fcd84121088/) | DefaultPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe9bc9a...088d01`](./contracts/bsc-56/0xe9bc9adbdf67343b5a66d73cf2e521bb3f088d01/) | GasPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x97c984...2804e9`](./contracts/bsc-56/0x97c984497b81fa38baaf684e7afd2685052804e9/) | MultiTroveGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x76dcd4...1e6632`](./contracts/bsc-56/0x76dcd40843c1de96839bf83790257a36011e6632/) | OracleRateCalculation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa5220f...bcdcb3`](./contracts/bsc-56/0xa5220fd82c098b7f1c711e2f1c1d599ccfbcdcb3/) | PriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1ee098...5a878d`](./contracts/bsc-56/0x1ee098cbaf1f846d5df1993f7e2d10afb35a878d/) | SABLEToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x97c131...9dc87c`](./contracts/bsc-56/0x97c131c309a04bfa1aae82856d64b696b89dc87c/) | SortedTroves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x598913...073f18`](./contracts/bsc-56/0x598913568093ab9f3d549236eb98388271073f18/) | StabilityPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x698ad7...5ec0ad`](./contracts/bsc-56/0x698ad77e62679c8e6acfafea03547c38fc5ec0ad/) | SystemState | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x638675...9a258a`](./contracts/bsc-56/0x638675b7c2e056917567571307c6f6a7d69a258a/) | TimeLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd1bf4d...3d80f8`](./contracts/bsc-56/0xd1bf4d208028cbfe65c6b4d68c12e68f5f3d80f8/) | TroveHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xec0350...483b85`](./contracts/bsc-56/0xec035081376ce975ba9eaf28dfec7c7a4c483b85/) | TroveManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0c6ed1...240fa0`](./contracts/bsc-56/0x0c6ed1e73ba73b8441868538e210ebd5dd240fa0/) | USDSToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
