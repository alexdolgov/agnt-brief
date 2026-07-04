# Agentic Audit Brief: StakeHound

## Project Overview

- Project: StakeHound (`stakehound`)
- Website: [https://stakehound.com/](https://stakehound.com/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:56.749Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: ethereum
- Contract surface: 10 unique implementations (24 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 3 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 3 contract(s).

## Contract Surface Quality

- Indexed contracts: 29; live-surface contracts included: 24 (24 live, 0 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 9/10 (90.0%)
- Deployed-live implementations: 10 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 9/10
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 24
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 9 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 9 | 90.0% | 2020-10 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakedToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0c63ca...1ebec8`](./contracts/ethereum-1/0x0c63cae5fcc2ca3dde60a35e50362220651ebec8/); ethereum `0xcee51e...87e998` | ✅ Audited |
| StakedToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x160b1e...ceed7e`](./contracts/ethereum-1/0x160b1e5aabfd70b2fc40af815014925d71ceed7e/); ethereum `0x98ce98...147d9b` | ✅ Audited |
| StakedToken | unknown | ethereum | n/a | 3 deployments: ethereum [`0x19ffa8...abc644`](./contracts/ethereum-1/0x19ffa8fc52df8982cea39b492e56abb2f8abc644/); ethereum `0x507e11...a642e4`; ethereum `0xd79311...5778f4` | ✅ Audited |
| StakedToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x31b595...7e3865`](./contracts/ethereum-1/0x31b595e7cfdb624d10a3e7a562ed98c3567e3865/); ethereum `0x4cc881...31a111` | ✅ Audited |
| StakedToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3c47ff...0b5394`](./contracts/ethereum-1/0x3c47ff4108b12ca539e6c0bf1cc8bd63f90b5394/); ethereum `0x78474f...3569e8` | ✅ Audited |
| StakedToken | unknown | ethereum | n/a | 3 deployments: ethereum [`0x6a104a...9c0a61`](./contracts/ethereum-1/0x6a104ad073aee76c03bf3d9fc77db21c649c0a61/); ethereum `0xef8bf5...6eca1d`; ethereum `0xfd330e...2bf62e` | ✅ Audited |
| StakedToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x794e63...f29d5e`](./contracts/ethereum-1/0x794e630c1f27017e66d3ee34c8d9156773f29d5e/); ethereum `0x8f5e78...abe408` | ✅ Audited |
| StakedToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7defd4...7bd216`](./contracts/ethereum-1/0x7defd41888692cdd14820266f70506990d7bd216/); ethereum `0xec1b21...3c7bde` | ✅ Audited |
| StakedTokenV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x312ca0...a91b87`](./contracts/ethereum-1/0x312ca0592a39a5fa5c87bb4f1da7b77544a91b87/); ethereum `0xdfe66b...f0281d` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProxyAdmin | unknown | ethereum | n/a | 4 deployments: ethereum [`0x034feb...628647`](./contracts/ethereum-1/0x034feb638833588873c487a458060e3e34628647/); ethereum `0x905ef1...c80a03`; ethereum `0xddc0a5...0c9878`; ethereum `0xece69c...38cdc5` | ⚠️ Unaudited |

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
| [StakeHound-Quantstamp-audit-report.pdf](https://stakehound.com/wp-content/uploads/2020/12/StakeHound-Quantstamp-audit-report.pdf) | Quantstamp | Audit | 2020-10 | stale | Direct | contract_name | 19 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=19

Fork inheritance lineage and inherited audits are included when available.
