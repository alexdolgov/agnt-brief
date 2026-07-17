# Agentic Audit Brief: Opium

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Opium (`opium`)
- Website: [https://app.opium.finance/](https://app.opium.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc, ethereum, polygon
- Contract surface: 4 unique implementations (4 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $118,020.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Opium in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xdbc2f7f3bccccf54f1bda43c57e8ab526e379df1`, chain 1)
- UnnamedContract (`0x964c04b87d14df4aa74169874c4b15a87eed360d`, chain 137)
- UnnamedContract (`0xc9162e9e8a6c47e7346a3fe6dda9fab54dfbe49b`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 3 of 4 unique; 1 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OpiumToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x888888888889c00c67689029d7856aac1065ec11` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390375 | `0xdbc2f7f3bccccf54f1bda43c57e8ab526e379df1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-390377 | `0x964c04b87d14df4aa74169874c4b15a87eed360d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-390379 | `0xc9162e9e8a6c47e7346a3fe6dda9fab54dfbe49b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [[Read the full report here]()](https://github.com/OpiumProtocol/opium-protocol-v2/blob/main/audits/Opium%20v2%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | medium |
| [[Read the full report here]()](https://github.com/OpiumProtocol/opium-protocol-v2/blob/main/audits/Opium%20protocol%20audit.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [[Read the full report here]()&#x20;](https://github.com/OpiumProtocol/opium-contracts/blob/master/docs/audit/OpiumSmartDecSmartContractAudit.pdf) | SmartDec | Audit | 2020-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 57 | high |
| [[Read the full report here]()](https://github.com/OpiumProtocol/opium-contracts/blob/master/docs/audit/OpiumNetworkProtocolAuditMixBytes.pdf) | MixBytes | Audit | 2021-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 45 | high |
| [[Read the full report here]()](https://static.opium.finance/docs/audits/OpiumStakingAuditPessimistic.pdf) | Pessimistic | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [[Read the full report here]()](https://static.opium.finance/docs/audits/OpiumStakingAuditMixBytes.pdf) | MixBytes | Audit | 2021-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [29768] [Read the full report here]() — no match: No explicit scope section; contract names extracted from findings and descriptions.
- [29769] [Read the full report here]() — no match: All contracts listed in the scope section of the audit report.
- [29770] [Read the full report here]()&#x20; — no match: All contracts listed in compilation output are considered in scope. The audit also mentions erc721o dependency as analysed. Date from published date on cover.
- [29771] [Read the full report here]() — no match: All contracts listed in the 'FILES LISTING' section are in scope. Audit date from cover page.
- [29772] [Read the full report here]() — no match: Only one contract name explicitly mentioned in findings; no formal scope table or file listing provided.
- [29773] [Read the full report here]() — no match: All four contracts listed in the FILES LISTING section are in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| [Read the full report here]() | Registry | unmatched — not counted | — | mentioned in manual analysis | no |
| [Read the full report here]() | RegistryStorage | unmatched — not counted | — | mentioned in manual analysis | no |
| [Read the full report here]() | Core | unmatched — not counted | — | mentioned in manual analysis | no |
| [Read the full report here]() | LibRoles | unmatched — not counted | — | mentioned in manual analysis | no |
| [Read the full report here]() | RegistryManager | unmatched — not counted | — | mentioned in manual analysis | no |
| [Read the full report here]() | RegistryEntities | unmatched — not counted | — | mentioned in manual analysis | no |
| [Read the full report here]() | Core | unmatched — not counted | — | listed in scope | no |
| [Read the full report here]() | OpiumProxyFactory | unmatched — not counted | — | listed in scope | no |
| [Read the full report here]() | OpiumPositionToken | unmatched — not counted | — | listed in scope | no |
| [Read the full report here]() | OracleAggregator | unmatched — not counted | — | listed in scope | no |
| [Read the full report here]() | TokenSpender | unmatched — not counted | — | listed in scope | no |
| [Read the full report here]() | SyntheticAggregator | unmatched — not counted | — | listed in scope | no |
| [Read the full report here]() | Registry | unmatched — not counted | — | listed in scope | no |
| [Read the full report here]() | RegistryManager | unmatched — not counted | — | listed in scope | no |
| [Read the full report here]()&#x20; | Core | unmatched — not counted | — | listed in compilation output and manual analysis | no |
| [Read the full report here]()&#x20; | CoreErrors | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | MatchingErrors | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | OracleAggregatorErrors | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | RegistryErrors | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | SyntheticAggregatorErrors | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | usingRegistryErrors | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | ExecutableByThirdParty | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | HasCommission | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | IDerivativeLogic | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | IOracleId | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | LibCommission | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | LibDerivative | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | LibEIP712 | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | Whitelisted | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | WhitelistedWithGovernance | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | WhitelistedWithGovernanceAndChangableTimelock | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | usingRegistry | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | LibOrder | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | Match | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | MatchCreate | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | MatchLogic | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | MatchPool | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | MatchSwap | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | LibSwaprateOrder | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | SwaprateMatch | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | SwaprateMatchBase | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | Migrations | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | OracleAggregator | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | Registry | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | SyntheticAggregator | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | TokenMinter | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | TokenSpender | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | OptionCallSyntheticIdMock | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | OracleIdMock | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | TestToken | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | WETH | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | ERC721OBackwardCompatible | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | ERC721OBase | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | ERC721OComposable | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | ERC721OMintable | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | ERC721OTransferable | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | IERC721O | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | IERC721OReceiver | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | LibPosition | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | ObjectsLib | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | UintArray | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | UintsLib | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | ERC165 | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | IERC165 | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | SafeMath | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | IERC20 | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | SafeERC20 | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | IERC721 | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | IERC721Receiver | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | Address | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]()&#x20; | ReentrancyGuard | unmatched — not counted | — | listed in compilation output | no |
| [Read the full report here]() | TokenMinter | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | Core | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | OracleAggregator | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | TokenSpender | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | Registry | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | SyntheticAggregator | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | LibCommission | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | LibDerivative | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | UsingRegistry | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | WhitelistedWithGovernance | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | Whitelisted | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | LibEIP712 | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | WhitelistedWithGovernanceAndChangableTimelock | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | IDerivativeLogic | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | IOracleId | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | HasCommission | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | PayoutHelper | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | BalanceHelper | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | ExecutableByThirdParty | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | SwaprateMatchBase | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | SwaprateMatch | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | LibSwaprateOrder | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | MatchSwap | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | MatchLogic | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | Match | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | MatchPool | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | LibOrder | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | MatchCreate | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | RegistryErrors | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | OracleAggregatorErrors | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | SyntheticAggregatorErrors | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | MatchingErrors | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | CoreErrors | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | UsingRegistryErrors | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | ERC721OTransferable | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | ERC721OBackwardCompatible | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | ERC721OComposable | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | ERC721OBase | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | ERC721OMintable | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | IERC721OReceiver | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | IERC721O | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | ObjectsLib | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | UintArray | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | UintsLib | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | LibPosition | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | OpiumStakingDerivatives | unmatched — not counted | — | mentioned in low severity issues: 'In OpiumStakingDerivatives contract, hedge() function is payable for no reason.' | no |
| [Read the full report here]() | OpiumERC20Position | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | OpiumStakingErrors | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | OpiumStakingDerivatives | unmatched — not counted | — | listed in files listing | no |
| [Read the full report here]() | OpiumStaking | unmatched — not counted | — | listed in files listing | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 121 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, medium=2
- Match method counts: n/a

Zero-match audit list:

- [29768] [Read the full report here]()
- [29769] [Read the full report here]()
- [29770] [Read the full report here]()&#x20;
- [29771] [Read the full report here]()
- [29772] [Read the full report here]()
- [29773] [Read the full report here]()

Fork inheritance lineage and inherited audits are included when available.
