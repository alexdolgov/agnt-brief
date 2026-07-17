# Agentic Audit Brief: Cub Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Cub Finance (`cub-finance`)
- Website: [https://cubdefi.com](https://cubdefi.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 43 unique implementations (43 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $182,446.86
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Cub Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 43 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/43
- Verified + Unaudited implementations: 43
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 43
- Raw deployments: 43
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (43)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Add | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133760 | `0xd99f14c61c2c4f791c90119f33d3d0a1b8115f7f` | ⚠️ Unaudited |
| BEP20Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133745 | `0x5e719aa339a6229692cf4163eb0d966acf93ce28` | ⚠️ Unaudited |
| BLEO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133746 | `0x6421531af54c7b14ea805719035ebf1e3661c44a` | ⚠️ Unaudited |
| BondContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133747 | `0x68dc13fb84c20582e11288c0c19ec86e48b2abf9` | ⚠️ Unaudited |
| BridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133723 | `0x06791b2117ed179db6af1fdc8b2aa86de76700a6` | ⚠️ Unaudited |
| CAKEPOP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133736 | `0x2f0de2cfa6f4b3a7fd4b650a4c771e07718bb4b0` | ⚠️ Unaudited |
| CallerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133742 | `0x4b86e1be6cbb9a67b573f370192016eaaf30c945` | ⚠️ Unaudited |
| CliffTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133753 | `0xa6ff48646f36a061c64c97108484491bdb608b5d` | ⚠️ Unaudited |
| Cub_Kingdom_Vault_Bakeryswap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133754 | `0xb82d2b31c12f019825dc6231c0999ad266beeb95` | ⚠️ Unaudited |
| Cub_Kingdom_Vault_Belt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133721 | `0x03b0fdc725da305a320455aec177b1b503296cc9` | ⚠️ Unaudited |
| Cub_Kingdom_Vault_Belt_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133739 | `0x3899accf4b2a10dd4ab597c0e403e427f3757413` | ⚠️ Unaudited |
| CubLions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133750 | `0xa032fb9cb614cdbc04bb2b7dc20d691cbe840239` | ⚠️ Unaudited |
| CubMaximiserPCS_v2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133722 | `0x03e48360dc132a1838492b6870c98d2bd895ea9a` | ⚠️ Unaudited |
| CubMaximizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133728 | `0x13f57bddcd27d1ac5cffbc52a5acaca7b168ecf9` | ⚠️ Unaudited |
| CubProfile | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133756 | `0xca17f38df9cb411ea4829479a4140d6ff944666d` | ⚠️ Unaudited |
| CubToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133743 | `0x50d809c74e0b8e49e7b4c65bb3109abe3ff4c1c1` | ⚠️ Unaudited |
| CubVenusVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133741 | `0x49d6ad854930b168a3b2c800eb9f5a27d1d35c30` | ⚠️ Unaudited |
| Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133751 | `0xa22efc88f3eb641d881d0807dc8e305d71920cab` | ⚠️ Unaudited |
| Dripper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133748 | `0x7acec42a840edad95d878d7747e9fe876130cd77` | ⚠️ Unaudited |
| HTLC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133752 | `0xa28493579f7204f630bbc975e6ca8aa27f28c8b5` | ⚠️ Unaudited |
| IDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133727 | `0x0e8d2080d31f8b119df60ab9e23bf0d1df2b5d9d` | ⚠️ Unaudited |
| IFOV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133758 | `0xd03a2c30f001fdd9ab361eb79ffcc0135167ef9f` | ⚠️ Unaudited |
| IterableMapping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133744 | `0x5b76ec45fc1fc5080e57edde445e2f10b60998db` | ⚠️ Unaudited |
| Kingdom | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133730 | `0x16fcb955082ce59ee7bea251c3038331f5ca56a1` | ⚠️ Unaudited |
| KingdomMain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133738 | `0x35ba2751e8ddb7bd647be7adc12cb12a19c4937e` | ⚠️ Unaudited |
| LeoBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133734 | `0x26031359357f882dc292b3b937f88ba944b6ed20` | ⚠️ Unaudited |
| LionFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133763 | `0xf9ee966c68d469c8f6b44b1998f028283981300c` | ⚠️ Unaudited |
| LionFactoryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133740 | `0x428ad484a8f13a0535bbacf55274deb5e8328e44` | ⚠️ Unaudited |
| LionMintingStation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133724 | `0x08a44a735b0c38c0dc1c705f5364ad7f06950965` | ⚠️ Unaudited |
| LionsDen | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133733 | `0x227e79c83065edb8b954848c46ca50b96cb33e16` | ⚠️ Unaudited |
| MulticallBalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133735 | `0x27ddb9f89a451074ec53e60729ceb9c892cf5c2d` | ⚠️ Unaudited |
| MulticallNftBalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133732 | `0x223819df08c76bf4eb733965feeb8ec194ab549b` | ⚠️ Unaudited |
| PaymentsCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133762 | `0xe73c3dc72e7ee19df69089bff6b16de7db8a8733` | ⚠️ Unaudited |
| PaymentsWithdrawer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133737 | `0x33044ddbd45278f98a1c5c2ca664dff28bbae0a5` | ⚠️ Unaudited |
| RainBotDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133726 | `0x0a3fffaa158786015b874afcecaab1dce0892a61` | ⚠️ Unaudited |
| SalusBridgeRegister | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133755 | `0xb9a560236f640d02a256680a88a488a1d23bcd8f` | ⚠️ Unaudited |
| SPS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133729 | `0x1633b7157e7638c4d6593436111bf125ee74703f` | ⚠️ Unaudited |
| SPSMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133731 | `0x1ce7db097be2ccd020133a3b34b98130c0cd79ce` | ⚠️ Unaudited |
| StakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133725 | `0x08bea2702d89abb8059853d654d0838c5e06fe0b` | ⚠️ Unaudited |
| SwapDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133749 | `0x7ddce2fa54fb65791e4826b1c962060f588de111` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133757 | `0xcfbd43ecf0bec6f8a391e6b92dadc0317e276566` | ⚠️ Unaudited |
| TokenFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133759 | `0xd80317d95e231837124410fcbeae48073a7b0c3d` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-133761 | `0xe177d0929d4fda063eda061140e5da71a8da4b70` | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/cubfinance) | CertiK | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17142] DL audit link — no match: Only MasterChef.sol is explicitly listed as an audited file. Other contracts may exist but are not named in the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | MasterChef | unmatched — not counted | — | listed in audited files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 43 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [17142] DL audit link

Fork inheritance lineage and inherited audits are included when available.
