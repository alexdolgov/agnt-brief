# Agentic Audit Brief: Alto

## Project Overview

- Project: Alto (`alto`)
- Website: [https://www.altofoundation.org/](https://www.altofoundation.org/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:00.665Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum
- Contract surface: 16 unique implementations (16 raw deployments)
- DeFi Llama TVL: $274,256.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 16 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 2 functional families. Its contracts share 7 common project-authored base contract(s) (altoownable2step, altoownable2stepupgradeable, ownableupgradeable). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 16 (16 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/15 (53.3%)
- Deployed-live implementations: 16 of 16 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/16
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 16
- Raw deployments: 16
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 8 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 8 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 33.3% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Bailsec | Tier 2 | 6 | 37.5% | 2025-10 |
| unknown | Tier 2 | 6 | 37.5% | 2025-11 |
| Spearbit | Tier 1 | 5 | 31.3% | 2026-06 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AltoAdapter | unknown | ethereum | n/a | [`0x241aa0ac561a5c210a86fecc82f45d2713f59c0c`](./contracts/ethereum-1/0x241aa0ac561a5c210a86fecc82f45d2713f59c0c/) | ✅ Audited |
| AltoLeverage | unknown | ethereum | n/a | [`0x0e64cc242fa7a7a294efc29b0ca08daa6bf98a33`](./contracts/ethereum-1/0x0e64cc242fa7a7a294efc29b0ca08daa6bf98a33/) | ✅ Audited |
| AltoLeverageSwapper | unknown | ethereum | n/a | [`0x0e635f6529d37ecad98b5d709beb479cdc101941`](./contracts/ethereum-1/0x0e635f6529d37ecad98b5d709beb479cdc101941/) | ✅ Audited |
| AltoMintMarket | unknown | ethereum | n/a | [`0x195b11839e371bd25346f14158f6c51f733e866e`](./contracts/ethereum-1/0x195b11839e371bd25346f14158f6c51f733e866e/) | ✅ Audited |
| AltoReferralWhitelistAdapter | unknown | ethereum | n/a | [`0x766d36c3e140a29bd47390958939ed7f7239513d`](./contracts/ethereum-1/0x766d36c3e140a29bd47390958939ed7f7239513d/) | ✅ Audited |
| AltoTimelockControllerMintMarketFee | unknown | ethereum | n/a | [`0x5f80c18b6b73b1c4f06fa5233de32778ec90fa96`](./contracts/ethereum-1/0x5f80c18b6b73b1c4f06fa5233de32778ec90fa96/) | ✅ Audited |
| DlbDcfPriorityLiquidationEngine | unknown | ethereum | n/a | [`0x2a3fb51184183405c975bd8b355d4dc43209f45b`](./contracts/ethereum-1/0x2a3fb51184183405c975bd8b355d4dc43209f45b/) | ✅ Audited |
| FixedRateIrm | unknown | ethereum | n/a | [`0x0e4065c4db1802d3f24d538c8f685571c7f83896`](./contracts/ethereum-1/0x0e4065c4db1802d3f24d538c8f685571c7f83896/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressChange | unknown | ethereum | n/a | [`0x8cf6f8d0201f38fa3e6f21c1f4803f4eb40c0bb2`](./contracts/ethereum-1/0x8cf6f8d0201f38fa3e6f21c1f4803f4eb40c0bb2/) | ⚠️ Unaudited |
| AltoTimelockController | unknown | ethereum | n/a | [`0xb9f06fefc4c53ded77a90cb798ed08dc068bb6dd`](./contracts/ethereum-1/0xb9f06fefc4c53ded77a90cb798ed08dc068bb6dd/) | ⚠️ Unaudited |
| Bundler3 | unknown | ethereum | n/a | [`0xac80387009231b4d55b85df27924b85f2ed6823d`](./contracts/ethereum-1/0xac80387009231b4d55b85df27924b85f2ed6823d/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x133cf03d2a7a87b9239b1a3a8dd62f3f27c46788`](./contracts/ethereum-1/0x133cf03d2a7a87b9239b1a3a8dd62f3f27c46788/) | ⚠️ Unaudited |
| MarketRegistry | unknown | ethereum | n/a | [`0xbd45d50611c38e35dd1d1119077de1e988ed2257`](./contracts/ethereum-1/0xbd45d50611c38e35dd1d1119077de1e988ed2257/) | ⚠️ Unaudited |
| UsmRegistry | unknown | ethereum | n/a | [`0xad5620e10c33918e2c6a2e8e53325bf98c548e5e`](./contracts/ethereum-1/0xad5620e10c33918e2c6a2e8e53325bf98c548e5e/) | ⚠️ Unaudited |
| UsmSellAdapter | unknown | ethereum | n/a | [`0xaac86f77eb51fa1d565b743c43dece2cef90af24`](./contracts/ethereum-1/0xaac86f77eb51fa1d565b743c43dece2cef90af24/) | ⚠️ Unaudited |
| VaultRegistry | unknown | ethereum | n/a | [`0x696e7b1d5d11e2cf7f7b970acf54cf1491f17a47`](./contracts/ethereum-1/0x696e7b1d5d11e2cf7f7b970acf54cf1491f17a47/) | ⚠️ Unaudited |

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
| [2025-07_Managed_Security_Review_Alto_foundation.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/2025-07_Managed_Security_Review_Alto_foundation.pdf) | unknown | Audit | 2025-07 | aging | Direct | contract_name | 4 | high |
| [2025-09_Managed_Security_Review_Alto_foundation.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/2025-09_Managed_Security_Review_Alto_foundation.pdf) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | 1 | high |
| [2025-11_Managed_Security_Review_Alto_foundation.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/2025-11_Managed_Security_Review_Alto_foundation.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | 1 | high |
| [Bailsec - ALTO - Lending Market - Final Report.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/Bailsec%20-%20ALTO%20-%20Lending%20Market%20-%20Final%20Report.pdf) | Bailsec | Audit | 2025-10 | fresh | Direct | contract_name | 4 | high |
| [Bailsec - ALTO - Staking Rewards - Final Report.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/Bailsec%20-%20ALTO%20-%20Staking%20Rewards%20-%20Final%20Report.pdf) | Bailsec | Audit | 2025-10 | fresh | Direct | contract_name | 2 | high |
| [report-cantinacode-alto-money-1124.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/report-cantinacode-alto-money-1124.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [report-cantinacode-alto-money-solo-1204.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/report-cantinacode-alto-money-solo-1204.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | 1 | high |
| [report-cli-cantina-2032a5c5-8cb7-433b-bdfe-64b0cde36cac-alto-phaze-solo.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/report-cli-cantina-2032a5c5-8cb7-433b-bdfe-64b0cde36cac-alto-phaze-solo.pdf) | Spearbit | Audit | 2026-06 | fresh | Direct | contract_name | 1 | high |
| [report-cli-cantina-altomoney-0114.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/report-cli-cantina-altomoney-0114.pdf) | Spearbit | Audit | 2026-02 | fresh | Direct | contract_name | 3 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x8cf6f8d0201f38fa3e6f21c1f4803f4eb40c0bb2`](./contracts/ethereum-1/0x8cf6f8d0201f38fa3e6f21c1f4803f4eb40c0bb2/) | AddressChange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9f06fefc4c53ded77a90cb798ed08dc068bb6dd`](./contracts/ethereum-1/0xb9f06fefc4c53ded77a90cb798ed08dc068bb6dd/) | AltoTimelockController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac80387009231b4d55b85df27924b85f2ed6823d`](./contracts/ethereum-1/0xac80387009231b4d55b85df27924b85f2ed6823d/) | Bundler3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbd45d50611c38e35dd1d1119077de1e988ed2257`](./contracts/ethereum-1/0xbd45d50611c38e35dd1d1119077de1e988ed2257/) | MarketRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xad5620e10c33918e2c6a2e8e53325bf98c548e5e`](./contracts/ethereum-1/0xad5620e10c33918e2c6a2e8e53325bf98c548e5e/) | UsmRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaac86f77eb51fa1d565b743c43dece2cef90af24`](./contracts/ethereum-1/0xaac86f77eb51fa1d565b743c43dece2cef90af24/) | UsmSellAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x696e7b1d5d11e2cf7f7b970acf54cf1491f17a47`](./contracts/ethereum-1/0x696e7b1d5d11e2cf7f7b970acf54cf1491f17a47/) | VaultRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=7, medium=1
- Match method counts: extraction_exact=34

Zero-match audit list:

- [19425] report-cantinacode-alto-money-1124.pdf

Fork inheritance lineage and inherited audits are included when available.
