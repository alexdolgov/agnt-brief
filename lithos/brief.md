# Agentic Audit Brief: Lithos

## Project Overview

- Project: Lithos (`lithos`)
- Website: [https://lithos.to/](https://lithos.to/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.141Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: plasma
- Contract surface: 10 unique implementations (10 raw deployments)
- DeFi Llama TVL: $230,164.96
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 10 project-authored contract(s) across 1 chain(s); 1 ERC20 token, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 2 functional families. Its contracts share 3 common project-authored base contract(s) (proxy, contextupgradeable, ownableupgradeable). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 10; live-surface contracts included: 10 (10 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/6 (33.3%)
- Deployed-live implementations: 10 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/10
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 10
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 20.0% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RewardsDistributor | unknown | plasma | n/a | [`0x939684...30959f`](./contracts/plasma-9745/0x939684315d094702685ad0f004bce9bfd230959f/) | ✅ Audited |
| VotingEscrow | unknown | plasma | n/a | [`0x80f2ee...a9ff9c`](./contracts/plasma-9745/0x80f2ee51febf9a56b74f95c6db2df4e239a9ff9c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GaugeFactoryV2 | unknown | plasma | n/a | [`0x68a674...247cfb`](./contracts/plasma-9745/0x68a67496adf74ac87c11206a980f59461e247cfb/) | ⚠️ Unaudited |
| Lithos | unknown | plasma | n/a | [`0xb8f925...599f47`](./contracts/plasma-9745/0xb8f92504e33b194a57af64af982796243d599f47/) | ⚠️ Unaudited |
| PairFactoryUpgradeable | unknown | plasma | n/a | [`0x571f98...357275`](./contracts/plasma-9745/0x571f98fc3a763c3ea493051b58f20f2494357275/) | ⚠️ Unaudited |
| SafeProxy | unknown | plasma | n/a | [`0x21f1c2...ff4dbc`](./contracts/plasma-9745/0x21f1c2f66d30e22dac1e2d509228407cceff4dbc/) | ⚠️ Unaudited |
| TimelockController | unknown | plasma | n/a | [`0x27ba53...30db53`](./contracts/plasma-9745/0x27ba5389cdf0a427b41a0a3d736a3ec4ed30db53/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | plasma | n/a | [`0x014c73...1a109f`](./contracts/plasma-9745/0x014c737867b57c8f52c34ea557b65550b51a109f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | plasma | n/a | [`0x6bf5ad...8fff37`](./contracts/plasma-9745/0x6bf5ad21ffeaf0f9b69f4a29b627801ebf8fff37/) | ⚠️ Unaudited |
| VoterV3 | unknown | plasma | n/a | [`0xafc98b...c8c188`](./contracts/plasma-9745/0xafc98b2373f250313e7e0832fdd250fde7c8c188/) | ⚠️ Unaudited |

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
| [full report PDF](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Thena-v1.0.pdf) | PeckShield | Audit | 2023-03 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| plasma | [`0x68a674...247cfb`](./contracts/plasma-9745/0x68a67496adf74ac87c11206a980f59461e247cfb/) | GaugeFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0xb8f925...599f47`](./contracts/plasma-9745/0xb8f92504e33b194a57af64af982796243d599f47/) | Lithos | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x571f98...357275`](./contracts/plasma-9745/0x571f98fc3a763c3ea493051b58f20f2494357275/) | PairFactoryUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0xafc98b...c8c188`](./contracts/plasma-9745/0xafc98b2373f250313e7e0832fdd250fde7c8c188/) | VoterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
