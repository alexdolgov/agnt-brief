# Agentic Audit Brief: MortgageFi

## Project Overview

- Project: MortgageFi (`mortgagefi`)
- Website: [https://mortgagefi.app](https://mortgagefi.app)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:36.958Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: arbitrum, base
- Contract surface: 21 unique implementations (24 raw deployments)
- DeFi Llama TVL: $730,636.48
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 6 project-authored contract(s) across 2 chain(s); 2 ERC721 NFTs; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 6 contract(s).

## Contract Surface Quality

- Indexed contracts: 30; live-surface contracts included: 24 (8 live, 16 unknown).
- Excluded by liveness: 6 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/5 (40.0%)
- Deployed-live implementations: 5 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/5
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 16
- Unique implementations: 21
- Raw deployments: 24
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Decurity | Tier 2 | 2 | 40.0% | 2024-08 |
| Hashlock | Tier 2 | 2 | 40.0% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| mortgagecontracts | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xa702f61b6e055be8d394754f59814254f7059109`](./contracts/arbitrum-42161/0xa702f61b6e055be8d394754f59814254f7059109/); arbitrum `0xede6f5f8a9d6b90b1392dcc9e7fd8a5b0192bfe1` | ✅ Audited |
| mortgageconversionvault | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0x61d2688121676ed8123ad62e71994c66ee33fbed`](./contracts/arbitrum-42161/0x61d2688121676ed8123ad62e71994c66ee33fbed/); arbitrum `0xa468d9260a96fd7db044a35047010e91869f8988` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| mortgagefipoolusdcweth | core_logic | base | n/a | [`0x1be87d273d47c3832ab7853812e9a995a4de9eea`](./contracts/base-8453/0x1be87d273d47c3832ab7853812e9a995a4de9eea/) | ⚠️ Unaudited |
| mortgagefipoolusdtwbtc | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0x2f5aac46575f68fe600e99096ca38301a4520a91`](./contracts/arbitrum-42161/0x2f5aac46575f68fe600e99096ca38301a4520a91/); arbitrum `0x9be2cf73e62dd3b5df4334d9a36888394822a33f` | ⚠️ Unaudited |
| mortgagefiusdccbbtcupgraded | unknown | base | n/a | [`0xe93131620945a1273b48f57f453983d270b62dc7`](./contracts/base-8453/0xe93131620945a1273b48f57f453983d270b62dc7/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x0aea2ddf5e255a9b73f1dd8557be4dc19b2f71b6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x32ff6cda1fddfbcb01980fb00543b95db42bd0a9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x392574f6f3dfd576514fba8e53304c3a815d0e5b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x45306c3927e81a9a3dd9152cb7af064afcbf1f75` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x646a9d3148c7443b7b644adc465f2ac1baf58c12` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa49204110778ff1e333f71067aef92e34c05ea10` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xafcf31294fcc627217c8c5334af20258bf533817` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb5a79b21045c4a36e73bc723804c2ed7859b3152` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbbd3e8fc6ee1e441c841baaaa8cde330d1c0b002` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd5f28ca9b4d5580e79b4561e424fca88fbf8c766` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe0dc45a7141db52a1452ec99140458870816f2f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfd7457e714b4b218fa95dea40d0665f7e47648d8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2fe51499d328009ab7b8abed6b27dabd58b37cda` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3bccf0b30e9081c586496c827587e27652c72051` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x59f8881d28772f8e23a1b282fb9d5fc2e7ca5bf9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9dd3f2b92fd5708a44e6df95cd57b59e896d6db8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [mortgagefi-audit-report-1.1.pdf](https://github.com/Decurity/audits/blob/master/MortgageFi/mortgagefi-audit-report-1.1.pdf) | Decurity | Audit | 2024-08 | aging | Direct | contract_name | 2 | n/a |
| [hashlock.com/audits/mortgagefi](https://hashlock.com/audits/mortgagefi) | unknown | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [MortageFi-Smart-Contract-Audit-Report-Final-Report.pdf](https://hashlock.com/wp-content/uploads/2024/10/MortageFi-Smart-Contract-Audit-Report-Final-Report.pdf) | Hashlock | Audit | 2024-08 | aging | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x1be87d273d47c3832ab7853812e9a995a4de9eea`](./contracts/base-8453/0x1be87d273d47c3832ab7853812e9a995a4de9eea/) | mortgagefipoolusdcweth | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2f5aac46575f68fe600e99096ca38301a4520a91`](./contracts/arbitrum-42161/0x2f5aac46575f68fe600e99096ca38301a4520a91/) | mortgagefipoolusdtwbtc | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe93131620945a1273b48f57f453983d270b62dc7`](./contracts/base-8453/0xe93131620945a1273b48f57f453983d270b62dc7/) | mortgagefiusdccbbtcupgraded | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=4

Zero-match audit list:

- [13525] hashlock.com/audits/mortgagefi

Fork inheritance lineage and inherited audits are included when available.
