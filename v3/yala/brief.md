# Agentic Audit Brief: Yala

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

- Project: Yala (`yala`)
- Website: [https://www.yala.org](https://www.yala.org)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 30 unique implementations (31 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,698,303.17
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Yala. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum. Structural roles: 1 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), supporting (1)
- Contract kinds: contract (2)
- Detected standards: erc20 (2), erc20permit (2), ownable (2), accesscontrol (1), erc165 (1), pausable (1)
- Frameworks: layerzero (2), openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BridgeToken (`0x27a70b9f8073efe5a02998d5cc64acdc9e0ba589`, chain 1)
- DebtToken (`0xe868084cf08f3c3db11f4b73a95473762d9463f7`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 28 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 30 unique; 28 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 30
- Raw deployments: 31
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssetWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5d027108264000f3670a623dceb8d14ecfc21b9` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fb4c4ade2a7ffe765d8193610779ff01dd923a0` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-397379 | `0x27a70b9f8073efe5a02998d5cc64acdc9e0ba589` | ⚠️ Unaudited |
| DebtToken | token | project_anchor | own_supporting | 0 | ethereum | unit-397380 | `0xe868084cf08f3c3db11f4b73a95473762d9463f7` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca61a7be20d361b21c0ad7fa61e241c56202e66c` | ⚠️ Unaudited |
| GasPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x306698f58c0670ea2be3d325e61582ae61268784` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6fe5413361d8fa7df08c50a9211167ecd4f7b6e` | ⚠️ Unaudited |
| PSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0b4e03ecb66be6774c216ea9eca3663a85ee41fd`; ethereum `0x4171e25e35fa13e98fb970d919b055c1866e6a12` | ⚠️ Unaudited |
| StabilityPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9593807414124328e9033756309a985799b1e7fe` | ⚠️ Unaudited |
| TroveManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcd922cba657b7c07fd114bf6734069bd66622f2` | ⚠️ Unaudited |
| YalaCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5eeaf2eeb9e1c7b88acfad3f41401925fc20c8b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c229b7ae7c04746bd4255bd019c7a8bae995829` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d2ebf9df0bd3627868bf5e7b1efba1ff8e95978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eedc0c63f2a525c502bcaebb16d836c1148fb2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14b5158a5ccfcdd4d1f65beb3fa0642dd18206ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ee7e1a4b337f85068d88ed3c65eadd4e5d7cdd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x356123c7a8a120852b7cfd63ab012ca51c511950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bce667d1e625929341058387e99125925532431` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cae6f9ea9a3870781b5bf81e19b99ee9054d0b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5460076d17a57464f2a0304327d85741e88a4288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x599d9c155d0e79e9d8ef6e02db4e17a931807e8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7066e36ceee1830c4cff06bcf34bc90fbea67748` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7aa1d5aa1a704450515d694152ab101f9c8de749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80010dfa9f4a5465ac5766943babae3e0f326e18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86df4c1dd96f97025d198486487937896dc4fc92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9767f485e6d3120c6dc3aaeddc417f8a90e5927d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa96a92e0c640b5049fe871ad998823f10c9a9a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb977a8f701a97ae215a59b39a28bbaa1b09e2d33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf4c0b944ce46546d47315254fecbb991264239f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef2352f5b2bc5e9293483c2b53258928587867d6` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 11
- Live contracts: 0
- Unknown liveness contracts: 11
- Source-verified contracts: 6
- Currently scope-matched contracts retained as-is: 0
- Classification counts: contamination review=3, source verified unclassified=3, unverified unclassified=5

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| contamination review | Factory<br>`0xca61a7be20d361b21c0ad7fa61e241c56202e66c` | non_address_book | unknown | unknown | verified | n/a | `0xc4a59122cd5e140ccc881327f62dcc2b1dc1451b` |
| contamination review | PriceFeed<br>`0xf6fe5413361d8fa7df08c50a9211167ecd4f7b6e` | non_address_book | unknown | unknown | verified | n/a | `0xc4a59122cd5e140ccc881327f62dcc2b1dc1451b` |
| contamination review | YalaCore<br>`0xd5eeaf2eeb9e1c7b88acfad3f41401925fc20c8b` | non_address_book | unknown | unknown | verified | n/a | `0xc4a59122cd5e140ccc881327f62dcc2b1dc1451b` |
| source verified unclassified | GasPool<br>`0x306698f58c0670ea2be3d325e61582ae61268784` | non_address_book | unknown | unknown | verified | n/a | `0xc4a59122cd5e140ccc881327f62dcc2b1dc1451b` |
| source verified unclassified | PSM<br>`0x4171e25e35fa13e98fb970d919b055c1866e6a12` | non_address_book | unknown | unknown | verified | n/a | `0xc4a59122cd5e140ccc881327f62dcc2b1dc1451b` |
| source verified unclassified | TroveManager<br>`0xdcd922cba657b7c07fd114bf6734069bd66622f2` | non_address_book | unknown | unknown | verified | n/a | `0xc4a59122cd5e140ccc881327f62dcc2b1dc1451b` |
| unverified unclassified | UnnamedContract<br>`0x0d2ebf9df0bd3627868bf5e7b1efba1ff8e95978` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a59122cd5e140ccc881327f62dcc2b1dc1451b` |
| unverified unclassified | UnnamedContract<br>`0x356123c7a8a120852b7cfd63ab012ca51c511950` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a59122cd5e140ccc881327f62dcc2b1dc1451b` |
| unverified unclassified | UnnamedContract<br>`0x599d9c155d0e79e9d8ef6e02db4e17a931807e8f` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a59122cd5e140ccc881327f62dcc2b1dc1451b` |
| unverified unclassified | UnnamedContract<br>`0x80010dfa9f4a5465ac5766943babae3e0f326e18` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a59122cd5e140ccc881327f62dcc2b1dc1451b` |
| unverified unclassified | UnnamedContract<br>`0xa96a92e0c640b5049fe871ad998823f10c9a9a4a` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a59122cd5e140ccc881327f62dcc2b1dc1451b` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Yala - Zenith Audit Report.pdf](https://github.com/yalaorg/yala-protocol-contracts/blob/main/audits/Yala%20-%20Zenith%20Audit%20Report.pdf) | unknown | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [9159] Yala - Zenith Audit Report.pdf — no match: Scope section lists three files: CRSM.sol, CRSMFactory.sol, DebtTokenOFT.sol. Audit dates: March 17-18, 2025, so end date is 2025-03-18.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Yala - Zenith Audit Report.pdf | CRSM | unmatched — not counted | — | listed in scope | no |
| Yala - Zenith Audit Report.pdf | CRSMFactory | unmatched — not counted | — | listed in scope | no |
| Yala - Zenith Audit Report.pdf | DebtTokenOFT | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x27a70b9f8073efe5a02998d5cc64acdc9e0ba589` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe868084cf08f3c3db11f4b73a95473762d9463f7` | DebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [9159] Yala - Zenith Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
