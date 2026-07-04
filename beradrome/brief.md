# Agentic Audit Brief: Beradrome

⚠️ Lifecycle status: DECLINING - TVL dropped 42.6% over 90 days

## Project Overview

- Project: Beradrome (`beradrome`)
- Website: [https://www.beradrome.com](https://www.beradrome.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-04T14:53:07.345Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: berachain
- Contract surface: 11 unique implementations (13 raw deployments)
- DeFi Llama TVL: $6,836,174.59
- On-chain TVL (included contracts): $3,276,244.79
- TVL by chain: Berachain $3,276,244.79

## Project Description

Yield. Structurally: 11 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 13 (13 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/9 (55.6%)
- Deployed-live implementations: 11 of 11 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/11
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 13
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 5 | 45.5% | 2023-09 |
| unknown | Tier 2 | 2 | 18.2% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TOKEN | token | berachain | n/a | [`0x7838ce...c74174`](./contracts/berachain-80094/0x7838cec5b11298ff6a9513fa385621b765c74174/) | ✅ Audited |
| TOKENFees | token | berachain | n/a | [`0x06030c...eba5d3`](./contracts/berachain-80094/0x06030c39b241f5e7f3a2af25e0d10ca1f8eba5d3/) | ✅ Audited |
| Gauge | operational_periphery | berachain | n/a | [`0x229fdf...4dcc38`](./contracts/berachain-80094/0x229fdff961392cebb08e93d630e7a6a5614dcc38/) | ✅ Audited |
| Voter | unknown | berachain | n/a | [`0xd7ea36...e4ad47`](./contracts/berachain-80094/0xd7ea36eca1ca3e73bc262a6d05db01e60ae4ad47/) | ✅ Audited |
| VTOKEN | token | berachain | n/a | [`0x7f0976...fa2b69`](./contracts/berachain-80094/0x7f0976b52f6c1ddcd4d6f639537c97de22fa2b69/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BerachainPlugin | unknown | berachain | n/a | [`0xac5922...500171`](./contracts/berachain-80094/0xac5922bccb16a0213684427f0412fcf8f9500171/) | ⚠️ Unaudited |
| Bribe | operational_periphery | berachain | n/a | [`0x5dba62...659edd`](./contracts/berachain-80094/0x5dba62ae28e2efbd1f42ac372910f8df78659edd/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | berachain | n/a | [`0xab53af...58e09c`](./contracts/berachain-80094/0xab53afb5c63e2552e7bd986c0a38e8a8dc58e09c/) | ⚠️ Unaudited |
| KodiakIslandWithRouter | adapter | berachain | n/a | 3 deployments: berachain [`0x63b0ed...8ce225`](./contracts/berachain-80094/0x63b0edc427664d4330f72eec890a86b3f98ce225/); berachain `0xbfbefc...742eb0`; berachain `0xe5a2ab...09aff9` | ⚠️ Unaudited |
| RewardVault | core_logic | berachain | n/a | [`0x63233e...fc09f0`](./contracts/berachain-80094/0x63233e055847ed2526d9275a6cd1d01caafc09f0/) | ⚠️ Unaudited |
| VTOKENRewarder | token | berachain | n/a | [`0x8a5547...94865e`](./contracts/berachain-80094/0x8a5547dbdba815036ae67d36835db687fd94865e/) | ⚠️ Unaudited |

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
| [spaces/zEE4RoSkf1KPe6qHUHZb/uploads/9amf3oq6oU9WdNOvESyc/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf](https://3573018453-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FzEE4RoSkf1KPe6qHUHZb%2Fuploads%2F9amf3oq6oU9WdNOvESyc%2FPeckShield-Audit-Report-LilToken-v1.0rc%20(1).pdf) | PeckShield | Audit | 2023-09 | stale | Direct | contract_name | 5 | high |
| [spaces/zEE4RoSkf1KPe6qHUHZb/uploads/BU79KHmtxM1caLQzs1CE/ZokyoAudit.pdf](https://3573018453-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FzEE4RoSkf1KPe6qHUHZb%2Fuploads%2FBU79KHmtxM1caLQzs1CE%2FZokyoAudit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/zEE4RoSkf1KPe6qHUHZb/uploads/UFxBvo4XJlvkU9Fzh8nH/AstraSec-AuditReport-Beradrome.pdf](https://3573018453-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FzEE4RoSkf1KPe6qHUHZb%2Fuploads%2FUFxBvo4XJlvkU9Fzh8nH%2FAstraSec-AuditReport-Beradrome.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | [`0xac5922...500171`](./contracts/berachain-80094/0xac5922bccb16a0213684427f0412fcf8f9500171/) | BerachainPlugin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x5dba62...659edd`](./contracts/berachain-80094/0x5dba62ae28e2efbd1f42ac372910f8df78659edd/) | Bribe | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x63233e...fc09f0`](./contracts/berachain-80094/0x63233e055847ed2526d9275a6cd1d01caafc09f0/) | RewardVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x8a5547...94865e`](./contracts/berachain-80094/0x8a5547dbdba815036ae67d36835db687fd94865e/) | VTOKENRewarder | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=7

Zero-match audit list:

- [12595] spaces/zEE4RoSkf1KPe6qHUHZb/uploads/BU79KHmtxM1caLQzs1CE/ZokyoAudit.pdf

Fork inheritance lineage and inherited audits are included when available.
