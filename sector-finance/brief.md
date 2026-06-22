# Agentic Audit Brief: Sector Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 9.8% over 90 days

## Project Overview

- Project: Sector Finance (`sector-finance`)
- Website: [https://sector.finance](https://sector.finance)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-21T07:02:23.233Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: moonriver, optimism
- Contract surface: 4 unique implementations (5 raw deployments)
- DeFi Llama TVL: $55,754.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Sector Finance is a yield optimization protocol that deploys user deposits into structured vaults to generate returns. It uses factory contracts to create and manage these vaults across multiple chains.

### Architecture

The SectorFactory contracts act as registries that deploy and manage vault instances (SCYWEpochVaultU, SCYVaultU) via beacon proxies (SectorBeacon, UpgradeableBeacon). The sectGrail contract likely serves as a shared reward or governance token across the vault ecosystem.

## Contract Surface Quality

- Indexed contracts: 180; live-surface contracts included: 5 (1 live, 4 unknown).
- Excluded by liveness: 165 inactive, 10 singleton, 0 uninitialized.
- Deployment units: 0/5 live.
- Detected codebases: compound-v2, uniswap-v2
- Dependencies extracted: 5; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 4
- Raw deployments: 5
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SectorBeacon | registry | moonriver | n/a | [`0xdbd42b...08cdd2`](./contracts/moonriver-1285/0xdbd42bcbe8f81d2da8d46fd158829c931e08cdd2/) | ⚠️ Unaudited |
| USDCmovrSOLARwell | unknown | moonriver | n/a | [`0x94ea93...6a6989`](./contracts/moonriver-1285/0x94ea9337db519602ee42aa2238aa1927c96a6989/) | ⚠️ Unaudited |
| VaultUpgradable | core_logic | moonriver | n/a | 2 deployments: moonriver [`0x96b6a3...77e1f6`](./contracts/moonriver-1285/0x96b6a3e2048db602ffd71e5a2c7351673a77e1f6/); moonriver `0x97b4d1...6e6b51` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | optimism | n/a | `0x4b0768...8a45df` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://1194552491-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Faizh7QHFZ0AM4JGHZRn6%2Fuploads%2Fj3nsS4VbUkK4j5ucSRq8%2FSector_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://1194552491-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Faizh7QHFZ0AM4JGHZRn6%2Fuploads%2FhOfiANzdgcROK65IdYip%2FSector_Finance_New_Strategies_and_Vaults_Upgradeable_Contracts_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonriver | [`0xdbd42b...08cdd2`](./contracts/moonriver-1285/0xdbd42bcbe8f81d2da8d46fd158829c931e08cdd2/) | SectorBeacon | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x94ea93...6a6989`](./contracts/moonriver-1285/0x94ea9337db519602ee42aa2238aa1927c96a6989/) | USDCmovrSOLARwell | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x96b6a3...77e1f6`](./contracts/moonriver-1285/0x96b6a3e2048db602ffd71e5a2c7351673a77e1f6/) | VaultUpgradable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13805] DL audit link
- [13806] DL audit link

Fork inheritance lineage and inherited audits are included when available.
