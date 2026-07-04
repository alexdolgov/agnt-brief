# Agentic Audit Brief: Predictcoin

## Project Overview

- Project: Predictcoin (`predictcoin`)
- Website: [https://predictcoin.finance/#](https://predictcoin.finance/#)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.147Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: bsc
- Contract surface: 48 unique implementations (48 raw deployments)
- DeFi Llama TVL: $112.86
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Prediction Market. Structurally: 16 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 7 common project-authored base contract(s) (helpers, events, dsmath). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 91; live-surface contracts included: 48 (2 live, 46 unknown).
- Excluded by liveness: 43 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/1 (100.0%)
- Deployed-live implementations: 2 of 48 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 46
- Unique implementations: 48
- Raw deployments: 48
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 1 | 50.0% | 2021-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Predictcoin | unknown | bsc | n/a | [`0xbdd2e3...26ba22`](./contracts/bsc-56/0xbdd2e3fdb879aa42748e9d47b7359323f226ba22/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | proxy | bsc | n/a | [`0x4b74c4...c80ee7`](./contracts/bsc-56/0x4b74c42b7ab96feec003563c355f2fefd0c80ee7/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (46)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x061d10...dcec8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06d826...85f362` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06eda7...b58e03` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1fd751...4628f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x229ce6...41af21` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x242835...a2bd39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x29d884...7092e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d595a...eac25b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37a46e...f5515e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37de43...1c71d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3bb847...19e306` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4490c7...1edf6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x495116...53e6c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x546bde...515feb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x57bf16...d87866` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x58f4d5...89cf9d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ebe8e...d1b1e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x66111b...713c60` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x680928...f8c9c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6dcf58...fe46d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6fb365...94adfa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7c91b8...c16ebb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d3b32...ba74e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x810e40...a2a3c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8bece6...546167` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ebcbc...919ea0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x90fa0e...f68c06` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x944930...5eb820` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x99d823...15bbe6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9a3035...9814c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9a43c7...bfbf26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d58b8...a236f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa512df...daaa1b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa5b13b...8054a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaffcb0...133311` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb3c70c...9d85db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb40c3b...aca240` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd713f...d041e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc3c7b6...880bfb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc558a6...257d18` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc71b93...89cb79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd68f7a...955c7d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe9ca16...cb27c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec035b...22c311` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec83e2...ef27e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb1d4e...9ee609` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Predictcoin Full Smart Contract Security Audit.pdf](https://github.com/TechRate/Smart-Contract-Audits/blob/main/August/Predictcoin%20Full%20Smart%20Contract%20Security%20Audit.pdf) | yAudit | Audit | 2021-08 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 46 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
