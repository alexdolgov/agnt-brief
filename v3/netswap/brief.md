# Agentic Audit Brief: NetSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: NetSwap (`netswap`)
- Website: [https://netswap.io/#/home](https://netswap.io/#/home)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: metis
- Contract surface: 24 unique implementations (24 raw deployments)
- Coverage basis: 5/22 confirmed own live verified implementations (22.7%); conservative 22.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,229,900.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for NetSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 22 contract row(s) across metis. Structural roles: 12 core, 6 supporting, 4 unclassified. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 22
- Structural roles: core (12), supporting (6), unclassified (4)
- Contract kinds: contract (22)
- Detected standards: ownable (10), erc20 (2)
- Frameworks: openzeppelin (14), openzeppelin-upgradeable (4), boringcrypto (1)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 24 contracts are derived from known codebases. 24 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x12cd49...43c0a7`, chain 1088)
- UnnamedContract (`0x142f0f...3e7238`, chain 1088)
- BoostedNETTFarm (`0x0ecdc3...36f553`, chain 1088)
- CommunityTreasury (`0x2dc348...e75ed7`, chain 1088)
- FarmLens (`0x8d8be2...66df60`, chain 1088)
- Multicall (`0x0071dd...6621cd`, chain 1088)
- NetswapFactory (`0x70f51d...9dff9f`, chain 1088)
- NetswapRouter (`0x1e876c...3bff56`, chain 1088)
- NETT (`0x90fe08...1ab278`, chain 1088)
- NETTFarm (`0x9d1dbb...0cb052`, chain 1088)
- PadFactory (`0x587e87...b87f76`, chain 1088)
- StakingRewards (`0x4d2f0f...9c9c27`, chain 1088)
- StakingRewards (`0x54f683...84532b`, chain 1088)
- StakingRewards (`0x7fe9f0...f08300`, chain 1088)
- StakingRewards (`0xb43452...460329`, chain 1088)
- TransparentUpgradeableProxy (`0x276164...d9db9d`, chain 1088)
- TransparentUpgradeableProxy (`0x3c1367...bc9961`, chain 1088)
- TransparentUpgradeableProxy (`0x5e1f9c...840efa`, chain 1088)
- TransparentUpgradeableProxy (`0xd365e3...7110fa`, chain 1088)
- Unlimited (`0x0f21d3...0def34`, chain 1088)
- VeNETT (`0x6535db...cc2bd5`, chain 1088)
- VeNETTStaking (`0xa9d674...6b31a3`, chain 1088)
- wNETT (`0x8738e9...7b81a5`, chain 1088)
- wNETTStaking (`0x794a51...cd07cc`, chain 1088)

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 22 (22 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 24/24 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/22 (22.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 24 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 24 of 24 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 5/22
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 24
- Raw deployments: 24
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 5 | 22.7% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Multicall | periphery | project_anchor | own_supporting | 0 | metis | unit-249751 | `0x0071dd...6621cd` | ✅ Audited |
| NetswapFactory | registry | project_anchor | own_supporting | 0 | metis | unit-249765 | `0x70f51d...9dff9f` | ✅ Audited |
| NetswapRouter | adapter | project_anchor | own_supporting | 0 | metis | unit-249756 | `0x1e876c...3bff56` | ✅ Audited |
| NETT | unknown | project_anchor | own_supporting | 0 | metis | unit-249770 | `0x90fe08...1ab278` | ✅ Audited |
| NETTFarm | unknown | project_anchor | own_supporting | 0 | metis | unit-249771 | `0x9d1dbb...0cb052` | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BoostedNETTFarm | unknown | project_anchor | own_supporting | 0 | metis | unit-249752 | `0x0ecdc3...36f553` | ⚠️ Unaudited |
| CommunityTreasury | operational_periphery | project_anchor | own_supporting | 0 | metis | unit-249758 | `0x2dc348...e75ed7` | ⚠️ Unaudited |
| FarmLens | periphery | project_anchor | own_supporting | 0 | metis | unit-249769 | `0x8d8be2...66df60` | ⚠️ Unaudited |
| PadFactory | registry | project_anchor | own_supporting | 0 | metis | unit-249762 | `0x587e87...b87f76` | ⚠️ Unaudited |
| StakingRewards | unknown | project_anchor | own_supporting | 0 | metis | unit-249760 | `0x4d2f0f...9c9c27` | ⚠️ Unaudited |
| StakingRewards | unknown | project_anchor | own_supporting | 0 | metis | unit-249761 | `0x54f683...84532b` | ⚠️ Unaudited |
| StakingRewards | unknown | project_anchor | own_supporting | 0 | metis | unit-249767 | `0x7fe9f0...f08300` | ⚠️ Unaudited |
| StakingRewards | unknown | project_anchor | own_supporting | 0 | metis | unit-249773 | `0xb43452...460329` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | metis | unit-249757 | `0x276164...d9db9d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | metis | unit-249759 | `0x3c1367...bc9961` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | metis | unit-249763 | `0x5e1f9c...840efa` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | metis | unit-249774 | `0xd365e3...7110fa` | ⚠️ Unaudited |
| Unlimited | unknown | project_anchor | own_supporting | 0 | metis | unit-249753 | `0x0f21d3...0def34` | ⚠️ Unaudited |
| VeNETT | unknown | project_anchor | own_supporting | 0 | metis | unit-249764 | `0x6535db...cc2bd5` | ⚠️ Unaudited |
| VeNETTStaking | unknown | project_anchor | own_supporting | 0 | metis | unit-249772 | `0xa9d674...6b31a3` | ⚠️ Unaudited |
| wNETT | unknown | project_anchor | own_supporting | 0 | metis | unit-249768 | `0x8738e9...7b81a5` | ⚠️ Unaudited |
| wNETTStaking | unknown | project_anchor | own_supporting | 0 | metis | unit-249766 | `0x794a51...cd07cc` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-249754 | `0x12cd49...43c0a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-249755 | `0x142f0f...3e7238` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf](https://4122350423-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FEbMkSj6wrVk9IfPEsOGH%2Fuploads%2F9mkCS0SDBLKkPGAWCevh%2FNetSwap_audit.pdf) | yAudit | Audit | 2021-11 | stale | Direct | n/a | matched | 3 | 0 | 0 | 15 | n/a |
| [spaces/EbMkSj6wrVk9IfPEsOGH/uploads/lhV4zxJaCA5bczsO9uBu/Netswap Farm_audit.pdf](https://4122350423-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FEbMkSj6wrVk9IfPEsOGH%2Fuploads%2FlhV4zxJaCA5bczsO9uBu%2FNetswap%20Farm_audit.pdf) | yAudit | Audit | 2022-01 | stale | Direct | n/a | matched | 2 | 0 | 0 | 0 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3100] spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf — matched: No reason recorded
- [3101] spaces/EbMkSj6wrVk9IfPEsOGH/uploads/lhV4zxJaCA5bczsO9uBu/Netswap Farm_audit.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | IERC20Netswap | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | INetswapCallee | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | INetswapFactory | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | INetswapPair | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | INetswapRouter | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | INetswapRouter02 | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | ISwapMining | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | Math | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | Multicall | own contract | Multicall (selected) `0x0071dd...6621cd` — deployed 2021-12-06 13:18:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | NetSwapRouter | own contract | NetswapRouter (selected) `0x1e876c...3bff56` — deployed 2021-12-06 14:42:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | NetswapERC20 | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | NetswapFactory | own contract | NetswapFactory (selected) `0x70f51d...9dff9f` — deployed 2021-12-06 13:18:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | NetswapLibrary | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | NetswapPair | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | Ownable | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | SafeMathNetswap | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | TransferHelper | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | UQ112x112 | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/lhV4zxJaCA5bczsO9uBu/Netswap Farm_audit.pdf | NETT | own contract | NETT (selected) `0x90fe08...1ab278` — deployed 2021-12-23 16:19:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/lhV4zxJaCA5bczsO9uBu/Netswap Farm_audit.pdf | NETTFarm | own contract | NETTFarm (selected) `0x9d1dbb...0cb052` — deployed 2022-01-09 13:45:49+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| metis | `0x0ecdc3...36f553` | BoostedNETTFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x2dc348...e75ed7` | CommunityTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x8d8be2...66df60` | FarmLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x587e87...b87f76` | PadFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x4d2f0f...9c9c27` | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x54f683...84532b` | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x7fe9f0...f08300` | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0xb43452...460329` | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x0f21d3...0def34` | Unlimited | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x6535db...cc2bd5` | VeNETT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0xa9d674...6b31a3` | VeNETTStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x8738e9...7b81a5` | wNETT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x794a51...cd07cc` | wNETTStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 15 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=5

Fork inheritance lineage and inherited audits are included when available.
