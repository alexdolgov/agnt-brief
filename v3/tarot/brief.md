# Agentic Audit Brief: Tarot

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Tarot (`tarot`)
- Website: [https://www.tarot.to](https://www.tarot.to)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc, fantom, optimism
- Contract surface: 28 unique implementations (74 raw deployments)
- Coverage basis: 0/27 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $953,039.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Tarot. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 27 contract row(s) across arbitrum, bsc, fantom, optimism. Structural roles: 21 unclassified, 3 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 27
- Structural roles: unclassified (21), core (3), supporting (3)
- Contract kinds: contract (27)
- Detected standards: ownable (2), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (6)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 27 contracts are derived from known codebases. 27 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AnyswapV6ERC20 (`0x375488...e736bf`, chain 10)
- BDeployer (`0x54b006...7d5420`, chain 10)
- BDeployer (`0x952e9c...30335a`, chain 10)
- CDeployer (`0x5f90e2...e46401`, chain 10)
- CDeployer (`0xeb5809...dfc12d`, chain 10)
- Factory (`0x1d90fd...d0989e`, chain 10)
- Factory (`0x49df1f...db62bf`, chain 10)
- Factory (`0x8b2e28...9f0723`, chain 10)
- Factory (`0xd7cabe...5fc83c`, chain 10)
- Factory (`0x2217ae...8dba55`, chain 56)
- Factory (`0xc20099...406d3a`, chain 56)
- Factory (`0x2217ae...8dba55`, chain 42161)
- Factory (`0x4b6dae...dd4723`, chain 42161)
- Factory (`0xc20099...406d3a`, chain 42161)
- Router02 (`0x88c81e...06172e`, chain 10)
- Router02 (`0x8a3b1b...f53d8c`, chain 10)
- Router02 (`0xa516b9...84405f`, chain 10)
- Router02 (`0xd4a6a0...e01741`, chain 10)
- Router02 (`0x002235...1d07b4`, chain 42161)
- Router02 (`0x1cafcb...54b653`, chain 42161)
- Router02 (`0x46fcde...301f30`, chain 42161)
- Router03 (`0x8184fa...405990`, chain 56)
- Router03 (`0xb6ed26...a97131`, chain 56)
- VeloStableVaultTokenFactory (`0x66e9b3...9f4859`, chain 10)
- VeloStableVaultTokenFactory (`0xee1ecc...96cf70`, chain 10)
- VeloVaultTokenFactory (`0x19283d...92dc52`, chain 10)
- ZipVaultTokenFactory (`0x54950c...909f57`, chain 10)

## Contract Surface Quality

- Indexed contracts: 27; live-surface contracts included: 27 (27 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/27 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/27 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 27 of 28 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 28
- Raw deployments: 74
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnyswapV6ERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-258140 | `0x375488...e736bf` | ⚠️ Unaudited |
| BDeployer | unknown | project_anchor | own_supporting | 0 | optimism | unit-258143 | `0x54b006...7d5420` | ⚠️ Unaudited |
| BDeployer | unknown | project_anchor | own_supporting | 0 | optimism | unit-258149 | `0x952e9c...30335a` | ⚠️ Unaudited |
| CDeployer | unknown | project_anchor | own_supporting | 0 | optimism | unit-258144 | `0x5f90e2...e46401` | ⚠️ Unaudited |
| CDeployer | unknown | project_anchor | own_supporting | 0 | optimism | unit-258153 | `0xeb5809...dfc12d` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | optimism | unit-258139 | `0x1d90fd...d0989e` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | optimism | unit-258141 | `0x49df1f...db62bf` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | optimism | unit-258148 | `0x8b2e28...9f0723` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | optimism | unit-258152 | `0xd7cabe...5fc83c` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | bsc | unit-258161 | `0x2217ae...8dba55` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | bsc | unit-258164 | `0xc20099...406d3a` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-258157 | `0x2217ae...8dba55` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-258159 | `0x4b6dae...dd4723` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-258160 | `0xc20099...406d3a` | ⚠️ Unaudited |
| Router02 | unknown | project_anchor | own_supporting | 0 | optimism | unit-258146 | `0x88c81e...06172e` | ⚠️ Unaudited |
| Router02 | unknown | project_anchor | own_supporting | 0 | optimism | unit-258147 | `0x8a3b1b...f53d8c` | ⚠️ Unaudited |
| Router02 | adapter | project_anchor | own_supporting | 0 | optimism | unit-258150 | `0xa516b9...84405f` | ⚠️ Unaudited |
| Router02 | unknown | project_anchor | own_supporting | 0 | optimism | unit-258151 | `0xd4a6a0...e01741` | ⚠️ Unaudited |
| Router02 | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-258155 | `0x002235...1d07b4` | ⚠️ Unaudited |
| Router02 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-258156 | `0x1cafcb...54b653` | ⚠️ Unaudited |
| Router02 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-258158 | `0x46fcde...301f30` | ⚠️ Unaudited |
| Router03 | adapter | project_anchor | own_supporting | 0 | bsc | unit-258162 | `0x8184fa...405990` | ⚠️ Unaudited |
| Router03 | unknown | project_anchor | own_supporting | 0 | bsc | unit-258163 | `0xb6ed26...a97131` | ⚠️ Unaudited |
| VeloStableVaultTokenFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-258145 | `0x66e9b3...9f4859` | ⚠️ Unaudited |
| VeloStableVaultTokenFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-258154 | `0xee1ecc...96cf70` | ⚠️ Unaudited |
| VeloVaultTokenFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-258138 | `0x19283d...92dc52` | ⚠️ Unaudited |
| ZipVaultTokenFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-258142 | `0x54950c...909f57` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | 47 deployments: fantom `0x04d04f...0c565a`; fantom `0x075b7f...96283a`; fantom `0x0defef...5d968e`; fantom `0x17235b...121c35`; fantom `0x1a8c7d...75dd4d`; fantom `0x1f7a54...7420ed`; fantom `0x1f8e60...c5cdb7`; fantom `0x20aa24...f9754d`; fantom `0x2217ae...8dba55`; fantom `0x26b21e...e94572`; fantom `0x283e62...89ad98`; fantom `0x2f7134...b36558`; fantom `0x3303a5...d3622e`; fantom `0x35c052...3432ea`; fantom `0x36df0a...e38a35`; fantom `0x3e9d8f...3341a4`; fantom `0x3e9f34...a10251`; fantom `0x3f7e61...183a7c`; fantom `0x449ead...641561`; fantom `0x44f768...e0d47d`; fantom `0x466ebd...a6e86b`; fantom `0x46fcde...301f30`; fantom `0x4c0931...94ebef`; fantom `0x4f56f5...f8f897`; fantom `0x51d49f...560ba7`; fantom `0x5494b2...2a74df`; fantom `0x68d211...dacdfb`; fantom `0x6caa3e...1c33a8`; fantom `0x74d1d2...df92f4`; fantom `0x7e5f7d...febb9a`; fantom `0x80d741...cf014b`; fantom `0x80fe67...c81c7b`; fantom `0x87d057...b64a35`; fantom `0x9189a6...c595ed`; fantom `0x93d014...35eaac`; fantom `0xa45776...c3d452`; fantom `0xbf76f8...cf7322`; fantom `0xc2218e...c902d1`; fantom `0xc5e2b0...8764cd`; fantom `0xcf8660...564889`; fantom `0xd4fcd1...0979ef`; fantom `0xdcaeee...c2eaed`; fantom `0xe1fe8b...e40e17`; fantom `0xe21ca4...1db6c7`; fantom `0xe62745...83c275`; fantom `0xf62faf...9815a6`; fantom `0xf6d943...dcd01b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/tarot](https://skynet.certik.com/projects/tarot) | CertiK | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3202] skynet.certik.com/projects/tarot — no match: Extracted from 'Audited Files' section; only two files explicitly listed. The report mentions 'View 255 Audited Files' but only two are shown. Date from 'Last Audit was delivered on 8/3/2022'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/tarot | InterestRateModel | unmatched — not counted | — | Audited Files/SHA256BInterestRateModel.solA80...A5AC | no |
| skynet.certik.com/projects/tarot | Storage | unmatched — not counted | — | Audited Files/SHA256BStorage.sol0EC...083 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0x54b006...7d5420` | BDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x952e9c...30335a` | BDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x5f90e2...e46401` | CDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xeb5809...dfc12d` | CDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x1d90fd...d0989e` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x49df1f...db62bf` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x8b2e28...9f0723` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd7cabe...5fc83c` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2217ae...8dba55` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc20099...406d3a` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2217ae...8dba55` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4b6dae...dd4723` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc20099...406d3a` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x88c81e...06172e` | Router02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x8a3b1b...f53d8c` | Router02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xa516b9...84405f` | Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd4a6a0...e01741` | Router02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x002235...1d07b4` | Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1cafcb...54b653` | Router02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x46fcde...301f30` | Router02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8184fa...405990` | Router03 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xb6ed26...a97131` | Router03 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x66e9b3...9f4859` | VeloStableVaultTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xee1ecc...96cf70` | VeloStableVaultTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x19283d...92dc52` | VeloVaultTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x54950c...909f57` | ZipVaultTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [3202] skynet.certik.com/projects/tarot

Fork inheritance lineage and inherited audits are included when available.
