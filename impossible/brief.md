# Agentic Audit Brief: IMPOSSIBLE

## Project Overview

- Project: IMPOSSIBLE (`impossible`)
- Website: [https://impossible.finance](https://impossible.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.917Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: aurora, bsc, moonbeam
- Contract surface: 9 unique implementations (9 raw deployments)
- DeFi Llama TVL: $152,485.73
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Launchpad. Structurally: 9 project-authored contract(s) across 3 chain(s); 6 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (impossibleerc20). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (8 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/8 (50.0%)
- Deployed-live implementations: 8 of 9 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/9
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 16 (16 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/impossiblefinance/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 14 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zokyo | Tier 2 | 4 | 44.4% | 2021-06 |
| Pessimistic | Tier 2 | 3 | 33.3% | 2022-02 |
| unknown | Tier 2 | 3 | 33.3% | 2021-12 |
| yAudit | Tier 2 | 3 | 33.3% | 2021-12 |
| AtticLab | Tier 2 | 1 | 11.1% | 2021-05 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ImpossibleRouterExtension | unknown | aurora | n/a | [`0x16e1cd2370752cc7a4aad326fe2c1aae95b0c5e2`](./contracts/aurora-1313161554/0x16e1cd2370752cc7a4aad326fe2c1aae95b0c5e2/) | ✅ Audited |
| ImpossibleSwapFactory | unknown | bsc | n/a | [`0x4233ad9b8b7c1ccf0818907908a7f0796a3df85f`](./contracts/bsc-56/0x4233ad9b8b7c1ccf0818907908a7f0796a3df85f/) | ✅ Audited |
| ImpossibleWrapperFactory | unknown | moonbeam | n/a | [`0x45a3a315277fbc1bce0611c4398b32e0317fd7c1`](./contracts/moonbeam-1284/0x45a3a315277fbc1bce0611c4398b32e0317fd7c1/) | ✅ Audited |
| StableXFactory | unknown | bsc | n/a | [`0x08823b2f32c96e120ed15d595c4dc3069c41963c`](./contracts/bsc-56/0x08823b2f32c96e120ed15d595c4dc3069c41963c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| IFTokenStandard | unknown | aurora | n/a | [`0x2efedebd6e29963511589731a33311196f00eacb`](./contracts/aurora-1313161554/0x2efedebd6e29963511589731a33311196f00eacb/) | ⚠️ Unaudited |
| ImpossibleDecentralizedIncubatorAccessToken | unknown | bsc | n/a | [`0x0b15ddf19d47e6a86a56148fb4afffc6929bcb89`](./contracts/bsc-56/0x0b15ddf19d47e6a86a56148fb4afffc6929bcb89/) | ⚠️ Unaudited |
| ImpossibleRouter | unknown | moonbeam | n/a | [`0x16e1cd2370752cc7a4aad326fe2c1aae95b0c5e2`](./contracts/moonbeam-1284/0x16e1cd2370752cc7a4aad326fe2c1aae95b0c5e2/) | ⚠️ Unaudited |
| StableXMigrator | unknown | bsc | n/a | [`0x0c028235dcbc7f9de8926f8ef36feea55b4e4100`](./contracts/bsc-56/0x0c028235dcbc7f9de8926f8ef36feea55b4e4100/) | ⚠️ Unaudited |
| StableXRouter | unknown | bsc | n/a | [`0x1cce099ae70f17fb74adfc9b00dbdf208a5e5fb3`](./contracts/bsc-56/0x1cce099ae70f17fb74adfc9b00dbdf208a5e5fb3/) | ⚠️ Unaudited |

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
| [Beosin Smart contract security audit report - Impossible swap.pdf (also discovered via alternate URL)](https://github.com/ImpossibleFinance/audits/blob/main/Beosin%20Smart%20contract%20security%20audit%20report%20-%20Impossible%20swap.pdf) | yAudit | Audit | 2021-12 | stale | Direct | contract_name | 3 | high |
| [blocksec_if_farm_draft.pdf](https://github.com/ImpossibleFinance/audits/blob/main/farmsAudits/blocksec_if_farm_draft.pdf) | BlockSec | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [Impossible Finance-Swap Zokyo audit report.pdf](https://github.com/ImpossibleFinance/audits/blob/main/impossibleSwapAudit/Impossible%20Finance-Swap%20Zokyo%20audit%20report.pdf) | Zokyo | Audit | 2021-06 | stale | Direct | contract_name | 4 | high |
| [Impossible-Swap-Audit-AtticLab-review_report_0705.pdf](https://github.com/ImpossibleFinance/audits/blob/main/impossibleSwapAudit/Impossible-Swap-Audit-AtticLab-review_report_0705.pdf) | AtticLab | Audit | 2021-05 | stale | Direct | contract_name | 1 | high |
| [Beosin-Audit-Launchpad.pdf](https://github.com/ImpossibleFinance/audits/blob/main/launchpadAudits/Beosin-Audit-Launchpad.pdf) | Beosin | Audit | 2021-08 | stale | Direct | n/a | 0 | n/a |
| [Blocksec-Audit-Launchpad.pdf](https://github.com/ImpossibleFinance/audits/blob/main/launchpadAudits/Blocksec-Audit-Launchpad.pdf) | Blocksec | Audit | 2021-08 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-IFlaunchpad-v1.0rc (3).pdf](https://github.com/ImpossibleFinance/audits/blob/main/launchpadAudits/PeckShield-Audit-Report-IFlaunchpad-v1.0rc%20(3).pdf) | PeckShield | Audit | 2021-08 | stale | Direct | n/a | 0 | n/a |
| [blocksec_if_launchpad_v2.0_signed.pdf](https://github.com/ImpossibleFinance/audits/blob/main/launchpadAudits/blocksec_if_launchpad_v2.0_signed.pdf) | Blocksec | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [blocksec_if_launchpad_v3.0_signed.pdf](https://github.com/ImpossibleFinance/audits/blob/main/launchpadAudits/blocksec_if_launchpad_v3.0_signed.pdf) | Blocksec | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [blocksec_if_launchpad_v4.0_draft.pdf](https://github.com/ImpossibleFinance/audits/blob/main/launchpadAudits/blocksec_if_launchpad_v4.0_draft.pdf) | Blocksec | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [blocksec_if_tieredsale_v1.1-signed.pdf](https://github.com/ImpossibleFinance/audits/blob/main/launchpadAudits/blocksec_if_tieredsale_v1.1-signed.pdf) | Blocksec | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [blocksec_iflaunchpad_v1.0-signed.pdf](https://github.com/ImpossibleFinance/audits/blob/main/launchpadAudits/blocksec_iflaunchpad_v1.0-signed.pdf) | Blocksec | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [Impossible Finance Security Analysis by Pessimistic.pdf](https://github.com/ImpossibleFinance/audits/blob/main/v3%20Swap%20Audits/Impossible%20Finance%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2022-02 | stale | Direct | contract_name | 3 | high |
| [Smart contract security audit report - Impossible swap 2 (2).pdf](https://github.com/ImpossibleFinance/audits/blob/main/v3%20Swap%20Audits/Smart%20contract%20security%20audit%20report%20-%20Impossible%20swap%202%20(2).pdf) | yAudit | Audit | 2021-12 | stale | Direct | contract_name | 3 | high |
| [if_swap_v1.2.pdf](https://github.com/ImpossibleFinance/audits/blob/main/v3%20Swap%20Audits/if_swap_v1.2.pdf) | unknown | Audit | 2021-12 | stale | Direct | contract_name | 3 | high |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/impossiblefinance/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| aurora | [`0x2efedebd6e29963511589731a33311196f00eacb`](./contracts/aurora-1313161554/0x2efedebd6e29963511589731a33311196f00eacb/) | IFTokenStandard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0b15ddf19d47e6a86a56148fb4afffc6929bcb89`](./contracts/bsc-56/0x0b15ddf19d47e6a86a56148fb4afffc6929bcb89/) | ImpossibleDecentralizedIncubatorAccessToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x16e1cd2370752cc7a4aad326fe2c1aae95b0c5e2`](./contracts/moonbeam-1284/0x16e1cd2370752cc7a4aad326fe2c1aae95b0c5e2/) | ImpossibleRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0c028235dcbc7f9de8926f8ef36feea55b4e4100`](./contracts/bsc-56/0x0c028235dcbc7f9de8926f8ef36feea55b4e4100/) | StableXMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1cce099ae70f17fb74adfc9b00dbdf208a5e5fb3`](./contracts/bsc-56/0x1cce099ae70f17fb74adfc9b00dbdf208a5e5fb3/) | StableXRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=20

Zero-match audit list:

- [20567] blocksec_if_farm_draft.pdf
- [20570] Beosin-Audit-Launchpad.pdf
- [20571] Blocksec-Audit-Launchpad.pdf
- [20572] PeckShield-Audit-Report-IFlaunchpad-v1.0rc (3).pdf
- [20573] blocksec_if_launchpad_v2.0_signed.pdf
- [20574] blocksec_if_launchpad_v3.0_signed.pdf
- [20575] blocksec_if_launchpad_v4.0_draft.pdf
- [20576] blocksec_if_tieredsale_v1.1-signed.pdf
- [20577] blocksec_iflaunchpad_v1.0-signed.pdf

Fork inheritance lineage and inherited audits are included when available.
