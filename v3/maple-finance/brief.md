# Agentic Audit Brief: Maple Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 29 (0 matched; 29 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Maple Finance (`maple-finance`)
- Website: [https://www.maple.finance](https://www.maple.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, sepolia
- Contract surface: 43 unique implementations (43 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $6,696,956,834.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Maple Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x134cca...f8df76`, chain 1)
- UnnamedContract (`0x191ac1...943849`, chain 1)
- UnnamedContract (`0x1bc47a...07cfe3`, chain 1)
- UnnamedContract (`0x356b8d...d5ba7d`, chain 1)
- UnnamedContract (`0x80ac24...f5cc0b`, chain 1)
- UnnamedContract (`0x86ebdf...29eb8c`, chain 1)
- UnnamedContract (`0x87b65c...c3cd7a`, chain 1)
- UnnamedContract (`0xa0b869...06eb48`, chain 1)
- UnnamedContract (`0xaf63c0...c5fd79`, chain 1)
- UnnamedContract (`0xbe10ad...13d8b3`, chain 1)
- UnnamedContract (`0xdac17f...831ec7`, chain 1)
- UnnamedContract (`0xe34316...95491d`, chain 1)
- UnnamedContract (`0xf00747...1e5ee2`, chain 1)

## Contract Surface Quality

- Indexed contracts: 0; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/22 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 13 own, 9 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 21 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 13 of 43 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 43
- Raw deployments: 43
- Audits discovered: 27 (27 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/maple/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 7 fresh, 5 aging, 13 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlledAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00c7a3...275446` | ⚠️ Unaudited |
| AggregatorFacade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x057e26...0627ba` | ⚠️ Unaudited |
| ArbitrumValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31982c...c38ac1` | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e1b5a...d67f6b` | ⚠️ Unaudited |
| CPoR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x575a16...f28c51` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x010eef...29d14c` | ⚠️ Unaudited |
| FeedRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47fb25...ceeedf` | ⚠️ Unaudited |
| Flags | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24ec84...3bdabf` | ⚠️ Unaudited |
| KeeperRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c8b4d...d63698` | ⚠️ Unaudited |
| MapleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x643c4e...f52d66` | ⚠️ Unaudited |
| MapleTokenInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe4a4f...4b30fc` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c9499...ad8f2c` | ⚠️ Unaudited |
| MplUserActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59371c...b6c183` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fc84a...546ebe` | ⚠️ Unaudited |
| PriceConsumer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f7d99...22f242` | ⚠️ Unaudited |
| RecapitalizationModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dfe04...b3f69d` | ⚠️ Unaudited |
| SimpleReadAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a9d21...82700d` | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x641b69...89dfe6` | ⚠️ Unaudited |
| SyrupDrip | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x509712...e986ea` | ⚠️ Unaudited |
| ValidatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x264bdd...d50236` | ⚠️ Unaudited |
| xMPL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5458a2...f78ab7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388927 | `0x134cca...f8df76` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388928 | `0x191ac1...943849` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388929 | `0x1bc47a...07cfe3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388930 | `0x356b8d...d5ba7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388931 | `0x80ac24...f5cc0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388932 | `0x86ebdf...29eb8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388933 | `0x87b65c...c3cd7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388934 | `0xa0b869...06eb48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388935 | `0xaf63c0...c5fd79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388936 | `0xbe10ad...13d8b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388937 | `0xdac17f...831ec7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388938 | `0xe34316...95491d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388939 | `0xf00747...1e5ee2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388940 | `0x0b7039...191918` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388941 | `0x2d8d21...375ac1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388942 | `0x2ff610...b844b6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388943 | `0x5387ab...73b020` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388944 | `0x658dae...4df0a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388945 | `0x7679cb...023c0b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388946 | `0xbbe2bf...0ae1d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388947 | `0xc40e5d...5bb8ed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388948 | `0xd3baaf...c8432b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/maple/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [`2022-08 - Trail of Bits Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2022-december/TrailOfBits-Maple.pdf) | Trail of Bits | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [`2022-10 - Spearbit Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2022-december/Spearbit-maple.pdf) | Spearbit | Audit | 2023-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | n/a |
| [`2022-10 - Three Sigma Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2022-december/Three-Sigma-Maple-Finance-Dec-2022.pdf) | Spearbit | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [`2023-06 - Cantina Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2023-june/Cantina-Maple.pdf) | Spearbit | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [`2023-04 - Three Sigma Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2023-june/Three-Sigma-Maple-Finance-Jun-2023.pdf) | Spearbit | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [`2023-11 - Three Sigma Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2023-december/Three-Sigma-Maple-Finance-Dec-2023.pdf) | Three Sigma | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [`2023-11 - 0xMacro Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2023-december/0xMacro-Maple-Finance-Dec-2023.pdf) | 0xMacro | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [`2024-08 - Three Sigma Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2024-august/Three-Sigma-Maple-Finance-Aug-2024.pdf) | Three Sigma | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [`2024-08 - 0xMacro Report` (also discovered via alternate URL)](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2024-august/0xMacro-Maple-Finance-Aug-2024.pdf) | 0xMacro | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [`2024-05 - Three Sigma Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2024-august/Three-Sigma-Maple-Finance-Aug-2024-Syrup.pdf) | 0xMacro | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [`2024-12 - Three Sigma Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2024-december/Three-Sigma-Maple-Finance-Dec-2024%20.pdf) | Three Sigma | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [`2024-12 - 0xMacro Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2024-december/0xMacro-Maple-Finance-Dec-2024.pdf) | 0xMacro | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [`2025-09 - Sherlock Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2025-sept-governor-timelock/Sherlock-Maple-Finance-timelock-Sept-2025.pdf) | Sherlock | Contest | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [`2025-09 - 0xMacro Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2025-sept-governor-timelock/0xMacro-Maple-Finance-timelock-Sept-2025.pdf) | 0xMacro | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [`2025-11 - Spearbit Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2025-november/Spearbit-Maple-Finance-WM-Nov-2025.pdf) | Spearbit | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [`2025-11 - Sherlock Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2025-november/Sherlock-Maple-Finance-WM-Nov-2025.pdf) | Sherlock | Contest | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [`2025-11 - Dedaub Report`](https://github.com/maple-labs/maple-cross-chain-receiver/blob/main/audits/2025-november/Dedaub-Chainlink-Maple.pdf) | Dedaub | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [`2026-01 - Sigma Prime Report`](https://github.com/maple-labs/maple-cross-chain-receiver/blob/main/audits/2026-january/SigmaPrime-Chainlink-Maple.pdf) | Sigma Prime | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [here](https://docs.google.com/viewer?url=https://github.com/maple-labs/maple-v2-audits/files/10223545/Maple.Finance.v2.-.Spearbit.pdf) | Spearbit | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [2022-december](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2022-december) | unknown | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2025-november](https://github.com/maple-labs/maple-cross-chain-receiver/blob/main/audits/2025-november) | unknown | Audit | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [CantinaManaged-maplev2-report.pdf](https://github.com/maple-labs/mplv2/blob/main/audits/CantinaManaged-maplev2-report.pdf) | Spearbit | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [ThreeSigma-MapleV2-Token-Audit.pdf](https://github.com/maple-labs/mplv2/blob/main/audits/ThreeSigma-MapleV2-Token-Audit.pdf) | Three Sigma | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [**Designed by Maple, in partnership with leading 3rd parties**: The team at Room40 are experts in trading treasuries and will trade, custody and clear from an account with a regulated broker. Maple has a track record in providing secure and scalable products on top of best in class smart contract infrastructure and was recently awarded a 92% Safety Score by DeFi Safety [full report]().](https://www.defisafety.com/app/pqrs/533) | DeFi Safety | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2024-05-22 ThreeSigma Report](https://github.com/maple-labs/syrup-utils/blob/main/audits/ThreeSigma-MapleSyrupRouter.pdf) | ThreeSigma | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2024-08-23 - Three Sigma Report](https://github.com/maple-labs/syrup-utils/blob/main/audits/ThreeSigma-Maple-Finance-Aug-2024.pdf) | ThreeSigma | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17684] Active Bug Bounty Program — no match: The provided text is a bug bounty program description, not an audit report. No contracts are explicitly listed in scope; only a link to audit reports is given.
- [17685] `2022-08 - Trail of Bits Report` — no match: Extracted from Project Targets section (pages 9-10) and Project Coverage section (pages 11-12). The audit date is from the cover page and final delivery date.
- [17686] `2022-10 - Spearbit Report` — no match: No reason recorded
- [17687] `2022-10 - Three Sigma Report` — no match: Extracted contract names from scope section and findings. Audit date from engagement timeline (9 November 2022).
- [17688] `2023-06 - Cantina Report` — no match: Extracted contract names from findings context and scope summary. Audit date from cover page.
- [17689] `2023-04 - Three Sigma Report` — no match: Extracted 14 unique contract names from the scope section (pages 10-11) which lists contracts under 'V2 Private Protocol Contracts' with file paths and scope descriptions. Audit date derived from engagement timeline: 10 April to 21 April 2023, using end date.
- [17690] `2023-11 - Three Sigma Report` — no match: All contracts listed in the Scope section (pages 9-10) are extracted. Note: MapleWithdrawalManager appears in two different directories (Cyclical and Queue) but are separate contracts; both are included.
- [17691] `2023-11 - 0xMacro Report` — no match: Extracted 19 unique contract names from the scope table. Note: MapleWithdrawalManager appears twice (cyclical and queue modules) but is listed once in extracted_names. Audit date from cover page: December 15, 2023.
- [17692] `2024-08 - Three Sigma Report` — no match: Scope section lists 6 file paths; note that MapleLoan appears twice (fixed-term and open-term) but is the same contract name. Audit date is the end date of the engagement (23-08-2024).
- [17693] `2024-08 - 0xMacro Report` — no match: All contracts explicitly listed in the 'Source Code' section with file paths and SHA256 hashes.
- [17694] `2024-05 - Three Sigma Report` — no match: Scope section lists SyrupRouter.sol and SyrupRateProvider.sol. Audit dates: 21-05-2024 to 22-05-2024, end date used.
- [17695] `2024-12 - Three Sigma Report` — no match: Extracted 19 contract names from the scope table on page 9. Audit date from timeline: 25-11-24 to 6-12-24, using end date.
- [17696] `2024-12 - 0xMacro Report` — no match: All contracts listed in the 'Source Code' section of the audit report are included.
- [17697] `2025-09 - Sherlock Report` — no match: Scope section lists three files from two repositories. Audit date is September 8-10, 2025, so end date is 2025-09-10.
- [17698] `2025-09 - 0xMacro Report` — no match: Two contracts audited: GovernorTimelock and IGovernorTimelock. Audit date from title and introduction.
- [17699] `2025-11 - Spearbit Report` — no match: Scope table explicitly lists three contracts: MapleWithdrawalManager, MapleWithdrawalManagerMigratorV200, and SortedArray. Audit date is November 25, 2025 from the report header.
- [17700] `2025-11 - Sherlock Report` — no match: Scope section explicitly lists four files. Audit date range is October 22-29, 2025, so end date is 2025-10-29.
- [17701] `2025-11 - Dedaub Report` — no match: All contracts listed in the scope section of the audit report.
- [17702] `2026-01 - Sigma Prime Report` — no match: Scope section lists files at commit c125a61, including CCIPUniversalUpgradeable.sol (renamed to MapleCCIPReceiver.sol). Interfaces.sol is referenced in findings. Third-party libraries excluded.
- [17703] here — no match: Extracted from the executive summary and scope table on page 4, which lists repositories and commits for each contract module.
- [17704] 2022-december — no match: The provided text is a GitHub directory listing with PDF filenames but no actual audit report content. No contract names or dates could be extracted.
- [17705] 2025-november — no match: The provided text is a GitHub directory listing, not the actual audit report content. No contract names or audit date could be extracted.
- [17707] CantinaManaged-maplev2-report.pdf — no match: No explicit scope section; contracts inferred from findings context. Audit date from cover page: September 4, 2023.
- [17708] ThreeSigma-MapleV2-Token-Audit.pdf — no match: Scope section clearly lists contracts and interfaces under contracts/ and contracts/interfaces/. Audit date from timeline: 24-07-2023 to 28-07-2023, end date used.
- [17709] **Designed by Maple, in partnership with leading 3rd parties**: The team at Room40 are experts in trading treasuries and will trade, custody and clear from an account with a regulated broker. Maple has a track record in providing secure and scalable products on top of best in class smart contract infrastructure and was recently awarded a 92% Safety Score by DeFi Safety [full report](). — no match: The provided text is a navigation header for DeFiSafety's website, not an audit report. No contracts or audit date are identifiable.
- [17710] 2024-05-22 ThreeSigma Report — no match: Scope section explicitly lists SyrupRouter.sol and SyrupRateProvider.sol. Audit dates from 21-22 May 2024, end date used.
- [17711] 2024-08-23 - Three Sigma Report — no match: Scope section explicitly lists 6 file paths; two files named MapleLoan.sol in different directories.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| `2022-08 - Trail of Bits Report` | MapleGlobals | unmatched — not counted | — | listed in Project Targets and Project Coverage | no |
| `2022-08 - Trail of Bits Report` | MapleLoan | unmatched — not counted | — | listed in Project Targets and Project Coverage | no |
| `2022-08 - Trail of Bits Report` | LoanManager | unmatched — not counted | — | listed in Project Targets and Project Coverage | no |
| `2022-08 - Trail of Bits Report` | Pool | unmatched — not counted | — | listed in Project Targets and Project Coverage | no |
| `2022-08 - Trail of Bits Report` | PoolManager | unmatched — not counted | — | listed in Project Targets and Project Coverage | no |
| `2022-08 - Trail of Bits Report` | TransitionLoanManager | unmatched — not counted | — | listed in Project Coverage | no |
| `2022-08 - Trail of Bits Report` | WithdrawalManager | unmatched — not counted | — | listed in Project Targets and Project Coverage | no |
| `2022-08 - Trail of Bits Report` | Liquidator | unmatched — not counted | — | listed in Project Coverage | no |
| `2022-08 - Trail of Bits Report` | MapleLoanFeeManager | unmatched — not counted | — | mentioned in finding TOB-MPL-1 target | no |
| `2022-10 - Three Sigma Report` | PoolManager | unmatched — not counted | — | mentioned in findings | no |
| `2022-10 - Three Sigma Report` | MapleLoan | unmatched — not counted | — | mentioned in findings | no |
| `2022-10 - Three Sigma Report` | GlobalsV2 | unmatched — not counted | — | mentioned in findings | no |
| `2022-10 - Three Sigma Report` | Liquidator | unmatched — not counted | — | mentioned in findings | no |
| `2022-10 - Three Sigma Report` | LoanManager | unmatched — not counted | — | mentioned in findings | no |
| `2022-10 - Three Sigma Report` | WithdrawalManager | unmatched — not counted | — | mentioned in findings | no |
| `2022-10 - Three Sigma Report` | PoolManagerInitializer | unmatched — not counted | — | mentioned in findings | no |
| `2022-10 - Three Sigma Report` | TransitionLoanManager | unmatched — not counted | — | mentioned in findings | no |
| `2023-06 - Cantina Report` | MapleGlobals | unmatched — not counted | — | mentioned in findings context | no |
| `2023-06 - Cantina Report` | MapleLoan | unmatched — not counted | — | mentioned in findings context | no |
| `2023-06 - Cantina Report` | LoanManager | unmatched — not counted | — | mentioned in findings context | no |
| `2023-06 - Cantina Report` | PoolManager | unmatched — not counted | — | mentioned in findings context | no |
| `2023-06 - Cantina Report` | PoolDeployer | unmatched — not counted | — | mentioned in findings context | no |
| `2023-06 - Cantina Report` | Pool | unmatched — not counted | — | mentioned in findings context | no |
| `2023-06 - Cantina Report` | MapleLoanV5Migrator | unmatched — not counted | — | mentioned in findings context | no |
| `2023-06 - Cantina Report` | OpenTermRefinancer | unmatched — not counted | — | mentioned in findings context | no |
| `2023-04 - Three Sigma Report` | MapleLoan | unmatched — not counted | — | listed in scope table | no |
| `2023-04 - Three Sigma Report` | MapleLoanInitializer | unmatched — not counted | — | listed in scope table | no |
| `2023-04 - Three Sigma Report` | MapleLoanV5Migrator | unmatched — not counted | — | listed in scope table | no |
| `2023-04 - Three Sigma Report` | Refinancer | unmatched — not counted | — | listed in scope table | no |
| `2023-04 - Three Sigma Report` | LoanManager | unmatched — not counted | — | listed in scope table | no |
| `2023-04 - Three Sigma Report` | LoanManagerInitializer | unmatched — not counted | — | listed in scope table | no |
| `2023-04 - Three Sigma Report` | MapleGlobals | unmatched — not counted | — | listed in scope table | no |
| `2023-04 - Three Sigma Report` | MapleLoanFactory | unmatched — not counted | — | listed in scope table | no |
| `2023-04 - Three Sigma Report` | MapleRefinancer | unmatched — not counted | — | listed in scope table | no |
| `2023-04 - Three Sigma Report` | LoanManagerFactory | unmatched — not counted | — | listed in scope table | no |
| `2023-04 - Three Sigma Report` | Pool | unmatched — not counted | — | listed in scope table | no |
| `2023-04 - Three Sigma Report` | PoolDeployer | unmatched — not counted | — | listed in scope table | no |
| `2023-04 - Three Sigma Report` | PoolManager | unmatched — not counted | — | listed in scope table | no |
| `2023-04 - Three Sigma Report` | PoolManagerInitializer | unmatched — not counted | — | listed in scope table | no |
| `2023-11 - Three Sigma Report` | MapleGlobals | unmatched — not counted | — | listed in scope | no |
| `2023-11 - Three Sigma Report` | MapleLoan | unmatched — not counted | — | listed in scope | no |
| `2023-11 - Three Sigma Report` | MapleLoanFactory | unmatched — not counted | — | listed in scope | no |
| `2023-11 - Three Sigma Report` | MapleLoanV502Migrator | unmatched — not counted | — | listed in scope | no |
| `2023-11 - Three Sigma Report` | MapleWithdrawalManager | unmatched — not counted | — | listed in scope | no |
| `2023-11 - Three Sigma Report` | MapleWithdrawalManagerInitializer | unmatched — not counted | — | listed in scope | no |
| `2023-11 - Three Sigma Report` | MaplePoolManager | unmatched — not counted | — | listed in scope | no |
| `2023-11 - Three Sigma Report` | MaplePoolDeployer | unmatched — not counted | — | listed in scope | no |
| `2023-11 - Three Sigma Report` | MaplePoolManagerInitializer | unmatched — not counted | — | listed in scope | no |
| `2023-11 - Three Sigma Report` | MaplePoolManagerMigrator | unmatched — not counted | — | listed in scope | no |
| `2023-11 - Three Sigma Report` | MaplePoolManagerStorage | unmatched — not counted | — | listed in scope | no |
| `2023-11 - Three Sigma Report` | MaplePoolManagerWMMigrator | unmatched — not counted | — | listed in scope | no |
| `2023-11 - Three Sigma Report` | MaplePoolPermissionManager | unmatched — not counted | — | listed in scope | no |
| `2023-11 - Three Sigma Report` | MaplePoolPermissionManagerInitializer | unmatched — not counted | — | listed in scope | no |
| `2023-11 - Three Sigma Report` | MapleWPoolPermissionManagerStorage | unmatched — not counted | — | listed in scope | no |
| `2023-11 - Three Sigma Report` | MapleWithdrawalManagerFactory | unmatched — not counted | — | listed in scope | no |
| `2023-11 - Three Sigma Report` | MapleWithdrawalManagerStorage | unmatched — not counted | — | listed in scope | no |
| `2023-11 - 0xMacro Report` | MapleGlobals | unmatched — not counted | — | listed in scope table | no |
| `2023-11 - 0xMacro Report` | MapleLoan | unmatched — not counted | — | listed in scope table | no |
| `2023-11 - 0xMacro Report` | MapleLoanFactory | unmatched — not counted | — | listed in scope table | no |
| `2023-11 - 0xMacro Report` | MapleLoanV502Migrator | unmatched — not counted | — | listed in scope table | no |
| `2023-11 - 0xMacro Report` | MapleWithdrawalManager | unmatched — not counted | — | listed in scope table | no |
| `2023-11 - 0xMacro Report` | MapleWithdrawalManagerInitializer | unmatched — not counted | — | listed in scope table | no |
| `2023-11 - 0xMacro Report` | MaplePoolManager | unmatched — not counted | — | listed in scope table | no |
| `2023-11 - 0xMacro Report` | MaplePoolDeployer | unmatched — not counted | — | listed in scope table | no |
| `2023-11 - 0xMacro Report` | MaplePoolManagerInitializer | unmatched — not counted | — | listed in scope table | no |
| `2023-11 - 0xMacro Report` | MaplePoolManagerMigrator | unmatched — not counted | — | listed in scope table | no |
| `2023-11 - 0xMacro Report` | MaplePoolManagerStorage | unmatched — not counted | — | listed in scope table | no |
| `2023-11 - 0xMacro Report` | MaplePoolManagerWMMigrator | unmatched — not counted | — | listed in scope table | no |
| `2023-11 - 0xMacro Report` | MaplePoolPermissionManager | unmatched — not counted | — | listed in scope table | no |
| `2023-11 - 0xMacro Report` | MaplePoolPermissionManagerInitializer | unmatched — not counted | — | listed in scope table | no |
| `2023-11 - 0xMacro Report` | MaplePoolPermissionManagerStorage | unmatched — not counted | — | listed in scope table | no |
| `2023-11 - 0xMacro Report` | MapleWithdrawalManagerFactory | unmatched — not counted | — | listed in scope table | no |
| `2023-11 - 0xMacro Report` | MapleWithdrawalManagerStorage | unmatched — not counted | — | listed in scope table | no |
| `2024-08 - Three Sigma Report` | Migrator | unmatched — not counted | — | listed in scope | no |
| `2024-08 - Three Sigma Report` | SyrupDrip | unmatched — not counted | — | listed in scope | no |
| `2024-08 - Three Sigma Report` | SyrupUserActions | unmatched — not counted | — | listed in scope | no |
| `2024-08 - Three Sigma Report` | MPLUserActions | unmatched — not counted | — | listed in scope | no |
| `2024-08 - Three Sigma Report` | MapleLoan | unmatched — not counted | — | listed in scope | no |
| `2024-08 - 0xMacro Report` | MplUserActions | unmatched — not counted | — | listed in scope table | no |
| `2024-08 - 0xMacro Report` | SyrupDrip | unmatched — not counted | — | listed in scope table | no |
| `2024-08 - 0xMacro Report` | SyrupUserActions | unmatched — not counted | — | listed in scope table | no |
| `2024-08 - 0xMacro Report` | Migrator | unmatched — not counted | — | listed in scope table | no |
| `2024-08 - 0xMacro Report` | MapleLoan | unmatched — not counted | — | listed in scope table (two repositories) | no |
| `2024-08 - 0xMacro Report` | MapleLoanStorage | unmatched — not counted | — | listed in scope table (two repositories) | no |
| `2024-05 - Three Sigma Report` | SyrupRouter | unmatched — not counted | — | listed in scope | no |
| `2024-05 - Three Sigma Report` | SyrupRateProvider | unmatched — not counted | — | listed in scope | no |
| `2024-12 - Three Sigma Report` | MapleGlobals | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - Three Sigma Report` | MaplePoolManager | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - Three Sigma Report` | MaplePoolDeployer | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - Three Sigma Report` | MaplePool | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - Three Sigma Report` | MaplePoolDelegateCover | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - Three Sigma Report` | MaplePoolManagerInitializer | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - Three Sigma Report` | MaplePoolManagerStorage | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - Three Sigma Report` | MapleAbstractStrategy | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - Three Sigma Report` | MapleAaveStrategy | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - Three Sigma Report` | MapleSkyStrategy | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - Three Sigma Report` | MapleBasicStrategy | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - Three Sigma Report` | MapleStrategyFactory | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - Three Sigma Report` | MapleAaveStrategyInitializer | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - Three Sigma Report` | MapleAaveStrategyStorage | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - Three Sigma Report` | MapleSkyStrategyInitializer | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - Three Sigma Report` | MapleSkyStrategyStorage | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - Three Sigma Report` | MapleBasicStrategyInitializer | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - Three Sigma Report` | MapleBasicStrategyStorage | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - 0xMacro Report` | MapleAaveStrategy | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - 0xMacro Report` | MapleAbstractStrategy | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - 0xMacro Report` | MapleBasicStrategy | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - 0xMacro Report` | MapleSkyStrategy | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - 0xMacro Report` | MapleStrategyFactory | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - 0xMacro Report` | MapleAaveStrategyInitializer | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - 0xMacro Report` | MapleAaveStrategyStorage | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - 0xMacro Report` | MapleBasicStrategyInitializer | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - 0xMacro Report` | MapleBasicStrategyStorage | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - 0xMacro Report` | MapleSkyStrategyInitializer | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - 0xMacro Report` | MapleSkyStrategyStorage | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - 0xMacro Report` | MapleGlobals | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - 0xMacro Report` | MaplePool | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - 0xMacro Report` | MaplePoolDelegateCover | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - 0xMacro Report` | MaplePoolDeployer | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - 0xMacro Report` | MaplePoolManager | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - 0xMacro Report` | MaplePoolManagerInitializer | unmatched — not counted | — | listed in scope table | no |
| `2024-12 - 0xMacro Report` | MaplePoolManagerStorage | unmatched — not counted | — | listed in scope table | no |
| `2025-09 - Sherlock Report` | GovernorTimelock | unmatched — not counted | — | listed in scope | no |
| `2025-09 - Sherlock Report` | IGovernorTimelock | unmatched — not counted | — | listed in scope | no |
| `2025-09 - Sherlock Report` | GovernorTimelockDeployment | unmatched — not counted | — | listed in scope | no |
| `2025-09 - 0xMacro Report` | GovernorTimelock | unmatched — not counted | — | listed in scope table | no |
| `2025-09 - 0xMacro Report` | IGovernorTimelock | unmatched — not counted | — | listed in scope table | no |
| `2025-11 - Spearbit Report` | MapleWithdrawalManager | unmatched — not counted | — | listed in scope table | no |
| `2025-11 - Spearbit Report` | MapleWithdrawalManagerMigratorV200 | unmatched — not counted | — | listed in scope table | no |
| `2025-11 - Spearbit Report` | SortedArray | unmatched — not counted | — | listed in scope table | no |
| `2025-11 - Sherlock Report` | MapleWithdrawalManager | unmatched — not counted | — | listed in scope | no |
| `2025-11 - Sherlock Report` | MapleWithdrawalManagerMigratorV200 | unmatched — not counted | — | listed in scope | no |
| `2025-11 - Sherlock Report` | MapleWithdrawalManagerStorage | unmatched — not counted | — | listed in scope | no |
| `2025-11 - Sherlock Report` | SortedLinkedList | unmatched — not counted | — | listed in scope | no |
| `2025-11 - Dedaub Report` | CCIPBaseUpgradeable | unmatched — not counted | — | listed in scope | no |
| `2025-11 - Dedaub Report` | CCIPDefensiveReceiverUpgradeable | unmatched — not counted | — | listed in scope | no |
| `2025-11 - Dedaub Report` | CCIPUniversalUpgradeable | unmatched — not counted | — | listed in scope | no |
| `2025-11 - Dedaub Report` | ICCIPBaseUpgradeable | unmatched — not counted | — | listed in scope | no |
| `2025-11 - Dedaub Report` | ICCIPDefensiveReceiverUpgradeable | unmatched — not counted | — | listed in scope | no |
| `2025-11 - Dedaub Report` | Interfaces | unmatched — not counted | — | listed in scope | no |
| `2026-01 - Sigma Prime Report` | CCIPUniversalUpgradeable | unmatched — not counted | — | Listed in scope and renamed to MapleCCIPReceiver.sol in retesting commit. | no |
| `2026-01 - Sigma Prime Report` | MapleCCIPReceiver | unmatched — not counted | — | Renamed from CCIPUniversalUpgradeable.sol in retesting commit. | no |
| `2026-01 - Sigma Prime Report` | Interfaces | unmatched — not counted | — | Mentioned in finding CPU-13 as containing interface IWithdrawalManagerLike. | no |
| here | Pool | unmatched — not counted | — | Listed in scope table and findings context | no |
| here | PoolManager | unmatched — not counted | — | Listed in scope table and findings context | no |
| here | LoanManager | unmatched — not counted | — | Listed in scope table and findings context | no |
| here | TransitionLoanManager | unmatched — not counted | — | Listed in scope table and findings context | no |
| here | WithdrawalManager | unmatched — not counted | — | Listed in scope table and findings context | no |
| here | MapleLoan | unmatched — not counted | — | Listed in scope table and findings context | no |
| here | Liquidator | unmatched — not counted | — | Listed in scope table and findings context | no |
| here | MapleGlobals | unmatched — not counted | — | Listed in scope table and findings context | no |
| here | PoolDeployer | unmatched — not counted | — | Listed in scope table and findings context | no |
| here | MapleLoanFeeManager | unmatched — not counted | — | Listed in scope table and findings context | no |
| here | MapleLoanInitializer | unmatched — not counted | — | Listed in scope table and findings context | no |
| here | WithdrawalManagerInitializer | unmatched — not counted | — | Listed in scope table and findings context | no |
| here | AccountingChecker | unmatched — not counted | — | Listed in scope table and findings context | no |
| here | DebtLocker | unmatched — not counted | — | Listed in scope table and findings context | no |
| here | Refinancer | unmatched — not counted | — | Listed in scope table and findings context | no |
| CantinaManaged-maplev2-report.pdf | MapleToken | unmatched — not counted | — | mentioned in findings context and as audited contract | no |
| CantinaManaged-maplev2-report.pdf | MapleTokenProxy | unmatched — not counted | — | mentioned in findings context and as audited contract | no |
| CantinaManaged-maplev2-report.pdf | MapleTokenInitializer | unmatched — not counted | — | mentioned in findings context and as audited contract | no |
| CantinaManaged-maplev2-report.pdf | RecapitalizationModule | unmatched — not counted | — | mentioned in findings context and as audited contract | no |
| ThreeSigma-MapleV2-Token-Audit.pdf | EmergencyModule | unmatched — not counted | — | listed in scope | no |
| ThreeSigma-MapleV2-Token-Audit.pdf | RecapitalizationModule | unmatched — not counted | — | listed in scope | no |
| ThreeSigma-MapleV2-Token-Audit.pdf | MapleTokenInitializer | unmatched — not counted | — | listed in scope | no |
| ThreeSigma-MapleV2-Token-Audit.pdf | MapleTokenProxy | unmatched — not counted | — | listed in scope | no |
| ThreeSigma-MapleV2-Token-Audit.pdf | MapleToken | unmatched — not counted | — | listed in scope | no |
| ThreeSigma-MapleV2-Token-Audit.pdf | IEmergencyModule | unmatched — not counted | — | listed in scope | no |
| ThreeSigma-MapleV2-Token-Audit.pdf | IRecapitalizationModule | unmatched — not counted | — | listed in scope | no |
| ThreeSigma-MapleV2-Token-Audit.pdf | IMapleTokenInitializer | unmatched — not counted | — | listed in scope | no |
| ThreeSigma-MapleV2-Token-Audit.pdf | IMapleTokenProxy | unmatched — not counted | — | listed in scope | no |
| ThreeSigma-MapleV2-Token-Audit.pdf | IMapleToken | unmatched — not counted | — | listed in scope | no |
| ThreeSigma-MapleV2-Token-Audit.pdf | Interfaces | unmatched — not counted | — | listed in scope | no |
| 2024-05-22 ThreeSigma Report | SyrupRouter | unmatched — not counted | — | listed in scope | no |
| 2024-05-22 ThreeSigma Report | SyrupRateProvider | unmatched — not counted | — | listed in scope | no |
| 2024-08-23 - Three Sigma Report | Migrator | unmatched — not counted | — | listed in scope table | no |
| 2024-08-23 - Three Sigma Report | SyrupDrip | unmatched — not counted | — | listed in scope table | no |
| 2024-08-23 - Three Sigma Report | SyrupUserActions | unmatched — not counted | — | listed in scope table | no |
| 2024-08-23 - Three Sigma Report | MPLUserActions | unmatched — not counted | — | listed in scope table | no |
| 2024-08-23 - Three Sigma Report | MapleLoan | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 26
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 180 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=21, low=4, medium=1
- Match method counts: n/a

Zero-match audit list:

- [17685] `2022-08 - Trail of Bits Report`
- [17686] `2022-10 - Spearbit Report`
- [17687] `2022-10 - Three Sigma Report`
- [17688] `2023-06 - Cantina Report`
- [17689] `2023-04 - Three Sigma Report`
- [17690] `2023-11 - Three Sigma Report`
- [17691] `2023-11 - 0xMacro Report`
- [17692] `2024-08 - Three Sigma Report`
- [17693] `2024-08 - 0xMacro Report`
- [17694] `2024-05 - Three Sigma Report`
- [17695] `2024-12 - Three Sigma Report`
- [17696] `2024-12 - 0xMacro Report`
- [17697] `2025-09 - Sherlock Report`
- [17698] `2025-09 - 0xMacro Report`
- [17699] `2025-11 - Spearbit Report`
- [17700] `2025-11 - Sherlock Report`
- [17701] `2025-11 - Dedaub Report`
- [17702] `2026-01 - Sigma Prime Report`
- [17703] here
- [17704] 2022-december
- [17705] 2025-november
- [17707] CantinaManaged-maplev2-report.pdf
- [17708] ThreeSigma-MapleV2-Token-Audit.pdf
- [17709] **Designed by Maple, in partnership with leading 3rd parties**: The team at Room40 are experts in trading treasuries and will trade, custody and clear from an account with a regulated broker. Maple has a track record in providing secure and scalable products on top of best in class smart contract infrastructure and was recently awarded a 92% Safety Score by DeFi Safety [full report]().
- [17710] 2024-05-22 ThreeSigma Report
- [17711] 2024-08-23 - Three Sigma Report

Fork inheritance lineage and inherited audits are included when available.
