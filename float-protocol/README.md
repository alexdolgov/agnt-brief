# Agentic Audit Brief: Float Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Float Protocol (`float-protocol`)
- Website: [https://floatprotocol.com/](https://floatprotocol.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 38 unique implementations (38 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $117,885.13
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Float Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 1

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 1; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 36 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/21
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 38
- Raw deployments: 38
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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
| AuctionHouse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b114b8f5a7290e6e4f64024de6714131b4d47ca` | ⚠️ Unaudited |
| BankToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f8c4b7694579b1c9796f5dfe0ad45c20804b73a` | ⚠️ Unaudited |
| BankTokenV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-240013 | `0x24a6a37576377f63f194caa5f518a60f45b42921` | ⚠️ Unaudited |
| BankVotingShare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd449f38ead4871e76c5f34f648e545ab4d688ef4` | ⚠️ Unaudited |
| BasketV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73650f79b15abe064eccb5f1bb448cb5df6d5894` | ⚠️ Unaudited |
| Diversification | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2897692e974d9d5a2a29e3deebcb54417b9914bb` | ⚠️ Unaudited |
| EarnedAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x016d662af51b4de1a75725614c70d813b684ea10` | ⚠️ Unaudited |
| ETHPhase2Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cc2db43f9c2e2029aee159be60a9dda50b05d4a` | ⚠️ Unaudited |
| FloatMintingCeremonyZapInV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x263c7e5e88c8d4394653516617103ca91baceb56` | ⚠️ Unaudited |
| FloatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bc57f8e4a53ed244a9677d0170f8a7fe4c2f08e` | ⚠️ Unaudited |
| MintingCeremony | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14b6fb6b83c01a7cde9ac2c13173695c8d14fcd2` | ⚠️ Unaudited |
| MonetaryPolicyV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b995aa6e188289d1b67c511dedf4f1291ab4fc0` | ⚠️ Unaudited |
| MultiplierPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52eadaff8e3d816ce205691d1d703e08d369f576` | ⚠️ Unaudited |
| Phase1Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73139212d0f62c6ddb6514c6a55c3778eb798d72` | ⚠️ Unaudited |
| Phase2Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x673b95d277ef022e5efaf9f167ffdfab36991738` | ⚠️ Unaudited |
| Phase4aPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bdb2d1003221cfc688cfbfb10433d37c0fe2c3e` | ⚠️ Unaudited |
| Phase4Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08d7e47beb0470fc683bbde7d836c5dcd48754f2` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x499559941e05bd69f64100c725a25a9ed17ebe5e` | ⚠️ Unaudited |
| RescueImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf3b29cead29cbeb35cf9371504da2ff4770c59ec` | ⚠️ Unaudited |
| TokenTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf49a920aa4696631ce53a25a9c8fce175a4cf5e` | ⚠️ Unaudited |
| Twap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cb48e0826433b2d7a2a7f0e69a716d5ca045229` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x432573cf5b10eb9a160624ca2725199dc1b56e3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x520f53ad040da6d453ac24301cc92c6a834efbf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x726ff99c3f2aa0b0debade809d2ac75c5dfa3736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78946df7a8e6419f0bd86934cdf2f59ce1656059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f2528ee4878c70c82d15903ae9f042a09e9d8f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90d1d83fd4cca873848d728fd8cef382b1acb4b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9e43ae740a19ddd7aa04efa4198b32344f4c0f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab768db196514df35722a99c37c8ae3581d6352b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb05097849bca421a3f51b249ba6cca4af4b97cb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb070a2a19b7c01bdcf1a36ac539825d36324ff86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6d58f8c684f0f2992ba613d209209897c298e44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd817491872bdb33e0d21589bd92dbff43387ca4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd04f4759a2cc28a5ae33287534caa4dfce90b9c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe41f9fabee859c4e6d248e9442c822f09742228a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe73cf1bbc792c796826f9e57263483fd3dd38d50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed7df34c629f46de7c31069c7816dd6d8654dd17` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xf5ab36def38e2635342e93895fedbd93c8ebb715` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 17
- Live contracts: 0
- Unknown liveness contracts: 17
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: exact address book overlap=1, unverified unclassified=16

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| exact address book overlap | UnnamedContract<br>`0xf5ab36def38e2635342e93895fedbd93c8ebb715` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x2b84260068a16b8d32fb8f5940fce559511851f5` |
| unverified unclassified | UnnamedContract<br>`0x432573cf5b10eb9a160624ca2725199dc1b56e3e` | non_address_book | unknown | unknown | unverified | n/a | `0x2b84260068a16b8d32fb8f5940fce559511851f5` |
| unverified unclassified | UnnamedContract<br>`0x520f53ad040da6d453ac24301cc92c6a834efbf5` | non_address_book | unknown | unknown | unverified | n/a | `0x2b84260068a16b8d32fb8f5940fce559511851f5` |
| unverified unclassified | UnnamedContract<br>`0x726ff99c3f2aa0b0debade809d2ac75c5dfa3736` | non_address_book | unknown | unknown | unverified | n/a | `0x2b84260068a16b8d32fb8f5940fce559511851f5` |
| unverified unclassified | UnnamedContract<br>`0x78946df7a8e6419f0bd86934cdf2f59ce1656059` | non_address_book | unknown | unknown | unverified | n/a | `0x2b84260068a16b8d32fb8f5940fce559511851f5` |
| unverified unclassified | UnnamedContract<br>`0x8f2528ee4878c70c82d15903ae9f042a09e9d8f7` | non_address_book | unknown | unknown | unverified | n/a | `0x2b84260068a16b8d32fb8f5940fce559511851f5` |
| unverified unclassified | UnnamedContract<br>`0x90d1d83fd4cca873848d728fd8cef382b1acb4b8` | non_address_book | unknown | unknown | unverified | n/a | `0x2b84260068a16b8d32fb8f5940fce559511851f5` |
| unverified unclassified | UnnamedContract<br>`0xa9e43ae740a19ddd7aa04efa4198b32344f4c0f2` | non_address_book | unknown | unknown | unverified | n/a | `0x2b84260068a16b8d32fb8f5940fce559511851f5` |
| unverified unclassified | UnnamedContract<br>`0xab768db196514df35722a99c37c8ae3581d6352b` | non_address_book | unknown | unknown | unverified | n/a | `0x2b84260068a16b8d32fb8f5940fce559511851f5` |
| unverified unclassified | UnnamedContract<br>`0xb05097849bca421a3f51b249ba6cca4af4b97cb9` | non_address_book | unknown | unknown | unverified | n/a | `0x2b84260068a16b8d32fb8f5940fce559511851f5` |
| unverified unclassified | UnnamedContract<br>`0xb070a2a19b7c01bdcf1a36ac539825d36324ff86` | non_address_book | unknown | unknown | unverified | n/a | `0x2b84260068a16b8d32fb8f5940fce559511851f5` |
| unverified unclassified | UnnamedContract<br>`0xc6d58f8c684f0f2992ba613d209209897c298e44` | non_address_book | unknown | unknown | unverified | n/a | `0x2b84260068a16b8d32fb8f5940fce559511851f5` |
| unverified unclassified | UnnamedContract<br>`0xcd817491872bdb33e0d21589bd92dbff43387ca4` | non_address_book | unknown | unknown | unverified | n/a | `0x2b84260068a16b8d32fb8f5940fce559511851f5` |
| unverified unclassified | UnnamedContract<br>`0xd04f4759a2cc28a5ae33287534caa4dfce90b9c3` | non_address_book | unknown | unknown | unverified | n/a | `0x2b84260068a16b8d32fb8f5940fce559511851f5` |
| unverified unclassified | UnnamedContract<br>`0xe41f9fabee859c4e6d248e9442c822f09742228a` | non_address_book | unknown | unknown | unverified | n/a | `0x2b84260068a16b8d32fb8f5940fce559511851f5` |
| unverified unclassified | UnnamedContract<br>`0xe73cf1bbc792c796826f9e57263483fd3dd38d50` | non_address_book | unknown | unknown | unverified | n/a | `0x2b84260068a16b8d32fb8f5940fce559511851f5` |
| unverified unclassified | UnnamedContract<br>`0xed7df34c629f46de7c31069c7816dd6d8654dd17` | non_address_book | unknown | unknown | unverified | n/a | `0x2b84260068a16b8d32fb8f5940fce559511851f5` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://drive.google.com/file/d/1Vg3nCThlArC44JFj7Di5HMWziPGMFbvl/view) | unknown | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20307] DL audit link — no match: Scope defined in section 1.1 lists directories: contracts/auction, contracts/funds, contracts/policy, contracts/lib (primary), contracts/oracle, contracts/tokens (secondary). Contract names extracted from findings and file paths.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | MonetaryPolicyV1 | unmatched — not counted | — | Affects: Smart Contract MonetaryPolicyV1.sol in finding 2.1 | no |
| DL audit link | Math | unmatched — not counted | — | Affects: Smart Contract Math.sol in findings 2.2 and 2.7 | no |
| DL audit link | AuctionHouse | unmatched — not counted | — | Affects: Smart Contract AuctionHouse.sol in findings 2.3, 2.5, 2.6, 2.8 | no |
| DL audit link | Staged | unmatched — not counted | — | Affects: Smart Contract Staged.sol in findings 2.3, 2.4, 2.7 | no |
| DL audit link | ChainlinkEthUsdConsumer | unmatched — not counted | — | Affects: Smart Contract ChainlinkEthUsdConsumer.sol in finding 2.4 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 5 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20307] DL audit link

Fork inheritance lineage and inherited audits are included when available.
