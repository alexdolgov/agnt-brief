# Agentic Audit Brief: Unitas

## Project Overview

- Project: Unitas (`unitas`)
- Website: [https://app.unitas.so](https://app.unitas.so)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:02.903Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: bsc
- Contract surface: 12 unique implementations (12 raw deployments)
- DeFi Llama TVL: $56,654,489.34
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Basis Trading. Structurally: 11 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 3 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 1 common project-authored base contract(s) (singleadminaccesscontrol). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 17; live-surface contracts included: 12 (6 live, 6 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/6 (50.0%)
- Deployed-live implementations: 6 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/6
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 12
- Raw deployments: 12
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 3 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 50.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 3 | 50.0% | 2025-10 |
| unknown | Tier 2 | 3 | 50.0% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakedUSDuV2 | token | bsc | n/a | [`0x385c27...52ec71`](./contracts/bsc-56/0x385c279445581a186a4182a5503094ebb652ec71/) | ✅ Audited |
| UnitasMintingV2 | unknown | bsc | n/a | [`0xbb984c...4ea82a`](./contracts/bsc-56/0xbb984ce670100aa855f6152f88b26ee57f4ea82a/) | ✅ Audited |
| USDu | unknown | bsc | n/a | [`0xea953e...db5882`](./contracts/bsc-56/0xea953ea6634d55dac6697c436b1e81a679db5882/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PancakeV3Pool | core_logic | bsc | n/a | [`0x8aab55...852120`](./contracts/bsc-56/0x8aab5522d601bbb85501d703b55a272e47852120/) | ⚠️ Unaudited |
| SafeProxy | unknown | bsc | n/a | [`0xb464c9...0ed3a9`](./contracts/bsc-56/0xb464c9890604926bd5fa7b66bf15d26bcd0ed3a9/) | ⚠️ Unaudited |
| XGLDToken | token | bsc | n/a | [`0xe60106...50ac91`](./contracts/bsc-56/0xe60106a5cab7e7c64830919d36ab20caaf50ac91/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x3b5f4a...5fbb4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x643c75...a6e4b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e705a...2c0c0e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x82a7cc...95c361` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa1e952...31c89d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcfff99...39eb38` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Unipay Audit Report-2026-1-9.pdf](https://github.com/UnipayFi/Audit/blob/main/EVM/Unipay%20Audit%20Report-2026-1-9.pdf) | yAudit | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [Unitas Audit Audit Report-2025-9-12.pdf](https://github.com/UnipayFi/Audit/blob/main/EVM/Unitas%20Audit%20Audit%20Report-2025-9-12.pdf) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | 3 | n/a |
| [Unitas Contracts - SlowMist Audit Report.pdf](https://github.com/UnipayFi/Audit/blob/main/EVM/Unitas%20Contracts%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-10 | fresh | Direct | contract_name | 3 | n/a |
| [2025-04-04 Audit Report - Unipay.pdf](https://github.com/UnipayFi/Audit/blob/main/SVM/2025-04-04%20Audit%20Report%20-%20Unipay.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | 1 | n/a |
| [20250326-Unipay-Final-Audit-Report.pdf](https://github.com/UnipayFi/Audit/blob/main/SVM/20250326-Unipay-Final-Audit-Report.pdf) | unknown | Audit | 2025-03 | aging | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=7, extraction_exact=1

Zero-match audit list:

- [4619] Unipay Audit Report-2026-1-9.pdf

Fork inheritance lineage and inherited audits are included when available.
