# Agentic Audit Brief: ChainGPT

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: ChainGPT (`chaingpt`)
- Website: [https://pad.chaingpt.org/staking-pools](https://pad.chaingpt.org/staking-pools)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, bsc, ethereum, mantle, opbnb, polygon, scroll, sepolia, skale-titan-ai
- Contract surface: 43 unique implementations (43 raw deployments)
- Coverage basis: 1/34 confirmed own live verified implementations (2.9%); conservative 2.9% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,846,519.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for ChainGPT. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across arbitrum, avalanche, bsc, ethereum, mantle, opbnb, polygon, scroll, sepolia, skale-titan-ai. Structural roles: 3 supporting, 2 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: supporting (3), core (2)
- Contract kinds: contract (5)
- Detected standards: ownable (3), erc1967proxy (2), erc20 (1)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 41 contracts are derived from known codebases. 41 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xf276bf...7f5a4a`, chain 1)
- UnnamedContract (`0xc26336...f4e917`, chain 56)
- UnnamedContract (`0xf276bf...7f5a4a`, chain 137)
- UnnamedContract (`0xecbf91...1c07cb`, chain 204)
- UnnamedContract (`0xf276bf...7f5a4a`, chain 42161)
- UnnamedContract (`0xf276bf...7f5a4a`, chain 43114)
- BEP20Token (`0xe9e7ce...087d56`, chain 56)
- CGPTNFTBlacklist (`0xe1719a...ca57f6`, chain 1)
- CGPTNFTBlacklist (`0xe1719a...ca57f6`, chain 56)
- CGPTNFTBlacklist (`0xb2d648...8d5430`, chain 137)
- CGPTNFTBlacklist (`0xb2d648...8d5430`, chain 43114)
- CGPTNFTFactory (`0xecbf91...1c07cb`, chain 1)
- CGPTNFTFactory (`0x18b512...31a5af`, chain 56)
- CGPTNFTFactory (`0xecbf91...1c07cb`, chain 56)
- CGPTNFTFactory (`0x635918...0ed920`, chain 137)
- CGPTNFTFactory (`0xecbf91...1c07cb`, chain 137)
- CGPTNFTFactory (`0xecbf91...1c07cb`, chain 43114)
- CGPTNFTFactory (`0xfe6bf2...06e158`, chain 43114)
- ChainGPT (`0x984065...f00f98`, chain 56)
- create nfts (`0x4f132e...920d37`, chain 1350216234)
- DecubateVestingV2 (`0x3a5326...3662f7`, chain 56)
- ERC1967Proxy (`0x6b7ea1...21b84e`, chain 1)
- ERC1967Proxy (`0xe7bcb5...11d74d`, chain 1)
- ERC1967Proxy (`0x94e917...a8ff03`, chain 56)
- ERC1967Proxy (`0xb8c49c...3ffe95`, chain 56)
- ERC1967Proxy (`0xe7bcb5...11d74d`, chain 56)
- ERC1967Proxy (`0xf28c74...f89c04`, chain 56)
- ERC1967Proxy (`0xe7bcb5...11d74d`, chain 137)
- ERC1967Proxy (`0xe7bcb5...11d74d`, chain 204)
- ERC1967Proxy (`0xe7bcb5...11d74d`, chain 5000)
- ERC1967Proxy (`0xdaa9c9...5e39ee`, chain 42161)
- ERC1967Proxy (`0xe7bcb5...11d74d`, chain 43114)
- ERC1967Proxy (`0xe7bcb5...11d74d`, chain 534352)
- Membership (`0xdb6ab8...ae726a`, chain 1)
- Receiver (`0xe8c730...9b1242`, chain 1)
- Sender (`0x3da0fa...2a6af4`, chain 137)
- TransparentUpgradeableProxy (`0x259318...1c39aa`, chain 1)
- TransparentUpgradeableProxy (`0x5b1e72...340cfb`, chain 56)
- TransparentUpgradeableProxy (`0x62a402...88ccee`, chain 56)
- TransparentUpgradeableProxy (`0x765a6e...a8ed18`, chain 56)
- VoteContract (`0xb70af6...eab54c`, chain 56)

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 41/45 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/34 (2.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 41 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 15
- Deployed-live implementations: 41 of 43 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/34
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 43
- Raw deployments: 43
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 2.9% | 2026-01 |
| yAudit | Tier 2 | 1 | 2.9% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ChainGPT | unknown | project_anchor | own_supporting | 0 | bsc | unit-381785 | `0x984065...f00f98` | ✅ Audited |

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BEP20Token | unknown | project_anchor | own_supporting | 0 | bsc | unit-381789 | `0xe9e7ce...087d56` | ⚠️ Unaudited |
| BridgeMintableTokenV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381791 | `0x259318...1c39aa` | ⚠️ Unaudited |
| CGPTBurn | unknown | project_anchor | own_supporting | 1 | bsc | unit-381799 | `0x94e917...a8ff03` | ⚠️ Unaudited |
| CGPTNFTBlacklist | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381762 | `0xe1719a...ca57f6` | ⚠️ Unaudited |
| CGPTNFTBlacklist | unknown | project_anchor | own_supporting | 0 | bsc | unit-381788 | `0xe1719a...ca57f6` | ⚠️ Unaudited |
| CGPTNFTBlacklist | unknown | project_anchor | own_supporting | 0 | polygon | unit-381770 | `0xb2d648...8d5430` | ⚠️ Unaudited |
| CGPTNFTBlacklist | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381777 | `0xb2d648...8d5430` | ⚠️ Unaudited |
| CGPTNFTFactory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381793 | `0xe7bcb5...11d74d` | ⚠️ Unaudited |
| CGPTNFTFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381764 | `0xecbf91...1c07cb` | ⚠️ Unaudited |
| CGPTNFTFactory | unknown | project_anchor | own_supporting | 0 | bsc | unit-381782 | `0x18b512...31a5af` | ⚠️ Unaudited |
| CGPTNFTFactory | unknown | project_anchor | own_supporting | 1 | bsc | unit-381801 | `0xe7bcb5...11d74d` | ⚠️ Unaudited |
| CGPTNFTFactory | unknown | project_anchor | own_supporting | 0 | bsc | unit-381790 | `0xecbf91...1c07cb` | ⚠️ Unaudited |
| CGPTNFTFactory | unknown | project_anchor | own_supporting | 0 | polygon | unit-381769 | `0x635918...0ed920` | ⚠️ Unaudited |
| CGPTNFTFactory | unknown | project_anchor | own_supporting | 1 | polygon | unit-381794 | `0xe7bcb5...11d74d` | ⚠️ Unaudited |
| CGPTNFTFactory | unknown | project_anchor | own_supporting | 0 | polygon | unit-381771 | `0xecbf91...1c07cb` | ⚠️ Unaudited |
| CGPTNFTFactory | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-381796 | `0xdaa9c9...5e39ee` | ⚠️ Unaudited |
| CGPTNFTFactory | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381778 | `0xecbf91...1c07cb` | ⚠️ Unaudited |
| CGPTNFTFactory | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381780 | `0xfe6bf2...06e158` | ⚠️ Unaudited |
| DCBVault | core_logic | project_anchor | own_supporting | 1 | bsc | unit-381802 | `0x5b1e72...340cfb` | ⚠️ Unaudited |
| DecubateMasterChef | unknown | project_anchor | own_supporting | 1 | bsc | unit-381803 | `0x765a6e...a8ed18` | ⚠️ Unaudited |
| DecubateVestingV2 | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-381783 | `0x3a5326...3662f7` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | opbnb | unit-381795 | `0xe7bcb5...11d74d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | mantle | unit-381798 | `0xe7bcb5...11d74d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-381797 | `0xe7bcb5...11d74d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 0 | scroll | unit-381781 | `0xe7bcb5...11d74d` | ⚠️ Unaudited |
| Membership | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381761 | `0xdb6ab8...ae726a` | ⚠️ Unaudited |
| Membership | unknown | project_anchor | own_supporting | 1 | bsc | unit-381800 | `0xf28c74...f89c04` | ⚠️ Unaudited |
| PaymentBsc | unknown | project_anchor | own_supporting | 1 | bsc | unit-381804 | `0xb8c49c...3ffe95` | ⚠️ Unaudited |
| PaymentEth | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381792 | `0x6b7ea1...21b84e` | ⚠️ Unaudited |
| Receiver | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381763 | `0xe8c730...9b1242` | ⚠️ Unaudited |
| Sender | unknown | project_anchor | own_supporting | 0 | polygon | unit-381768 | `0x3da0fa...2a6af4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 1 | bsc | unit-381805 | `0x62a402...88ccee` | ⚠️ Unaudited |
| VoteContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-381786 | `0xb70af6...eab54c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| create nfts | unknown | project_anchor | own_supporting | 0 | skale-titan-ai | unit-381767 | `0x4f132e...920d37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381765 | `0xf276bf...7f5a4a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-381787 | `0xc26336...f4e917` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-381772 | `0xf276bf...7f5a4a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | opbnb | unit-381773 | `0xae41ef...8bd8d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | opbnb | unit-381775 | `0xecbf91...1c07cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381776 | `0xf276bf...7f5a4a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381779 | `0xf276bf...7f5a4a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-381766 | `0xf81421...da9ea5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Sample of Audit Report](https://app.chaingpt.org/assets/files/ExampleAudit.pdf) | yAudit | Audit | 2025-08 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [Yes, $CGPT has dual audits from [Certik]() and [Hacken](https://hacken.io/audits/chaingpt/).](https://skynet.certik.com/projects/chaingpt) | CertiK | Audit | 2026-01 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19636] Sample of Audit Report — matched: Only one contract (ChainGPT) is audited; no explicit scope section but contract name and file are clearly identified.
- [19637] Yes, $CGPT has dual audits from [Certik]() and [Hacken](https://hacken.io/audits/chaingpt/). — matched: Only one contract file (ChainGPT.sol) is explicitly listed in the audited files section. The report is from CertiK Skynet and the audit date is derived from 'Last Audit was delivered on 1/15/2026'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Sample of Audit Report | ChainGPT | own contract | ChainGPT (selected) `0x984065...f00f98` — deployed 2023-03-30 21:51:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yes, $CGPT has dual audits from [Certik]() and [Hacken](https://hacken.io/audits/chaingpt/). | ChainGPT | own contract | ChainGPT (selected) `0x984065...f00f98` — deployed 2023-03-30 21:51:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x5b1e72...340cfb` | DCBVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3a5326...3662f7` | DecubateVestingV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 39 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=2

Fork inheritance lineage and inherited audits are included when available.
