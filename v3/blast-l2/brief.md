# Agentic Audit Brief: Blast L2

## Export Authority

- Production state: **published scope**
- Raw selected rows: 19 across 3 audit(s)
- Eligible audit results: 3 (3 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: DECLINING - TVL dropped 38.8% over 90 days

## Project Overview

- Project: Blast L2 (`blast-l2`)
- Website: [https://blast.io/](https://blast.io/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: blast, ethereum, sepolia
- Contract surface: 59 unique implementations (63 raw deployments)
- Coverage basis: 9/18 confirmed own live verified implementations (50.0%); conservative 45.0% with 2 needs-review implementation(s)
- DeFi Llama TVL: $47,965,904.00
- On-chain TVL (included contracts): $569.61
- TVL by chain: Blast $569.61

## Project Description

This brief describes the observed EVM deployment and audit surface for Blast L2. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 20 contract row(s) across blast, ethereum, sepolia. Structural roles: 12 supporting, 5 core, 3 unclassified. 13 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 20
- Structural roles: supporting (12), core (5), unclassified (3)
- Contract kinds: contract (20)
- Detected standards: erc1967proxy (8), erc20 (2), erc165 (1), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (16), openzeppelin-upgradeable (13), solmate (13)
- Upgradeable-pattern rows: 13

## Fork Analysis

0 of 34 contracts are derived from known codebases. 34 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x4316a0...1af7db`, chain 1)
- UnnamedContract (`0x13b0d8...e9bef2`, chain 81457)
- UnnamedContract (`0x420000...000014`, chain 81457)
- UnnamedContract (`0x420000...000017`, chain 81457)
- UnnamedContract (`0x420000...000022`, chain 81457)
- UnnamedContract (`0x420000...000024`, chain 81457)
- UnnamedContract (`0x430000...000002`, chain 81457)
- UnnamedContract (`0x430000...000003`, chain 81457)
- UnnamedContract (`0x430000...000004`, chain 81457)
- UnnamedContract (`0x4e59b4...b4956c`, chain 81457)
- UnnamedContract (`0x7a0d94...406d12`, chain 81457)
- UnnamedContract (`0x96f6b7...23139c`, chain 81457)
- UnnamedContract (`0x9d020b...eb9af7`, chain 81457)
- UnnamedContract (`0xc0d3c0...d30002`, chain 81457)
- UnnamedContract (`0xcfa3a7...315196`, chain 81457)
- CreateX (`0xba5ed0...8ba5ed`, chain 81457)
- DSRYieldProvider (`0x0733f6...3681a8`, chain 1)
- GovernanceToken (`0xb1a570...88e2ad`, chain 81457)
- ImmutableCreate2Factory (`0x000000...439497`, chain 81457)
- L1ChugSplashProxy (`0x3a05e5...a49115`, chain 1)
- L1ChugSplashProxy (`0x697402...bfc524`, chain 1)
- L1ChugSplashProxy (`0x98078d...e1c8fe`, chain 1)
- L1ChugSplashProxy (`0xa23028...828438`, chain 1)
- Multicall3 (`0xca11bd...76ca11`, chain 81457)
- OptimismMintableERC20 (`0xf7bc58...1d2692`, chain 81457)
- Proxy (`0x0ec68c...0db6cb`, chain 1)
- Proxy (`0x826d1b...215c76`, chain 1)
- Proxy (`0x420000...000007`, chain 81457)
- Proxy (`0x420000...000010`, chain 81457)
- Proxy (`0x420000...000012`, chain 81457)
- Proxy (`0x420000...000016`, chain 81457)
- Proxy (`0x420000...000023`, chain 81457)
- Proxy (`0x430000...000005`, chain 81457)
- ResolvedDelegateProxy (`0x5d4472...a8e9d0`, chain 1)

## Contract Surface Quality

- Indexed contracts: 20; live-surface contracts included: 20 (20 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 35/74 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 9/18 (50.0%)
- Coverage assessment: partial (medium confidence) — Coverage is calculated only over confirmed own address-book implementations; review inventory is reported separately and included in the conservative percentage where live and verified.
- Address-book implementation classification: 33 own, 9 exact-address-book context/dependencies excluded, 2 exact-address-book entries needing review
- Outside the address book: 15 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 13
- Deployed-live implementations: 35 of 59 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 9/18
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 59
- Raw deployments: 63
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $569.61
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: 50.0% (OpenZeppelin, Trail of Bits)
- Note: This protocol is classified as [declining]. ASD of $569.61 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 9 | 50.0% | 2022-09 |
| Trail of Bits | Tier 1 | 3 | 16.7% | 2023-01 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| L1CrossDomainMessenger | unknown | project_anchor | own_supporting | 1 | ethereum | unit-230691 | `0x5d4472...a8e9d0` | ✅ Audited |
| L1ERC721Bridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-230689 | `0xa45a0c...9c8975` | ✅ Audited |
| L1StandardBridge | bridge_template | project_anchor | own_supporting | 1 | ethereum | unit-230693 | `0x697402...bfc524` | ✅ Audited |
| L2CrossDomainMessenger | unknown | project_anchor | own_supporting | 1 | blast | unit-230696 | `0x420000...000007` | ✅ Audited |
| L2OutputOracle | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-230688 | `0x826d1b...215c76` | ✅ Audited |
| L2StandardBridge | operational_periphery | project_anchor | own_supporting | 1 | blast | unit-230697 | `0x420000...000010` | ✅ Audited |
| L2ToL1MessagePasser | unknown | project_anchor | own_supporting | 1 | blast | unit-230699 | `0x420000...000016` | ✅ Audited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | blast | unit-230687 | `0xf7bc58...1d2692` | ✅ Audited |
| OptimismPortal | unknown | project_anchor | own_supporting | 1 | ethereum | unit-230692 | `0x0ec68c...0db6cb` | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GovernanceToken | token | project_anchor | own_supporting | 0 | blast | unit-230679 | `0xb1a570...88e2ad` | ⚠️ Unaudited |
| Create2Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13b0d8...e9bef2` | ⚠️ Unaudited |
| CreateX | unknown | project_anchor | needs_review (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xba5ed0...8ba5ed`; blast `0xba5ed0...8ba5ed` | ⚠️ Unaudited |
| DSRYieldProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230627 | `0x0733f6...3681a8` | ⚠️ Unaudited |
| ETHYieldManager | bridge_template | project_anchor | own_supporting | 1 | ethereum | unit-230695 | `0x98078d...e1c8fe` | ⚠️ Unaudited |
| ImmutableCreate2Factory | registry | project_anchor | own_supporting | 0 | ethereum | n/a | 3 deployments: ethereum `0x000000...439497`; ethereum `0xcfa3a7...315196`; blast `0x000000...439497` | ⚠️ Unaudited |
| L1BlastBridge | bridge_template | project_anchor | own_supporting | 1 | ethereum | unit-230690 | `0x3a05e5...a49115` | ⚠️ Unaudited |
| L2BlastBridge | operational_periphery | project_anchor | own_supporting | 1 | blast | unit-230700 | `0x430000...000005` | ⚠️ Unaudited |
| Multicall3 | periphery | project_anchor | needs_review (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xca11bd...76ca11`; blast `0xca11bd...76ca11` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | project_anchor | own_supporting | 1 | blast | unit-230698 | `0x420000...000012` | ⚠️ Unaudited |
| Proxy | proxy | project_anchor | own_supporting | 0 | blast | unit-230659 | `0x420000...000023` | ⚠️ Unaudited |
| USDYieldManager | bridge_template | project_anchor | own_supporting | 1 | ethereum | unit-230694 | `0xa23028...828438` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (38)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26b1b9...6c7d08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2757e4...98c8c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x311ff7...41bd8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000024` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230628 | `0x4316a0...1af7db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a0d94...406d12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f11f7...43a385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9338f2...c96333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x993385...05ff37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc644cc...37dca8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeda8d...8e122f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed530b...f89fa5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230651 | `0x13b0d8...e9bef2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230656 | `0x420000...000014` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230657 | `0x420000...000017` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230658 | `0x420000...000022` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230660 | `0x420000...000024` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230661 | `0x430000...000002` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230662 | `0x430000...000003` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230663 | `0x430000...000004` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230665 | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230669 | `0x7a0d94...406d12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230673 | `0x96f6b7...23139c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230676 | `0x9d020b...eb9af7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230681 | `0xc0d3c0...d30002` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230684 | `0xcfa3a7...315196` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230629 | `0x26b1b9...6c7d08` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230630 | `0x2757e4...98c8c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230631 | `0x311ff7...41bd8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230641 | `0x7f11f7...43a385` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230642 | `0x9338f2...c96333` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230643 | `0x993385...05ff37` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230644 | `0xc644cc...37dca8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230645 | `0xdeda8d...8e122f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230646 | `0xed530b...f89fa5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2022_05-Bedrock_Contracts-Zeppelin.pdf](https://github.com/BLASTchain/blast/blob/master/docs/security-reviews/2022_05-Bedrock_Contracts-Zeppelin.pdf) | OpenZeppelin | Audit | 2022-05 | stale | Direct | contract_name | matched | 7 | 5 | 0 | 3 | low |
| [2022_09-Bedrock_and_Periphery-Zeppelin.pdf](https://github.com/BLASTchain/blast/blob/master/docs/security-reviews/2022_09-Bedrock_and_Periphery-Zeppelin.pdf) | OpenZeppelin | Audit | 2022-09 | stale | Direct | contract_name | matched | 9 | 8 | 0 | 10 | high |
| [2023_01-Bedrock_Updates-TrailOfBits.pdf](https://github.com/BLASTchain/blast/blob/master/docs/security-reviews/2023_01-Bedrock_Updates-TrailOfBits.pdf) | Trail of Bits | Audit | 2023-01 | stale | Direct | contract_name | matched | 3 | 3 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20655] 2022_05-Bedrock_Contracts-Zeppelin.pdf — matched: The report text is garbled and incomplete. No clear scope section or date found. Contract names inferred from findings and references.
- [20658] 2022_09-Bedrock_and_Periphery-Zeppelin.pdf — matched: All contracts listed in the Scope section of the audit report.
- [20661] 2023_01-Bedrock_Updates-TrailOfBits.pdf — matched: Extracted contracts from Project Targets and Project Coverage sections. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L1StandardBridge | own proxy deployment | L1ChugSplashProxy (proxy) (selected) `0x697402...bfc524` — deployed 2024-02-25 01:15:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L2StandardBridge | own proxy deployment | Proxy (proxy) (selected) `0x420000...000010` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L1OptimismPortal | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L2OutputOracle | own proxy deployment | Proxy (proxy) (selected) `0x826d1b...215c76` — deployed 2024-02-25 01:14:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | CrossDomainMessenger | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | StandardBridge | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | OptimismMintableERC20 | own contract | OptimismMintableERC20 (selected) `0xf7bc58...1d2692` — deployed 2024-03-19 23:38:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | OptimismPortal | own proxy deployment | Proxy (proxy) (selected) `0x0ec68c...0db6cb` — deployed 2024-02-25 01:14:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L1ERC721Bridge | own proxy deployment | Proxy (proxy) (selected) `0xa45a0c...9c8975` — deployed 2024-02-25 01:16:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L2ERC721Bridge | own contract | 0x420000… (selected) `0x420000...000014` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L1ChugSplashProxy | ambiguous — not counted | L1ChugSplashProxy (proxy) (alternative) `0x3a05e5...a49115` — deployed 2024-02-25 01:15:23+03 — liveness: live (current_address_book_code)<br>L1ChugSplashProxy (proxy) (alternative) `0xa23028...828438` — deployed 2024-02-25 01:15:47+03 — liveness: live (code_present_context)<br>L1ChugSplashProxy (proxy) (alternative) `0x697402...bfc524` — deployed 2024-02-25 01:15:11+03 — liveness: live (current_address_book_code)<br>L1ChugSplashProxy (proxy) (alternative) `0x98078d...e1c8fe` — deployed 2024-02-25 01:15:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | CrossDomainEnabled | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | Lib_PredeployAddresses | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L1CrossDomainMessenger | own proxy deployment | ResolvedDelegateProxy (proxy) (selected) `0x5d4472...a8e9d0` — deployed 2024-02-25 01:16:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L1StandardBridge | own proxy deployment | L1ChugSplashProxy (proxy) (selected) `0x697402...bfc524` — deployed 2024-02-25 01:15:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L2OutputOracle | own proxy deployment | Proxy (proxy) (selected) `0x826d1b...215c76` — deployed 2024-02-25 01:14:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | OptimismPortal | own proxy deployment | Proxy (proxy) (selected) `0x0ec68c...0db6cb` — deployed 2024-02-25 01:14:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | ResourceMetering | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L2CrossDomainMessenger | own proxy deployment | Proxy (proxy) (selected) `0x420000...000007` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L2StandardBridge | own proxy deployment | Proxy (proxy) (selected) `0x420000...000010` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L2ToL1MessagePasser | own proxy deployment | Proxy (proxy) (selected) `0x420000...000016` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | Hashing | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | Proxy | ambiguous — not counted | Proxy (proxy) (alternative) `0x430000...000005` — liveness: live (current_address_book_code)<br>Proxy (proxy) (alternative) `0xa45a0c...9c8975` — deployed 2024-02-25 01:16:59+03 — liveness: live (current_address_book_code)<br>Proxy (proxy) (alternative) `0x420000...000007` — liveness: live (current_address_book_code)<br>Proxy (proxy) (alternative) `0x0ec68c...0db6cb` — deployed 2024-02-25 01:14:35+03 — liveness: live (current_address_book_code)<br>Proxy (alternative) `0x420000...000023` — liveness: live (current_address_book_code)<br>Proxy (proxy) (alternative) `0x826d1b...215c76` — deployed 2024-02-25 01:14:47+03 — liveness: live (current_address_book_code)<br>Proxy (proxy) (alternative) `0x420000...000012` — liveness: live (current_address_book_code)<br>Proxy (proxy) (alternative) `0x420000...000010` — liveness: live (code_present_context)<br>Proxy (proxy) (alternative) `0x420000...000016` — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | ProxyAdmin | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | Semver | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | StandardBridge | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L1ERC721Bridge | own proxy deployment | Proxy (proxy) (selected) `0xa45a0c...9c8975` — deployed 2024-02-25 01:16:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L2ERC721Bridge | own contract | 0x420000… (selected) `0x420000...000014` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | SystemConfig | unmatched — not counted | — | listed in Project Coverage section as L1 SystemConfig contract | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | OptimismPortal | own proxy deployment | Proxy (proxy) (selected) `0x0ec68c...0db6cb` — deployed 2024-02-25 01:14:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | ResourceMetering | unmatched — not counted | — | mentioned in Coverage Limitations as updated contract | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | L2ToL1MessagePasser | own proxy deployment | Proxy (proxy) (selected) `0x420000...000016` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | L2OutputOracle | own proxy deployment | Proxy (proxy) (selected) `0x826d1b...215c76` — deployed 2024-02-25 01:14:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | MerkleTrie | unmatched — not counted | — | mentioned in Coverage Limitations as refactored library | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | CrossDomainMessenger | unmatched — not counted | — | mentioned in Coverage Limitations as minor changes | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | L1Block | unmatched — not counted | — | mentioned in Project Coverage section as predeployed L2 contract | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | `0xb1a570...88e2ad` | GovernanceToken | token | $569.61 | Verified native implementation with $569.61 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0733f6...3681a8` | DSRYieldProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x98078d...e1c8fe` | ETHYieldManager | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3a05e5...a49115` | L1BlastBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x430000...000005` | L2BlastBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x420000...000012` | OptimismMintableERC20Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa23028...828438` | USDYieldManager | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 1 |
| standard_library | 8 |
| needs_review | 35 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 19 own (16 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 16 unmatched
- Matched-own operational status: 19 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1
- Match method counts: unique_name=19

Fork inheritance lineage and inherited audits are included when available.
