# Agentic Audit Brief: Falcon Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Falcon Finance (`falcon-finance`)
- Website: [https://app.falcon.finance](https://app.falcon.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum
- Contract surface: 34 unique implementations (34 raw deployments)
- Coverage basis: 1/6 confirmed own live verified implementations (16.7%); conservative 16.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,254,791,222.23
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Falcon Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across bsc, ethereum. Structural roles: 3 core, 2 supporting, 1 infra. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (3), supporting (2), infra (1)
- Contract kinds: contract (5), abstract (1)
- Detected standards: accesscontrol (3), erc165 (3), erc1967proxy (2), erc20 (2), erc20permit (1), pausable (1)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (2), chainlink (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BurnMintERC20 (`0xac23b90a79504865d52b49b327328411a23d4db2`, chain 56)
- FF (`0xfa1c09fc8b491b6a4d3ff53a10cad29381b3f949`, chain 1)
- StakedFF (`0x1a0c3ffcbd101c6f2f6650ded9964c4a568c4d72`, chain 1)
- StakingRewards (`0x1e7ffb2cc2b0d9672b3e615dd5669c06f8673cae`, chain 1)
- StakingRewardsDistributor (`0x8af2efa47efb2095b80d82577c597186ea2fffea`, chain 1)
- TransparentUpgradeableProxy (`0x383b5123b55f5ef823080c0c9e9bb58ffefd2c5e`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/6 (16.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 28 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 6 of 34 unique; 28 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/34
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 34
- Raw deployments: 34
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 2.9% | 2025-02 |
| Zellic | Tier 2 | 1 | 2.9% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| StakingRewardsDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239780 | `0x8af2efa47efb2095b80d82577c597186ea2fffea` | ✅ Audited |

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlledOCR2Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00f0efb3d9dbe7fe91fee44ae09dae5dfa65c382` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000bcfdc448754b25f8e8afd5fc1fcc259d7e1bc` | ⚠️ Unaudited |
| BurnMintERC20 | unknown | project_anchor | own_supporting | 0 | bsc | unit-239782 | `0xac23b90a79504865d52b49b327328411a23d4db2` | ⚠️ Unaudited |
| BurnMintERC677 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e34bfc2872534c331b6db2e4b3593fa7eaeddfd` | ⚠️ Unaudited |
| BurnMintTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x470ed414d305d2c784501cc68e086e3b59d6e51e` | ⚠️ Unaudited |
| Claim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1178c6a8e2600f0e9bafbc5e5677fe10805f05e3` | ⚠️ Unaudited |
| ClaimNoVestFull | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc78d8097862723a66baab6a84716745e2ffdb2b4` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04f84020fdf10d9ee64d1dcc2986edf2f556da11` | ⚠️ Unaudited |
| FalconBundler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2919a6255a697e9ba0550aa573a0c47e0c9c043d` | ⚠️ Unaudited |
| FalconPosition | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2a382c429668fcf4fd85371fc690fd27ddf5562e` | ⚠️ Unaudited |
| FF | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239781 | `0xfa1c09fc8b491b6a4d3ff53a10cad29381b3f949` | ⚠️ Unaudited |
| FFSilo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25faec314e00c9704d85c8a563355077bc17b1bd` | ⚠️ Unaudited |
| FunctionsClientUpgradeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03b1b16e7c016f881783674aa6b24fc21d70d29f` | ⚠️ Unaudited |
| FunctionsCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3503b2a4692f62dd2c5d4c0a6546fb50ba579acf` | ⚠️ Unaudited |
| HeartbeatRequester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4822d77a2d328115c4edebe1c82f313b28f8c315` | ⚠️ Unaudited |
| Incubator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ffddd6f21d57f3949ba7a5e654b475d1d184217` | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05ddab21b57d0dca8c3955c366526a229577558e` | ⚠️ Unaudited |
| PerryEgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ef9ec92032b77f3da6fa066b046bcae7fe6724c` | ⚠️ Unaudited |
| PerryShop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf39a094bc84ac25a82b15f155916b40b5aa7b40d` | ⚠️ Unaudited |
| PreCollateralizedMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a4f41dac6000a59b79669b9356b5eb71bf4cc59` | ⚠️ Unaudited |
| StakedFF | unknown | project_anchor | own_supporting | 1 | ethereum | unit-239783 | `0x1a0c3ffcbd101c6f2f6650ded9964c4a568c4d72` | ⚠️ Unaudited |
| StakedUSDf | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d132bee412e6619a4863aeedad97541bfda3f34` | ⚠️ Unaudited |
| StakingRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239779 | `0x1e7ffb2cc2b0d9672b3e615dd5669c06f8673cae` | ⚠️ Unaudited |
| StakingRewardsDistributorFF | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c36526f412ea008994669b3406a856463abb41f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-239784 | `0x383b5123b55f5ef823080c0c9e9bb58ffefd2c5e` | ⚠️ Unaudited |
| USDf | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3adf34c09dac24e4baefb1b1df4c2992edc2b789` | ⚠️ Unaudited |
| USDfSilo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb1a55f406c1dc08f017ce8f424b178a5b0667e7` | ⚠️ Unaudited |
| VestingClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8210c0634ab8f273806e4b7866e9db353773c44b` | ⚠️ Unaudited |
| VestingClaimV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c3acd262ea9a91fb784394c26c93bc2ce31d606` | ⚠️ Unaudited |
| ViewVestingClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39f2e28be7ccb03f99493a730be61cdd5122a426` | ⚠️ Unaudited |
| ViewVestingClaimV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45e229e9d958e8801d3c2d806efb8c785a6c7064` | ⚠️ Unaudited |
| VRFV2PlusWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02aae1a04f9828517b3007f83f6181900cad910c` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe31f2f039c64a45bea475c47afa4a00b8a70d527` | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [View Report](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FmRfqjzWAD6asMoqA8yG5%2Fuploads%2FdGS5gS3aRg3IbmdVoLq0%2FFalcon%20Finance%20-%20Zellic%20Audit%20Report%20(1).pdf?alt=media) | Zellic | Audit | 2025-03 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [View Report](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FmRfqjzWAD6asMoqA8yG5%2Fuploads%2FM3kB8g0TJ84fBjjTO0uU%2FFalcon-security-review_2025-02-17%20(1).pdf?alt=media) | unknown | Audit | 2025-02 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |
| [View Report](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FmRfqjzWAD6asMoqA8yG5%2Fuploads%2FEYu99VNf3cmaMs2u0yR2%2FFalcon%20Finance%20FF%20-%20Zellic%20Audit%20Report.pdf?alt=media) | Zellic | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17205] View Report — matched: Scope section lists target 'falcon-contracts-evm' repository with 'src/*' programs. All contracts are in src/ directory. Audit date is March 7, 2025 from cover page.
- [17206] View Report — matched: Scope section explicitly lists 8 contracts. Audit date is the end date of the engagement period.
- [17207] View Report — no match: The audit scope is the Falcon Finance FF token contract, implemented using OpenZeppelin ERC20 with ERC20Permit. The contract name is 'FF' as per the scope table and system design section.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| View Report | ClassicMinterV1 | unmatched — not counted | — | Threat Model section lists module ClassicMinterV1.sol | no |
| View Report | FalconBundler | unmatched — not counted | — | Threat Model section lists module FalconBundler.sol | no |
| View Report | FalconPosition | unmatched — not counted | — | Threat Model section lists module FalconPosition.sol; findings target FalconPosition | no |
| View Report | PreCollateralizedMinter | unmatched — not counted | — | Threat Model section lists module PreCollateralizedMinter.sol | no |
| View Report | StakedUSDf | unmatched — not counted | — | Threat Model section lists module StakedUSDf.sol; findings target StakedUSDf | no |
| View Report | USDfSilo | unmatched — not counted | — | Threat Model section lists module USDfSilo.sol | no |
| View Report | StakingRewardsDistributor | own contract | StakingRewardsDistributor (selected) `0x8af2efa47efb2095b80d82577c597186ea2fffea` — deployed 2025-02-10 22:24:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View Report | ClassicMinterV1 | unmatched — not counted | — | listed in scope | no |
| View Report | FalconBundler | unmatched — not counted | — | listed in scope | no |
| View Report | FalconPosition | unmatched — not counted | — | listed in scope | no |
| View Report | PreCollateralizedMinter | unmatched — not counted | — | listed in scope | no |
| View Report | StakedUSDf | unmatched — not counted | — | listed in scope | no |
| View Report | StakingRewardsDistributor | own contract | StakingRewardsDistributor (selected) `0x8af2efa47efb2095b80d82577c597186ea2fffea` — deployed 2025-02-10 22:24:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View Report | USDf | unmatched — not counted | — | listed in scope | no |
| View Report | USDfSilo | unmatched — not counted | — | listed in scope | no |
| View Report | FF | ambiguous — not counted | FF (alternative) `0xfa1c09fc8b491b6a4d3ff53a10cad29381b3f949` — deployed 2025-09-19 21:15:47+03 — liveness: live (code_present_context)<br>BurnMintERC20 (alternative) `0xac23b90a79504865d52b49b327328411a23d4db2` — deployed 2025-09-23 15:52:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0xac23b90a79504865d52b49b327328411a23d4db2` | BurnMintERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfa1c09fc8b491b6a4d3ff53a10cad29381b3f949` | FF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1a0c3ffcbd101c6f2f6650ded9964c4a568c4d72` | StakedFF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1e7ffb2cc2b0d9672b3e615dd5669c06f8673cae` | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 13 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: unique_name=2

Zero-match audit list:

- [17207] View Report

Fork inheritance lineage and inherited audits are included when available.
