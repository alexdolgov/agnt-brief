# Agentic Audit Brief: Boson Protocol

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

- Project: Boson Protocol (`boson-protocol`)
- Website: [https://www.bosonprotocol.io](https://www.bosonprotocol.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, ethereum, optimism, polygon
- Contract surface: 36 unique implementations (36 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $869,047.26
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Boson Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, base, ethereum, optimism, polygon. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), erc20permit (1), pausable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x647fe0cca3df596ba414c8c600d441bb3d10d616`, chain 10)
- UnnamedContract (`0x9b3b0703d392321ad24338ff1f846650437a43c9`, chain 137)
- UnnamedContract (`0x2192607c3cba9ec3d490206d10d831e68e5f3c97`, chain 8453)
- UnnamedContract (`0x54b334d68cf5382fee7fbbe496fcf1e76d9ba000`, chain 42161)
- BosonToken (`0xc477d038d5420c6a9e0b031712f61c5120090de9`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 31 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 5 of 36 unique; 31 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/29
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 36
- Raw deployments: 36
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9c867632dfe6b70d83dfe7865cf8510c168afd40` | ⚠️ Unaudited |
| AccountHandlerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4ba93f34b174ed520eb8ac472c35defe524dbb06` | ⚠️ Unaudited |
| AgentHandlerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8fa52a7d571146657157ba1e2d15f55796c0d49c` | ⚠️ Unaudited |
| BosonClientBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfbe4ca60e612e46809ad181466d178aa697ae5cc` | ⚠️ Unaudited |
| BosonPriceDiscovery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd8c3b2232b3d597156148f757bb2bd665843aabd` | ⚠️ Unaudited |
| BosonToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381411 | `0xc477d038d5420c6a9e0b031712f61c5120090de9` | ⚠️ Unaudited |
| BosonVoucher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbee92440ab699611e03b81fca3f1107602386869` | ⚠️ Unaudited |
| BundleHandlerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x588665499ecc0cc9b6924275359f1d279a242610` | ⚠️ Unaudited |
| BuyerHandlerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4aa238ef21737e138c4f7d4d722f55680ccb30c9` | ⚠️ Unaudited |
| ConfigHandlerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7e91527ed433761acd674d6acda1afd6b0623fbe` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3ce6a434dad2ace6c8dbec6dc007d6a8fad068e9` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xba596ee5c051faf6b263d457835e65a26661382c` | ⚠️ Unaudited |
| DisputeHandlerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6252236d213a80a67c85a48ec48d38245c8362ff` | ⚠️ Unaudited |
| DisputeResolverHandlerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8a7f0260ed956f8a51193672f26d9b9a31347359` | ⚠️ Unaudited |
| ERC165Facet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb5e1d2c4cc71d44a601efc94fe68c9202ce6b294` | ⚠️ Unaudited |
| ExchangeHandlerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4fa60c62147c3732baa7e9abba8d7017dd6fce66` | ⚠️ Unaudited |
| FundsHandlerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x52075179452377da8264e3525f71c9099257fa90` | ⚠️ Unaudited |
| GroupHandlerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x85a52d353027e28739f57a212324ccd05ef83008` | ⚠️ Unaudited |
| MetaTransactionsHandlerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xab9c0f0eba44f9e1b383aa5dee83e06316640b50` | ⚠️ Unaudited |
| OfferHandlerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5fd6b187e800bafa53bdee18619a8e828a6c1011` | ⚠️ Unaudited |
| OrchestrationHandlerFacet1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x794df5a4d6276c06035f68c3d906afb9e00583e3` | ⚠️ Unaudited |
| OrchestrationHandlerFacet2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa0d1872bfa6031a94ad2339a81bf9c99719ec397` | ⚠️ Unaudited |
| PauseHandlerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5f7d1a252ea613fb5b4bdf45a68d4bad9ad51c5b` | ⚠️ Unaudited |
| PriceDiscoveryHandlerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x25ed04c326a89b67c66fa8aafc8827770a9cf72c` | ⚠️ Unaudited |
| ProtocolDiamond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x59a4c19b55193d5a2ead0065c54af4d516e18cb5` | ⚠️ Unaudited |
| ProtocolInitializationHandlerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd624d257ff6e435fdf9a05ba21ab270fdb7e471c` | ⚠️ Unaudited |
| SellerHandlerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe282ff84bd704504057eaf78ac34e4a991b69d83` | ⚠️ Unaudited |
| SequentialCommitHandlerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x208e1180211959c9caf9305ff725aa5625484f69` | ⚠️ Unaudited |
| TwinHandlerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe45a5828c39d14fb854526426c70547c9df1ae61` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-381412 | `0x647fe0cca3df596ba414c8c600d441bb3d10d616` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xabd67624662f05b4fb5084f8edcc2f2a422670bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe8a57dd8784e6f0ce4c1b51cef52d04b7c1f1c04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xed2e929e36484e767e39d9b4f1c190cc179ed586` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-381413 | `0x9b3b0703d392321ad24338ff1f846650437a43c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-381415 | `0x2192607c3cba9ec3d490206d10d831e68e5f3c97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381414 | `0x54b334d68cf5382fee7fbbe496fcf1e76d9ba000` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 3
- Live contracts: 0
- Unknown liveness contracts: 3
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=3

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0xabd67624662f05b4fb5084f8edcc2f2a422670bf` | non_address_book | unknown | unknown | unverified | n/a | `0xe92a1f3f25246fb38be056de659b18fde9d7cc28` |
| unverified unclassified | UnnamedContract<br>`0xe8a57dd8784e6f0ce4c1b51cef52d04b7c1f1c04` | non_address_book | unknown | unknown | unverified | n/a | `0xe92a1f3f25246fb38be056de659b18fde9d7cc28` |
| unverified unclassified | UnnamedContract<br>`0xed2e929e36484e767e39d9b4f1c190cc179ed586` | non_address_book | unknown | unknown | unverified | n/a | `0xe92a1f3f25246fb38be056de659b18fde9d7cc28` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audits.md](https://github.com/bosonprotocol/boson-protocol-contracts/blob/main/docs/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19614] audits.md — no match: The document is an index page listing audit reports for Boson Protocol V2, but does not contain the actual audit reports or scope sections with contract names.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xc477d038d5420c6a9e0b031712f61c5120090de9` | BosonToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [19614] audits.md

Fork inheritance lineage and inherited audits are included when available.
