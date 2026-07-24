# Agentic Audit Brief: GLIF

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: GLIF (`glif`)
- Website: [https://glif.io](https://glif.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base
- Contract surface: 8 unique implementations (13 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $24,093,272.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for GLIF in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 8 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 13
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC20Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x4a7c3792995c9f6e0a3fb8d01ecd633c53e53746`; base `0x9f3f9a5d166e06363cd18b647f2feded4ece0711` | ⚠️ Unaudited |
| Periphery | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x24d242e7e7c8bf7f022204d94aaf49c76a4ad082` | ⚠️ Unaudited |
| Periphery | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6e7c449df74d3bf55bec96587017273bb3d39488`; base `0xdbe31f5be9b68c61f0a8f0adcd29b0ec826e520f` | ⚠️ Unaudited |
| PeripheryV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x35e1371b87b742a99ab863d3cecf04e73ef1ecff` | ⚠️ Unaudited |
| PeripheryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2223eff8c8acaac86cca206a10e707b2e9830bd8`; base `0xadf046abce361f30354286f14ff88a610562d11c` | ⚠️ Unaudited |
| PeripheryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3a24cff2f5c9af8e77775418a115214e171112b8`; base `0x5922866c7258bc5a74a03276e9a86d37167019f9` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xed236d2f99346a17555f4161b2b099be80024cf0` | ⚠️ Unaudited |
| PoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x530a0cdd4e5f24a5be77587146a05056c35edceb`; base `0xaed7c2ed7bb84396afcb55ff72c8f8e87ffb68f3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 8
- Live contracts: 0
- Unknown liveness contracts: 8
- Source-verified contracts: 8
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=3, source verified unclassified=5

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| base | candidate review | Periphery<br>`0x6e7c449df74d3bf55bec96587017273bb3d39488` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcfb4975b03aec4d81a62693d65aaf315e8f49e02` |
| base | candidate review | PeripheryV3<br>`0x5922866c7258bc5a74a03276e9a86d37167019f9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcfb4975b03aec4d81a62693d65aaf315e8f49e02` |
| base | candidate review | PeripheryV3<br>`0xadf046abce361f30354286f14ff88a610562d11c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcfb4975b03aec4d81a62693d65aaf315e8f49e02` |
| base | source verified unclassified | ERC1967Proxy<br>`0x2223eff8c8acaac86cca206a10e707b2e9830bd8` | non_address_book | unknown | unknown | verified | n/a | `0xcfb4975b03aec4d81a62693d65aaf315e8f49e02` |
| base | source verified unclassified | ERC1967Proxy<br>`0x3a24cff2f5c9af8e77775418a115214e171112b8` | non_address_book | unknown | unknown | verified | n/a | `0xcfb4975b03aec4d81a62693d65aaf315e8f49e02` |
| base | source verified unclassified | ERC1967Proxy<br>`0xaed7c2ed7bb84396afcb55ff72c8f8e87ffb68f3` | non_address_book | unknown | unknown | verified | n/a | `0xcfb4975b03aec4d81a62693d65aaf315e8f49e02` |
| base | source verified unclassified | ERC1967Proxy<br>`0xdbe31f5be9b68c61f0a8f0adcd29b0ec826e520f` | non_address_book | unknown | unknown | verified | n/a | `0xcfb4975b03aec4d81a62693d65aaf315e8f49e02` |
| base | source verified unclassified | PoolV2<br>`0x530a0cdd4e5f24a5be77587146a05056c35edceb` | non_address_book | unknown | unknown | verified | n/a | `0xcfb4975b03aec4d81a62693d65aaf315e8f49e02` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [(see report here)](https://docs.glif.io/docs/file/infinity-pool-audit-consensys.pdf) | Consensys Diligence | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 42 | high |
| [(see report here)](https://docs.glif.io/docs/file/infinity-pool-audit-sherlock.pdf) | Sherlock | Contest | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Hexens - GLIF LP+ & RWTFuture Contracts (Nov 2025)](https://hexens.io/audit-reports/glif-lpplus-rwtfuture-contracts-nov-2025) | Hexens | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Hexens - GLIF+ NFT (Aug 2025)](https://hexens.io/audit-reports/glif-glif-plus-nft-aug-2025) | Hexens | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Hexens - InfinityPoolV2 & AgentPoliceV2 Migration (Jul 2024)](https://hexens.io/audit-reports/glif-infinitypoolv2-agentpolicev2-migration-jul-2024) | Hexens | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20434] (see report here) — no match: All contracts listed in Appendix 1 - Files in Scope are included. The audit date is the end date of the review period (April 10-28, 2023).
- [20435] (see report here) — no match: Extracted from the audit report header and scope description. The report covers the GLIF Pools protocol, specifically the contracts in the 'pools' directory. The audit date is the preparation date (August 23, 2023).
- [20436] Hexens - GLIF LP+ & RWTFuture Contracts (Nov 2025) — no match: Report title indicates Nov 2025; no specific day given, so last day of month used.
- [20437] Hexens - GLIF+ NFT (Aug 2025) — no match: Only one contract (Plus) is in scope, as indicated by the scope section and all findings referencing src/Plus.sol.
- [20438] Hexens - InfinityPoolV2 & AgentPoliceV2 Migration (Jul 2024) — no match: Extracted from audit report title and scope section. Contracts mentioned in findings paths are included as they are explicitly audited.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| (see report here) | GetRoute | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | Router | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | CredParser | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | RateModule | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | InfinityPool | unmatched — not counted | — | listed in scope appendix and discussed in findings | no |
| (see report here) | Account | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | PoolRegistry | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | OffRamp | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | Ping | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | AgentDeployer | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | AgentFactory | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | AgentPolice | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | MinerRegistry | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | Agent | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | Epochs | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | Routes | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | Operatable | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | VCVerifier | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | AuthController | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | Ownable | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | IRouter | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | IPoolDeployer | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | IERC4626 | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | IPoolToken | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | IWFIL | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | IPool | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | IOffRamp | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | IRateModule | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | IMinerRegistry | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | IAuth | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | IAgentFactory | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | IVCVerifier | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | IInfinityPool | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | IPoolTokenPlus | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | IAgent | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | IPoolRegistry | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | IAgentPolice | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | IAgentDeployer | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | IERC20 | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | ICredentials | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | Credentials | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | Beneficiary | unmatched — not counted | — | listed in scope appendix | no |
| (see report here) | Agent | unmatched — not counted | — | listed in scope and findings | no |
| (see report here) | AgentFactory | unmatched — not counted | — | listed in scope and findings | no |
| (see report here) | AgentPolice | unmatched — not counted | — | listed in scope and findings | no |
| (see report here) | InfinityPool | unmatched — not counted | — | listed in scope and findings | no |
| (see report here) | MinerRegistry | unmatched — not counted | — | mentioned in findings | no |
| (see report here) | PoolRegistry | unmatched — not counted | — | listed in scope and findings | no |
| (see report here) | SimpleRamp | unmatched — not counted | — | listed in scope and findings | no |
| (see report here) | Operatable | unmatched — not counted | — | mentioned in findings | no |
| (see report here) | MinerHelper | unmatched — not counted | — | mentioned in findings | no |
| Hexens - GLIF LP+ & RWTFuture Contracts (Nov 2025) | LpPlus | unmatched — not counted | — | listed in scope and findings | no |
| Hexens - GLIF LP+ & RWTFuture Contracts (Nov 2025) | RWTFuture | unmatched — not counted | — | listed in scope and findings | no |
| Hexens - GLIF LP+ & RWTFuture Contracts (Nov 2025) | LpPlusMerkleHelper | unmatched — not counted | — | listed in findings | no |
| Hexens - GLIF+ NFT (Aug 2025) | Plus | unmatched — not counted | — | listed in scope and findings | no |
| Hexens - InfinityPoolV2 & AgentPoliceV2 Migration (Jul 2024) | InfinityPoolV2 | unmatched — not counted | — | listed in scope and findings | no |
| Hexens - InfinityPoolV2 & AgentPoliceV2 Migration (Jul 2024) | AgentPoliceV2 | unmatched — not counted | — | listed in scope and findings | no |
| Hexens - InfinityPoolV2 & AgentPoliceV2 Migration (Jul 2024) | LiquidityMineSP | unmatched — not counted | — | finding GLIF-20 path | no |
| Hexens - InfinityPoolV2 & AgentPoliceV2 Migration (Jul 2024) | AgentFactory | unmatched — not counted | — | finding GLIF-13 path | no |
| Hexens - InfinityPoolV2 & AgentPoliceV2 Migration (Jul 2024) | Agent | unmatched — not counted | — | finding GLIF-8 path | no |
| Hexens - InfinityPoolV2 & AgentPoliceV2 Migration (Jul 2024) | PoolSnapshot | unmatched — not counted | — | finding GLIF-11 path | no |
| Hexens - InfinityPoolV2 & AgentPoliceV2 Migration (Jul 2024) | UpgradeToV2 | unmatched — not counted | — | finding GLIF-11 path | no |
| Hexens - InfinityPoolV2 & AgentPoliceV2 Migration (Jul 2024) | LiquidityMineLP | unmatched — not counted | — | finding GLIF-17 path | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 63 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: n/a

Zero-match audit list:

- [20434] (see report here)
- [20435] (see report here)
- [20436] Hexens - GLIF LP+ & RWTFuture Contracts (Nov 2025)
- [20437] Hexens - GLIF+ NFT (Aug 2025)
- [20438] Hexens - InfinityPoolV2 & AgentPoliceV2 Migration (Jul 2024)

Fork inheritance lineage and inherited audits are included when available.
