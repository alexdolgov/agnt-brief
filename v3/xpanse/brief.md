# Agentic Audit Brief: Xpanse

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Xpanse (`xpanse`)
- Website: [https://xpanse.trade/](https://xpanse.trade/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 2 unique implementations (2 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $240,059.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Xpanse. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across base. Structural roles: 2 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: erc1967proxy (1), ownable (1), pausable (1)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xa234f3...2648e1`, chain 8453)
- UnnamedContract (`0xde6446...757377`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 2 of 2 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | base | unit-397136 | `0xa234f3...2648e1` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | base | unit-397137 | `0xde6446...757377` | ⚠️ Unaudited |

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
| [Horizon-Protocol-Smart-Contract-Audit-Report.pdf](https://static.horizonprotocol.com/Horizon-Protocol-Smart-Contract-Audit-Report.pdf) | unknown | Audit | 2021-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 121 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14145] Horizon-Protocol-Smart-Contract-Audit-Report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | AddressResolver | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | AddressSetLib | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | BaseSynthetix | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | BinaryOption | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | BinaryOptionMarket | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | BinaryOptionMarketData | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | BinaryOptionMarketFactory | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | BinaryOptionMarketManager | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ContractStorage | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | DappMaintenance | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | DebtCache | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | DelegateApprovals | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Depot | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | EmptyEtherCollateral | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | EscrowChecker | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | EternalStorage | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | EtherCollateral | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | EtherCollateralsUSD | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ExchangeRates | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ExchangeState | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Exchanger | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ExchangerWithVirtualSynth | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ExternStateToken | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | FakeTradingRewards | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | FeePool | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | FeePoolEternalStorage | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | FeePoolState | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | FixedSupplySchedule | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | FlexibleStorage | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | GenericMock | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IAddressResolver | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IBinaryOption | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IBinaryOptionMarket | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IBinaryOptionMarketManager | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IDebtCache | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IDelegateApprovals | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IDepot | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IERC20 | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IEtherCollateral | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IEtherCollateralsUSD | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IExchangeRates | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IExchangeState | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IExchanger | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IFeePool | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IFlexibleStorage | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IHasBalance | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IIssuer | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ILiquidations | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IRewardEscrow | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IRewardsDistribution | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IStakingRewards | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ISupplySchedule | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ISynth | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ISynthetix | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ISynthetixBridgeToBase | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ISynthetixBridgeToOptimism | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ISynthetixState | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ISystemSettings | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ISystemStatus | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ITradingRewards | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IVirtualSynth | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Issuer | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | LimitedSetup | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Liquidations | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Math | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MintableSynthetix | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MixinResolver | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MixinSystemSettings | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockAggregatorV2V3 | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockBinaryOptionMarket | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockBinaryOptionMarketManager | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockContractStorage | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockEtherCollateral | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockExchanger | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockFlagsInterface | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockMintableSynthetix | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockMutator | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockRewardsRecipient | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockSynth | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MultiCollateralSynth | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | OneWeekSetup | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Owned | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Pausable | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Proxy | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ProxyERC20 | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Proxyable | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | PublicEST | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | PublicMath | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | PublicSafeDecimalMath | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | PurgeableSynth | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ReadProxy | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | RealtimeDebtCache | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | RewardEscrow | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | RewardsDistribution | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | RewardsDistributionRecipient | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SafeDecimalMath | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | StakingRewards | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | State | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SupplySchedule | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SwapWithVirtualSynth | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Synth | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SynthSummaryUtil | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SynthUtil | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Synthetix | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SynthetixBridgeToBase | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SynthetixBridgeToOptimism | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SynthetixEscrow | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SynthetixState | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SystemSettings | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SystemStatus | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TestableAddressSet | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TestableBinaryOptionMarket | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TestableDebtCache | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TestableMixinResolver | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TestablePausable | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TestableState | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TokenExchanger | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TokenState | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TradingRewards | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | UsingReadProxy | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | VirtualSynth | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 121 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14145] Horizon-Protocol-Smart-Contract-Audit-Report.pdf

Fork inheritance lineage and inherited audits are included when available.
