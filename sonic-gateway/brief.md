# Agentic Audit Brief: Sonic Gateway

## Project Overview

- Project: Sonic Gateway (`sonic-gateway`)
- Website: [https://gateway.soniclabs.com/ethereum/sonic/s](https://gateway.soniclabs.com/ethereum/sonic/s)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:57.694Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-16bc
- Chains: sonic
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $35,594,379.80
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 11 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Contracts are linked by 2 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2018-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bridge | operational_periphery | sonic | n/a | [`0x9ef7629f9b930168b76283add7120777b3c895b3`](./contracts/sonic-146/0x9ef7629f9b930168b76283add7120777b3c895b3/) | ⚠️ Unaudited |
| MessageBus | operational_periphery | sonic | n/a | [`0xb5b371b75f9850ddd6ccb6c436db54972a925308`](./contracts/sonic-146/0xb5b371b75f9850ddd6ccb6c436db54972a925308/) | ⚠️ Unaudited |
| UpdateManager | governance | sonic | n/a | [`0x1d3c99da3cef5c26f02a86dc7d685efa40176bb7`](./contracts/sonic-146/0x1d3c99da3cef5c26f02a86dc7d685efa40176bb7/) | ⚠️ Unaudited |

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
| [fantom-audit-first.pdf](https://github.com/Fantom-foundation/tokensale/blob/master/audits/fantom-audit-first.pdf) | unknown | Audit | 2018-06 | stale | Direct | n/a | 0 | n/a |
| [fantom-audit-second.pdf](https://github.com/Fantom-foundation/tokensale/blob/master/audits/fantom-audit-second.pdf) | unknown | Audit | 2018-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x9ef7629f9b930168b76283add7120777b3c895b3`](./contracts/sonic-146/0x9ef7629f9b930168b76283add7120777b3c895b3/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xb5b371b75f9850ddd6ccb6c436db54972a925308`](./contracts/sonic-146/0xb5b371b75f9850ddd6ccb6c436db54972a925308/) | MessageBus | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1d3c99da3cef5c26f02a86dc7d685efa40176bb7`](./contracts/sonic-146/0x1d3c99da3cef5c26f02a86dc7d685efa40176bb7/) | UpdateManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11677] fantom-audit-first.pdf
- [11678] fantom-audit-second.pdf

Fork inheritance lineage and inherited audits are included when available.
