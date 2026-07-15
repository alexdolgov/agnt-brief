# Agentic Audit Brief: Virtuals Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Virtuals Protocol (`virtuals-protocol`)
- Website: [https://www.virtuals.io/](https://www.virtuals.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $24,545,938.26
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Virtuals Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across base, ethereum. Structural roles: 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc165 (1), erc20 (1), ownable (1)
- Frameworks: layerzero (1), openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x44ff86...91bf73`, chain 1)
- UnnamedContract (`0xf8dd39...0f809e`, chain 8453)
- OptimismMintableERC20 (`0x0b3e32...4e7e1b`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 0 stale, 0 unknown
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
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | base | unit-261479 | `0x0b3e32...4e7e1b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-261478 | `0x44ff86...91bf73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-261482 | `0xf8dd39...0f809e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [code4rena.com/reports/2025-04-virtuals-protocol](https://code4rena.com/reports/2025-04-virtuals-protocol) | Code4rena | Contest | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 42 | high |
| [spaces/rrll8DWDA3BJwEBqOtxm/uploads/EiyuRkwRb6NOUYtBLtzk/Virtuals Launchpad Smart Contract Suite Audit Report.pdf](https://4242579099-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Frrll8DWDA3BJwEBqOtxm%2Fuploads%2FEiyuRkwRb6NOUYtBLtzk%2FVirtuals%20Launchpad%20Smart%20Contract%20Suite%20Audit%20Report.pdf) | Not specified | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf](https://4242579099-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Frrll8DWDA3BJwEBqOtxm%2Fuploads%2FQIpnKIH0Dx2tXiTyTyJu%2FVirtuals%20Protocol%20-%20Zenith%20Audit%20Report%20for%20Genesis.pdf) | Zenith | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [spaces/rrll8DWDA3BJwEBqOtxm/uploads/zJ0JLeYiaEj32wwEna7w/Genesis Token Contract Audit Report.pdf](https://4242579099-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Frrll8DWDA3BJwEBqOtxm%2Fuploads%2FzJ0JLeYiaEj32wwEna7w%2FGenesis%20Token%20Contract%20Audit%20Report.pdf) | Not specified | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [spaces/rrll8DWDA3BJwEBqOtxm/uploads/On9IPp8c4x9oIPxOSRxn/$VIRTUAL Staking Contract Audit Report.pdf](https://4242579099-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Frrll8DWDA3BJwEBqOtxm%2Fuploads%2FOn9IPp8c4x9oIPxOSRxn%2F%24VIRTUAL%20Staking%20Contract%20Audit%20Report.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21060] code4rena.com/reports/2025-04-virtuals-protocol — no match: Extracted 43 contracts from the audit report scope and findings. The audit date is from the report header.
- [21061] spaces/rrll8DWDA3BJwEBqOtxm/uploads/EiyuRkwRb6NOUYtBLtzk/Virtuals Launchpad Smart Contract Suite Audit Report.pdf — no match: Scope explicitly lists Genesis.sol and FCGenesis.sol. Bonding, AgentFactoryV3, and FGenesis are mentioned in findings as targets.
- [21062] spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf — no match: Scope defined as contracts/* excluding contracts/dev, contracts/AgentReward*.sol, contracts/IAgentReward*.sol. All contracts mentioned in findings are within scope.
- [21063] spaces/rrll8DWDA3BJwEBqOtxm/uploads/zJ0JLeYiaEj32wwEna7w/Genesis Token Contract Audit Report.pdf — no match: No explicit scope section; contracts inferred from finding contexts. Audit date from cover page: June 4, 2025.
- [21064] spaces/rrll8DWDA3BJwEBqOtxm/uploads/On9IPp8c4x9oIPxOSRxn/$VIRTUAL Staking Contract Audit Report.pdf — no match: Only one contract (veVirtual) is explicitly in scope. EIP712Upgradeable is mentioned as an inherited contract but not in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| code4rena.com/reports/2025-04-virtuals-protocol | AgentNftV2 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentVeToken | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | ServiceNft | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | ContributionNft | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | ValidatorRegistry | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentInference | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentFactoryV4 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | FRouter | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentTax | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | BondingTax | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | Bonding | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentToken | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentDAO | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | FERC20 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentFactoryV2 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentRewardV2 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | Minter | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | EloCalculator | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentFactoryV3 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentRewardV3 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | VirtualToken | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | ERC6551Registry | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IFPair | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IFactory | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IBondingTax | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IUniswapV2Factory | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IUniswapV2Router02 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IUniswapV2Pair | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IERC5805 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IGovernor | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IAgentNft | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IAgentDAO | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IServiceNft | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IContributionNft | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IEloCalculator | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IAgentFactoryV3 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IAgentFactoryV2 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | GovernorVotes | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | RewardSettingsCheckpoints | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | VirtualGenesisDAO | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | Genesis | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | FGenesis | unmatched — not counted | — | listed in scope and findings | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/EiyuRkwRb6NOUYtBLtzk/Virtuals Launchpad Smart Contract Suite Audit Report.pdf | Genesis | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/EiyuRkwRb6NOUYtBLtzk/Virtuals Launchpad Smart Contract Suite Audit Report.pdf | FCGenesis | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/EiyuRkwRb6NOUYtBLtzk/Virtuals Launchpad Smart Contract Suite Audit Report.pdf | Bonding | unmatched — not counted | — | referenced in findings H-1, L-3 | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/EiyuRkwRb6NOUYtBLtzk/Virtuals Launchpad Smart Contract Suite Audit Report.pdf | AgentFactoryV3 | unmatched — not counted | — | referenced in findings H-1 | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/EiyuRkwRb6NOUYtBLtzk/Virtuals Launchpad Smart Contract Suite Audit Report.pdf | FGenesis | unmatched — not counted | — | referenced in findings L-3 | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | AgentMigrator | unmatched — not counted | — | listed in scope (contracts/* excl. contracts/dev excl. contracts/AgentReward*.sol excl. contracts/IAgentReward*.sol) | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | AgentToken | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | AgentFactoryV3 | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | AgentFactoryV4 | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | Bonding | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | BondingTax | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | FERC20 | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | FRouter | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | AgentVeToken | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | AgentDAO | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | ServiceNft | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | ContributionNft | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | Airdrop | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | AgentTax | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/zJ0JLeYiaEj32wwEna7w/Genesis Token Contract Audit Report.pdf | GenesisLib | unmatched — not counted | — | Context: GenesisLib.sol#L32 in finding 3.1.1 | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/zJ0JLeYiaEj32wwEna7w/Genesis Token Contract Audit Report.pdf | AgentFactoryV5 | unmatched — not counted | — | Context: AgentFactoryV5.sol#L168-L183, etc. in findings | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/zJ0JLeYiaEj32wwEna7w/Genesis Token Contract Audit Report.pdf | Genesis | unmatched — not counted | — | Context: Genesis.sol#L176-L194 in finding 3.2.2 | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/On9IPp8c4x9oIPxOSRxn/$VIRTUAL Staking Contract Audit Report.pdf | veVirtual | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x0b3e32...4e7e1b` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 65 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, medium=1
- Match method counts: n/a

Zero-match audit list:

- [21060] code4rena.com/reports/2025-04-virtuals-protocol
- [21061] spaces/rrll8DWDA3BJwEBqOtxm/uploads/EiyuRkwRb6NOUYtBLtzk/Virtuals Launchpad Smart Contract Suite Audit Report.pdf
- [21062] spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf
- [21063] spaces/rrll8DWDA3BJwEBqOtxm/uploads/zJ0JLeYiaEj32wwEna7w/Genesis Token Contract Audit Report.pdf
- [21064] spaces/rrll8DWDA3BJwEBqOtxm/uploads/On9IPp8c4x9oIPxOSRxn/$VIRTUAL Staking Contract Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
