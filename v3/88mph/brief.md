# Agentic Audit Brief: 88mph

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 12 (0 matched; 12 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: 88mph (`88mph`)
- Website: [https://88mph.app/](https://88mph.app/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, polygon
- Contract surface: 75 unique implementations (75 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $323,863.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for 88mph. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum, polygon. Structural roles: 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: none
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- GnosisSafe (`0x56f348...ae52ad`, chain 1)

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 74 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Deployed-live implementations: 1 of 75 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 75
- Raw deployments: 75
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/88mphv3/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (75)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2d9028...555200` | ⚠️ Unaudited |
| Astrodrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x594c62...b12e24` | ⚠️ Unaudited |
| AstrodropERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f96cc...793a99` | ⚠️ Unaudited |
| AstrodropFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10da26...633444` | ⚠️ Unaudited |
| BetokenFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0df1a9...ffae08` | ⚠️ Unaudited |
| BetokenLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e361d...97bd60` | ⚠️ Unaudited |
| BetokenLogic2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x186b2a...c7e2ba` | ⚠️ Unaudited |
| BetokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36f928...883044` | ⚠️ Unaudited |
| BProtocolMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd370ef...584b2f` | ⚠️ Unaudited |
| ClonedRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88fd29...6a2541` | ⚠️ Unaudited |
| ClonedRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b5244...6c6c68` | ⚠️ Unaudited |
| CompoundERC20Market | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x983fd4...46c8b8` | ⚠️ Unaudited |
| CreamERC20Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd753fe...a8a83a` | ⚠️ Unaudited |
| Create2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35fe9c...8f7d5e` | ⚠️ Unaudited |
| DelegatedYVaultMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90aa32...14c658` | ⚠️ Unaudited |
| DInterest | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x062214...ce0392` | ⚠️ Unaudited |
| DInterestLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fea3e...9e751d` | ⚠️ Unaudited |
| DInterestWithDepositFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x904f81...b7d4dd` | ⚠️ Unaudited |
| Dumper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bb67a...35ddeb` | ⚠️ Unaudited |
| Einstein | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25deb7...52ee96` | ⚠️ Unaudited |
| EMAOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0018f8...44f79c` | ⚠️ Unaudited |
| EMAOracleKeeperHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb14d59...21a2ed` | ⚠️ Unaudited |
| ERC20Wrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x652076...06659d` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f9c8d...c57d14` | ⚠️ Unaudited |
| Fantastic12 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x209b84...a57f74` | ⚠️ Unaudited |
| FeeModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46bd88...4036c7` | ⚠️ Unaudited |
| FractionalDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226365...bcc958` | ⚠️ Unaudited |
| FractionalDepositFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed2ff2...c3eb46` | ⚠️ Unaudited |
| FundingMultitoken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x446ba3...6c980b` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378300 | `0x56f348...ae52ad` | ⚠️ Unaudited |
| HarvestMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002162...66e9e9` | ⚠️ Unaudited |
| LinearDecayInterestModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3782f...2c5d16` | ⚠️ Unaudited |
| LinearInterestModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53d8d3...54f5f8` | ⚠️ Unaudited |
| LongCERC20Order | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41b39d...1f4339` | ⚠️ Unaudited |
| LongCEtherOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x076ee3...b69b17` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b3602...b1814b` | ⚠️ Unaudited |
| MetadataPooledCDAIFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x468546...7e765e` | ⚠️ Unaudited |
| MPHConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f6799...0c855a` | ⚠️ Unaudited |
| MPHIssuanceModel01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36ad54...1ac713` | ⚠️ Unaudited |
| MPHMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x01c2fe...1f2651` | ⚠️ Unaudited |
| MPHMinterLegacy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63167f...34b26e` | ⚠️ Unaudited |
| MPHRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0182f...d7b3f4` | ⚠️ Unaudited |
| MPHToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68245b...d6291d` | ⚠️ Unaudited |
| MPHVotingWeightWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc362b7...be9397` | ⚠️ Unaudited |
| NFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x073a43...866a3c` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99dc67...d8caa7` | ⚠️ Unaudited |
| NFTFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95816f...68e541` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x011735...11f56d` | ⚠️ Unaudited |
| PaidFantastic12Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5339ca...e881f8` | ⚠️ Unaudited |
| PercentageFeeModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11b2f9...bc41ab` | ⚠️ Unaudited |
| PooledCDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a093b...e9aea9` | ⚠️ Unaudited |
| PooledCDAIKyberExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44fbf7...d80c2b` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ce2eb...908545` | ⚠️ Unaudited |
| Quine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e0c6a...48e2b5` | ⚠️ Unaudited |
| Rewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c8ac1...5b8c4e` | ⚠️ Unaudited |
| Sai2Dai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02c9e4...e6fdb8` | ⚠️ Unaudited |
| ShareToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a8c31...12f7a4` | ⚠️ Unaudited |
| ShortCERC20Order | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52bd4a...01f855` | ⚠️ Unaudited |
| ShortCEtherOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x145712...4fea0d` | ⚠️ Unaudited |
| StakingERC20Wrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe00593...3828c1` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fdd49...a09444` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x83e475...eeadda` | ⚠️ Unaudited |
| TREE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x278533...347517` | ⚠️ Unaudited |
| TREERebaser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x504397...46c455` | ⚠️ Unaudited |
| TREEReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x390a8f...165d17` | ⚠️ Unaudited |
| TREERewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dfa38...860ce5` | ⚠️ Unaudited |
| TREERewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35634e...6a5338` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8943eb...18e0e7` | ⚠️ Unaudited |
| Vesting02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x137c9a...095cc8` | ⚠️ Unaudited |
| Vesting03 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa907c7...07eb4b` | ⚠️ Unaudited |
| WrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57c894...b99954` | ⚠️ Unaudited |
| xMPH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1702f1...8f689b` | ⚠️ Unaudited |
| YVaultMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08cc88...35fb70` | ⚠️ Unaudited |
| ZeroCouponBond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27e405...94c8b2` | ⚠️ Unaudited |
| ZeroCouponBondFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa52333...18eec1` | ⚠️ Unaudited |

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
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/88mphv3/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [Trail of Bits](https://github.com/trailofbits/publications/blob/master/reviews/88mph.pdf) | Trail of Bits | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |
| [Code423n4](https://code4rena.com/reports/2021-05-88mph) | Code4rena | Contest | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [PeckShield (also discovered via alternate URL)](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-88mphv3-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [PeckShield (also discovered via alternate URL)](https://github.com/peckshield/publications/blob/master/audit_reports/peckshield-audit-report-88mph-v1.0.pdf) | PeckShield | Audit | 2020-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Certik](https://skynet.certik.com/projects/88mph) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [PeckShield (also discovered via alternate URL)](https://github.com/peckshield/publications/blob/master/audit_reports/peckshield-audit-report-88mph%20Zero%20Coupon%20Bonds-v1.0.pdf) | PeckShield | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/trailofbits/publications/f24432d47b1bd6b5dd3b1a1a98997b12e37dfa6e/reviews/88mph.pdf) | Defi Safety | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [0x-protocol.pdf](https://github.com/trailofbits/publications/blob/master/reviews/0x-protocol.pdf) | Trail of Bits | Audit | 2019-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19379] Active Bug Bounty Program — no match: The document is a bug bounty program description, not an audit report. No specific contracts are listed in scope; only the protocol name '88mphV3' is mentioned.
- [19380] Trail of Bits — no match: Extracted from the executive summary and engagement goals sections. The report covers the full 88mph-contracts repository at commit 76cd9d1f, including contracts in models, moneymarkets, libraries, tokens, rewards, ZeroCouponBond, DInterest, Factory, and upgradeability mechanism.
- [19381] Code423n4 — no match: Extracted contract names from findings and scope section. The scope mentions 39 smart contracts but only names are inferred from findings. Audit date from report header.
- [19382] PeckShield — no match: Extracted contract names from findings targets. No explicit scope table found, but contracts are clearly audited targets.
- [19383] PeckShield — no match: Extracted contract names from findings targets. No explicit scope section found, but contracts are clearly audited.
- [19384] Certik — no match: The provided text is a CertiK Skynet project insight page for 88mph, not an audit report. It contains no scope section, contract listings, or audit findings. The only contract address mentioned is 0x8888801af4d980682e47f1a9036e589479e835c5, but it is not explicitly named as a contract in scope.
- [19385] PeckShield — no match: Audit report for 88mph Zero Coupon Bonds. Scope explicitly states only ZeroCouponBond.sol and ZeroCouponBondFactory.sol in fractionals sub-directory are covered.
- [19386] Rendered PDF capture — no match: Extracted contracts from scope descriptions, findings targets, and file paths. Audit date from cover page and executive summary.
- [19390] 0x-protocol.pdf — no match: Extracted contracts from scope sections and file paths in the audit report. Date from changelog: October 11, 2019 final report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Trail of Bits | DInterest | unmatched — not counted | — | Listed in scope and findings (TOB-88MPH-001, TOB-88MPH-004, etc.) | no |
| Trail of Bits | EMAOracle | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-006 | no |
| Trail of Bits | LinearDecayInterestModel | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-006 | no |
| Trail of Bits | YVaultMarket | unmatched — not counted | — | Listed in scope and findings (TOB-88MPH-005, TOB-88MPH-014, TOB-88MPH-015) | no |
| Trail of Bits | HarvestMarket | unmatched — not counted | — | Listed in scope and findings (TOB-88MPH-009, TOB-88MPH-011, TOB-88MPH-012, TOB-88MPH-014) | no |
| Trail of Bits | AaveMarket | unmatched — not counted | — | Listed in scope and findings (TOB-88MPH-009, TOB-88MPH-012) | no |
| Trail of Bits | BProtocolMarket | unmatched — not counted | — | Listed in scope and findings (TOB-88MPH-009, TOB-88MPH-012, TOB-88MPH-014) | no |
| Trail of Bits | CompoundERC20Market | unmatched — not counted | — | Listed in scope and findings (TOB-88MPH-009, TOB-88MPH-012, TOB-88MPH-014) | no |
| Trail of Bits | CreamERC20Market | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-012 | no |
| Trail of Bits | xMPH | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-002 | no |
| Trail of Bits | MPHToken | unmatched — not counted | — | Listed in scope and mentioned in finding TOB-88MPH-002 | no |
| Trail of Bits | ERC20Wrapper | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-017 | no |
| Trail of Bits | Sponsorable | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-016 | no |
| Trail of Bits | Rescuable | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-012 | no |
| Trail of Bits | MoneyMarket | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-012 | no |
| Trail of Bits | SafeERC20 | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-013 | no |
| Trail of Bits | DecMath | unmatched — not counted | — | Listed in scope as a library | no |
| Trail of Bits | DInterestLens | unmatched — not counted | — | Listed in scope (not fully reviewed) | no |
| Trail of Bits | ZeroCouponBond | unmatched — not counted | — | Listed in scope | no |
| Trail of Bits | Factory | unmatched — not counted | — | Listed in scope | no |
| Trail of Bits | OwnableUpgradeable | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-003 | no |
| Trail of Bits | TransparentUpgradeableProxy | unmatched — not counted | — | Listed in scope and findings (TOB-88MPH-007, TOB-88MPH-008) | no |
| Trail of Bits | Proxy | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-008 | no |
| Code423n4 | DInterest | unmatched — not counted | — | mentioned in findings M-01, M-02, L-04, L-05 | no |
| Code423n4 | MPHMinter | unmatched — not counted | — | mentioned in finding M-02 | no |
| Code423n4 | Vesting | unmatched — not counted | — | mentioned in findings L-02, N-01 | no |
| Code423n4 | Vesting02 | unmatched — not counted | — | mentioned in finding L-02 as main vesting contract | no |
| Code423n4 | EMAOracle | unmatched — not counted | — | mentioned in finding L-03 | no |
| Code423n4 | Sponsorable | unmatched — not counted | — | mentioned in finding L-01 | no |
| Code423n4 | Dumper | unmatched — not counted | — | mentioned in finding N-02 | no |
| Code423n4 | OneSplitDumper | unmatched — not counted | — | mentioned in finding N-02 | no |
| Code423n4 | AaveMarket | unmatched — not counted | — | mentioned in finding N-04 | no |
| Code423n4 | HarvestMarket | unmatched — not counted | — | mentioned in finding N-04 as misleading revert message | no |
| PeckShield | ERC1155DividentToken | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield | MPHIssuanceModel02 | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield | WrappedERC1155Token | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield | AaveMarket | unmatched — not counted | — | Target in finding PVE-004 | no |
| PeckShield | xMPH | unmatched — not counted | — | Target in finding PVE-005 | no |
| PeckShield | MPHToken | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield | AaveMarket | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield | CompoundERC20Market | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield | HarvestMarket | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield | YVaultMarket | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield | DInterest | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield | Ownable | unmatched — not counted | — | Target in finding PVE-004 | no |
| PeckShield | MPHIssuanceModel01 | unmatched — not counted | — | Target in finding PVE-005 | no |
| PeckShield | ZeroCouponBond | unmatched — not counted | — | listed in scope: 'this audit covers only the ZeroCouponBond.sol and ZeroCouponBondFactory.sol in fractionals sub-directory' | no |
| PeckShield | ZeroCouponBondFactory | unmatched — not counted | — | listed in scope: 'this audit covers only the ZeroCouponBond.sol and ZeroCouponBondFactory.sol in fractionals sub-directory' | no |
| Rendered PDF capture | DInterest | unmatched — not counted | — | Listed in scope and findings (TOB-88MPH-001, TOB-88MPH-004, etc.) | no |
| Rendered PDF capture | EMAOracle | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-006 | no |
| Rendered PDF capture | LinearDecayInterestModel | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-006 | no |
| Rendered PDF capture | YVaultMarket | unmatched — not counted | — | Listed in scope and findings (TOB-88MPH-005, TOB-88MPH-012, TOB-88MPH-014, TOB-88MPH-015) | no |
| Rendered PDF capture | HarvestMarket | unmatched — not counted | — | Listed in scope and findings (TOB-88MPH-009, TOB-88MPH-011, TOB-88MPH-012, TOB-88MPH-014) | no |
| Rendered PDF capture | AaveMarket | unmatched — not counted | — | Listed in scope and findings (TOB-88MPH-009, TOB-88MPH-012) | no |
| Rendered PDF capture | BProtocolMarket | unmatched — not counted | — | Listed in scope and findings (TOB-88MPH-009, TOB-88MPH-012, TOB-88MPH-014) | no |
| Rendered PDF capture | CompoundERC20Market | unmatched — not counted | — | Listed in scope and findings (TOB-88MPH-009, TOB-88MPH-012, TOB-88MPH-014) | no |
| Rendered PDF capture | CreamERC20Market | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-012 | no |
| Rendered PDF capture | xMPH | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-002 | no |
| Rendered PDF capture | MPHToken | unmatched — not counted | — | Mentioned in scope and fix log | no |
| Rendered PDF capture | ERC20Wrapper | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-017 | no |
| Rendered PDF capture | Sponsorable | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-016 | no |
| Rendered PDF capture | Rescuable | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-012 | no |
| Rendered PDF capture | MoneyMarket | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-012 | no |
| Rendered PDF capture | SafeERC20 | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-013 | no |
| Rendered PDF capture | DecMath | unmatched — not counted | — | Listed in scope as custom library | no |
| Rendered PDF capture | DInterestLens | unmatched — not counted | — | Mentioned as not sufficiently covered | no |
| Rendered PDF capture | ZeroCouponBond | unmatched — not counted | — | Listed in scope | no |
| Rendered PDF capture | Factory | unmatched — not counted | — | Listed in scope | no |
| 0x-protocol.pdf | Exchange | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | MixinTransactions | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | MixinTransferSimulator | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | MixinAssetProxyDispatcher | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | MixinProtocolFees | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | MixinSignatureValidator | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | MixinExchangeCore | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | MixinMatchOrders | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | LibOrder | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | LibZeroExTransaction | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | LibMath | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | LibSafeMath | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | SafeMath | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | LibFractions | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | LibAddressArray | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | LibBytes | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | Refundable | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | LibCobbDouglas | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | MultiSigWallet | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | MultiSigWalletWithTimeLock | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | AssetProxyOwner | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | StakingProxy | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | ZrxVault | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | MixinStakingPool | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | MixinParams | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | ERC20Proxy | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | WETH9 | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | ERC20 | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 70 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 97 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=2
- Match method counts: n/a

Zero-match audit list:

- [19380] Trail of Bits
- [19381] Code423n4
- [19382] PeckShield
- [19383] PeckShield
- [19384] Certik
- [19385] PeckShield
- [19386] Rendered PDF capture
- [19390] 0x-protocol.pdf

Fork inheritance lineage and inherited audits are included when available.
