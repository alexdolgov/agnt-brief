# Agentic Audit Brief: Notional

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Notional (`notional`)
- Website: [https://notional.finance](https://notional.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 39 unique implementations (73 raw deployments)
- Coverage basis: 0/7 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,098,834.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Notional. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 44 contract row(s) across arbitrum, ethereum. Structural roles: 35 core, 5 supporting, 4 unclassified. 40 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 44
- Structural roles: core (35), supporting (5), unclassified (4)
- Contract kinds: contract (35), abstract (9)
- Detected standards: erc1967proxy (9), erc20 (1)
- Frameworks: openzeppelin (40), openzeppelin-upgradeable (39), chainlink (1)
- Upgradeable-pattern rows: 40

## Fork Analysis

0 of 70 contracts are derived from known codebases. 70 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0da210...8b210e`, chain 1)
- UnnamedContract (`0x11de34...3eb2b6`, chain 1)
- UnnamedContract (`0x161d33...44ddfa`, chain 1)
- UnnamedContract (`0x19fe8c...7598a5`, chain 1)
- UnnamedContract (`0x265329...57948f`, chain 1)
- UnnamedContract (`0x2920f9...77f97e`, chain 1)
- UnnamedContract (`0x2f7350...b84afc`, chain 1)
- UnnamedContract (`0x341046...c31fd3`, chain 1)
- UnnamedContract (`0x39a1f8...f5cc95`, chain 1)
- UnnamedContract (`0x40bf20...33a057`, chain 1)
- UnnamedContract (`0x4a9e28...dee9b8`, chain 1)
- UnnamedContract (`0x4ebfc1...d305a6`, chain 1)
- UnnamedContract (`0x54fa13...959974`, chain 1)
- UnnamedContract (`0x6e7058...e4263f`, chain 1)
- UnnamedContract (`0x794a78...bc423e`, chain 1)
- UnnamedContract (`0x7ef4d0...bf3dec`, chain 1)
- UnnamedContract (`0x81a2b6...ce86d7`, chain 1)
- UnnamedContract (`0x83706a...25d29d`, chain 1)
- UnnamedContract (`0x87c478...703444`, chain 1)
- UnnamedContract (`0x9499ad...650933`, chain 1)
- UnnamedContract (`0x96be0c...2a5c6f`, chain 1)
- UnnamedContract (`0xa2adbc...067da0`, chain 1)
- UnnamedContract (`0xaa57dd...466a03`, chain 1)
- UnnamedContract (`0xaeeafb...2de762`, chain 1)
- UnnamedContract (`0xbb828e...33e878`, chain 1)
- UnnamedContract (`0xcc6fb2...cf747f`, chain 1)
- UnnamedContract (`0xd5c341...bab6dc`, chain 1)
- UnnamedContract (`0xd62364...af9ce3`, chain 1)
- UnnamedContract (`0xda7f29...0a116b`, chain 1)
- UnnamedContract (`0xe25d40...a1a13d`, chain 1)
- UnnamedContract (`0xf3c275...96cdf1`, chain 1)
- UnnamedContract (`0xfbadc4...6788d1`, chain 1)
- ClonableBeaconProxy (`0x019be2...bc7bc1`, chain 42161)
- nBeaconProxy (`0x051961...f75db7`, chain 42161)
- nBeaconProxy (`0x06d45e...37619a`, chain 42161)
- nBeaconProxy (`0x0ace2d...93b886`, chain 42161)
- nBeaconProxy (`0x0f13fb...986adc`, chain 42161)
- nBeaconProxy (`0x18b0fc...305a29`, chain 42161)
- nBeaconProxy (`0x1fd865...85d3aa`, chain 42161)
- nBeaconProxy (`0x2c4294...c9216f`, chain 42161)
- nBeaconProxy (`0x2ddb08...e8e5dd`, chain 42161)
- nBeaconProxy (`0x3482db...88e707`, chain 42161)
- nBeaconProxy (`0x4068a4...673efe`, chain 42161)
- nBeaconProxy (`0x41be01...a3ba90`, chain 42161)
- nBeaconProxy (`0x452f5c...04cc56`, chain 42161)
- nBeaconProxy (`0x4ee657...92e081`, chain 42161)
- nBeaconProxy (`0x52602a...7f99d6`, chain 42161)
- nBeaconProxy (`0x63ffcf...c40650`, chain 42161)
- nBeaconProxy (`0x65ea9a...159a6c`, chain 42161)
- nBeaconProxy (`0x692749...46eaa0`, chain 42161)
- nBeaconProxy (`0x696336...8a2f57`, chain 42161)
- nBeaconProxy (`0x6d13d3...ed73c4`, chain 42161)
- nBeaconProxy (`0x6ebce2...231818`, chain 42161)
- nBeaconProxy (`0x6f28ca...e0f53d`, chain 42161)
- nBeaconProxy (`0x6f6603...d45b8f`, chain 42161)
- nBeaconProxy (`0x7366d1...5d13b3`, chain 42161)
- nBeaconProxy (`0x809b43...0773bb`, chain 42161)
- nBeaconProxy (`0x8652de...8febcc`, chain 42161)
- nBeaconProxy (`0x866eb0...840385`, chain 42161)
- nBeaconProxy (`0x9c0fbb...27f442`, chain 42161)
- nBeaconProxy (`0xa135d7...cf56bf`, chain 42161)
- nBeaconProxy (`0xabc07b...1b90d6`, chain 42161)
- nBeaconProxy (`0xb9bfbb...463192`, chain 42161)
- nBeaconProxy (`0xbc323e...402d6b`, chain 42161)
- nBeaconProxy (`0xc12d27...9ff958`, chain 42161)
- nBeaconProxy (`0xc3882b...dd5d75`, chain 42161)
- nBeaconProxy (`0xc9c5e5...665ea3`, chain 42161)
- nBeaconProxy (`0xd63ace...8081ac`, chain 42161)
- nBeaconProxy (`0xef3f53...9f547a`, chain 42161)
- nBeaconProxy (`0xfbd9e8...644b56`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 44; live-surface contracts included: 44 (41 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 39/71 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/7 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 39 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 41
- Deployed-live implementations: 39 of 39 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 32
- Unique implementations: 39
- Raw deployments: 73
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 3 fresh, 1 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EmptyProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-389990 | `0xcfeaea...ef3ed5` | ⚠️ Unaudited |
| FinalRouterV3_Arbitrum | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-389992 | `0x1344a3...de0369` | ⚠️ Unaudited |
| NoteERC20 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389986 | `0xcfeaea...ef3ed5` | ⚠️ Unaudited |
| nTokenERC20Proxy | token | project_anchor | own_supporting | 9 | arbitrum | unit-389989 (9 proxies) | 9 deployments: arbitrum `0x06d45e...37619a`; arbitrum `0x0f13fb...986adc`; arbitrum `0x18b0fc...305a29`; arbitrum `0x2c4294...c9216f`; arbitrum `0x52602a...7f99d6`; arbitrum `0x696336...8a2f57`; arbitrum `0x6f6603...d45b8f`; arbitrum `0x809b43...0773bb`; arbitrum `0x9c0fbb...27f442` | ⚠️ Unaudited |
| PrimeCashProxy | unknown | project_anchor | own_supporting | 14 | arbitrum | unit-389991 (14 proxies) | 14 deployments: arbitrum `0x051961...f75db7`; arbitrum `0x0ace2d...93b886`; arbitrum `0x1fd865...85d3aa`; arbitrum `0x63ffcf...c40650`; arbitrum `0x6d13d3...ed73c4`; arbitrum `0x6f28ca...e0f53d`; arbitrum `0x8652de...8febcc`; arbitrum `0x866eb0...840385`; arbitrum `0xa135d7...cf56bf`; arbitrum `0xabc07b...1b90d6`; arbitrum `0xb9bfbb...463192`; arbitrum `0xbc323e...402d6b`; arbitrum `0xd63ace...8081ac`; arbitrum `0xef3f53...9f547a` | ⚠️ Unaudited |
| PrimeDebtProxy | unknown | project_anchor | own_supporting | 14 | arbitrum | unit-389988 (14 proxies) | 14 deployments: arbitrum `0x2ddb08...e8e5dd`; arbitrum `0x3482db...88e707`; arbitrum `0x4068a4...673efe`; arbitrum `0x41be01...a3ba90`; arbitrum `0x452f5c...04cc56`; arbitrum `0x4ee657...92e081`; arbitrum `0x65ea9a...159a6c`; arbitrum `0x692749...46eaa0`; arbitrum `0x6ebce2...231818`; arbitrum `0x7366d1...5d13b3`; arbitrum `0xc12d27...9ff958`; arbitrum `0xc3882b...dd5d75`; arbitrum `0xc9c5e5...665ea3`; arbitrum `0xfbd9e8...644b56` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-389987 | `0x019be2...bc7bc1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (32)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389922 | `0x0da210...8b210e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389923 | `0x11de34...3eb2b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389924 | `0x161d33...44ddfa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389925 | `0x19fe8c...7598a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389926 | `0x265329...57948f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389927 | `0x2920f9...77f97e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389928 | `0x2f7350...b84afc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389929 | `0x341046...c31fd3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389930 | `0x39a1f8...f5cc95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389931 | `0x40bf20...33a057` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389932 | `0x4a9e28...dee9b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389933 | `0x4ebfc1...d305a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389934 | `0x54fa13...959974` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389935 | `0x6e7058...e4263f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389936 | `0x794a78...bc423e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389937 | `0x7ef4d0...bf3dec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389938 | `0x81a2b6...ce86d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389939 | `0x83706a...25d29d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389940 | `0x87c478...703444` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389941 | `0x9499ad...650933` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389942 | `0x96be0c...2a5c6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389943 | `0xa2adbc...067da0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389944 | `0xaa57dd...466a03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389945 | `0xaeeafb...2de762` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389946 | `0xbb828e...33e878` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389947 | `0xcc6fb2...cf747f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389948 | `0xd5c341...bab6dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389949 | `0xd62364...af9ce3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389950 | `0xda7f29...0a116b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389951 | `0xe25d40...a1a13d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389952 | `0xf3c275...96cdf1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389953 | `0xfbadc4...6788d1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025.07.18 - Final - Notional Exponent Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.07.18%20-%20Final%20-%20Notional%20Exponent%20Audit%20Report.pdf) | Sherlock | Contest | 2025-07 | aging | Direct | n/a | no match | 0 | 0 | 0 | 31 | n/a |
| [2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf](https://sherlock-files.ams3.digitaloceanspaces.com/reports/2026.01.17%20-%20Final%20-%20Notional%20Collaborative%20Audit%20Report%201768611627.pdf) | Sherlock | Contest | 2026-01 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [Audit_Report.pdf](https://github.com/sherlock-audit/2022-09-notional-judging/blob/main/Audit_Report.pdf) | Sherlock | Contest | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 22 | high |
| [2026.03.06 - Final - Notional Collaborative Audit Report 1772819509.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2026.03.06%20-%20Final%20-%20Notional%20Collaborative%20Audit%20Report%201772819509.pdf) | Sherlock | Contest | 2026-03 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [www.openzeppelin.com/news/notional-audit](https://www.openzeppelin.com/news/notional-audit) | OpenZeppelin | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [audits.sherlock.xyz/contests/59](https://audits.sherlock.xyz/contests/59) | Sherlock | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Notional v4 Security Audit Report.pdf](https://github.com/mixbytes/audits_public/blob/master/Notional%20Finance/Notional%20v4/Notional%20v4%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 35 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2728] 2025.07.18 - Final - Notional Exponent Audit Report.pdf — no match: No reason recorded
- [2729] 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf — no match: No reason recorded
- [2730] Audit_Report.pdf — no match: Extracted contract names from findings and file paths in the audit report. No explicit scope section found, but contracts are clearly in scope as they are the subject of findings.
- [2731] 2026.03.06 - Final - Notional Collaborative Audit Report 1772819509.pdf — no match: No reason recorded
- [2733] www.openzeppelin.com/news/notional-audit — no match: The report covers two audits: first audit (commit 66ce8f3e...) and second audit (commit b6fc6be...). The scope for the second audit includes all contracts in /contracts directory except MockLiquidation.sol. The first audit scope includes all contracts in /packages/contracts/contracts excluding some interfaces and mocks. Extracted names are from both audits, focusing on contracts explicitly mentioned in scope or findings.
- [2734] audits.sherlock.xyz/contests/59 — no match: The provided text is a header snippet from a contest page, not a full audit report. No contract names, file paths, or audit date are identifiable.
- [14895] Notional v4 Security Audit Report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AbstractCustomOracle | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AbstractLPOracle | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AbstractLendingRouter | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AbstractRewardManager | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AbstractSingleSidedLP | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AbstractStakingStrategy | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AbstractWithdrawRequestManager | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AbstractYieldStrategy | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AddressRegistry | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | ClonedCooldownHolder | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | Constants | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | ConvexRewardManager | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | Curve2TokenOracle | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | CurveConvex2Token | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | Dinero | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | Ethena | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | EtherFi | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | GenericERC20 | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | GenericERC4626 | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | Initializable | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | MorphoLendingRouter | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | Origin | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | PendlePT | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | PendlePTLib | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | PendlePTOracle | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | PendlePT_sUSDe | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | RewardManagerMixin | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | StakingStrategy | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | TimelockUpgradeableProxy | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | TokenUtils | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | TypeConvert | unmatched — not counted | — | — | no |
| 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf | AbstractStakingStrategy | unmatched — not counted | — | — | no |
| 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf | AddressRegistry | unmatched — not counted | — | — | no |
| 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf | IMidas | unmatched — not counted | — | — | no |
| 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf | Midas | unmatched — not counted | — | — | no |
| 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf | MidasStakingStrategy | unmatched — not counted | — | — | no |
| 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf | MidasUSDOracle | unmatched — not counted | — | — | no |
| 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf | PendlePT | unmatched — not counted | — | — | no |
| 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf | PendlePT_sUSDe | unmatched — not counted | — | — | no |
| Audit_Report.pdf | TradingUtils | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | StrategyUtils | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | ZeroExAdapter | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | Boosted3TokenAuraHelper | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | MetaStable2TokenAuraHelper | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | MetaStable2TokenAuraVault | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | TwoTokenPoolUtils | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | Stable2TokenOracleMath | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | TwoTokenPoolMixin | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | AuraStakingMixin | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | CrossCurrencyfCashVault | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | SettlementUtils | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | TradingModule | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | PoolMixin | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | Boosted3TokenPoolUtils | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | Boosted3TokenPoolMixin | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | MetaStable2TokenVaultMixin | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | BalancerConstants | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | BalancerVaultStorage | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | BalancerUtils | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | StableMath | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | wstETHChainlinkOracle | unmatched — not counted | — | listed in scope and findings | no |
| 2026.03.06 - Final - Notional Collaborative Audit Report 1772819509.pdf | AbstractLendingRouter | unmatched — not counted | — | — | no |
| 2026.03.06 - Final - Notional Collaborative Audit Report 1772819509.pdf | AbstractYieldStrategy | unmatched — not counted | — | — | no |
| 2026.03.06 - Final - Notional Collaborative Audit Report 1772819509.pdf | InfiniFi | unmatched — not counted | — | — | no |
| 2026.03.06 - Final - Notional Collaborative Audit Report 1772819509.pdf | MorphoLendingRouter | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/notional-audit | CashMarket | unmatched — not counted | — | mentioned in scope and findings | no |
| www.openzeppelin.com/news/notional-audit | Common | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/notional-audit | Directory | unmatched — not counted | — | mentioned in scope and findings | no |
| www.openzeppelin.com/news/notional-audit | ERC1155Token | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/notional-audit | ERC1155Trade | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/notional-audit | Escrow | unmatched — not counted | — | mentioned in scope and findings | no |
| www.openzeppelin.com/news/notional-audit | ExchangeRate | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/notional-audit | FutureCash | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/notional-audit | Governed | unmatched — not counted | — | mentioned in scope and findings | no |
| www.openzeppelin.com/news/notional-audit | Liquidation | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/notional-audit | Portfolios | unmatched — not counted | — | mentioned in scope and findings | no |
| www.openzeppelin.com/news/notional-audit | PortfoliosStorage | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/notional-audit | RiskFramework | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/notional-audit | SafeInt256 | unmatched — not counted | — | mentioned in findings | no |
| Notional v4 Security Audit Report.pdf | AbstractCustomOracle | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | AbstractLPOracle | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | AbstractLendingRouter | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | AbstractRewardManager | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | AbstractSingleSidedLP | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | AbstractStakingStrategy | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | AbstractWithdrawRequestManager | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | AbstractYieldStrategy | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | AddressRegistry | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | ClonedCooldownHolder | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | Constants | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | ConvexRewardManager | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | Curve2TokenOracle | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | CurveConvex2Token | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | Dinero | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | Ethena | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | EthenaWithdrawRequestManager | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | EtherFi | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | EtherFiWithdrawRequestManager | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | GenericERC20 | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | GenericERC20WithdrawRequestManager | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | GenericERC4626 | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | Initializable | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | MorphoLendingRouter | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | Origin | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | OriginWithdrawRequestManager | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | PendlePT | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | PendlePTLib | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | PendlePTOracle | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | PendlePT_sUSDe | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | RewardManagerMixin | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | StakingStrategy | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | TimelockUpgradeableProxy | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | TokenUtils | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | TypeConvert | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0xcfeaea...ef3ed5` | EmptyProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1344a3...de0369` | FinalRouterV3_Arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcfeaea...ef3ed5` | NoteERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x06d45e...37619a` | nTokenERC20Proxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x051961...f75db7` | PrimeCashProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2ddb08...e8e5dd` | PrimeDebtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x019be2...bc7bc1` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 32 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 114 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1
- Match method counts: n/a

Zero-match audit list:

- [2728] 2025.07.18 - Final - Notional Exponent Audit Report.pdf
- [2729] 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf
- [2730] Audit_Report.pdf
- [2731] 2026.03.06 - Final - Notional Collaborative Audit Report 1772819509.pdf
- [2733] www.openzeppelin.com/news/notional-audit
- [2734] audits.sherlock.xyz/contests/59
- [14895] Notional v4 Security Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
