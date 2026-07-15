# Agentic Audit Brief: UFarm Digital

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

- Project: UFarm Digital (`ufarm-digital`)
- Website: [https://ufarm.digital](https://ufarm.digital)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 42 unique implementations (42 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $523,352.39
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for UFarm Digital. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, ethereum. Structural roles: 2 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: unclassified (2)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 42 contracts are derived from known codebases. 42 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AFI test x2 (`0xe1e189...621b4a`, chain 42161)
- Bitcoin Prime Pool (`0x88f121...361e71`, chain 42161)
- BTC invest (`0x4e6544...4fb921`, chain 42161)
- CG3 (`0x433780...c67bab`, chain 42161)
- Crypto Nova Pool (`0xc2efd7...bd8915`, chain 42161)
- DeFi USD Income (`0xa0d9ff...648ce2`, chain 1)
- DeFi USD Income (`0xa6ade8...88119b`, chain 42161)
- DeFi USD Income (`0xd96454...5bfd4d`, chain 42161)
- DIGITAL.dorm (`0x7cc0d6...3eb099`, chain 42161)
- ERC1967Proxy (`0xe92b70...91f305`, chain 1)
- ERC1967Proxy (`0x46df84...b8a81f`, chain 42161)
- Excellion Alpha Yield (`0x3260f8...84e5ab`, chain 1)
- First eth pool (USDC only) (`0x076e71...e079cd`, chain 1)
- First Eth pool multisig (`0x53b620...5aa8bb`, chain 1)
- Funders (Market Neutral) (`0x88b672...b6d51c`, chain 1)
- Funders (Market Neutral) (`0xab59de...8ef0d0`, chain 1)
- Helios Lotus USD yield (`0x2a82e0...b9e046`, chain 1)
- Inhibitory Synapse (`0x3a9eb0...b7a4c3`, chain 1)
- LaLexpo $1 pool (`0x69ea8c...1bed1d`, chain 42161)
- MPCVault (`0xfcf015...57e230`, chain 1)
- New Generation (`0xa6da5c...f86825`, chain 42161)
- Next gen pool (`0xeb23ef...90e25e`, chain 42161)
- Nova Growth Pool (`0xb187ba...d80421`, chain 42161)
- POINTS TEST (`0xf2a832...e2caa6`, chain 42161)
- Profit test (`0x012ca6...379416`, chain 42161)
- reg22-01 ed (`0xcae5b5...258e93`, chain 42161)
- Reliable Low Risk Stable pool by Stan DeFi (`0xce9c94...8fc597`, chain 42161)
- RWA Vault (`0xdec879...817638`, chain 1)
- Single token pool (`0xe47d9c...3a7529`, chain 42161)
- smoke_08_06 ed (`0xd5e545...ac0d62`, chain 1)
- Spring Hills Blue Chips (`0x505665...de22a8`, chain 42161)
- stable (`0x9a4bc9...2b99ac`, chain 42161)
- Stable farming (`0xabd5c8...ca8175`, chain 42161)
- Stable Future (`0x56d615...2e11db`, chain 42161)
- Stable Future 2 (`0xdfef07...19233a`, chain 42161)
- Supreme Ethereum (`0x413040...8d8822`, chain 42161)
- TargetAPY (`0x4dd6ae...b5ce5f`, chain 42161)
- Ultra Yield Stable Pool (`0x752a8c...ddb0a4`, chain 1)
- USD test (`0x1afe30...b01beb`, chain 42161)
- USDC only test pool (`0xd71452...aca13c`, chain 42161)
- USDT + USDC (`0x0638a9...9ba9d9`, chain 1)
- USDT Only (`0x9779a6...33044e`, chain 1)

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 42/42 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 42 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Deployed-live implementations: 42 of 42 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 40
- Unique implementations: 42
- Raw deployments: 42
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-395266 | `0xe92b70...91f305` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-395267 | `0x46df84...b8a81f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (40)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AFI test x2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395262 | `0xe1e189...621b4a` | ❓ Unverified |
| Bitcoin Prime Pool | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395250 | `0x88f121...361e71` | ❓ Unverified |
| BTC invest | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395245 | `0x4e6544...4fb921` | ❓ Unverified |
| CG3 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395242 | `0x433780...c67bab` | ❓ Unverified |
| Crypto Nova Pool | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395256 | `0xc2efd7...bd8915` | ❓ Unverified |
| DeFi USD Income | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395234 | `0xa0d9ff...648ce2` | ❓ Unverified |
| DeFi USD Income | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395252 | `0xa6ade8...88119b` | ❓ Unverified |
| DeFi USD Income | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395260 | `0xd96454...5bfd4d` | ❓ Unverified |
| DIGITAL.dorm | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395249 | `0x7cc0d6...3eb099` | ❓ Unverified |
| Excellion Alpha Yield | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395228 | `0x3260f8...84e5ab` | ❓ Unverified |
| First eth pool (USDC only) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395226 | `0x076e71...e079cd` | ❓ Unverified |
| First Eth pool multisig | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395230 | `0x53b620...5aa8bb` | ❓ Unverified |
| Funders (Market Neutral) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395232 | `0x88b672...b6d51c` | ❓ Unverified |
| Funders (Market Neutral) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395235 | `0xab59de...8ef0d0` | ❓ Unverified |
| Helios Lotus USD yield | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395227 | `0x2a82e0...b9e046` | ❓ Unverified |
| Inhibitory Synapse | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395229 | `0x3a9eb0...b7a4c3` | ❓ Unverified |
| LaLexpo $1 pool | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395248 | `0x69ea8c...1bed1d` | ❓ Unverified |
| MPCVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395238 | `0xfcf015...57e230` | ❓ Unverified |
| New Generation | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395253 | `0xa6da5c...f86825` | ❓ Unverified |
| Next gen pool | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395264 | `0xeb23ef...90e25e` | ❓ Unverified |
| Nova Growth Pool | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395255 | `0xb187ba...d80421` | ❓ Unverified |
| POINTS TEST | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395265 | `0xf2a832...e2caa6` | ❓ Unverified |
| Profit test | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395239 | `0x012ca6...379416` | ❓ Unverified |
| reg22-01 ed | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395257 | `0xcae5b5...258e93` | ❓ Unverified |
| Reliable Low Risk Stable pool by Stan DeFi | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395258 | `0xce9c94...8fc597` | ❓ Unverified |
| RWA Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395237 | `0xdec879...817638` | ❓ Unverified |
| Single token pool | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395263 | `0xe47d9c...3a7529` | ❓ Unverified |
| smoke_08_06 ed | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395236 | `0xd5e545...ac0d62` | ❓ Unverified |
| Spring Hills Blue Chips | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395246 | `0x505665...de22a8` | ❓ Unverified |
| stable | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395251 | `0x9a4bc9...2b99ac` | ❓ Unverified |
| Stable farming | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395254 | `0xabd5c8...ca8175` | ❓ Unverified |
| Stable Future | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395247 | `0x56d615...2e11db` | ❓ Unverified |
| Stable Future 2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395261 | `0xdfef07...19233a` | ❓ Unverified |
| Supreme Ethereum | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395241 | `0x413040...8d8822` | ❓ Unverified |
| TargetAPY | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395243 | `0x4dd6ae...b5ce5f` | ❓ Unverified |
| Ultra Yield Stable Pool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395231 | `0x752a8c...ddb0a4` | ❓ Unverified |
| USD test | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395240 | `0x1afe30...b01beb` | ❓ Unverified |
| USDC only test pool | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395259 | `0xd71452...aca13c` | ❓ Unverified |
| USDT + USDC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395225 | `0x0638a9...9ba9d9` | ❓ Unverified |
| USDT Only | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395233 | `0x9779a6...33044e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ufarm-audit-report-2023-1.1.pdf](https://github.com/Decurity/audits/blob/master/UFarm/ufarm-audit-report-2023-1.1.pdf) | Decurity | Audit | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [ufarm-may-25(Final).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/ufarm-may-25(Final).pdf) | Hexens | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14047] ufarm-audit-report-2023-1.1.pdf — no match: No reason recorded
- [14048] ufarm-may-25(Final).pdf — no match: Extracted contracts from scope section and findings. Audit date from final report date (30 June 2025).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ufarm-audit-report-2023-1.1.pdf | CoreWhitelist | unmatched — not counted | — | — | no |
| ufarm-audit-report-2023-1.1.pdf | ECDSARecover | unmatched — not counted | — | — | no |
| ufarm-audit-report-2023-1.1.pdf | IUFarmPool | unmatched — not counted | — | — | no |
| ufarm-audit-report-2023-1.1.pdf | PriceOracle | unmatched — not counted | — | — | no |
| ufarm-audit-report-2023-1.1.pdf | SafeOPS | unmatched — not counted | — | — | no |
| ufarm-audit-report-2023-1.1.pdf | UFarmCore | unmatched — not counted | — | — | no |
| ufarm-audit-report-2023-1.1.pdf | UFarmFund | unmatched — not counted | — | — | no |
| ufarm-audit-report-2023-1.1.pdf | UFarmPermissionsModel | unmatched — not counted | — | — | no |
| ufarm-audit-report-2023-1.1.pdf | UFarmPool | unmatched — not counted | — | — | no |
| ufarm-audit-report-2023-1.1.pdf | UnoswapV2Controller | unmatched — not counted | — | — | no |
| ufarm-audit-report-2023-1.1.pdf | UnoswapV3Controller | unmatched — not counted | — | — | no |
| ufarm-may-25(Final).pdf | UFarmPool | unmatched — not counted | — | listed in scope and findings | no |
| ufarm-may-25(Final).pdf | FundFactory | unmatched — not counted | — | finding UFARM1-10 | no |
| ufarm-may-25(Final).pdf | UFarmCore | unmatched — not counted | — | mentioned in findings as caller of FundFactory | no |
| ufarm-may-25(Final).pdf | UFarmFund | unmatched — not counted | — | mentioned in findings as deployed by FundFactory | no |
| ufarm-may-25(Final).pdf | UnoswapV2Controller | unmatched — not counted | — | finding UFARM1-5 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 40 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 16 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [14047] ufarm-audit-report-2023-1.1.pdf
- [14048] ufarm-may-25(Final).pdf

Fork inheritance lineage and inherited audits are included when available.
