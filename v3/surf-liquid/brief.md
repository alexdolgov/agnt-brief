# Agentic Audit Brief: Surf Liquid

## Project Overview

- Project: Surf Liquid (`surf-liquid`)
- Website: [https://surfliquid.com/](https://surfliquid.com/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:57.236Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: base, ethereum
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $246,098.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 3 project-authored contract(s) across 2 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 6 of 6 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AgentKeyV2 | unknown | base | n/a | [`0xcdca2e...0dafbf`](./contracts/base-8453/0xcdca2eaae4a8a6b83d7a3589946c2301040dafbf/) | ⚠️ Unaudited |
| BridgeLib | unknown | ethereum | n/a | [`0xab7111...cce284`](./contracts/ethereum-1/0xab71119e39d1d51b8dc0d0b72ab5e31539cce284/) | ⚠️ Unaudited |
| BundlerLib | unknown | ethereum | n/a | [`0x84be6e...24c99b`](./contracts/ethereum-1/0x84be6e2916c614c183b9b603073187bbbd24c99b/) | ⚠️ Unaudited |
| DirectDepositLib | unknown | ethereum | n/a | [`0x8888db...4b9178`](./contracts/ethereum-1/0x8888db40e2732a66610c52e74f525258344b9178/) | ⚠️ Unaudited |
| UserVaultFactory | unknown | ethereum | n/a | [`0x8fa50d...c18779`](./contracts/ethereum-1/0x8fa50dea8db10987d7d22ac092001c3613c18779/) | ⚠️ Unaudited |
| VaultRegistry | unknown | ethereum | n/a | [`0x98a0de...69f271`](./contracts/ethereum-1/0x98a0def9c959ec934df02141291303819369f271/) | ⚠️ Unaudited |

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
| [2024_02-Smart-Contract-Audit-Report-for-Surf-1.pdf](https://sayfer.io/wp-content/uploads/2024/02/2024_02-Smart-Contract-Audit-Report-for-Surf-1.pdf) | Sayfer | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [sayfer.io/audits/smart-contract-audit-report-for-surf](https://sayfer.io/audits/smart-contract-audit-report-for-surf) | Sayfer | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21461] 2024_02-Smart-Contract-Audit-Report-for-Surf-1.pdf
- [21462] sayfer.io/audits/smart-contract-audit-report-for-surf

Fork inheritance lineage and inherited audits are included when available.
