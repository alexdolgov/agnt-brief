# Agentic Audit Brief: Across

## Export Authority

- Production state: **published scope**
- Raw selected rows: 10 across 3 audit(s)
- Eligible audit results: 6 (3 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: UNKNOWN - TVL dropped 48.5% over 90 days

## Project Overview

- Project: Across (`across`)
- Website: [https://across.to](https://across.to)
- Lifecycle: unknown (Tier 0, 92.5% below peak)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, blast, bsc, ethereum, hyperliquid, ink, linea, mode, optimism, plasma, polygon, unichain, zksync-era, zora
- Contract surface: 47 unique implementations (55 raw deployments)
- Coverage basis: 6/26 confirmed own live verified implementations (23.1%); conservative 23.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $18,739,389.42
- On-chain TVL (included contracts): $543,548.37
- TVL by chain: Optimism $154,575.65 | Ethereum $149,263.26 | Unichain $142,954.20 | Base $83,968.65 | Blast $12,648.77 | Arbitrum $137.74 | Bsc $0.10 | Plasma $0.00

## Project Description

This brief describes the observed EVM deployment and audit surface for Across. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 37 contract row(s) across arbitrum, base, blast, bsc, ethereum, hyperliquid, ink, linea, mode, optimism, plasma, polygon, unichain, zksync-era, zora. Structural roles: 28 unclassified, 7 core, 2 supporting. 7 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 37
- Structural roles: unclassified (28), core (7), supporting (2)
- Contract kinds: contract (37)
- Detected standards: erc1967proxy (7), multicall (1)
- Frameworks: openzeppelin (8), openzeppelin-upgradeable (6), permit2 (1)
- Upgradeable-pattern rows: 7

## Fork Analysis

0 of 42 contracts are derived from known codebases. 42 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0f7ae2...c13a0e`, chain 130)
- UnnamedContract (`0x5a148a...0f01a9`, chain 324)
- UnnamedContract (`0x68d380...605dbf`, chain 324)
- UnnamedContract (`0xe0b015...9335ff`, chain 324)
- UnnamedContract (`0x50039f...39207a`, chain 9745)
- UnnamedContract (`0xdf1c94...79cda2`, chain 59144)
- ERC1967Proxy (`0x5c7bcd...ed35c5`, chain 1)
- ERC1967Proxy (`0x6f26bf...3c0281`, chain 10)
- ERC1967Proxy (`0x09aea4...7bec64`, chain 130)
- ERC1967Proxy (`0x9295ee...e7f096`, chain 137)
- ERC1967Proxy (`0x09aea4...7bec64`, chain 8453)
- ERC1967Proxy (`0x3bad7a...6cdd96`, chain 34443)
- ERC1967Proxy (`0xe35e98...7c5f2a`, chain 42161)
- ERC1967Proxy (`0x2d5091...5cc6e1`, chain 81457)
- MulticallHandler (`0x0f7ae2...c13a0e`, chain 1)
- MulticallHandler (`0x0f7ae2...c13a0e`, chain 10)
- MulticallHandler (`0x0f7ae2...c13a0e`, chain 56)
- MulticallHandler (`0x0f7ae2...c13a0e`, chain 137)
- MulticallHandler (`0x5e7840...829bba`, chain 999)
- MulticallHandler (`0x0f7ae2...c13a0e`, chain 8453)
- MulticallHandler (`0x5e7840...829bba`, chain 9745)
- MulticallHandler (`0x0f7ae2...c13a0e`, chain 34443)
- MulticallHandler (`0x0f7ae2...c13a0e`, chain 42161)
- MulticallHandler (`0x0f7ae2...c13a0e`, chain 81457)
- SpokePoolPeriphery (`0x10d8b8...92b610`, chain 1)
- SpokePoolPeriphery (`0x10d8b8...92b610`, chain 10)
- SpokePoolPeriphery (`0x10d8b8...92b610`, chain 56)
- SpokePoolPeriphery (`0x10d8b8...92b610`, chain 130)
- SpokePoolPeriphery (`0x10d8b8...92b610`, chain 137)
- SpokePoolPeriphery (`0x10d8b8...92b610`, chain 999)
- SpokePoolPeriphery (`0x10d8b8...92b610`, chain 8453)
- SpokePoolPeriphery (`0x10d8b8...92b610`, chain 9745)
- SpokePoolPeriphery (`0x10d8b8...92b610`, chain 34443)
- SpokePoolPeriphery (`0x10d8b8...92b610`, chain 42161)
- SpokePoolPeriphery (`0x10d8b8...92b610`, chain 59144)
- SpokePoolPeriphery (`0x10d8b8...92b610`, chain 81457)
- UnnamedContract (`0x0f7ae2...c13a0e`, chain 57073)
- UnnamedContract (`0x10d8b8...92b610`, chain 57073)
- UnnamedContract (`0xef684c...fb9dd4`, chain 57073)
- UnnamedContract (`0x0f7ae2...c13a0e`, chain 7777777)
- UnnamedContract (`0x10d8b8...92b610`, chain 7777777)
- UnnamedContract (`0x13fdac...6d1d97`, chain 7777777)

## Contract Surface Quality

- Indexed contracts: 37; live-surface contracts included: 37 (33 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 45/45 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/26 (23.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 37 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 10 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 11
- Deployed-live implementations: 37 of 47 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 6/26
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 1
- Unverified implementations: 11
- Unique implementations: 47
- Raw deployments: 55
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $226,922.95
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: 23.1% (OpenZeppelin)
- Note: This protocol is classified as [unknown]. ASD of $226,922.95 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 6 | 23.1% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Optimism_SpokePool | core_logic | project_anchor | own_supporting | 1 | optimism | unit-225911 | `0x6f26bf...3c0281` | ✅ Audited |
| Ethereum_SpokePool | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-225910 | `0x5c7bcd...ed35c5` | ✅ Audited |
| Blast_SpokePool | core_logic | project_anchor | own_supporting | 1 | blast | unit-225917 | `0x2d5091...5cc6e1` | ✅ Audited |
| Arbitrum_SpokePool | core_logic | project_anchor | own_supporting | 1 | arbitrum | unit-225914 | `0xe35e98...7c5f2a` | ✅ Audited |
| Linea_SpokePool | unknown | project_anchor | own_supporting | 1 | linea | unit-225916 | `0x7e63a5...b2ee75` | ✅ Audited |
| Polygon_SpokePool | core_logic | project_anchor | own_supporting | 1 | polygon | unit-225913 | `0x9295ee...e7f096` | ✅ Audited |

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OP_SpokePool | core_logic | project_anchor | own_supporting | 1 | unichain | unit-225912 | `0x09aea4...7bec64` | ⚠️ Unaudited |
| OP_SpokePool | core_logic | project_anchor | own_supporting | 1 | base | unit-225918 | `0x09aea4...7bec64` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | bsc | unit-225891 | `0x10d8b8...92b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-225875 | `0x10d8b8...92b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | plasma | unit-225906 | `0x10d8b8...92b610` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 0 | mode | unit-225887 | `0x3bad7a...6cdd96` | ⚠️ Unaudited |
| MulticallHandler | periphery | project_anchor | own_supporting | 0 | hyperliquid | unit-225909 | 2 deployments: hyperliquid `0x5e7840...829bba`; plasma `0x5e7840...829bba` | ⚠️ Unaudited |
| MulticallHandler | periphery | project_anchor | own_supporting | 0 | mode | unit-225885 | `0x0f7ae2...c13a0e` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | optimism | unit-225877 | `0x10d8b8...92b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | unichain | unit-225879 | `0x10d8b8...92b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | polygon | unit-225881 | `0x10d8b8...92b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | hyperliquid | unit-225908 | `0x10d8b8...92b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | base | unit-225905 | `0x10d8b8...92b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | mode | unit-225886 | `0x10d8b8...92b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-225889 | `0x10d8b8...92b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | linea | unit-225897 | `0x10d8b8...92b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | blast | unit-225903 | `0x10d8b8...92b610` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | project_anchor | own_supporting | 1 | bsc | unit-225915 | `0x4e8e10...72d505` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-225920 | `0x35e63e...6b0e04` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MulticallHandler | periphery | project_anchor | own_supporting | 0 | ethereum | unit-225874 | 8 deployments: ethereum `0x0f7ae2...c13a0e`; optimism `0x0f7ae2...c13a0e`; bsc `0x0f7ae2...c13a0e`; unichain `0x0f7ae2...c13a0e`; polygon `0x0f7ae2...c13a0e`; base `0x0f7ae2...c13a0e`; arbitrum `0x0f7ae2...c13a0e`; blast `0x0f7ae2...c13a0e` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (21)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Universal_SpokePool | unknown | project_anchor | own_supporting | 1 | plasma | unit-225919 | `0x50039f...39207a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ed0d5...663037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d4710...76955d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3db06d...73d40e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d6adc...504d90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9552a0...1f83f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb234ca...1ed045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd29c85...7d7978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2ecb3...31a449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec41f7...2c4511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffc128...0afbe4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-225882 | `0x5a148a...0f01a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-225883 | `0x68d380...605dbf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-225884 | `0xe0b015...9335ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-225893 | `0x0f7ae2...c13a0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-225895 | `0x10d8b8...92b610` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-225896 | `0xef684c...fb9dd4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-225898 | `0xdf1c94...79cda2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-225899 | `0x0f7ae2...c13a0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-225900 | `0x10d8b8...92b610` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-225901 | `0x13fdac...6d1d97` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [www.openzeppelin.com/news/uma-audit-l2-bridges](https://www.openzeppelin.com/news/uma-audit-l2-bridges) | OpenZeppelin | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [www.openzeppelin.com/news/across-v3-and-oval-incremental-audit](https://www.openzeppelin.com/news/across-v3-and-oval-incremental-audit) | OpenZeppelin | Audit | 2024-07 | stale | Direct | n/a | matched | 1 | 1 | 0 | 15 | n/a |
| [blog.openzeppelin.com/across-v3-incremental-audit](https://blog.openzeppelin.com/across-v3-incremental-audit?hs_preview=lerUtAnm-157915368784) | OpenZeppelin | Audit | 2024-02 | stale | Direct | n/a | matched | 5 | 5 | 0 | 25 | n/a |
| [www.openzeppelin.com/news/across-token-and-token-distributor-audit](https://www.openzeppelin.com/news/across-token-and-token-distributor-audit) | OpenZeppelin | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [www.openzeppelin.com/news/uma-across-v2-audit](https://www.openzeppelin.com/news/uma-across-v2-audit) | OpenZeppelin | Audit | 2022-05 | stale | Direct | n/a | matched | 4 | 4 | 0 | 12 | n/a |
| [www.openzeppelin.com/news/uma-audit-phase-6](https://www.openzeppelin.com/news/uma-audit-phase-6) | OpenZeppelin | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11500] www.openzeppelin.com/news/uma-audit-l2-bridges — no match: Scope explicitly lists contracts/insured-bridge/*, contracts-ovm/insured-bridge/implementation/*, AncillaryData.sol, SkinnyOptimisticOracle.sol, and PR3445 changes. Additional contracts (LongShortPair, etc.) are mentioned in findings but may be part of PR3445 scope.
- [11506] www.openzeppelin.com/news/across-v3-and-oval-incremental-audit — matched: No reason recorded
- [11507] blog.openzeppelin.com/across-v3-incremental-audit — matched: No reason recorded
- [11508] www.openzeppelin.com/news/across-token-and-token-distributor-audit — no match: Scope section lists AcceleratingDistributor.sol and AcrossToken.sol. Audit date is the end date of the timeline: To 2022-05-10.
- [11509] www.openzeppelin.com/news/uma-across-v2-audit — matched: No reason recorded
- [11510] www.openzeppelin.com/news/uma-audit-phase-6 — no match: Extracted contracts from scope listing and findings. Audit date from header: January 7, 2022.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| www.openzeppelin.com/news/uma-audit-l2-bridges | BridgeDepositBox | unmatched — not counted | — | listed in scope: contracts/insured-bridge/* | no |
| www.openzeppelin.com/news/uma-audit-l2-bridges | AVM_BridgeDepositBox | unmatched — not counted | — | listed in scope: contracts-ovm/insured-bridge/implementation/* | no |
| www.openzeppelin.com/news/uma-audit-l2-bridges | OVM_BridgeDepositBox | unmatched — not counted | — | listed in scope: contracts-ovm/insured-bridge/implementation/* | no |
| www.openzeppelin.com/news/uma-audit-l2-bridges | BridgePool | unmatched — not counted | — | listed in scope: contracts/insured-bridge/* | no |
| www.openzeppelin.com/news/uma-audit-l2-bridges | AncillaryData | unmatched — not counted | — | listed in scope: contracts/common/implementation/AncillaryData.sol | no |
| www.openzeppelin.com/news/uma-audit-l2-bridges | SkinnyOptimisticOracle | unmatched — not counted | — | listed in scope: contracts/oracle/implementation/SkinnyOptimisticOracle.sol | no |
| www.openzeppelin.com/news/uma-audit-l2-bridges | LongShortPair | unmatched — not counted | — | mentioned in findings and PR3445 review | no |
| www.openzeppelin.com/news/uma-audit-l2-bridges | LongShortPairCreator | unmatched — not counted | — | mentioned in finding C01 | no |
| www.openzeppelin.com/news/uma-audit-l2-bridges | BridgeAdmin | unmatched — not counted | — | mentioned in privileged roles and findings | no |
| www.openzeppelin.com/news/uma-audit-l2-bridges | Arbitrum_Messenger | unmatched — not counted | — | mentioned in finding N08 | no |
| www.openzeppelin.com/news/uma-audit-l2-bridges | ExpandedERC20 | unmatched — not counted | — | mentioned in finding M06 | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | BaseFactory | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | Blast_Adapter | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | Blast_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x2d5091...5cc6e1` — deployed 2024-07-03 01:12:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | CoinbaseOracle | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | CoinbaseSourceAdapter | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | ERC7683 | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | ERC7683Across | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | ERC7683Depositor | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | MultiCallerUpgradeable | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | MutableUnlockersController | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | MutlicallHandler | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | PermissionProxy | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | StandardChainlinkFactory | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | StandardCoinbaseFactory | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | StandardCronicleFactory | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | StandardPythFactory | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Arbitrum_Adapter | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Arbitrum_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xe35e98...7c5f2a` — deployed 2023-04-24 19:58:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blog.openzeppelin.com/across-v3-incremental-audit | Base_Adapter | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Base_SpokePool | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | CCTPInterfaces | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | CircleCCTPAdapter | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | CrossDomainEnabled | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Ethereum_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x5c7bcd...ed35c5` — deployed 2023-04-24 19:52:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blog.openzeppelin.com/across-v3-incremental-audit | Linea_Adapter | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Linea_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x7e63a5...b2ee75` — deployed 2024-03-06 19:29:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blog.openzeppelin.com/across-v3-incremental-audit | MerkleLib | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Optimism_Adapter | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Optimism_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x6f26bf...3c0281` — deployed 2023-04-24 19:44:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blog.openzeppelin.com/across-v3-incremental-audit | Ovm_SpokePool | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Permit2Depositor | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Permit2Order | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Permit2OrderLib | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | PolygonZkEVM_Adapter | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | PolygonZkEVM_SpokePool | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Polygon_Adapter | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Polygon_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9295ee...e7f096` — deployed 2023-04-24 19:57:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blog.openzeppelin.com/across-v3-incremental-audit | Scroll_Adapter | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Scroll_SpokePool | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | SpokePool | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | SpokePoolInterface | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | SpokePoolVerifier | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Succinct_SpokePool | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | SwapAndBridge | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | V3SpokePoolInterface | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | ZkSync_SpokePool | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-token-and-token-distributor-audit | AcceleratingDistributor | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/across-token-and-token-distributor-audit | AcrossToken | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/uma-across-v2-audit | Arbitrum_Adapter | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | Arbitrum_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xe35e98...7c5f2a` — deployed 2023-04-24 19:58:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/uma-across-v2-audit | Ethereum_Adapter | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | Ethereum_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x5c7bcd...ed35c5` — deployed 2023-04-24 19:52:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/uma-across-v2-audit | HubPool | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | HubPoolInterface | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | LPTokenFactory | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | Lockable | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | MerkleLib | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | Optimism_Adapter | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | Optimism_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x6f26bf...3c0281` — deployed 2023-04-24 19:44:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/uma-across-v2-audit | PolygonTokenBridger | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | Polygon_Adapter | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | Polygon_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9295ee...e7f096` — deployed 2023-04-24 19:57:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/uma-across-v2-audit | SpokePool | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | SpokePoolInterface | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | Proposer | unmatched — not counted | — | listed in scope: oracle/implementation/Proposer.sol | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | OptimisticRewarderBase | unmatched — not counted | — | listed in scope: financial-templates/optimistic-rewarder/* (excluding test contracts) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | Optimism_ParentMessenger | unmatched — not counted | — | listed in scope: cross-chain-oracle/* (excluding test and Polygon contracts) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | Arbitrum_ParentMessenger | unmatched — not counted | — | listed in scope: cross-chain-oracle/* (excluding test and Polygon contracts) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | ChildMessengerConsumerInterface | unmatched — not counted | — | mentioned in findings (L03, N03) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | GovernorSpoke | unmatched — not counted | — | mentioned in findings (L03, L08, N03) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | OracleSpoke | unmatched — not counted | — | mentioned in findings (L04, L08) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | ChildMessengerInterface | unmatched — not counted | — | mentioned in findings (N02) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | Admin_ChildMessenger | unmatched — not counted | — | mentioned in findings (N06) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | OptimisticRewarderToken | unmatched — not counted | — | mentioned in findings (N07) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | OptimisticRewarderCreator | unmatched — not counted | — | mentioned in findings (N07) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | OptimisticStaker | unmatched — not counted | — | mentioned in findings (N07) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | GovernorHub | unmatched — not counted | — | mentioned in findings (N08) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | Optimism_ChildMessenger | unmatched — not counted | — | mentioned in findings (N05, N06) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | Polygon_ChildMessenger | unmatched — not counted | — | mentioned in findings (N02) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | OracleHub | unmatched — not counted | — | mentioned in findings (N04, N05) | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x10d8b8...92b610` | SpokePoolPeriphery | core_logic | $0.10 | Verified native implementation with $0.10 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x10d8b8...92b610` | SpokePoolPeriphery | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x10d8b8...92b610` | SpokePoolPeriphery | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0f7ae2...c13a0e` | MulticallHandler | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x5e7840...829bba` | MulticallHandler | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x0f7ae2...c13a0e` | MulticallHandler | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x10d8b8...92b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x10d8b8...92b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x10d8b8...92b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x10d8b8...92b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x10d8b8...92b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x10d8b8...92b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x10d8b8...92b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x10d8b8...92b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x10d8b8...92b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x4e8e10...72d505` | Universal_SpokePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x35e63e...6b0e04` | Universal_SpokePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 10 own (10 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 81 unmatched
- Matched-own operational status: 10 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: unique_name=10

Zero-match audit list:

- [11500] www.openzeppelin.com/news/uma-audit-l2-bridges
- [11508] www.openzeppelin.com/news/across-token-and-token-distributor-audit
- [11510] www.openzeppelin.com/news/uma-audit-phase-6

Fork inheritance lineage and inherited audits are included when available.
