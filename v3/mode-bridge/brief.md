# Agentic Audit Brief: Mode Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Mode Bridge (`mode-bridge`)
- Website: [https://app.mode.network](https://app.mode.network)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, mode
- Contract surface: 48 unique implementations (48 raw deployments)
- Coverage basis: 1/39 confirmed own live verified implementations (2.6%); conservative 2.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,728,451.53
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Mode Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 39 contract row(s) across ethereum, mode. Structural roles: 19 unclassified, 11 supporting, 9 core. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 39
- Structural roles: unclassified (19), supporting (11), core (9)
- Contract kinds: contract (39)
- Detected standards: erc165 (9), erc20 (7), ownable (4), erc1967proxy (3), erc20permit (1)
- Frameworks: openzeppelin (10), openzeppelin-upgradeable (4), solmate (3)
- Upgradeable-pattern rows: 6

## Fork Analysis

0 of 28 contracts are derived from known codebases. 28 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x7c6b91...7227f2`, chain 34443)
- UnnamedContract (`0x9e5aac...ca96f3`, chain 34443)
- bETH (`0x420000...000006`, chain 34443)
- ERC1967Proxy (`0xa2aa50...5b5729`, chain 34443)
- GovernanceToken (`0xdfc7c8...e3167a`, chain 34443)
- L1ChugSplashProxy (`0x735adb...b0ff21`, chain 1)
- L1ERC721Bridge (`0x8b91af...192bf8`, chain 1)
- L2OutputOracle (`0x609302...310eec`, chain 1)
- MintableERC20 (`0x59889b...90d46c`, chain 34443)
- ModeLock (`0x74b847...b8c6b4`, chain 34443)
- OptimismMintableERC20 (`0x028227...19d4f5`, chain 34443)
- OptimismMintableERC20 (`0x3e7ef8...276747`, chain 34443)
- OptimismMintableERC20 (`0x50c572...7db0cb`, chain 34443)
- OptimismMintableERC20 (`0xcdd475...a0a5cf`, chain 34443)
- OptimismMintableERC20 (`0xd08a29...fb4034`, chain 34443)
- OptimismMintableERC20 (`0xd98809...56005f`, chain 34443)
- OptimismMintableERC20 (`0xe7798f...5a77ea`, chain 34443)
- OptimismMintableERC20 (`0xf0f161...95e2ed`, chain 34443)
- Proxy (`0x8b34b1...7d0c07`, chain 1)
- Proxy (`0x420000...000007`, chain 34443)
- Proxy (`0x420000...000010`, chain 34443)
- RSETH_OFT (`0x4186bf...56b41f`, chain 34443)
- StoneCross (`0x801375...747bf7`, chain 34443)
- SystemConfig (`0x951754...d5bcaf`, chain 1)
- TransparentUpgradeableProxy (`0x04c059...6c150a`, chain 34443)
- TransparentUpgradeableProxy (`0x241609...cceea5`, chain 34443)
- TransparentUpgradeableProxy (`0x7c1daa...177256`, chain 34443)
- TransparentUpgradeableProxy (`0xe7903b...2cb3cd`, chain 34443)

## Contract Surface Quality

- Indexed contracts: 39; live-surface contracts included: 39 (39 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 41/105 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/39 (2.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 41 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 7 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Deployed-live implementations: 41 of 48 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/39
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 48
- Raw deployments: 48
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Solo Review | Tier 2 | 1 | 2.6% | 2024-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GovernanceToken | token | project_anchor | own_supporting | 0 | mode | unit-248093 | `0xdfc7c8...e3167a` | ✅ Audited |

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248012 | `0x50ef49...306e15` | ⚠️ Unaudited |
| bETH | unknown | project_anchor | own_supporting | 0 | mode | unit-248046 | `0x420000...000006` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 0 | mode | unit-248042 | `0x2fa6db...1e8517` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 0 | mode | unit-248082 | `0xa2aa50...5b5729` | ⚠️ Unaudited |
| FeeSharing | unknown | project_anchor | own_supporting | 0 | mode | unit-248068 | `0x8680ce...4b7020` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248005 | `0x14ddd0...0ee835` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | project_anchor | own_supporting | 1 | ethereum | unit-248104 | `0x95bdca...298a6f` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-248101 | `0x2901da...cc626d` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248016 | `0x8b91af...192bf8` | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | project_anchor | own_supporting | 1 | ethereum | unit-248103 | `0x735adb...b0ff21` | ⚠️ Unaudited |
| L1StandardBridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248021 | `0x9c67ac...76eb5a` | ⚠️ Unaudited |
| L2OutputOracle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-248106 | `0x4317ba...199b04` | ⚠️ Unaudited |
| L2OutputOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248013 | `0x609302...310eec` | ⚠️ Unaudited |
| MintableERC20 | token | project_anchor | own_supporting | 0 | mode | unit-248055 | `0x59889b...90d46c` | ⚠️ Unaudited |
| ModeLock | unknown | project_anchor | own_supporting | 0 | mode | unit-248061 | `0x74b847...b8c6b4` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | mode | unit-248032 | `0x028227...19d4f5` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | mode | unit-248044 | `0x3e7ef8...276747` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | mode | unit-248052 | `0x50c572...7db0cb` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | mode | unit-248088 | `0xcdd475...a0a5cf` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | mode | unit-248089 | `0xd08a29...fb4034` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | mode | unit-248091 | `0xd98809...56005f` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | mode | unit-248095 | `0xe7798f...5a77ea` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | mode | unit-248099 | `0xf0f161...95e2ed` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-248102 | `0x692163...096a95` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248024 | `0xc0c6a8...e8c73e` | ⚠️ Unaudited |
| OptimismPortal | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248022 | `0xad3dc2...88c46a` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-248105 | `0x8b34b1...7d0c07` | ⚠️ Unaudited |
| Proxy | proxy | project_anchor | own_supporting | 0 | mode | unit-248047 | `0x420000...000007` | ⚠️ Unaudited |
| Proxy | proxy | project_anchor | own_supporting | 0 | mode | unit-248048 | `0x420000...000010` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248011 | `0x470d87...276ab7` | ⚠️ Unaudited |
| RSETH_OFT | unknown | project_anchor | own_supporting | 0 | mode | unit-248045 | `0x4186bf...56b41f` | ⚠️ Unaudited |
| StoneCross | unknown | project_anchor | own_supporting | 0 | mode | unit-248065 | `0x801375...747bf7` | ⚠️ Unaudited |
| SupraOraclePull | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2fa6db...1e8517` | ⚠️ Unaudited |
| SystemConfig | unknown | project_anchor | own_supporting | 1 | ethereum | unit-248100 | `0x5e6432...9e2221` | ⚠️ Unaudited |
| SystemConfig | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248018 | `0x951754...d5bcaf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | mode | unit-248033 | `0x04c059...6c150a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | mode | unit-248039 | `0x241609...cceea5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | mode | unit-248063 | `0x7c1daa...177256` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | mode | unit-248096 | `0xe7903b...2cb3cd` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74b847...b8c6b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c1daa...177256` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8680ce...4b7020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2aa50...5b5729` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-248064 | `0x7c6b91...7227f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-248079 | `0x9e5aac...ca96f3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [report-mode-governancetoken-solo-review.pdf](https://github.com/mode-network/public-audits/blob/main/reports/report-mode-governancetoken-solo-review.pdf) | Solo Review | Audit | 2024-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [report-mode-lock-solo-review.pdf](https://github.com/mode-network/public-audits/blob/main/reports/report-mode-lock-solo-review.pdf) | Solo Review | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [public-audits (GitHub directory)](https://github.com/mode-network/public-audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2352] report-mode-governancetoken-solo-review.pdf — matched: No reason recorded
- [2353] report-mode-lock-solo-review.pdf — no match: The report does not have a dedicated scope section. The only contract explicitly mentioned in findings and appendix is ModeStaking. The audit date is from the cover page: 'May 3, 2024'.
- [2355] public-audits (GitHub directory) — no match: The provided text is a GitHub repository page listing audit reports, not the actual audit report content. No contract names or audit date could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| report-mode-governancetoken-solo-review.pdf | GovernanceToken | own contract | GovernanceToken (selected) `0xdfc7c8...e3167a` — deployed 2024-04-29 10:24:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-mode-lock-solo-review.pdf | ModeStaking | unmatched — not counted | — | Referenced in findings (e.g., MED-Not using safeTransfer may cause sweep to fail for some tokens) and in the appendix (QA-Setter limits are not enforced in the constructor). | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x50ef49...306e15` | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x420000...000006` | bETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x8680ce...4b7020` | FeeSharing | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x14ddd0...0ee835` | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x95bdca...298a6f` | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2901da...cc626d` | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8b91af...192bf8` | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x735adb...b0ff21` | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9c67ac...76eb5a` | L1StandardBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4317ba...199b04` | L2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x609302...310eec` | L2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x59889b...90d46c` | MintableERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x74b847...b8c6b4` | ModeLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x028227...19d4f5` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x3e7ef8...276747` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x50c572...7db0cb` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xcdd475...a0a5cf` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xd08a29...fb4034` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xd98809...56005f` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xe7798f...5a77ea` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xf0f161...95e2ed` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x692163...096a95` | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc0c6a8...e8c73e` | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xad3dc2...88c46a` | OptimismPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8b34b1...7d0c07` | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x4186bf...56b41f` | RSETH_OFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x801375...747bf7` | StoneCross | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5e6432...9e2221` | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x951754...d5bcaf` | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 0 |
| standard_library | 9 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1, medium=1
- Match method counts: unique_name=1

Zero-match audit list:

- [2353] report-mode-lock-solo-review.pdf
- [2355] public-audits (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
