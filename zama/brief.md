# Agentic Audit Brief: Zama

## Project Overview

- Project: Zama (`zama`)
- Website: [https://www.zama.org/](https://www.zama.org/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:14.768Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $141,503,669.16
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 1 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 3 fresh, 0 aging, 0 stale, 0 unknown
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
| ZamaERC20 | unknown | ethereum | n/a | [`0xa12cc123ba206d4031d1c7f6223d1c2ec249f4f3`](./contracts/ethereum-1/0xa12cc123ba206d4031d1c7f6223d1c2ec249f4f3/) | ⚠️ Unaudited |

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
| [www.openzeppelin.com/news/zama-confidential-fungible-token-audit](https://www.openzeppelin.com/news/zama-confidential-fungible-token-audit) | OpenZeppelin | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [www.openzeppelin.com/news/zama-confidential-contracts-0.3.0-release-audit](https://www.openzeppelin.com/news/zama-confidential-contracts-0.3.0-release-audit) | OpenZeppelin | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [www.openzeppelin.com/news/tokenops-zama-confidential-airdrop-audit](https://www.openzeppelin.com/news/tokenops-zama-confidential-airdrop-audit) | OpenZeppelin | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa12cc123ba206d4031d1c7f6223d1c2ec249f4f3`](./contracts/ethereum-1/0xa12cc123ba206d4031d1c7f6223d1c2ec249f4f3/) | ZamaERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21254] www.openzeppelin.com/news/zama-confidential-fungible-token-audit
- [21255] www.openzeppelin.com/news/zama-confidential-contracts-0.3.0-release-audit
- [21256] www.openzeppelin.com/news/tokenops-zama-confidential-airdrop-audit

Fork inheritance lineage and inherited audits are included when available.
