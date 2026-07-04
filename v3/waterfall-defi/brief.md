# Agentic Audit Brief: Waterfall DeFi

## Project Overview

- Project: Waterfall DeFi (`waterfall-defi`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:11.956Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: bsc
- Contract surface: 70 unique implementations (70 raw deployments)
- DeFi Llama TVL: $18,955.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 20 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 2 common project-authored base contract(s) (coreref, permissions). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 177; live-surface contracts included: 70 (3 live, 67 unknown).
- Excluded by liveness: 107 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/3 (33.3%)
- Deployed-live implementations: 3 of 70 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/3
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 67
- Unique implementations: 70
- Raw deployments: 70
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 33.3% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 1 | 33.3% | 2021-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WTF | unknown | bsc | n/a | [`0x2fa0ca...cf65b0`](./contracts/bsc-56/0x2fa0cac2c75efb50382b5091c6494194eacf65b0/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VotingEscrow | operational_periphery | bsc | n/a | [`0x4df3cc...73e7c7`](./contracts/bsc-56/0x4df3cc03fafb2bcc139e23cd6fa6073a8f73e7c7/) | ⚠️ Unaudited |
| WaterfallGovernanceToken | token | bsc | n/a | [`0xd73f32...39823c`](./contracts/bsc-56/0xd73f32833b6d5d9c8070c23e599e283a3039823c/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (67)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0b3f6a...de0118` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0e8585...8590dc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1418b9...16cf2a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x15254b...f6bc79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x16bc2a...87db42` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1da495...d09be9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x20b50b...6a494e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x229b07...5e9287` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30f0fe...c175ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x324338...df107e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x354537...99e3ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37bc81...a74313` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4cb57f...4338c9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x503b03...0ada70` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x578973...8412b3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x59d671...509767` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5af338...6633cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ead0d...329a96` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x66b0ac...81eb80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68a59e...8f8699` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b032b...713d77` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6dfcfa...e10b5f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7029df...636bdc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7034ae...b03fdc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x72adfc...125223` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x73e6b5...c72562` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x764153...3d184e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x794d06...9d8b09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7adce4...ab3e41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b763e...9eb17f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b93bc...bb1568` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d20bc...aa3c53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ecdd0...71fb48` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x927430...889275` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x942c82...200ce5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x969632...c916e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e00fe...f91c36` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e1c54...1b5c1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e2476...634fbe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0c15d...c0e7a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa13203...d674a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa1b285...a5a487` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa2f1e9...2a2cd3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa39d3a...5c2cc7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa876ab...162f1c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaa6a2c...86d5e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb1bfbc...01981d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2b384...c2cd5b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb5b269...aa19a1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb9ca54...82c444` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc1c29b...bf890b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc51993...481729` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5422c...9b55d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd697e...4abb31` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd32007...f33db1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdca930...984837` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe1d340...d5507d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe44d68...c3b2fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5d7e2...534a62` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe73eb6...ddf0ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe86be9...ff143c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xef7416...4f753a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf3d2ac...36e22e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf43a65...7de145` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf50546...f88687` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf737f2...1342b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf9269d...9cef0c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SlowMist Audit Report - Waterfall DeFi Mainnet.pdf](https://github.com/WaterfallDefi/Waterfall-audit/blob/main/SlowMist%20Audit%20Report%20-%20Waterfall%20DeFi%20Mainnet.pdf) | SlowMist | Audit | 2021-11 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 70 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
