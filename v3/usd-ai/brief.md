# Agentic Audit Brief: USD AI

## Export Authority

- Production state: **published scope**
- Raw selected rows: 15 across 5 audit(s)
- Eligible audit results: 7 (5 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: USD AI (`usd-ai`)
- Website: [https://usd.ai/](https://usd.ai/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, plasma
- Contract surface: 71 unique implementations (72 raw deployments)
- Coverage basis: 10/11 confirmed own live verified implementations (90.9%); conservative 90.9% with 0 needs-review implementation(s)
- DeFi Llama TVL: $427,344,714.54
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for USD AI. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across arbitrum, base, ethereum, plasma. Structural roles: 6 core, 5 supporting. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: core (6), supporting (5)
- Contract kinds: contract (6), abstract (5)
- Detected standards: erc1967proxy (5), erc165 (3), accesscontrol (2), ownable (2)
- Frameworks: openzeppelin (10), openzeppelin-upgradeable (5)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 33 contracts are derived from known codebases. 33 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0b2b2b...955ef9`, chain 1)
- UnnamedContract (`0x0c1c1c...b71f6e`, chain 1)
- UnnamedContract (`0xffb200...427f24`, chain 1)
- UnnamedContract (`0xffc100...b7cf4e`, chain 1)
- UnnamedContract (`0x0a1a1a...ed82ef`, chain 8453)
- UnnamedContract (`0x0b2b2b...955ef9`, chain 8453)
- UnnamedContract (`0x0c1c1c...b71f6e`, chain 8453)
- UnnamedContract (`0xffa100...b4bae5`, chain 8453)
- UnnamedContract (`0xffb200...427f24`, chain 8453)
- UnnamedContract (`0xffc100...b7cf4e`, chain 8453)
- UnnamedContract (`0x0a1a1a...ed82ef`, chain 9745)
- UnnamedContract (`0x0b2b2b...955ef9`, chain 9745)
- UnnamedContract (`0xffa100...b4bae5`, chain 9745)
- UnnamedContract (`0xffb200...427f24`, chain 9745)
- UnnamedContract (`0x0b2b2b...955ef9`, chain 42161)
- UnnamedContract (`0x0c1c1c...b71f6e`, chain 42161)
- UnnamedContract (`0x24a92e...bd1392`, chain 42161)
- UnnamedContract (`0x80e314...5aee37`, chain 42161)
- UnnamedContract (`0x9ddfd4...4b1a9e`, chain 42161)
- UnnamedContract (`0xea0eae...b35a1e`, chain 42161)
- UnnamedContract (`0xffa100...b4bae5`, chain 42161)
- UnnamedContract (`0xffb200...427f24`, chain 42161)
- AmortizedInterestRateModel (`0xe01520...6fa18d`, chain 42161)
- ChainlinkPriceOracle (`0xd40a52...741ebc`, chain 42161)
- ChipGovernor (`0x0ddc1d...847b26`, chain 42161)
- DepositTimelock (`0x0d710c...23c9f8`, chain 42161)
- LoanRouter (`0x0c2ed1...9597d1`, chain 42161)
- OAdapter (`0xffa100...b4bae5`, chain 1)
- OLockAdapter (`0xffc100...b7cf4e`, chain 42161)
- OToken (`0x0a1a1a...ed82ef`, chain 1)
- StakedChip (`0x0d2d2d...5c4d4a`, chain 42161)
- TimelockController (`0x0eec1e...398221`, chain 42161)
- USDai (`0x0a1a1a...ed82ef`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 33/33 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 10/11 (90.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 33 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 38 discovered implementations excluded (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 11
- Deployed-live implementations: 33 of 71 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 10/11
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 71
- Raw deployments: 72
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 5 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: 18.2% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ktl | Tier 2 | 10 | 90.9% | 2026-03 |
| Spearbit | Tier 1 | 2 | 18.2% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AmortizedInterestRateModel | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395517 | `0xe01520...6fa18d` | ✅ Audited |
| ChainlinkPriceOracle | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395516 | `0xd40a52...741ebc` | ✅ Audited |
| ChipGovernor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395511 | `0x0ddc1d...847b26` | ✅ Audited |
| DepositTimelock | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-395535 | `0x0d710c...23c9f8` | ✅ Audited |
| LoanRouter | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-395536 | `0x0c2ed1...9597d1` | ✅ Audited |
| OAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395506 | `0xffa100...b4bae5` | ✅ Audited |
| OToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-395532 | `0x0a1a1a...ed82ef` | ✅ Audited |
| StakedChip | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-395533 | `0x0d2d2d...5c4d4a` | ✅ Audited |
| TimelockController | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395512 | `0x0eec1e...398221` | ✅ Audited |
| USDai | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-395534 | `0x0a1a1a...ed82ef` | ✅ Audited |

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AirdropVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0846ec...8ca7dc` | ⚠️ Unaudited |
| BaseYieldEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3eff54...1d8acb` | ⚠️ Unaudited |
| BundleCollateralWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b47d3...9d2f47` | ⚠️ Unaudited |
| Chip | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b471c...127cbc` | ⚠️ Unaudited |
| ChipClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c2113...7faaae` | ⚠️ Unaudited |
| ChipReceiptToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x0c5021...95471e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x19ed5c...c1876a`; arbitrum `0xb07151...c6867e` | ⚠️ Unaudited |
| ExecutorEntryPoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4db060...fda979` | ⚠️ Unaudited |
| ExtensionBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb82328...79a931` | ⚠️ Unaudited |
| ExtensionFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5bcb52...f6cca4` | ⚠️ Unaudited |
| ExternalCollateralLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0764dc...17b57d` | ⚠️ Unaudited |
| FLX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6ead2a...cdbfc3` | ⚠️ Unaudited |
| HyperlaneBridgeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26feb1...8cbf80` | ⚠️ Unaudited |
| ICOVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e1b1e...b049b5` | ⚠️ Unaudited |
| IssuerGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb1bb9f...c6693c` | ⚠️ Unaudited |
| MS721v2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb31549...d60a19` | ⚠️ Unaudited |
| MToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x866a2b...36be1b` | ⚠️ Unaudited |
| MultiMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ffbc3...4033ef` | ⚠️ Unaudited |
| OLockAdapter | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395521 | `0xffc100...b7cf4e` | ⚠️ Unaudited |
| OrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa5567f...18c721` | ⚠️ Unaudited |
| OUSDaiUtility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c17b2...03dbd7` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x23ca66...bba468` | ⚠️ Unaudited |
| PYUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x46850a...696984` | ⚠️ Unaudited |
| PYUSDX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8dfb7c...71c5e0` | ⚠️ Unaudited |
| ReceiptToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6dbe4f...93584c` | ⚠️ Unaudited |
| Registrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x119fbe...81ae2c` | ⚠️ Unaudited |
| SimpleInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x92e1a1...48711a` | ⚠️ Unaudited |
| SpokePortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x658cb1...4a7878` | ⚠️ Unaudited |
| SpokePortalV1StorageCleaner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ae99b...5e5f74` | ⚠️ Unaudited |
| SpokeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf78e63...8b403e` | ⚠️ Unaudited |
| StakedUSDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x008014...1bc08a` | ⚠️ Unaudited |
| SwapFacility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18b8a7...9c7e9a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xac5036...048e00` | ⚠️ Unaudited |
| USDaiQueuedDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1038a3...f8e9d1` | ⚠️ Unaudited |
| USDaiSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe3a333...01b75f` | ⚠️ Unaudited |
| USDZ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd87c75...ff1bda` | ⚠️ Unaudited |
| WeightedRateGracePeriodRangedCollectionPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x0f62b8...2bb867` | ⚠️ Unaudited |
| WrappedMToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x437cc3...98b291` | ⚠️ Unaudited |
| YieldToOne | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc560c9...678803` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395504 | `0x0b2b2b...955ef9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395505 | `0x0c1c1c...b71f6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395507 | `0xffb200...427f24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395508 | `0xffc100...b7cf4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395522 | `0x0a1a1a...ed82ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395523 | `0x0b2b2b...955ef9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395524 | `0x0c1c1c...b71f6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395525 | `0xffa100...b4bae5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395526 | `0xffb200...427f24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395527 | `0xffc100...b7cf4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-395528 | `0x0a1a1a...ed82ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-395529 | `0x0b2b2b...955ef9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-395530 | `0xffa100...b4bae5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-395531 | `0xffb200...427f24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395509 | `0x0b2b2b...955ef9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395510 | `0x0c1c1c...b71f6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395513 | `0x24a92e...bd1392` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395514 | `0x80e314...5aee37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395515 | `0x9ddfd4...4b1a9e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395518 | `0xea0eae...b35a1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395519 | `0xffa100...b4bae5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395520 | `0xffb200...427f24` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ktl Audit Report (03-12-2026 part 2).pdf](https://1324162391-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyihtTguEhuWiLBn09qwl%2Fuploads%2Fzl2jDTZL4Akw5GuHXiKg%2Fktl%20Audit%20Report%20(03-12-2026%20part%202).pdf) | ktl | Audit | 2026-03 | fresh | Direct | contract_name | matched | 5 | 2 | 0 | 4 | high |
| [ktl Audit Report (03-12-2026 part 1).pdf](https://1324162391-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyihtTguEhuWiLBn09qwl%2Fuploads%2FRL8zlXoxnJGyCceapFfD%2Fktl%20Audit%20Report%20(03-12-2026%20part%201).pdf) | ktl | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Quantstamp Audit Report (02-03-2026).pdf](https://1324162391-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyihtTguEhuWiLBn09qwl%2Fuploads%2Fwt0lsgmhb1rngz4saN1c%2FQuantstamp%20Audit%20Report%20(02-03-2026).pdf) | Quantstamp | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [ktl Audit Report (11-27-2025).pdf](https://1324162391-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyihtTguEhuWiLBn09qwl%2Fuploads%2FweGipmdxSba2MgMJu8yl%2Fktl%20Audit%20Report%20(11-27-2025).pdf) | ktl | Audit | 2025-12 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 9 | high |
| [ktl Audit Report (10-29-2025).pdf](https://1324162391-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyihtTguEhuWiLBn09qwl%2Fuploads%2FIcLiDGBCSCvsqXNxOWr7%2Fktl%20Audit%20Report%20(10-29-2025).pdf) | ktl | Audit | 2025-11 | fresh | Direct | contract_name | matched | 3 | 2 | 0 | 15 | high |
| [ktl Audit Report (05-14-2025).pdf](https://content.gitbook.com/content/yihtTguEhuWiLBn09qwl/blobs/IzF1VSnPIPQtqI7Z2xxU/ktl%20Audit%20Report%20(05-14-2025).pdf) | ktl | Audit | 2025-05 | aging | Direct | contract_name | matched | 4 | 2 | 0 | 22 | high |
| [Cantina Audit Report (05-12-2025).pdf](https://content.gitbook.com/content/yihtTguEhuWiLBn09qwl/blobs/NAQu7sNV6TV0uiNyb4bl/Cantina%20Audit%20Report%20(05-12-2025).pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | matched | 2 | 1 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18437] ktl Audit Report (03-12-2026 part 2).pdf — matched: Scope section lists 9 contracts/interfaces including subdirectories. Audit date is end of review timeline (March 27, 2026).
- [18438] ktl Audit Report (03-12-2026 part 1).pdf — no match: Scope section lists 10 files: AirdropVault.sol, ChipClaim.sol, ChipReceiptToken.sol, ICOVault.sol, and interfaces IAirdropVault.sol, IChipClaim.sol, IChipReceiptToken.sol, IICOVault.sol, and external ISyToken.sol, IYieldToken.sol. Audit date is end of review period (Mar 27, 2026).
- [18439] Quantstamp Audit Report (02-03-2026).pdf — no match: Only one contract, Chip.sol, is explicitly listed in scope. The report mentions USDai.sol as an external contract (out of scope).
- [18440] ktl Audit Report (11-27-2025).pdf — matched: All contracts listed in the Scope section of the report were extracted. The audit date is the end date of the review timeline (Dec 28th, 2025).
- [18441] ktl Audit Report (10-29-2025).pdf — matched: All contracts listed in the Scope section of the audit report. Audit date is the end date of the review timeline (Oct 29th to Nov 18th, 2025).
- [18442] ktl Audit Report (05-14-2025).pdf — matched: All contracts listed in scope section of the audit report.
- [18443] Cantina Audit Report (05-12-2025).pdf — matched: Extracted contract names from findings context and file paths. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ktl Audit Report (03-12-2026 part 2).pdf | Chip | unmatched — not counted | — | listed in scope table | no |
| ktl Audit Report (03-12-2026 part 2).pdf | ChipGovernor | own contract | ChipGovernor (selected) `0x0ddc1d...847b26` — deployed 2026-03-31 11:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ktl Audit Report (03-12-2026 part 2).pdf | StakedChip | own proxy deployment | StakedChip (proxy) (selected) `0x0d2d2d...5c4d4a` — deployed 2026-03-31 11:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ktl Audit Report (03-12-2026 part 2).pdf | TimelockController | own contract | TimelockController (selected) `0x0eec1e...398221` — deployed 2026-03-31 11:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ktl Audit Report (03-12-2026 part 2).pdf | IChip | unmatched — not counted | — | listed in scope table | no |
| ktl Audit Report (03-12-2026 part 2).pdf | IMintableBurnable | unmatched — not counted | — | listed in scope table | no |
| ktl Audit Report (03-12-2026 part 2).pdf | IStakedChip | unmatched — not counted | — | listed in scope table | no |
| ktl Audit Report (03-12-2026 part 2).pdf | OAdapter | own contract | OAdapter (selected) `0xffa100...b4bae5` — deployed 2025-05-23 23:34:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ktl Audit Report (03-12-2026 part 2).pdf | OToken | own proxy deployment | OToken (proxy) (selected) `0x0a1a1a...ed82ef` — deployed 2025-05-23 23:34:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ktl Audit Report (03-12-2026 part 1).pdf | AirdropVault | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (03-12-2026 part 1).pdf | ChipClaim | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (03-12-2026 part 1).pdf | ChipReceiptToken | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (03-12-2026 part 1).pdf | ICOVault | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (03-12-2026 part 1).pdf | IAirdropVault | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (03-12-2026 part 1).pdf | IChipClaim | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (03-12-2026 part 1).pdf | IChipReceiptToken | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (03-12-2026 part 1).pdf | IICOVault | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (03-12-2026 part 1).pdf | ISyToken | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (03-12-2026 part 1).pdf | IYieldToken | unmatched — not counted | — | listed in scope | no |
| Quantstamp Audit Report (02-03-2026).pdf | Chip | unmatched — not counted | — | listed in scope section: Included Paths: src/Chip.sol | no |
| ktl Audit Report (11-27-2025).pdf | RedemptionLogic | unmatched — not counted | — | listed in scope section | no |
| ktl Audit Report (11-27-2025).pdf | StakedUSDai | unmatched — not counted | — | listed in scope section | no |
| ktl Audit Report (11-27-2025).pdf | StakedUSDaiStorage | unmatched — not counted | — | listed in scope section | no |
| ktl Audit Report (11-27-2025).pdf | USDai | own proxy deployment | USDai (proxy) (selected) `0x0a1a1a...ed82ef` — deployed 2025-05-13 12:29:16+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ktl Audit Report (11-27-2025).pdf | ILoanRouterPositionManager | unmatched — not counted | — | listed in scope section | no |
| ktl Audit Report (11-27-2025).pdf | IStakedUSDai | unmatched — not counted | — | listed in scope section | no |
| ktl Audit Report (11-27-2025).pdf | IUSDai | unmatched — not counted | — | listed in scope section | no |
| ktl Audit Report (11-27-2025).pdf | IUSDaiQueuedDepositor | unmatched — not counted | — | listed in scope section | no |
| ktl Audit Report (11-27-2025).pdf | LoanRouterPositionManager | unmatched — not counted | — | listed in scope section | no |
| ktl Audit Report (11-27-2025).pdf | LoanRouterPositionManagerLogic | unmatched — not counted | — | listed in scope section | no |
| ktl Audit Report (10-29-2025).pdf | DepositTimelock | own proxy deployment | DepositTimelock (proxy) (selected) `0x0d710c...23c9f8` — deployed 2025-12-03 19:48:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ktl Audit Report (10-29-2025).pdf | LoanRouter | own proxy deployment | LoanRouter (proxy) (selected) `0x0c2ed1...9597d1` — deployed 2025-12-05 20:15:44+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ktl Audit Report (10-29-2025).pdf | LoanTermsLogic | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | IDepositTimelock | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | IInterestRateModel | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | ILoanRouter | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | ILoanRouterHooks | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | ISwapAdapter | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | IApproveAndCall | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | ICollateralLiquidationReceiver | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | ICollateralLiquidator | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | ICollateralWrapper | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | ISwapRouter02 | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | IUSDai | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | AmortizedInterestRateModel | own contract | AmortizedInterestRateModel (selected) `0xe01520...6fa18d` — deployed 2025-12-03 11:57:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ktl Audit Report (10-29-2025).pdf | SimpleInterestRateModel | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | USDaiSwapAdapter | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (10-29-2025).pdf | UniswapV3SwapAdapter | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | RedemptionLogic | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | StakedUSDai | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | StakedUSDaiStorage | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | USDai | own proxy deployment | USDai (proxy) (selected) `0x0a1a1a...ed82ef` — deployed 2025-05-13 12:29:16+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ktl Audit Report (05-14-2025).pdf | IBasePositionManager | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | IERC7540 | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | IERC7575 | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | IMintableBurnable | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | IPoolPositionManager | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | IStakedUSDai | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | ISwapAdapter | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | IUSDai | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | IAggregatorV3Interface | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | IApproveAndCall | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | IPool | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | ISwapRouter02 | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | IWrappedMToken | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | OAdapter | own contract | OAdapter (selected) `0xffa100...b4bae5` — deployed 2025-05-23 23:34:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ktl Audit Report (05-14-2025).pdf | OToken | own proxy deployment | OToken (proxy) (selected) `0x0a1a1a...ed82ef` — deployed 2025-05-23 23:34:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ktl Audit Report (05-14-2025).pdf | OUSDaiUtility | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | ChainlinkPriceOracle | own contract | ChainlinkPriceOracle (selected) `0xd40a52...741ebc` — deployed 2026-02-02 20:47:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ktl Audit Report (05-14-2025).pdf | BasePositionManager | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | PoolPositionManager | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | PositionManager | unmatched — not counted | — | listed in scope | no |
| ktl Audit Report (05-14-2025).pdf | UniswapV3SwapAdapter | unmatched — not counted | — | listed in scope | no |
| Cantina Audit Report (05-12-2025).pdf | USDai | own proxy deployment | USDai (proxy) (selected) `0x0a1a1a...ed82ef` — deployed 2025-05-13 12:29:16+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Audit Report (05-12-2025).pdf | StakedUSDai | unmatched — not counted | — | mentioned in findings context | no |
| Cantina Audit Report (05-12-2025).pdf | RedemptionLogic | unmatched — not counted | — | mentioned in findings context | no |
| Cantina Audit Report (05-12-2025).pdf | ChainlinkPriceOracle | own contract | ChainlinkPriceOracle (selected) `0xd40a52...741ebc` — deployed 2026-02-02 20:47:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Audit Report (05-12-2025).pdf | BasePositionManager | unmatched — not counted | — | mentioned in findings context | no |
| Cantina Audit Report (05-12-2025).pdf | PoolPositionManager | unmatched — not counted | — | mentioned in findings context | no |
| Cantina Audit Report (05-12-2025).pdf | UniswapV3SwapAdapter | unmatched — not counted | — | mentioned in findings context | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0xffc100...b7cf4e` | OLockAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 45 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 15 own (8 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 66 unmatched
- Matched-own operational status: 15 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7
- Match method counts: unique_name=15

Zero-match audit list:

- [18438] ktl Audit Report (03-12-2026 part 1).pdf
- [18439] Quantstamp Audit Report (02-03-2026).pdf

Fork inheritance lineage and inherited audits are included when available.
