# Agentic Audit Brief: Parasail

## Project Overview

- Project: Parasail (`parasail`)
- Website: [https://www.parasail.network/](https://www.parasail.network/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:42.111Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: arbitrum
- Contract surface: 35 unique implementations (40 raw deployments)
- DeFi Llama TVL: $2,600,797.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Restaking. Structurally: 2 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 43; live-surface contracts included: 40 (1 live, 39 unknown).
- Excluded by liveness: 3 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 35 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 34
- Unique implementations: 35
- Raw deployments: 40
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| InterchainToken | token | arbitrum | n/a | [`0xc87b37...9d056c`](./contracts/arbitrum-42161/0xc87b37a581ec3257b734886d9d3a581f5a9d056c/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (34)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0xaa5d9edfd680297533a14e121b70ae9fadd77831) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x0ec4dc...010caa`; arbitrum `0xaa5d9e...d77831` | ❓ Unverified |
| Proxy (impl: 0xc4f869b9040ce060d3f3204abd579b00461a4e45) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x369d4b...5df44e`; arbitrum `0xc4f869...1a4e45` | ❓ Unverified |
| Proxy (impl: 0xcbe7efd39be37699e2377ddab28b627aa321d209) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x19eb5d...81ee02`; arbitrum `0xcbe7ef...21d209` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0fafc1...1bbbfb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x12b785...71855a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x16e7d8...fe0362` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x174fcc...574818` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1e8895...beca03` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x22dbba...fc032a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x277aeb...40bce0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x28a141...3d2582` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ab36b...852b25` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x304ece...d181ff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3d7dde...963dfe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x43ba49...9272df` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x445895...662909` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4e7088...c18e39` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x618d55...0f31dd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7c588e...158127` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x885266...10085e`; arbitrum `0xc7a6aa...5a5fa3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8eebfa...786ef3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x901a72...5b336e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x906be3...270319` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x92a159...1fb2fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa82e4...64c86f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc537e6...75f398` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xce0a65...888969` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd6e02f...35efc6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd76ac8...bd66b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd9694e...59f7e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd99ab1...203dad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0xd9a340...47e74c`; arbitrum `0xe87792...39b2a4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeae9f8...2f689c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf5b42a...301f47` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 35 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
