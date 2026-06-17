# Agentic Audit Brief: Ionic Protocol

⚠️ Lifecycle status: DEAD - TVL changed 0.0% over 90 days

## Project Overview

- Project: Ionic Protocol (`ionic-protocol`)
- Website: [https://app.ionic.money/](https://app.ionic.money/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-17T07:00:36.484Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc, mode
- Contract surface: 9 unique implementations (10 raw deployments)
- DeFi Llama TVL: $2,042,238.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Ionic Protocol is a lending protocol that enables users to supply and borrow digital assets across multiple chains. It provides money markets where lenders earn interest and borrowers can take out overcollateralized loans.

### Architecture

The Ionic Protocol family uses the ERC1967Proxy as the main entry point for lending operations, while the IonicSdk.supportedAssets family provides the token contracts that can be supplied or borrowed. The IonicSdk.chainDeployment contract likely serves as a configuration hub linking the protocol to its supported assets on the chain.

## Contract Surface Quality

- Indexed contracts: 518; live-surface contracts included: 10 (10 live, 0 unknown).
- Excluded by liveness: 506 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 0/3 live.
- Detected codebases: compound-v2, uniswap-v2
- Unverified dependencies: 1/21.

## Audit Coverage Summary

- Verified implementations audited: 0/8 (0.0%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 9
- Raw deployments: 10
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BEP20Token | token | bsc | n/a | 2 deployments: bsc [`0x7130d2...3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/); bsc `0xe9e7ce...087d56` | ⚠️ Unaudited |
| CollateralSwap | unknown | mode | n/a | [`0xee02b7...cb56f6`](./contracts/mode-34443/0xee02b738d3285756b9c45fe21af4a2d76ecb56f6/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | mode | n/a | [`0x184700...bc34ca`](./contracts/mode-34443/0x18470019bf0e94611f15852f7e93cf5d65bc34ca/) | ⚠️ Unaudited |
| IonicFlywheelLensRouter | adapter | mode | n/a | [`0x01ab48...a5e449`](./contracts/mode-34443/0x01ab485a0fae0667be36ab876c95adc1a2a5e449/) | ⚠️ Unaudited |
| LeveredPositionFactory | registry | mode | n/a | [`0x9b506a...40cd45`](./contracts/mode-34443/0x9b506a03bbff2a842866b10bc6732da72640cd45/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | mode | n/a | [`0x8ea3fc...0f6e57`](./contracts/mode-34443/0x8ea3fc79d9e463464c5159578d38870b770f6e57/) | ⚠️ Unaudited |
| WBNB | unknown | bsc | n/a | [`0xbb4cdb...bc095c`](./contracts/bsc-56/0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c/) | ⚠️ Unaudited |
| xERC20Hyperlane | token | mode | n/a | [`0xb81ab9...5319eb`](./contracts/mode-34443/0xb81ab95bee03ed655c8a99d484effcfe335319eb/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | mode | n/a | `0x5782c5...193a46` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://1954749119-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F4L4EczL4rCp3jyJhAxHG%2Fuploads%2Ffkk0363x576TeYPz9Dww%2FIonic_Protocol_-_Zellic_Audit_Report.pdf) | Zellic | Audit | 2022-05 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mode | [`0xee02b7...cb56f6`](./contracts/mode-34443/0xee02b738d3285756b9c45fe21af4a2d76ecb56f6/) | CollateralSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x01ab48...a5e449`](./contracts/mode-34443/0x01ab485a0fae0667be36ab876c95adc1a2a5e449/) | IonicFlywheelLensRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x9b506a...40cd45`](./contracts/mode-34443/0x9b506a03bbff2a842866b10bc6732da72640cd45/) | LeveredPositionFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=2

Zero-match audit list:

- [2937] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
