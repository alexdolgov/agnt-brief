# Agentic Audit Brief: ACET

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: ACET (`acet`)
- Website: [https://acet.finance/](https://acet.finance/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-07-04T14:52:57.988Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: bsc
- Contract surface: 8 unique implementations (11 raw deployments)
- DeFi Llama TVL: $8,667.22
- On-chain TVL (included contracts): $2,087,748.90
- TVL by chain: Bsc $2,087,748.90

## Project Description

Farm. Structurally: 9 project-authored contract(s) across 1 chain(s); 1 ERC20 token; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (owned, farmbase). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/8 (37.5%)
- Deployed-live implementations: 8 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/8
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 11
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 3 | 37.5% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AcetToken | token | bsc | n/a | [`0x9f3bcbe48e8b754f331dfc694a894e8e686ac31d`](./contracts/bsc-56/0x9f3bcbe48e8b754f331dfc694a894e8e686ac31d/) | ✅ Audited |
| Pool | core_logic | bsc | n/a | 3 deployments: bsc [`0x38506a479e8959150466ce9253c19089fd0907d7`](./contracts/bsc-56/0x38506a479e8959150466ce9253c19089fd0907d7/); bsc `0x64d2c3a33f5bc09dc045f9a20fa4ca4f42215c0b`; bsc `0x76c05855e1eaec618aa56e02027f0c469661435b` | ✅ Audited |
| AcetAdaptor | unknown | bsc | n/a | [`0x26304442cd46cb3cee1a83a48f400ef43a3d0b5c`](./contracts/bsc-56/0x26304442cd46cb3cee1a83a48f400ef43a3d0b5c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FarmLPV4 | unknown | bsc | n/a | 2 deployments: bsc [`0xdf30ecf05819f3012ced359dc8295a4e157d7afc`](./contracts/bsc-56/0xdf30ecf05819f3012ced359dc8295a4e157d7afc/); bsc `0xfd7f86d8a179056531b9c73f24361b34b1c672e9` | ⚠️ Unaudited |
| FarmV2Transition | unknown | bsc | n/a | [`0xffa1e8053b4572aebdeae4d81c0d4a312e2a5183`](./contracts/bsc-56/0xffa1e8053b4572aebdeae4d81c0d4a312e2a5183/) | ⚠️ Unaudited |
| FarmV4Primary | unknown | bsc | n/a | [`0x7a59746105bb10736926a0042a629a5163c58d47`](./contracts/bsc-56/0x7a59746105bb10736926a0042a629a5163c58d47/) | ⚠️ Unaudited |
| MintReserve | unknown | bsc | n/a | [`0x5881480b48d993c729f9975cb250669dac3907d6`](./contracts/bsc-56/0x5881480b48d993c729f9975cb250669dac3907d6/) | ⚠️ Unaudited |
| SwapToFarm | unknown | bsc | n/a | [`0x207af22bee1ae437574b201433d6389554bdb1cb`](./contracts/bsc-56/0x207af22bee1ae437574b201433d6389554bdb1cb/) | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-Acet-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Acet-v1.0.pdf) | PeckShield | Audit | 2021-10 | stale | Direct | contract_name | 3 | n/a |
| [skynet.certik.com/projects/acet-finance](https://skynet.certik.com/projects/acet-finance) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xdf30ecf05819f3012ced359dc8295a4e157d7afc`](./contracts/bsc-56/0xdf30ecf05819f3012ced359dc8295a4e157d7afc/) | FarmLPV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xffa1e8053b4572aebdeae4d81c0d4a312e2a5183`](./contracts/bsc-56/0xffa1e8053b4572aebdeae4d81c0d4a312e2a5183/) | FarmV2Transition | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7a59746105bb10736926a0042a629a5163c58d47`](./contracts/bsc-56/0x7a59746105bb10736926a0042a629a5163c58d47/) | FarmV4Primary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5881480b48d993c729f9975cb250669dac3907d6`](./contracts/bsc-56/0x5881480b48d993c729f9975cb250669dac3907d6/) | MintReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x207af22bee1ae437574b201433d6389554bdb1cb`](./contracts/bsc-56/0x207af22bee1ae437574b201433d6389554bdb1cb/) | SwapToFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Zero-match audit list:

- [12620] skynet.certik.com/projects/acet-finance

Fork inheritance lineage and inherited audits are included when available.
