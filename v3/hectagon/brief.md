# Agentic Audit Brief: Hectagon

## Project Overview

- Project: Hectagon (`hectagon`)
- Website: [https://www.hectagon.finance](https://www.hectagon.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:58.348Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: bsc
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $0.49
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Services. Structurally: 22 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 8 ERC20 tokens, 2 ERC721 NFTs; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 1 common project-authored base contract(s) (hectagonaccesscontrolled). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 25; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 19 inactive, 0 singleton, 0 uninitialized.
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
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
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
| BEP20Token | token | bsc | n/a | [`0xe9e7ce...087d56`](./contracts/bsc-56/0xe9e7cea3dedca5984780bafc599bd69add087d56/) | ⚠️ Unaudited |
| GovernanceHectagon | unknown | bsc | n/a | [`0x7d31ed...fa9b0d`](./contracts/bsc-56/0x7d31ed03c2442f9ffc4f22d90772ee1f32fa9b0d/) | ⚠️ Unaudited |
| HectagonBondDepository | unknown | bsc | n/a | [`0x9ae390...eeebcf`](./contracts/bsc-56/0x9ae390630eb2e60999e5065267b02f477beeebcf/) | ⚠️ Unaudited |
| HectagonERC20Token | token | bsc | n/a | [`0x343915...6f60ee`](./contracts/bsc-56/0x343915085b919fbd4414f7046f903d194c6f60ee/) | ⚠️ Unaudited |
| HectagonTreasury | operational_periphery | bsc | n/a | [`0x4059c4...aba4fb`](./contracts/bsc-56/0x4059c4a0b8a2b528c4f2e101a3bb8fb169aba4fb/) | ⚠️ Unaudited |
| PHecta | unknown | bsc | n/a | [`0x332182...48bf15`](./contracts/bsc-56/0x33218297d315fc70e1520e292ca88348b648bf15/) | ⚠️ Unaudited |

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
| [audit_hectagon_20220803.pdf](https://github.com/DAudit/Smart-Contract-Audits/blob/main/audit_hectagon_20220803.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13225] audit_hectagon_20220803.pdf

Fork inheritance lineage and inherited audits are included when available.
