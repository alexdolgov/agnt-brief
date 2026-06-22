# Agentic Audit Brief: Brahma Vaults (Sunset)

⚠️ Lifecycle status: WIND_DOWN - TVL dropped 0.8% over 90 days

## Project Overview

- Project: Brahma Vaults (Sunset) (`brahma-vaults-(sunset)`)
- Website: [https://www.brahma.fi/blog/withdrawal-mode-brahma-vaults](https://www.brahma.fi/blog/withdrawal-mode-brahma-vaults)
- Lifecycle: wind_down (Tier 1, wind_down)
- Generated: 2026-06-20T00:37:23.273Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: blast, ethereum, polygon
- Contract surface: 14 unique implementations (27 raw deployments)
- DeFi Llama TVL: $22,373.93
- On-chain TVL (included contracts): $170.24
- TVL by chain: Polygon $170.24

## Project Description

Brahma Vaults (Sunset) is a yield aggregation protocol that automates yield strategies for user deposits. It also includes a Console infrastructure for managing smart contract wallets with modular access control and transaction validation.

### Architecture

The Console family provides wallet infrastructure that could be used to manage vault interactions, but no direct on-chain dependency is visible between the Vault and Console contracts. They share deployer clusters, suggesting a common development origin.

## Contract Surface Quality

- Indexed contracts: 90; live-surface contracts included: 27 (5 live, 22 unknown).
- Excluded by liveness: 63 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Unverified dependencies: 3/31.

## Audit Coverage Summary

- Verified implementations audited: 13/14 (92.9%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 14
- Raw deployments: 27
- Audits discovered: 14
- Scoreable audits (matched contracts): 9
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Staleness: 0 fresh, 1 aging, 12 stale, 1 unknown
- Tier 1 coverage: 85.7% (Spearbit)
- Note: This protocol is classified as [wind_down]. ASD of n/a represents exposure in a protocol with wind_down activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 12 | 85.7% | 2023-11 |
| Ackee Blockchain | Tier 2 | 11 | 78.6% | 2023-10 |
| Bluethroat Labs | Tier 2 | 2 | 14.3% | 2023-05 |
| Trust Security | Tier 2 | 2 | 14.3% | 2023-05 |
| Akshay Srivatav | Tier 2 | 1 | 7.1% | 2023-05 |
| Jeiwan | Tier 2 | 1 | 7.1% | 2023-02 |
| unknown | Tier 2 | 1 | 7.1% | 2022-05 |
| Zellic | Tier 2 | 1 | 7.1% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | core_logic | polygon | n/a | [`0x4fe66b...b9dcfd`](./contracts/polygon-137/0x4fe66bff98efc030bdc86c733f481b089fb9dcfd/) | ✅ Audited |
| ConsoleFallbackHandler | unknown | ethereum | n/a | 2 deployments: ethereum [`0x297d32...7ed4ea`](./contracts/ethereum-1/0x297d327a2eaf3a1309bae07c5e4cd97d667ed4ea/); blast [`0x297d32...7ed4ea`](./contracts/blast-81457/0x297d327a2eaf3a1309bae07c5e4cd97d667ed4ea/) | ✅ Audited |
| ConsoleOpBuilder | unknown | ethereum | n/a | 2 deployments: ethereum [`0x06b916...0a6258`](./contracts/ethereum-1/0x06b916731e3cceb8470c9e7f42d3d25b790a6258/); blast [`0x06b916...0a6258`](./contracts/blast-81457/0x06b916731e3cceb8470c9e7f42d3d25b790a6258/) | ✅ Audited |
| ExecutorPlugin | unknown | ethereum | n/a | 2 deployments: ethereum [`0xec4181...949e47`](./contracts/ethereum-1/0xec4181ee959e47f72e9cc60274fbe53d68949e47/); blast [`0xec4181...949e47`](./contracts/blast-81457/0xec4181ee959e47f72e9cc60274fbe53d68949e47/) | ✅ Audited |
| ExecutorRegistry | registry | ethereum | n/a | 2 deployments: ethereum [`0x0145f9...e785be`](./contracts/ethereum-1/0x0145f9674b22be444c9f0e5e2a7761643fe785be/); blast [`0x0145f9...e785be`](./contracts/blast-81457/0x0145f9674b22be444c9f0e5e2a7761643fe785be/) | ✅ Audited |
| PolicyRegistry | registry | ethereum | n/a | 2 deployments: ethereum [`0xe2033f...e440f8`](./contracts/ethereum-1/0xe2033fd8a642e67f11df2c5567023c1900e440f8/); blast [`0xe2033f...e440f8`](./contracts/blast-81457/0xe2033fd8a642e67f11df2c5567023c1900e440f8/) | ✅ Audited |
| PolicyValidator | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc3b191...5f96a5`](./contracts/ethereum-1/0xc3b1910a8cf8dd61dc5dc9620e334aaf415f96a5/); blast [`0xc3b191...5f96a5`](./contracts/blast-81457/0xc3b1910a8cf8dd61dc5dc9620e334aaf415f96a5/) | ✅ Audited |
| SafeDeployer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6d70df...171add`](./contracts/ethereum-1/0x6d70df6f203204a11b1c8bc67b42b751e7171add/); blast [`0x6d70df...171add`](./contracts/blast-81457/0x6d70df6f203204a11b1c8bc67b42b751e7171add/) | ✅ Audited |
| SafeEnabler | unknown | ethereum | n/a | 2 deployments: ethereum [`0x37c2d7...0d17f8`](./contracts/ethereum-1/0x37c2d7de1c70c35056011d40004063e4c20d17f8/); blast [`0x37c2d7...0d17f8`](./contracts/blast-81457/0x37c2d7de1c70c35056011d40004063e4c20d17f8/) | ✅ Audited |
| SafeModerator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x36aaca...83d9b5`](./contracts/ethereum-1/0x36aaca9fcfadecc309fd0c82d247c374ab83d9b5/); blast [`0x36aaca...83d9b5`](./contracts/blast-81457/0x36aaca9fcfadecc309fd0c82d247c374ab83d9b5/) | ✅ Audited |
| SafeModeratorOverridable | unknown | ethereum | n/a | 2 deployments: ethereum [`0x33d386...a368fe`](./contracts/ethereum-1/0x33d386bb9de9a583fc61d03a689351dac3a368fe/); blast [`0x33d386...a368fe`](./contracts/blast-81457/0x33d386bb9de9a583fc61d03a689351dac3a368fe/) | ✅ Audited |
| TransactionValidator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x930ac9...7b5f18`](./contracts/ethereum-1/0x930ac9209366a2a83cb59b24257a8ce9b37b5f18/); blast [`0x930ac9...7b5f18`](./contracts/blast-81457/0x930ac9209366a2a83cb59b24257a8ce9b37b5f18/) | ✅ Audited |
| WalletRegistry | registry | ethereum | n/a | 2 deployments: ethereum [`0x27fbc3...154641`](./contracts/ethereum-1/0x27fbc3310907c0425ea09115397a40dddc154641/); blast [`0x27fbc3...154641`](./contracts/blast-81457/0x27fbc3310907c0425ea09115397a40dddc154641/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ExecutionBlocker | unknown | ethereum | n/a | 2 deployments: ethereum [`0x885549...8c4886`](./contracts/ethereum-1/0x88554985bb666c19538dae67a478c26baa8c4886/); blast [`0x885549...8c4886`](./contracts/blast-81457/0x88554985bb666c19538dae67a478c26baa8c4886/) | ⚠️ Unaudited |

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
| [brahma-fi-audit-2022-05-consensys.pdf](https://github.com/Brahma-fi/brahma-security/blob/master/audits/brahma-fi-audit-2022-05-consensys.pdf) | unknown | Audit | 2022-05 | stale | Direct | contract_name | 1 | high |
| [brahma-fi-audit-2022-05-zellic.pdf](https://github.com/Brahma-fi/brahma-security/blob/master/audits/brahma-fi-audit-2022-05-zellic.pdf) | Zellic | Audit | 2022-05 | stale | Direct | contract_name | 1 | high |
| [[Spearbit]() audit report of Brahma account](https://github.com/spearbit/portfolio/blob/master/pdfs/Brahma-Spearbit-Security-Review.pdf) | Spearbit | Audit | 2023-11 | stale | Direct | contract_name | 24 | high |
| [[Ackee Blockchain]() audit report of Brahma account](https://github.com/Ackee-Blockchain/public-audit-reports/blob/master/2023/ackee-blockchain-brahma-console-v2-report.pdf) | Ackee Blockchain | Audit | 2023-10 | stale | Direct | contract_name | 22 | high |
| [[Code4rena]() audit report of Brahma account](https://code4rena.com/audits/2023-10-brahma) | Code4rena | Contest | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [[Akshay Srivatav]()'s audit report of Brahma account](https://github.com/Brahma-fi/brahma-security/blob/master/audits/brahma-fi-console-audit-2023-05-akshay.md) | Akshay Srivatav | Audit | 2023-05 | stale | Direct | contract_name | 2 | high |
| [[Bluethroat Labs]() audit report of Brahma account](https://github.com/Brahma-fi/brahma-security/blob/master/audits/brahma-fi-console-audit-2023-05-bluethroat.pdf) | Bluethroat Labs | Audit | 2023-05 | stale | Direct | contract_name | 4 | high |
| [[Trust90]()[ | Trust Security](https://github.com/Brahma-fi/brahma-security/blob/master/audits/brahma-fi-console-audit-2023-05-trust.pdf) audit report of Brahma account](https://github.com/Brahma-fi/brahma-security/blob/master/audits/brahma-fi-console-audit-2023-05-trust.pdf) | Trust Security | Audit | 2023-05 | stale | Direct | contract_name | 4 | high |
| [brahma-fi-console-v2-audit-10-23-ackee.pdf](https://github.com/Brahma-fi/brahma-security/blob/master/audits/brahma-fi-console-v2-audit-10-23-ackee.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [brahma-fi-console-v2-audit-2023-10-c4.pdf](https://github.com/Brahma-fi/brahma-security/blob/master/audits/brahma-fi-console-v2-audit-2023-10-c4.pdf) | Code4rena | Contest | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [brahma-fi-console-v2-audit-2023-11-spearbit.pdf](https://github.com/Brahma-fi/brahma-security/blob/master/audits/brahma-fi-console-v2-audit-2023-11-spearbit.pdf) | Spearbit | Audit | 2023-11 | stale | Direct | contract_name | 24 | high |
| [[Quill Audits ]()Pentest audit report](https://github.com/Brahma-fi/brahma-security/blob/master/audits/brahma-fi-console-v2-audit-2024-10-quillaudits.pdf) | Quill Audits | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [brahma-fi-polygainsv2-audit-2023-02-bluethroat.pdf](https://github.com/Brahma-fi/brahma-security/blob/master/audits/brahma-fi-polygainsv2-audit-2023-02-bluethroat.pdf) | Bluethroat | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [brahma-fi-polygainsv2-audit-2023-02-jeiwan.pdf](https://github.com/Brahma-fi/brahma-security/blob/master/audits/brahma-fi-polygainsv2-audit-2023-02-jeiwan.pdf) | Jeiwan | Audit | 2023-02 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x885549...8c4886`](./contracts/ethereum-1/0x88554985bb666c19538dae67a478c26baa8c4886/) | ExecutionBlocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=9
- Match method counts: extraction_exact=111

Zero-match audit list:

- [12837] [Code4rena]() audit report of Brahma account
- [12841] brahma-fi-console-v2-audit-10-23-ackee.pdf
- [12842] brahma-fi-console-v2-audit-2023-10-c4.pdf
- [12844] [Quill Audits ]()Pentest audit report
- [12845] brahma-fi-polygainsv2-audit-2023-02-bluethroat.pdf

Fork inheritance lineage and inherited audits are included when available.
