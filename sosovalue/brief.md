# Agentic Audit Brief: SoSoValue

## Project Overview

- Project: SoSoValue (`sosovalue`)
- Website: [https://ssi.sosovalue.com/share/MAG7.ssi/0TC050BY?tid=ssi-invite-share-0TC050BY](https://ssi.sosovalue.com/share/MAG7.ssi/0TC050BY?tid=ssi-invite-share-0TC050BY)
- Lifecycle: active (Tier 0, 59.2% below peak)
- Generated: 2026-06-21T17:26:03.874Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: base, ethereum
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $89,060,071.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

SoSoValue is a DeFi protocol offering cross-chain token bridging, spot and perpetual trading, basis trading, and index products. It enables users to move assets between chains, trade derivatives, and access structured yield strategies through a unified ecosystem.

### Architecture

The SoDEX Bridge family provides the cross-chain infrastructure that likely supports asset movement for the broader SoSoValue ecosystem, including the Basis product. The USSI token in the Basis family may rely on bridged assets or shared token standards from the Bridge family.

## Contract Surface Quality

- Indexed contracts: 50; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 21 inactive, 25 singleton, 0 uninitialized.
- Deployment units: 3/15 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/4 (25.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 3
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 3 aging, 0 stale, 0 unknown
- Tier 1 coverage: 25.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 1 | 25.0% | 2024-12 |
| unknown | Tier 2 | 1 | 25.0% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssetRebalancer | adapter | base | unit-43347 | [`0x84663e...95ab15`](./contracts/base-8453/0x84663e30973d552ac357fd04f3ac6ebbd495ab15/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SoDexTokenBridge | operational_periphery | ethereum | unit-43338 | [`0xcc7322...02185b`](./contracts/ethereum-1/0xcc7322a2f9f82251da51584b1a89915dbc02185b/) | ⚠️ Unaudited |
| SoSoValueEpoch2Airdrop | operational_periphery | base | n/a | [`0x40fb04...cabf9c`](./contracts/base-8453/0x40fb04bbf5124ea4b25fc18a839524a725cabf9c/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | unit-43336 | [`0x687496...782f38`](./contracts/ethereum-1/0x68749665ff8d2d112fa859aa293f07a622782f38/) | ⚠️ Unaudited |

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
| [blocksec_sosovaluelabs_ssi_v1.0-signed.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_sosovaluelabs_ssi_v1.0-signed.pdf) | unknown | Audit | 2024-12 | aging | Direct | contract_name | 1 | high |
| [SSI Protocol - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SSI%20Protocol%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-07 | aging | Direct | contract_name | 1 | high |
| [SSI Protocol Phase2 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SSI%20Protocol%20Phase2%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-12 | aging | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x40fb04...cabf9c`](./contracts/base-8453/0x40fb04bbf5124ea4b25fc18a839524a725cabf9c/) | SoSoValueEpoch2Airdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=74

Fork inheritance lineage and inherited audits are included when available.
