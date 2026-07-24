# Agentic Audit Brief: Definix

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 6 (2 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Definix (`definix`)
- Website: [https://definix.com/en](https://definix.com/en)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, kaia
- Contract surface: 29 unique implementations (29 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $374,666.58
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Definix. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across bsc, kaia. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: erc20 (2), ownable (2)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xd51c337147c8033a43f3b5ce0023382320c113aa`, chain 8217)
- FinixToken (`0x0f02b1f5af54e04fb6dd6550f009ac2429c4e30d`, chain 56)
- SIXToken (`0x070a9867ea49ce7afc4505817204860e823489fe`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 26 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 3 of 29 unique; 26 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/8
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 21
- Unique implementations: 29
- Raw deployments: 29
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 12.5% | 2021-03 |
| Techrate | Tier 2 | 1 | 12.5% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FinixToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-383707 | `0x0f02b1f5af54e04fb6dd6550f009ac2429c4e30d` | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Apollo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b4aec66ef4f942da16845d22ce2656d759d0a15` | ⚠️ Unaudited |
| DefinixFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x43ebb0cb9bd53a3ed928dd662095ace1cef92d19` | ⚠️ Unaudited |
| DefinixRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x151030a9fa62fbb202eee50bd4a4057ab9e826ad` | ⚠️ Unaudited |
| FlameKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfaaa404735f33cdab5eae2fddfd375b92399853f` | ⚠️ Unaudited |
| Herodotus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b51e8fdc32ead0b837deb334fcb79e24f3b105a` | ⚠️ Unaudited |
| SIXToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-383706 | `0x070a9867ea49ce7afc4505817204860e823489fe` | ⚠️ Unaudited |
| TimelockController | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x967bef27c509fa0772c10d59f47236a2d304cbfe` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (21)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00d68615df58684e4bf99e45345371c4a16aea22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c817c133bb8f0b3826dadd37338339d75a706db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23335f144eb74dd296010dfbf733db09ba6679e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32971dd884e4010356cffd26b819f553a1ad1a71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36101b46fd2c799420f32b2fe267736e72362778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x37340056a3a0bc2a811f3399edb4685cce1a0891` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ad6bff64a9d7a92fc8b498e78abcdf9fc5f2c84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x470cf9db7f273a875982fe4f05d095c6d01a24cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a4f1369d6d61b3f062eeb40c0b85190eaaefa05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b4f26f1b29e8f13fc108ac839576ebebe9aa139` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f1b509dbd1bb779bfb8716e006d6e45efb01ce9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79bff96302572dc3a3a7f908dc4dad80ebcb6a07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ddc1bd516256c269f99ad52d7c37ded33af0ee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a145c660cb0738d0407b32e146b9b08774a278c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93ba014d0048b297397aae471f18311042fd3417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa881edd25f10b4a34c14f3b967549f67c3310467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb08242d847b15631bd49d914b60b816fc45007f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8e92beadee1ff2ba550458cd0c30b9d139f3e0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed0603c779198d824c4963922daa62b1d25c8d2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf444f9b942eb7361f3dded658a285056f682a5f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-383708 | `0xd51c337147c8033a43f3b5ce0023382320c113aa` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 20
- Live contracts: 0
- Unknown liveness contracts: 20
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=20

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x00d68615df58684e4bf99e45345371c4a16aea22` | non_address_book | unknown | unknown | unverified | n/a | `0xb8da64f509caa0ace0ec926435c64cd0ca6dea74` |
| unverified unclassified | UnnamedContract<br>`0x1c817c133bb8f0b3826dadd37338339d75a706db` | non_address_book | unknown | unknown | unverified | n/a | `0xb8da64f509caa0ace0ec926435c64cd0ca6dea74` |
| unverified unclassified | UnnamedContract<br>`0x23335f144eb74dd296010dfbf733db09ba6679e6` | non_address_book | unknown | unknown | unverified | n/a | `0xb8da64f509caa0ace0ec926435c64cd0ca6dea74` |
| unverified unclassified | UnnamedContract<br>`0x32971dd884e4010356cffd26b819f553a1ad1a71` | non_address_book | unknown | unknown | unverified | n/a | `0xb8da64f509caa0ace0ec926435c64cd0ca6dea74` |
| unverified unclassified | UnnamedContract<br>`0x36101b46fd2c799420f32b2fe267736e72362778` | non_address_book | unknown | unknown | unverified | n/a | `0xb8da64f509caa0ace0ec926435c64cd0ca6dea74` |
| unverified unclassified | UnnamedContract<br>`0x37340056a3a0bc2a811f3399edb4685cce1a0891` | non_address_book | unknown | unknown | unverified | n/a | `0xb8da64f509caa0ace0ec926435c64cd0ca6dea74` |
| unverified unclassified | UnnamedContract<br>`0x3ad6bff64a9d7a92fc8b498e78abcdf9fc5f2c84` | non_address_book | unknown | unknown | unverified | n/a | `0xb8da64f509caa0ace0ec926435c64cd0ca6dea74` |
| unverified unclassified | UnnamedContract<br>`0x470cf9db7f273a875982fe4f05d095c6d01a24cf` | non_address_book | unknown | unknown | unverified | n/a | `0xb8da64f509caa0ace0ec926435c64cd0ca6dea74` |
| unverified unclassified | UnnamedContract<br>`0x4a4f1369d6d61b3f062eeb40c0b85190eaaefa05` | non_address_book | unknown | unknown | unverified | n/a | `0xb8da64f509caa0ace0ec926435c64cd0ca6dea74` |
| unverified unclassified | UnnamedContract<br>`0x5b4f26f1b29e8f13fc108ac839576ebebe9aa139` | non_address_book | unknown | unknown | unverified | n/a | `0xb8da64f509caa0ace0ec926435c64cd0ca6dea74` |
| unverified unclassified | UnnamedContract<br>`0x6f1b509dbd1bb779bfb8716e006d6e45efb01ce9` | non_address_book | unknown | unknown | unverified | n/a | `0xb8da64f509caa0ace0ec926435c64cd0ca6dea74` |
| unverified unclassified | UnnamedContract<br>`0x79bff96302572dc3a3a7f908dc4dad80ebcb6a07` | non_address_book | unknown | unknown | unverified | n/a | `0xb8da64f509caa0ace0ec926435c64cd0ca6dea74` |
| unverified unclassified | UnnamedContract<br>`0x7ddc1bd516256c269f99ad52d7c37ded33af0ee7` | non_address_book | unknown | unknown | unverified | n/a | `0xb8da64f509caa0ace0ec926435c64cd0ca6dea74` |
| unverified unclassified | UnnamedContract<br>`0x8a145c660cb0738d0407b32e146b9b08774a278c` | non_address_book | unknown | unknown | unverified | n/a | `0xb8da64f509caa0ace0ec926435c64cd0ca6dea74` |
| unverified unclassified | UnnamedContract<br>`0x93ba014d0048b297397aae471f18311042fd3417` | non_address_book | unknown | unknown | unverified | n/a | `0xb8da64f509caa0ace0ec926435c64cd0ca6dea74` |
| unverified unclassified | UnnamedContract<br>`0xa881edd25f10b4a34c14f3b967549f67c3310467` | non_address_book | unknown | unknown | unverified | n/a | `0xb8da64f509caa0ace0ec926435c64cd0ca6dea74` |
| unverified unclassified | UnnamedContract<br>`0xb08242d847b15631bd49d914b60b816fc45007f1` | non_address_book | unknown | unknown | unverified | n/a | `0xb8da64f509caa0ace0ec926435c64cd0ca6dea74` |
| unverified unclassified | UnnamedContract<br>`0xd8e92beadee1ff2ba550458cd0c30b9d139f3e0f` | non_address_book | unknown | unknown | unverified | n/a | `0xb8da64f509caa0ace0ec926435c64cd0ca6dea74` |
| unverified unclassified | UnnamedContract<br>`0xed0603c779198d824c4963922daa62b1d25c8d2c` | non_address_book | unknown | unknown | unverified | n/a | `0xb8da64f509caa0ace0ec926435c64cd0ca6dea74` |
| unverified unclassified | UnnamedContract<br>`0xf444f9b942eb7361f3dded658a285056f682a5f3` | non_address_book | unknown | unknown | unverified | n/a | `0xb8da64f509caa0ace0ec926435c64cd0ca6dea74` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://skynet.certik.com/projects/sixnetwork) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf](https://github.com/thesixnetwork/definix-audit/blob/main/Certik/REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [REP-Six_Network_Definix_Periphery-22_04_2021.pdf](https://github.com/thesixnetwork/definix-audit/blob/main/Certik/REP-Six_Network_Definix_Periphery-22_04_2021.pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf](https://github.com/thesixnetwork/definix-audit/blob/main/Certik/REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 16 | high |
| [REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf](https://github.com/thesixnetwork/definix-audit/blob/main/Certik/REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [The Six Network-24_04_2021.pdf](https://github.com/thesixnetwork/definix-audit/blob/main/Techrate/The%20Six%20Network-24_04_2021.pdf) | Techrate | Audit | 2021-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19679] DL audit link — no match: The provided text is a CertiK Skynet project insight page, not an audit report. It contains no scope section, no contract names in scope, and no audit date. The only date mentioned is '3/29/2020' as the last audit delivery date, but it is not clear if this is the audit completion date. No contract names are explicitly listed as audited.
- [19680] REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf — no match: All contracts listed in the 'Files In Scope' section and the scope table are extracted. The audit date is March 29th, 2021 from the cover page.
- [19681] REP-Six_Network_Definix_Periphery-22_04_2021.pdf — no match: All contracts listed in the scope table and files in scope section are extracted. The audit date is March 29th, 2021 from the delivery date.
- [19682] REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf — matched: Extracted 17 contracts from scope table and files in scope list. Audit date from delivery date and title.
- [19683] REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf — no match: Extracted contracts from scope table and Files In Scope list. Audit date from cover page.
- [19684] The Six Network-24_04_2021.pdf — matched: Audit report title includes 'April, 2021', so date is end of April 2021.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf | DefinixERC20 | unmatched — not counted | — | listed in scope table and files in scope | no |
| REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf | DefinixFactory | unmatched — not counted | — | listed in scope table and files in scope | no |
| REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf | DefinixPair | unmatched — not counted | — | listed in scope table and files in scope | no |
| REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf | IDefinixCallee | unmatched — not counted | — | listed in scope table and files in scope | no |
| REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf | IDefinixERC20 | unmatched — not counted | — | listed in scope table and files in scope | no |
| REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf | IDefinixFactory | unmatched — not counted | — | listed in scope table and files in scope | no |
| REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf | IDefinixPair | unmatched — not counted | — | listed in scope table and files in scope | no |
| REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf | IERC20 | unmatched — not counted | — | listed in scope table and files in scope | no |
| REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf | Math | unmatched — not counted | — | listed in scope table and files in scope | no |
| REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf | SafeMath | unmatched — not counted | — | listed in scope table and files in scope | no |
| REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf | UQ112x112 | unmatched — not counted | — | listed in scope table and files in scope | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | DefinixMigrator | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | DefinixRouter | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | DefinxRouter01 | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | IDefinixFactory | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | IDefinixMigrator | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | IDefinixPair | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | IDefinixRouter01 | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | IDefinixRouter02 | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | IERC20 | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | IWETH | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | DefinixLibrary | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | SafeMath | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | IUniswapV1Exchange | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | IUniswapV1Factory | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | BnbStaking | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | FinixToken | own contract | FinixToken (selected) `0x0f02b1f5af54e04fb6dd6550f009ac2429c4e30d` — deployed 2021-03-26 11:33:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | FlameKeeper | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | Herodotus | unmatched — not counted | — | listed in scope table and findings | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | SousChef | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | Timelock | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | VerifyFinixToken | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | Migrations | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | Multicall | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | PancakeVoteProxy | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | WBNB | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | Context | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | Ownable | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | SafeMath | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | Address | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | BEP20 | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | IBEP20 | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf | SIXBSCSwapIn | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf | SIXBSCSwapOut | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf | SIXKlaytnSwapIn | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf | SIXKlaytnSwapOut | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf | Context | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf | Ownable | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf | SafeMath | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf | IERC20 | unmatched — not counted | — | listed in Files In Scope section | no |
| The Six Network-24_04_2021.pdf | DefinixERC20 | unmatched — not counted | — | listed in scope | no |
| The Six Network-24_04_2021.pdf | DefinixFactory | unmatched — not counted | — | listed in scope | no |
| The Six Network-24_04_2021.pdf | DefinixPair | unmatched — not counted | — | listed in scope | no |
| The Six Network-24_04_2021.pdf | DefinixRouter | unmatched — not counted | — | listed in scope | no |
| The Six Network-24_04_2021.pdf | Herodotus | unmatched — not counted | — | listed in scope | no |
| The Six Network-24_04_2021.pdf | FlameKeeper | unmatched — not counted | — | listed in scope | no |
| The Six Network-24_04_2021.pdf | FinixToken | own contract | FinixToken (selected) `0x0f02b1f5af54e04fb6dd6550f009ac2429c4e30d` — deployed 2021-03-26 11:33:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| The Six Network-24_04_2021.pdf | ApolloLib | unmatched — not counted | — | listed in scope | no |
| The Six Network-24_04_2021.pdf | ApolloFactory | unmatched — not counted | — | listed in scope | no |
| The Six Network-24_04_2021.pdf | Apollo | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x070a9867ea49ce7afc4505817204860e823489fe` | SIXToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 58 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, low=1
- Match method counts: unique_name=2

Zero-match audit list:

- [19679] DL audit link
- [19680] REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf
- [19681] REP-Six_Network_Definix_Periphery-22_04_2021.pdf
- [19683] REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf

Fork inheritance lineage and inherited audits are included when available.
