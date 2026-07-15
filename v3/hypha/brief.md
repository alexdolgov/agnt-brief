# Agentic Audit Brief: Hypha

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Hypha (`hypha`)
- Website: [https://www.hypha.sh/](https://www.hypha.sh/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche
- Contract surface: 39 unique implementations (44 raw deployments)
- Coverage basis: 12/34 confirmed own live verified implementations (35.3%); conservative 35.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,763,040.88
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Hypha. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 32 contract row(s) across avalanche. Structural roles: 14 unclassified, 9 core, 9 supporting. 8 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 32
- Structural roles: unclassified (14), core (9), supporting (9)
- Contract kinds: contract (32)
- Detected standards: ownable (4), erc20permit (3), accesscontrol (1), erc165 (1)
- Frameworks: solmate (11), openzeppelin-upgradeable (6), openzeppelin (5)
- Upgradeable-pattern rows: 8

## Fork Analysis

4 of 23 contracts are derived from known codebases. 19 contracts have no detected origin.

### Forked Contracts

**ProtocolDAO** (`0xfc3ea3...d8051a`, chain 43114)
Origin: salvor (`0xfc3ea3...d8051a`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Staking** (`0xb6ddbf...26aecb`, chain 43114)
Origin: salvor (`0xb6ddbf...26aecb`)
Containment: 100.0% - 35 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenggAVAX** (`0x84e71c...ceb922`, chain 43114)
Origin: hypha (`0x576d98...ca7323`)
Containment: 88.9% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- guardianWithdrawWAVAX(uint256,address)
- setLastReward(uint192)

**WithdrawQueue** (`0x4043da...b45e6e`, chain 43114)
Origin: hypha (`0x472e82...f56238`)
Containment: 96.3% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- rescueStuckAVAX(uint256,uint256)

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x19da5d...d439f4`, chain 43114)
- UnnamedContract (`0x1cea17...dff1a9`, chain 43114)
- UnnamedContract (`0x25314c...8b58aa`, chain 43114)
- UnnamedContract (`0xae6a7d...607d89`, chain 43114)
- UnnamedContract (`0xb306c9...b20b04`, chain 43114)
- ClaimNodeOp (`0xb42cfa...afc35c`, chain 43114)
- CREATE3Factory (`0x9fbb3d...cd0abf`, chain 43114)
- GnosisSafeProxy (`0x6c104d...29bcf3`, chain 43114)
- MinipoolManager (`0xc300bc...268ee7`, chain 43114)
- Multicall3 (`0xca11bd...76ca11`, chain 43114)
- NodeSale (`0xa60a66...83cfaa`, chain 43114)
- Ocyticus (`0xffdc3b...ad5542`, chain 43114)
- Oracle (`0x30fb91...a16db7`, chain 43114)
- ProxyAdmin (`0x6e8fd3...aed940`, chain 43114)
- ProxyAdmin (`0xbc5627...e9e190`, chain 43114)
- RewardsPool (`0xaa8fd0...7c1b1d`, chain 43114)
- Timelock (`0xcd385f...14af41`, chain 43114)
- TokenGGP (`0x69260b...2cd11d`, chain 43114)
- WAVAX (`0xb31f66...fd66c7`, chain 43114)

## Contract Surface Quality

- Indexed contracts: 32; live-surface contracts included: 32 (30 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 39/42 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 12/34 (35.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 39 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Deployed-live implementations: 39 of 39 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 12/34
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 39
- Raw deployments: 44
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 13 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 12 | 35.3% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ClaimNodeOp | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242361 | `0xb42cfa...afc35c` | ✅ Audited |
| ClaimProtocolDAO | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242348 | `0x4169cf...49476c` | ✅ Audited |
| MinipoolManager | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-242365 | `0xc300bc...268ee7` | ✅ Audited |
| MultisigManager | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242352 | `0x7fff41...1b6a3b` | ✅ Audited |
| Ocyticus | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242373 | `0xffdc3b...ad5542` | ✅ Audited |
| Oracle | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-242345 | `0x30fb91...a16db7` | ✅ Audited |
| ProtocolDAO | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242371 | `0xfc3ea3...d8051a` | ✅ Audited |
| RewardsPool | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-242358 | `0xaa8fd0...7c1b1d` | ✅ Audited |
| Staking | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242362 | `0xb6ddbf...26aecb` | ✅ Audited |
| TokenggAVAX | unknown | project_anchor | own_supporting | 1 | avalanche | unit-242381 | `0xa25eaf...b703e3` | ✅ Audited |
| TokenGGP | token | project_anchor | own_supporting | 0 | avalanche | unit-242350 | `0x69260b...2cd11d` | ✅ Audited |
| Vault | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242370 | `0xd45cb6...41e6ba` | ✅ Audited |

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArtifactHardwareProvider | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242364 | `0xc095ec...24194c` | ⚠️ Unaudited |
| AvalancheHardwareRental | unknown | project_anchor | own_supporting | 1 | avalanche | unit-242375 | 2 deployments: avalanche `0x456a6e...76e87b`; avalanche `0xf45117...e27848` | ⚠️ Unaudited |
| CoqnetHardwareRental | unknown | project_anchor | own_supporting | 1 | avalanche | unit-242378 | 2 deployments: avalanche `0x7a212f...b9a6dc`; avalanche `0x8a2de3...9ac366` | ⚠️ Unaudited |
| CREATE3Factory | registry | project_anchor | own_supporting | 0 | avalanche | unit-242356 | `0x9fbb3d...cd0abf` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | avalanche | unit-242382 | `0x6c104d...29bcf3` | ⚠️ Unaudited |
| MinipoolStreamliner | unknown | project_anchor | own_supporting | 1 | avalanche | unit-242376 | 2 deployments: avalanche `0x746f2c...c1ecd8`; avalanche `0x752ab1...163ae1` | ⚠️ Unaudited |
| Multicall3 | periphery | project_anchor | own_supporting | 0 | avalanche | unit-242368 | `0xca11bd...76ca11` | ⚠️ Unaudited |
| NodeSale | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242357 | `0xa60a66...83cfaa` | ⚠️ Unaudited |
| OonodzHardwareProvider | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242372 | `0xfe6ca6...e8fe3e` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242349 | `0x5313c3...b247cf` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | avalanche | unit-242351 | `0x6e8fd3...aed940` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242354 | `0x89cf78...b9b64d` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242355 | `0x9484d5...416c71` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | avalanche | unit-242363 | `0xbc5627...e9e190` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242367 | `0xc7fef2...d7a6c6` | ⚠️ Unaudited |
| SubnetHardwareRentalMapping | unknown | project_anchor | own_supporting | 1 | avalanche | unit-242379 | 2 deployments: avalanche `0x8b85ca...f33d0b`; avalanche `0xf04aa1...f8a9ed` | ⚠️ Unaudited |
| Timelock | governance | project_anchor | own_supporting | 0 | avalanche | unit-242369 | `0xcd385f...14af41` | ⚠️ Unaudited |
| TokenggAVAX | token | project_anchor | own_supporting | 0 | avalanche | unit-242353 | `0x84e71c...ceb922` | ⚠️ Unaudited |
| TokenpstAVAX | unknown | project_anchor | own_supporting | 1 | avalanche | unit-242377 | 2 deployments: avalanche `0x6b3775...e5aaf8`; avalanche `0x82e153...79b241` | ⚠️ Unaudited |
| WAVAX | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242360 | `0xb31f66...fd66c7` | ⚠️ Unaudited |
| WithdrawQueue | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-242346 | `0x4043da...b45e6e` | ⚠️ Unaudited |
| WithdrawQueue | unknown | project_anchor | own_supporting | 1 | avalanche | unit-242380 | `0x61f908...5849a3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| NodeAsAService | unknown | project_anchor | own_supporting | 1 | avalanche | unit-242374 | `0xb306c9...b20b04` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242341 | `0x19da5d...d439f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242342 | `0x1cea17...dff1a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242343 | `0x25314c...8b58aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242359 | `0xae6a7d...607d89` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [GoGoPool - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/GoGoPool%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-02 | stale | Direct | contract_name | matched | 13 | 1 | 0 | 5 | high |
| [2023-02-gogopool-mitigation-contest (GitHub directory)](https://github.com/code-423n4/2023-02-gogopool-mitigation-contest) | Code4rena | Contest | 2023-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [643ee88bf91b375b39ba2613_Kudelski_multisig_labs_report_1.1.pdf](https://assets-global.website-files.com/62f90a8443126c2ee50f4c4e/643ee88bf91b375b39ba2613_Kudelski_multisig_labs_report_1.1.pdf) | Code4rena | Contest | 2022-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1968] GoGoPool - Zellic Audit Report.pdf — matched: All contracts listed in the scope section (2.3) of the report.
- [1970] 2023-02-gogopool-mitigation-contest (GitHub directory) — no match: The document is a GitHub repository page for a mitigation contest, not an audit report. It lists findings but does not provide a scope section with contract names or file paths. No audit date is present.
- [11933] 643ee88bf91b375b39ba2613_Kudelski_multisig_labs_report_1.1.pdf — no match: The audit report is for a Go cryptographic library (ECDSA-CGGMP), not smart contracts. No Solidity contracts or blockchain-specific modules are in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| GoGoPool - Zellic Audit Report.pdf | BaseAbstract | unmatched — not counted | — | listed in scope | no |
| GoGoPool - Zellic Audit Report.pdf | RewardsPool | own contract | RewardsPool (selected) `0xaa8fd0...7c1b1d` — deployed 2023-04-06 00:09:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GoGoPool - Zellic Audit Report.pdf | BaseUpgradeable | unmatched — not counted | — | listed in scope | no |
| GoGoPool - Zellic Audit Report.pdf | MultisigManager | own contract | MultisigManager (selected) `0x7fff41...1b6a3b` — deployed 2023-04-06 00:13:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GoGoPool - Zellic Audit Report.pdf | Oracle | own contract | Oracle (selected) `0x30fb91...a16db7` — deployed 2023-04-06 00:12:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GoGoPool - Zellic Audit Report.pdf | MinipoolManager | own contract | MinipoolManager (selected) `0xc300bc...268ee7` — deployed 2024-08-07 18:06:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GoGoPool - Zellic Audit Report.pdf | Vault | own contract | Vault (selected) `0xd45cb6...41e6ba` — deployed 2023-04-06 00:11:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GoGoPool - Zellic Audit Report.pdf | Storage | own contract | 0x1cea17… (selected) `0x1cea17...dff1a9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GoGoPool - Zellic Audit Report.pdf | Base | unmatched — not counted | — | listed in scope | no |
| GoGoPool - Zellic Audit Report.pdf | ProtocolDAO | own contract | ProtocolDAO (selected) `0xfc3ea3...d8051a` — deployed 2025-09-03 22:10:34+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GoGoPool - Zellic Audit Report.pdf | Ocyticus | own contract | Ocyticus (selected) `0xffdc3b...ad5542` — deployed 2025-09-02 20:58:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GoGoPool - Zellic Audit Report.pdf | TokenggAVAX | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xa25eaf...b703e3` — deployed 2023-04-06 00:10:19+03 — liveness: live (current_address_book_code)<br>TokenggAVAX (alternative) `0x84e71c...ceb922` — deployed 2025-09-03 22:10:34+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-04-06 was 43d from audit; next candidate 924d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GoGoPool - Zellic Audit Report.pdf | TokenGGP | own contract | TokenGGP (selected) `0x69260b...2cd11d` — deployed 2023-04-06 00:10:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GoGoPool - Zellic Audit Report.pdf | ERC20Upgradeable | unmatched — not counted | — | listed in scope | no |
| GoGoPool - Zellic Audit Report.pdf | ERC4626Upgradeable | unmatched — not counted | — | listed in scope | no |
| GoGoPool - Zellic Audit Report.pdf | ClaimProtocolDAO | own contract | ClaimProtocolDAO (selected) `0x4169cf...49476c` — deployed 2023-04-06 00:13:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GoGoPool - Zellic Audit Report.pdf | ClaimNodeOp | own contract | ClaimNodeOp (selected) `0xb42cfa...afc35c` — deployed 2023-04-06 00:11:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GoGoPool - Zellic Audit Report.pdf | Staking | own contract | Staking (selected) `0xb6ddbf...26aecb` — deployed 2023-11-03 16:32:44+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | `0xc095ec...24194c` | ArtifactHardwareProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x456a6e...76e87b` | AvalancheHardwareRental | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x7a212f...b9a6dc` | CoqnetHardwareRental | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x9fbb3d...cd0abf` | CREATE3Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x746f2c...c1ecd8` | MinipoolStreamliner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xa60a66...83cfaa` | NodeSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xfe6ca6...e8fe3e` | OonodzHardwareProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x8b85ca...f33d0b` | SubnetHardwareRentalMapping | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xcd385f...14af41` | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x84e71c...ceb922` | TokenggAVAX | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x6b3775...e5aaf8` | TokenpstAVAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xb31f66...fd66c7` | WAVAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x4043da...b45e6e` | WithdrawQueue | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x61f908...5849a3` | WithdrawQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 13 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 5 unmatched
- Matched-own operational status: 13 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=2
- Match method counts: temporal_name=1, unique_name=12

Zero-match audit list:

- [1970] 2023-02-gogopool-mitigation-contest (GitHub directory)
- [11933] 643ee88bf91b375b39ba2613_Kudelski_multisig_labs_report_1.1.pdf

Fork inheritance lineage and inherited audits are included when available.
