# Agentic Audit Brief: Elephant Money

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Elephant Money (`elephant-money`)
- Website: [https://elephant.money](https://elephant.money)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum
- Contract surface: 77 unique implementations (77 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $70,398,487.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Elephant Money. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 64 contract row(s) across bsc, ethereum. Structural roles: 35 unclassified, 22 core, 7 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 64
- Structural roles: unclassified (35), core (22), supporting (7)
- Contract kinds: contract (64)
- Detected standards: ownable (19), erc20 (9), erc20permit (3), accesscontrol (1), chainlinkaggregator (1), erc165 (1), erc721 (1)
- Frameworks: openzeppelin (25)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 64; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 77 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 77
- Raw deployments: 77
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (64)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdministrativeNFTMinter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236774 | `0xa94211...2a8ee4` | ⚠️ Unaudited |
| AprForwardingTreasuryStrategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236726 | `0x01fb38...6ae484` | ⚠️ Unaudited |
| BackedForwardingPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236768 | `0x99c919...ea8f05` | ⚠️ Unaudited |
| BEP20Token | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236796 | `0xe9e7ce...087d56` | ⚠️ Unaudited |
| BiswapRouter02 | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236741 | `0x3a6d8c...350dd8` | ⚠️ Unaudited |
| BNBReserveStrategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236786 | `0xcccc27...51b43c` | ⚠️ Unaudited |
| BotGasStation | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236783 | `0xc4d9b0...6778b9` | ⚠️ Unaudited |
| BulkNFTMinter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236727 | `0x029a89...fb606a` | ⚠️ Unaudited |
| Depot | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236732 | `0x1a6a71...7e68a5` | ⚠️ Unaudited |
| DODOV2Proxy02 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236766 | `0x8f8dd7...d58486` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236728 | `0x0567f2...d42aee` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236735 | `0x264990...ca5ebf` | ⚠️ Unaudited |
| Elephant | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236795 | `0xe283d0...92f688` | ⚠️ Unaudited |
| ElephantDollar | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236793 | `0xdd325c...1a70e0` | ⚠️ Unaudited |
| ElephantMarketPlace | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236744 | `0x4d1e19...802b7c` | ⚠️ Unaudited |
| ElephantMarketPlace | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236780 | `0xb6c05c...ae42ea` | ⚠️ Unaudited |
| ElephantMoneyUnlimitedNFT | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236781 | `0xb92afe...ab3198` | ⚠️ Unaudited |
| ElephantNFTStaking | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236769 | `0x9a372c...8ec4da` | ⚠️ Unaudited |
| ElephantNFTStaking | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236779 | `0xb2b1d8...1c4fb3` | ⚠️ Unaudited |
| ElephantNFTTraitTracker | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236787 | `0xce1b79...2824f1` | ⚠️ Unaudited |
| ElephantPoolDistributor | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236749 | `0x612ce9...4cccba` | ⚠️ Unaudited |
| ElephantRouterProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236797 | `0xeaad13...253fa9` | ⚠️ Unaudited |
| FarmEngine | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236771 | `0xa3473f...ab3281` | ⚠️ Unaudited |
| FuturesActionVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236748 | `0x5c5778...d436ae` | ⚠️ Unaudited |
| FuturesEngine | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236755 | `0x6c81fd...e1a1ee` | ⚠️ Unaudited |
| FuturesNFTMigrationVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236770 | `0x9ae4de...8ff408` | ⚠️ Unaudited |
| FuturesRDFVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236773 | `0xa8e3ee...535b3e` | ⚠️ Unaudited |
| FuturesVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236776 | `0xaeb9b3...77fcd2` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-236800 | `0xd5d371...bac644` | ⚠️ Unaudited |
| NFTMarketplaceHelper | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236757 | `0x6f4318...ca3248` | ⚠️ Unaudited |
| NFTSalesTracker | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236737 | `0x2aefa3...d8ce12` | ⚠️ Unaudited |
| PancakePair | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236733 | `0x1cea83...195ce1` | ⚠️ Unaudited |
| PancakePair | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236745 | `0x4e90f5...4b861b` | ⚠️ Unaudited |
| PancakePair | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236799 | `0xf15a72...e0aede` | ⚠️ Unaudited |
| PancakeRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236731 | `0x10ed43...56024e` | ⚠️ Unaudited |
| PcsSnapshotTwapOracle | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236746 | `0x5606ee...326d3c` | ⚠️ Unaudited |
| PerformanceFund | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236789 | `0xd23d87...d412ac` | ⚠️ Unaudited |
| PerformanceFundV3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236729 | `0x060044...d96162` | ⚠️ Unaudited |
| ReferralData | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236750 | `0x6248d9...e1ea4a` | ⚠️ Unaudited |
| SafeElephantNFTMinter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236736 | `0x29a833...a45c06` | ⚠️ Unaudited |
| StampedeEngine | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236794 | `0xdd8ad4...7b68a8` | ⚠️ Unaudited |
| StampedeMigrationEngine | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236742 | `0x49241e...b02400` | ⚠️ Unaudited |
| SuperCharger | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236798 | `0xec8c93...6d7305` | ⚠️ Unaudited |
| Treasury | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236738 | `0x2da1a9...b5267d` | ⚠️ Unaudited |
| Treasury | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236767 | `0x98f6c7...87fc92` | ⚠️ Unaudited |
| Treasury | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236775 | `0xacef13...37bfdd` | ⚠️ Unaudited |
| Treasury | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236777 | `0xaf0980...fbb4fc` | ⚠️ Unaudited |
| Treasury | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236784 | `0xc6a42b...6d18bb` | ⚠️ Unaudited |
| Treasury | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236785 | `0xcb5a02...ce8ce4` | ⚠️ Unaudited |
| Treasury | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236791 | `0xd3b4fb...bc6fdf` | ⚠️ Unaudited |
| Treasury | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236792 | `0xd9de89...00ec3e` | ⚠️ Unaudited |
| Trumpet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236747 | `0x574a69...47e073` | ⚠️ Unaudited |
| TrunkElephantLiquidityBridge | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236762 | `0x7cb957...b64b04` | ⚠️ Unaudited |
| TRUNKSupportTreasuryStrategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236788 | `0xcecba4...174587` | ⚠️ Unaudited |
| Turbine | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236752 | `0x69c714...2f2d86` | ⚠️ Unaudited |
| Turbine | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236756 | `0x6de7de...20a51d` | ⚠️ Unaudited |
| TurbineProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236739 | `0x2e390c...a2cb89` | ⚠️ Unaudited |
| TurbineProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236754 | `0x6beadd...42ded1` | ⚠️ Unaudited |
| Vault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236759 | `0x71b00a...5938ed` | ⚠️ Unaudited |
| WBNB | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236782 | `0xbb4cdb...bc095c` | ⚠️ Unaudited |
| WELEPHANT | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236734 | `0x241f21...87cdca` | ⚠️ Unaudited |
| WELEPHANT | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236772 | `0xa546d0...4d8e47` | ⚠️ Unaudited |
| WElephantRouterProxy | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236778 | `0xb247c1...422d15` | ⚠️ Unaudited |
| Whitelist | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236740 | `0x3064cd...85ed97` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x000000...000000` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x000000...000001` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236730 | `0x0b3ddb...3ffe11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236743 | `0x4c6471...5c09d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236751 | `0x6839e2...a82dbf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236753 | `0x6b5081...74c181` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236758 | `0x708115...5813d2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236760 | `0x7b68a2...278018` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236761 | `0x7c7990...5a5569` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236763 | `0x7d908c...385043` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236764 | `0x8ce535...f48da5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236765 | `0x8cf0a5...ab5740` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236790 | `0xd35c54...943e43` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [sourcehat.com/audits/ElephantMoney](https://sourcehat.com/audits/ElephantMoney) | SourceHat | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf](https://elephant.money/media/PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4640] sourcehat.com/audits/ElephantMoney — no match: No reason recorded
- [4641] PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf — no match: Two contracts explicitly named in scope: ElephantReserve and Stampede. Audit date found on cover page and in basic information table.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| sourcehat.com/audits/ElephantMoney | BankrollNetworkStack | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | Elephant | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | ElephantDollar | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | ElephantDollarDistributor | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | ElephantGraveyard | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | ElephantLiquidityDrive | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | ElephantPoolDistributor | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | ElephantReserve | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | Treasury | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | Whitelist | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf | ElephantReserve | unmatched — not counted | — | listed in scope table and throughout report | no |
| PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf | Stampede | unmatched — not counted | — | listed in scope table and throughout report | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 63 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 12 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [4640] sourcehat.com/audits/ElephantMoney
- [4641] PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf

Fork inheritance lineage and inherited audits are included when available.
