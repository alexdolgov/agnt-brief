# Agentic Audit Brief: Smoothy

## Project Overview

- Project: Smoothy (`smoothy`)
- Website: [https://smoothy.finance/](https://smoothy.finance/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:54.430Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc, ethereum
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $487,549.04
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 6 project-authored contract(s) across 2 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (upgradeableownable). Dominant framework: openzeppelin.

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
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
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
| MerkleDistributor | unknown | ethereum | n/a | [`0x3ff708...0359f9`](./contracts/ethereum-1/0x3ff708bc7707fb63184ea8d3fcc78355de0359f9/) | ⚠️ Unaudited |
| MerkleVestor | unknown | ethereum | n/a | [`0x4b5c2f...d04286`](./contracts/ethereum-1/0x4b5c2f31f068ed79e3ae8a7e8ff9207807d04286/) | ⚠️ Unaudited |
| SmoothyMasterV1 | unknown | ethereum | n/a | [`0x77e6d3...1f06c2`](./contracts/ethereum-1/0x77e6d30246aad90ed1a12e38ebc6188d5a1f06c2/) | ⚠️ Unaudited |
| SMTYToken | unknown | ethereum | n/a | [`0xbf776e...003283`](./contracts/ethereum-1/0xbf776e4fca664d791c4ee3a71e2722990e003283/) | ⚠️ Unaudited |
| UpgradeableOwnableProxy | unknown | bsc | n/a | [`0x59c5ef...a8b9d3`](./contracts/bsc-56/0x59c5ef73636cc6f01526923e5e9894d5fda8b9d3/) | ⚠️ Unaudited |
| VotingEscrow | unknown | ethereum | n/a | [`0x59c5ef...a8b9d3`](./contracts/ethereum-1/0x59c5ef73636cc6f01526923e5e9894d5fda8b9d3/) | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-Smoothy-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Smoothy-v1.0.pdf) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Smart Contract Security Audit Report - SmoothyV1.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report/Smart%20Contract%20Security%20Audit%20Report%20-%20SmoothyV1.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

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

- [21001] PeckShield-Audit-Report-Smoothy-v1.0.pdf
- [21002] Smart Contract Security Audit Report - SmoothyV1.pdf

Fork inheritance lineage and inherited audits are included when available.
