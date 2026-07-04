# Agentic Audit Brief: Alto

## Project Overview

- Project: Alto (`alto`)
- Website: [https://www.altofoundation.org/](https://www.altofoundation.org/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:27.093Z
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

- Coverage of deployed-live implementations: 0/16 (0.0%)
- Deployed-live implementations: 16 of 16 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 16
- Raw deployments: 16
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 2 fresh, 1 aging, 0 stale, 6 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressChange | unknown | ethereum | n/a | [`0x8cf6f8...0c0bb2`](./contracts/ethereum-1/0x8cf6f8d0201f38fa3e6f21c1f4803f4eb40c0bb2/) | ⚠️ Unaudited |
| AltoAdapter | unknown | ethereum | n/a | [`0x241aa0...f59c0c`](./contracts/ethereum-1/0x241aa0ac561a5c210a86fecc82f45d2713f59c0c/) | ⚠️ Unaudited |
| AltoLeverage | unknown | ethereum | n/a | [`0x0e64cc...f98a33`](./contracts/ethereum-1/0x0e64cc242fa7a7a294efc29b0ca08daa6bf98a33/) | ⚠️ Unaudited |
| AltoLeverageSwapper | unknown | ethereum | n/a | [`0x0e635f...101941`](./contracts/ethereum-1/0x0e635f6529d37ecad98b5d709beb479cdc101941/) | ⚠️ Unaudited |
| AltoMintMarket | unknown | ethereum | n/a | [`0x195b11...3e866e`](./contracts/ethereum-1/0x195b11839e371bd25346f14158f6c51f733e866e/) | ⚠️ Unaudited |
| AltoReferralWhitelistAdapter | unknown | ethereum | n/a | [`0x766d36...39513d`](./contracts/ethereum-1/0x766d36c3e140a29bd47390958939ed7f7239513d/) | ⚠️ Unaudited |
| AltoTimelockController | unknown | ethereum | n/a | [`0xb9f06f...8bb6dd`](./contracts/ethereum-1/0xb9f06fefc4c53ded77a90cb798ed08dc068bb6dd/) | ⚠️ Unaudited |
| AltoTimelockControllerMintMarketFee | unknown | ethereum | n/a | [`0x5f80c1...90fa96`](./contracts/ethereum-1/0x5f80c18b6b73b1c4f06fa5233de32778ec90fa96/) | ⚠️ Unaudited |
| Bundler3 | unknown | ethereum | n/a | [`0xac8038...d6823d`](./contracts/ethereum-1/0xac80387009231b4d55b85df27924b85f2ed6823d/) | ⚠️ Unaudited |
| DlbDcfPriorityLiquidationEngine | unknown | ethereum | n/a | [`0x2a3fb5...09f45b`](./contracts/ethereum-1/0x2a3fb51184183405c975bd8b355d4dc43209f45b/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x133cf0...c46788`](./contracts/ethereum-1/0x133cf03d2a7a87b9239b1a3a8dd62f3f27c46788/) | ⚠️ Unaudited |
| FixedRateIrm | unknown | ethereum | n/a | [`0x0e4065...f83896`](./contracts/ethereum-1/0x0e4065c4db1802d3f24d538c8f685571c7f83896/) | ⚠️ Unaudited |
| MarketRegistry | unknown | ethereum | n/a | [`0xbd45d5...ed2257`](./contracts/ethereum-1/0xbd45d50611c38e35dd1d1119077de1e988ed2257/) | ⚠️ Unaudited |
| UsmRegistry | unknown | ethereum | n/a | [`0xad5620...548e5e`](./contracts/ethereum-1/0xad5620e10c33918e2c6a2e8e53325bf98c548e5e/) | ⚠️ Unaudited |
| UsmSellAdapter | unknown | ethereum | n/a | [`0xaac86f...90af24`](./contracts/ethereum-1/0xaac86f77eb51fa1d565b743c43dece2cef90af24/) | ⚠️ Unaudited |
| VaultRegistry | unknown | ethereum | n/a | [`0x696e7b...f17a47`](./contracts/ethereum-1/0x696e7b1d5d11e2cf7f7b970acf54cf1491f17a47/) | ⚠️ Unaudited |

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
| [2025-07_Managed_Security_Review_Alto_foundation.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/2025-07_Managed_Security_Review_Alto_foundation.pdf) | unknown | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [2025-09_Managed_Security_Review_Alto_foundation.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/2025-09_Managed_Security_Review_Alto_foundation.pdf) | unknown | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [2025-11_Managed_Security_Review_Alto_foundation.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/2025-11_Managed_Security_Review_Alto_foundation.pdf) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [Bailsec - ALTO - Lending Market - Final Report.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/Bailsec%20-%20ALTO%20-%20Lending%20Market%20-%20Final%20Report.pdf) | Bailsec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Bailsec - ALTO - Staking Rewards - Final Report.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/Bailsec%20-%20ALTO%20-%20Staking%20Rewards%20-%20Final%20Report.pdf) | Bailsec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [report-cantinacode-alto-money-1124.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/report-cantinacode-alto-money-1124.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [report-cantinacode-alto-money-solo-1204.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/report-cantinacode-alto-money-solo-1204.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [report-cli-cantina-2032a5c5-8cb7-433b-bdfe-64b0cde36cac-alto-phaze-solo.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/report-cli-cantina-2032a5c5-8cb7-433b-bdfe-64b0cde36cac-alto-phaze-solo.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [report-cli-cantina-altomoney-0114.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/report-cli-cantina-altomoney-0114.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19420] 2025-07_Managed_Security_Review_Alto_foundation.pdf
- [19421] 2025-09_Managed_Security_Review_Alto_foundation.pdf
- [19422] 2025-11_Managed_Security_Review_Alto_foundation.pdf
- [19423] Bailsec - ALTO - Lending Market - Final Report.pdf
- [19424] Bailsec - ALTO - Staking Rewards - Final Report.pdf
- [19425] report-cantinacode-alto-money-1124.pdf
- [19426] report-cantinacode-alto-money-solo-1204.pdf
- [19427] report-cli-cantina-2032a5c5-8cb7-433b-bdfe-64b0cde36cac-alto-phaze-solo.pdf
- [19428] report-cli-cantina-altomoney-0114.pdf

Fork inheritance lineage and inherited audits are included when available.
