# Agentic Audit Brief: Untangled

## Project Overview

- Project: Untangled (`untangled`)
- Website: [https://untangled.finance/](https://untangled.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.931Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: arbitrum, celo, polygon
- Contract surface: 15 unique implementations (21 raw deployments)
- DeFi Llama TVL: $302,785.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 10 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 1 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 26; live-surface contracts included: 21 (9 live, 12 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 4 of 15 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/7
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 15
- Raw deployments: 21
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 14.3% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProxyAdmin | unknown | polygon | n/a | [`0x4a3f7dd63077cde8d7eff3c958eb69a3dd7d31a9`](./contracts/polygon-137/0x4a3f7dd63077cde8d7eff3c958eb69a3dd7d31a9/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Hook | unknown | polygon | n/a | 2 deployments: polygon [`0x48b38b467ece159c9e149153fce4a53685cf6bff`](./contracts/polygon-137/0x48b38b467ece159c9e149153fce4a53685cf6bff/); polygon `0xfa171ad7d5e88f6afdbcb9a52118285d8c6a5036` | ⚠️ Unaudited |
| ModuleFactory | unknown | polygon | n/a | [`0x4dcc7a839ce7e952cd90d03d65c70b9ccd6ba4c2`](./contracts/polygon-137/0x4dcc7a839ce7e952cd90d03d65c70b9ccd6ba4c2/) | ⚠️ Unaudited |
| ValuationModule | unknown | polygon | n/a | [`0x10761dbefafe3aac2feaac2a0d0c6148fb5d72d9`](./contracts/polygon-137/0x10761dbefafe3aac2feaac2a0d0c6148fb5d72d9/) | ⚠️ Unaudited |
| Vault | core_logic | polygon | n/a | 5 deployments: polygon [`0x02c25ac43ae068d5808b726af720f47b87b38a48`](./contracts/polygon-137/0x02c25ac43ae068d5808b726af720f47b87b38a48/); polygon `0x3f48e00cfeba3e713db8bc3e28d634578c553e32`; polygon `0xf532b78ec895183120aa18e5f6679e13493d4c0d`; arbitrum `0x4a3f7dd63077cde8d7eff3c958eb69a3dd7d31a9`; celo `0x2a68c98bd43aa24331396f29166aef2bfd51343f` | ⚠️ Unaudited |
| VaultFactory | unknown | polygon | n/a | 2 deployments: polygon [`0x2562883f006d04ccc2907635e38089fbfc6be45b`](./contracts/polygon-137/0x2562883f006d04ccc2907635e38089fbfc6be45b/); polygon `0x49421fea2e34ffe728299e5a297474dfda00d627` | ⚠️ Unaudited |
| WithdrawModule | operational_periphery | polygon | n/a | [`0xa40173bfd57178e748b41ff0d18080b8c18393a5`](./contracts/polygon-137/0xa40173bfd57178e748b41ff0d18080b8c18393a5/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x04d5b47d7a59443d7240f505e74e44037a0636fc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x08ce5e200b3986dd29b23ad0597e439adc73604f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0ef0f605d93ea31bb1bf54fd150e7b6f16b920f7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2d45009c012c71e0d9dea249be9b4ae28320cd3f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4eda5660c74b7a6e754983e805882d80e0baf02f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8a805e6f06523bc905d49580129ff04052320a6b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x95b3047d17313307bfbf5ef6701450eadf16cf4b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd216cb113259c1d5ddccf001e6bfbdd1c8a58850` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Untangled_FInance_Audit_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Untangle_Protocol_Audit/Untangled_FInance_Audit_Report.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [Octo_Lend_Report_ba51eb961d.pdf](https://strapi-rv-bucket-01.s3.us-east-2.amazonaws.com/Octo_Lend_Report_ba51eb961d.pdf) | Runtime Verification | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [VAR-Untangled-250508-vaults-V2.pdf](https://veridise.com/wp-content/uploads/2025/07/VAR-Untangled-250508-vaults-V2.pdf) | Veridise | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x48b38b467ece159c9e149153fce4a53685cf6bff`](./contracts/polygon-137/0x48b38b467ece159c9e149153fce4a53685cf6bff/) | Hook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4dcc7a839ce7e952cd90d03d65c70b9ccd6ba4c2`](./contracts/polygon-137/0x4dcc7a839ce7e952cd90d03d65c70b9ccd6ba4c2/) | ModuleFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x10761dbefafe3aac2feaac2a0d0c6148fb5d72d9`](./contracts/polygon-137/0x10761dbefafe3aac2feaac2a0d0c6148fb5d72d9/) | ValuationModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x02c25ac43ae068d5808b726af720f47b87b38a48`](./contracts/polygon-137/0x02c25ac43ae068d5808b726af720f47b87b38a48/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2562883f006d04ccc2907635e38089fbfc6be45b`](./contracts/polygon-137/0x2562883f006d04ccc2907635e38089fbfc6be45b/) | VaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa40173bfd57178e748b41ff0d18080b8c18393a5`](./contracts/polygon-137/0xa40173bfd57178e748b41ff0d18080b8c18393a5/) | WithdrawModule | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [14063] Octo_Lend_Report_ba51eb961d.pdf
- [14064] VAR-Untangled-250508-vaults-V2.pdf

Fork inheritance lineage and inherited audits are included when available.
