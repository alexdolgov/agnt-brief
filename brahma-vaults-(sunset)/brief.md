# Agentic Audit Brief: Brahma Vaults (Sunset)

## Project Overview

- Project: Brahma Vaults (Sunset) (`brahma-vaults-(sunset)`)
- Website: [https://www.brahma.fi/blog/withdrawal-mode-brahma-vaults](https://www.brahma.fi/blog/withdrawal-mode-brahma-vaults)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:08.552Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: blast, ethereum, polygon
- Contract surface: 33 unique implementations (49 raw deployments)
- DeFi Llama TVL: $22,322.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 15 project-authored contract(s) across 2 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (guard). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 49; live-surface contracts included: 49 (30 live, 19 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 13/14 (92.9%)
- Deployed-live implementations: 14 of 33 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 13/14
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 33
- Raw deployments: 49
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 12
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 13 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 12 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 85.7% (Code4rena, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 12 | 85.7% | 2023-11 |
| Ackee Blockchain | Tier 2 | 11 | 78.6% | 2023-10 |
| Code4rena | Tier 1 | 11 | 78.6% | 2023-10 |
| Bluethroat Labs | Tier 2 | 2 | 14.3% | 2023-05 |
| Trust Security | Tier 2 | 2 | 14.3% | 2023-05 |
| Akshay Srivatav | Tier 2 | 1 | 7.1% | 2023-05 |
| Bluethroat | Tier 2 | 1 | 7.1% | 2023-02 |
| Jeiwan | Tier 2 | 1 | 7.1% | 2023-02 |
| unknown | Tier 2 | 1 | 7.1% | 2022-05 |
| Zellic | Tier 2 | 1 | 7.1% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
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
| Vault | unknown | polygon | n/a | 4 deployments: polygon [`0x2d3b10...1f14ef`](./contracts/polygon-137/0x2d3b10fc395b109dc32b71d14cdd523e471f14ef/); polygon `0x4fe66b...b9dcfd`; polygon `0xae3827...2d3fe9`; polygon `0xd7d9c9...b6efb3` | ✅ Audited |
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

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x046fd3...355153` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0f33e3...b4cd7a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2973d1...c2b5c4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3d751a...cd5546` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5134b5...e6aad5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5bc2aa...ebc685` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x642ec0...f2e992` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6aeefa...c92ade` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6f1bd2...12f22f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x86015d...44feac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8f5ef2...d31017` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x99d0ad...de6108` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9b4949...a286d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa8fc30...e8b617` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xab600d...573f0c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcaf457...b21e5a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcb2f1e...44a772` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdddbda...f3980d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe68a92...b65aae` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [brahma-fi-audit-2022-05-consensys.pdf](https://github.com/Brahma-fi/brahma-security/blob/master/audits/brahma-fi-audit-2022-05-consensys.pdf) | unknown | Audit | 2022-05 | stale | Direct | contract_name | 1 | n/a |
| [brahma-fi-audit-2022-05-zellic.pdf](https://github.com/Brahma-fi/brahma-security/blob/master/audits/brahma-fi-audit-2022-05-zellic.pdf) | Zellic | Audit | 2022-05 | stale | Direct | contract_name | 1 | n/a |
| [Brahma-Spearbit-Security-Review.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/Brahma-Spearbit-Security-Review.pdf) | Spearbit | Audit | 2023-11 | stale | Direct | contract_name | 12 | n/a |
| [ackee-blockchain-brahma-console-v2-report.pdf](https://github.com/Ackee-Blockchain/public-audit-reports/blob/master/2023/ackee-blockchain-brahma-console-v2-report.pdf) | Ackee Blockchain | Audit | 2023-10 | stale | Direct | contract_name | 11 | n/a |
| [code4rena.com/audits/2023-10-brahma](https://code4rena.com/audits/2023-10-brahma) | Code4rena | Contest | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [brahma-fi-console-audit-2023-05-akshay.md](https://github.com/Brahma-fi/brahma-security/blob/master/audits/brahma-fi-console-audit-2023-05-akshay.md) | Akshay Srivatav | Audit | 2023-05 | stale | Direct | contract_name | 1 | n/a |
| [brahma-fi-console-audit-2023-05-bluethroat.pdf](https://github.com/Brahma-fi/brahma-security/blob/master/audits/brahma-fi-console-audit-2023-05-bluethroat.pdf) | Bluethroat Labs | Audit | 2023-05 | stale | Direct | contract_name | 2 | n/a |
| [brahma-fi-console-audit-2023-05-trust.pdf](https://github.com/Brahma-fi/brahma-security/blob/master/audits/brahma-fi-console-audit-2023-05-trust.pdf) | Trust Security | Audit | 2023-05 | stale | Direct | contract_name | 2 | n/a |
| [brahma-fi-console-v2-audit-10-23-ackee.pdf](https://github.com/Brahma-fi/brahma-security/blob/master/audits/brahma-fi-console-v2-audit-10-23-ackee.pdf) | Ackee Blockchain | Audit | 2023-10 | stale | Direct | contract_name | 22 | high |
| [brahma-fi-console-v2-audit-2023-10-c4.pdf](https://github.com/Brahma-fi/brahma-security/blob/master/audits/brahma-fi-console-v2-audit-2023-10-c4.pdf) | Code4rena | Contest | 2023-10 | stale | Direct | contract_name | 22 | high |
| [brahma-fi-console-v2-audit-2023-11-spearbit.pdf](https://github.com/Brahma-fi/brahma-security/blob/master/audits/brahma-fi-console-v2-audit-2023-11-spearbit.pdf) | Spearbit | Audit | 2023-11 | stale | Direct | contract_name | 12 | n/a |
| [brahma-fi-console-v2-audit-2024-10-quillaudits.pdf](https://github.com/Brahma-fi/brahma-security/blob/master/audits/brahma-fi-console-v2-audit-2024-10-quillaudits.pdf) | Quill Audits | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [brahma-fi-polygainsv2-audit-2023-02-bluethroat.pdf](https://github.com/Brahma-fi/brahma-security/blob/master/audits/brahma-fi-polygainsv2-audit-2023-02-bluethroat.pdf) | Bluethroat | Audit | 2023-02 | stale | Direct | contract_name | 4 | high |
| [brahma-fi-polygainsv2-audit-2023-02-jeiwan.pdf](https://github.com/Brahma-fi/brahma-security/blob/master/audits/brahma-fi-polygainsv2-audit-2023-02-jeiwan.pdf) | Jeiwan | Audit | 2023-02 | stale | Direct | contract_name | 1 | n/a |

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
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: contract_name=43, extraction_exact=48

Zero-match audit list:

- [12837] code4rena.com/audits/2023-10-brahma
- [12844] brahma-fi-console-v2-audit-2024-10-quillaudits.pdf

Fork inheritance lineage and inherited audits are included when available.
