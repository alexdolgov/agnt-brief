# Agentic Audit Brief: USX.Capital

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: USX.Capital (`usx.capital`)
- Website: [https://www.usx.capital/home](https://www.usx.capital/home)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: scroll
- Contract surface: 33 unique implementations (33 raw deployments)
- Coverage basis: 0/6 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $762,702.53
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for USX.Capital. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across scroll. Structural roles: 3 unclassified, 2 supporting, 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: unclassified (3), supporting (2), core (1)
- Contract kinds: contract (6)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2d012edbadc37edc2bc62791b666f9193fdf5a55`, chain 534352)
- ERC1967Proxy (`0x3b005fefc63ca7c8d25ee21fba3787229ba4cf03`, chain 534352)
- ERC1967Proxy (`0x9f3d4b0c9e930ca3957ecd3dedb7417f8e0e4c35`, chain 534352)
- ERC1967Proxy (`0xcb14bcdf6cd483665d10dfd6f87d908996c7f922`, chain 534352)
- ERC1967Proxy (`0xd16909ecc9c71d481ee3b2cb1968c0dadcf0d300`, chain 534352)
- MetaMorphoV1_1 (`0xd39df22a3cd1c91b22d5e748cc62b03ed3e8a8ad`, chain 534352)
- SafeProxy (`0xd09e956353fc641792a0f1a7d748773358848f65`, chain 534352)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/6 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 26 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 7 of 33 unique; 26 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 33
- Raw deployments: 33
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | proxy | project_anchor | own_supporting | 0 | scroll | unit-395582 | `0x3b005fefc63ca7c8d25ee21fba3787229ba4cf03` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 0 | scroll | unit-395583 | `0x9f3d4b0c9e930ca3957ecd3dedb7417f8e0e4c35` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 0 | scroll | unit-395584 | `0xcb14bcdf6cd483665d10dfd6f87d908996c7f922` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 0 | scroll | unit-395586 | `0xd16909ecc9c71d481ee3b2cb1968c0dadcf0d300` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | scroll | unit-395587 | `0xd39df22a3cd1c91b22d5e748cc62b03ed3e8a8ad` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 0 | scroll | unit-395585 | `0xd09e956353fc641792a0f1a7d748773358848f65` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x0956dc7e032e77a7b207eb3076b1a47c54627dbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x09f816134c974e8b22300071e7a203ebf4a369f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x2b1ef03129947eeaae2482cfe696b459f8acf957` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-395581 | `0x2d012edbadc37edc2bc62791b666f9193fdf5a55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x3526f100dd50469561599fed5b1fa2413aae4606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x49cbe0911c4f878e744387f4168ff592b26b1042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4e45b5571815a04f421fb8a32904865e5a9e0845` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x54a56a45d74f748fe5cde96a3d17843568e287e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x5e68534dc0063c418d14d50b3137ea01653f3d7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x60598d8e64dec03f1bc6dbb90912df2f2be440da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6065dcb9774a7ef4a74aaacd26087b0f7b6e27a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6272597fc1cc23c9e932e670156866fdd4782a30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6364b8e5cc44d4d029f7b2ee23bff4b1ba560c76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6a74f3ed7cd17912093b155feeacdeb61838e23a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x72d3ade7359a0b2a6eab18b94797cbcd2b873719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x759d61344e7d79b00b90fa6c58fa8ea2c65e35a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9341bee9a65a00244cc1960b307f46cdd28e460d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9bb2bee1952bb2991f138f19b58e6f0befa1e1f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9c8c2d68e1241b0e4ceba2ea1f5c6fce6ef53a69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9d43e1ad59d9e8435aaa4184527965d1840177f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9f6bb0704ff74b8bfb500e655d47b87b26b59480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa309f0be433748450e09359b8eb9bda51c067a68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xab999cfc36f4c91e2058bc56d9181e0a774d9a70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc1b33208d4d0ecfc9159f19f41fe91ed635bb858` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xceb14e3b0ba7b3a163efbf46adb44f53e5bffc21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xdf16bdc2e4f10aafef940063b58be6c65872ef54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xf5c3ebd1f58199a7d2e564acb30cd1174bd7a5b2` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 26
- Live contracts: 0
- Unknown liveness contracts: 26
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=26

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| scroll | unverified unclassified | UnnamedContract<br>`0x0956dc7e032e77a7b207eb3076b1a47c54627dbd` | non_address_book | unknown | unknown | unverified | n/a | `0xb6af812ee71acb24d3e2f978920517f4ae5f31b2` |
| scroll | unverified unclassified | UnnamedContract<br>`0x09f816134c974e8b22300071e7a203ebf4a369f2` | non_address_book | unknown | unknown | unverified | n/a | `0xb6af812ee71acb24d3e2f978920517f4ae5f31b2` |
| scroll | unverified unclassified | UnnamedContract<br>`0x2b1ef03129947eeaae2482cfe696b459f8acf957` | non_address_book | unknown | unknown | unverified | n/a | `0xb6af812ee71acb24d3e2f978920517f4ae5f31b2` |
| scroll | unverified unclassified | UnnamedContract<br>`0x3526f100dd50469561599fed5b1fa2413aae4606` | non_address_book | unknown | unknown | unverified | n/a | `0xb6af812ee71acb24d3e2f978920517f4ae5f31b2` |
| scroll | unverified unclassified | UnnamedContract<br>`0x49cbe0911c4f878e744387f4168ff592b26b1042` | non_address_book | unknown | unknown | unverified | n/a | `0xb6af812ee71acb24d3e2f978920517f4ae5f31b2` |
| scroll | unverified unclassified | UnnamedContract<br>`0x4e45b5571815a04f421fb8a32904865e5a9e0845` | non_address_book | unknown | unknown | unverified | n/a | `0xb6af812ee71acb24d3e2f978920517f4ae5f31b2` |
| scroll | unverified unclassified | UnnamedContract<br>`0x54a56a45d74f748fe5cde96a3d17843568e287e5` | non_address_book | unknown | unknown | unverified | n/a | `0xb6af812ee71acb24d3e2f978920517f4ae5f31b2` |
| scroll | unverified unclassified | UnnamedContract<br>`0x5e68534dc0063c418d14d50b3137ea01653f3d7c` | non_address_book | unknown | unknown | unverified | n/a | `0xb6af812ee71acb24d3e2f978920517f4ae5f31b2` |
| scroll | unverified unclassified | UnnamedContract<br>`0x60598d8e64dec03f1bc6dbb90912df2f2be440da` | non_address_book | unknown | unknown | unverified | n/a | `0xb6af812ee71acb24d3e2f978920517f4ae5f31b2` |
| scroll | unverified unclassified | UnnamedContract<br>`0x6065dcb9774a7ef4a74aaacd26087b0f7b6e27a9` | non_address_book | unknown | unknown | unverified | n/a | `0xb6af812ee71acb24d3e2f978920517f4ae5f31b2` |
| scroll | unverified unclassified | UnnamedContract<br>`0x6272597fc1cc23c9e932e670156866fdd4782a30` | non_address_book | unknown | unknown | unverified | n/a | `0xb6af812ee71acb24d3e2f978920517f4ae5f31b2` |
| scroll | unverified unclassified | UnnamedContract<br>`0x6364b8e5cc44d4d029f7b2ee23bff4b1ba560c76` | non_address_book | unknown | unknown | unverified | n/a | `0xb6af812ee71acb24d3e2f978920517f4ae5f31b2` |
| scroll | unverified unclassified | UnnamedContract<br>`0x6a74f3ed7cd17912093b155feeacdeb61838e23a` | non_address_book | unknown | unknown | unverified | n/a | `0xb6af812ee71acb24d3e2f978920517f4ae5f31b2` |
| scroll | unverified unclassified | UnnamedContract<br>`0x72d3ade7359a0b2a6eab18b94797cbcd2b873719` | non_address_book | unknown | unknown | unverified | n/a | `0xb6af812ee71acb24d3e2f978920517f4ae5f31b2` |
| scroll | unverified unclassified | UnnamedContract<br>`0x759d61344e7d79b00b90fa6c58fa8ea2c65e35a4` | non_address_book | unknown | unknown | unverified | n/a | `0xb6af812ee71acb24d3e2f978920517f4ae5f31b2` |
| scroll | unverified unclassified | UnnamedContract<br>`0x9341bee9a65a00244cc1960b307f46cdd28e460d` | non_address_book | unknown | unknown | unverified | n/a | `0xb6af812ee71acb24d3e2f978920517f4ae5f31b2` |
| scroll | unverified unclassified | UnnamedContract<br>`0x9bb2bee1952bb2991f138f19b58e6f0befa1e1f6` | non_address_book | unknown | unknown | unverified | n/a | `0xb6af812ee71acb24d3e2f978920517f4ae5f31b2` |
| scroll | unverified unclassified | UnnamedContract<br>`0x9c8c2d68e1241b0e4ceba2ea1f5c6fce6ef53a69` | non_address_book | unknown | unknown | unverified | n/a | `0xb6af812ee71acb24d3e2f978920517f4ae5f31b2` |
| scroll | unverified unclassified | UnnamedContract<br>`0x9d43e1ad59d9e8435aaa4184527965d1840177f5` | non_address_book | unknown | unknown | unverified | n/a | `0xb6af812ee71acb24d3e2f978920517f4ae5f31b2` |
| scroll | unverified unclassified | UnnamedContract<br>`0x9f6bb0704ff74b8bfb500e655d47b87b26b59480` | non_address_book | unknown | unknown | unverified | n/a | `0xb6af812ee71acb24d3e2f978920517f4ae5f31b2` |
| scroll | unverified unclassified | UnnamedContract<br>`0xa309f0be433748450e09359b8eb9bda51c067a68` | non_address_book | unknown | unknown | unverified | n/a | `0xb6af812ee71acb24d3e2f978920517f4ae5f31b2` |
| scroll | unverified unclassified | UnnamedContract<br>`0xab999cfc36f4c91e2058bc56d9181e0a774d9a70` | non_address_book | unknown | unknown | unverified | n/a | `0xb6af812ee71acb24d3e2f978920517f4ae5f31b2` |
| scroll | unverified unclassified | UnnamedContract<br>`0xc1b33208d4d0ecfc9159f19f41fe91ed635bb858` | non_address_book | unknown | unknown | unverified | n/a | `0xb6af812ee71acb24d3e2f978920517f4ae5f31b2` |
| scroll | unverified unclassified | UnnamedContract<br>`0xceb14e3b0ba7b3a163efbf46adb44f53e5bffc21` | non_address_book | unknown | unknown | unverified | n/a | `0xb6af812ee71acb24d3e2f978920517f4ae5f31b2` |
| scroll | unverified unclassified | UnnamedContract<br>`0xdf16bdc2e4f10aafef940063b58be6c65872ef54` | non_address_book | unknown | unknown | unverified | n/a | `0xb6af812ee71acb24d3e2f978920517f4ae5f31b2` |
| scroll | unverified unclassified | UnnamedContract<br>`0xf5c3ebd1f58199a7d2e564acb30cd1174bd7a5b2` | non_address_book | unknown | unknown | unverified | n/a | `0xb6af812ee71acb24d3e2f978920517f4ae5f31b2` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [docs.blend.money/resources/audits](https://docs.blend.money/resources/audits) | yAudit | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [USX - Zellic Audit Report.pdf](https://3601501210-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FdTt60r5om0G1pRfwMApK%2Fuploads%2F6rf6tkbaggWN6AQ73SzA%2FUSX%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11712] docs.blend.money/resources/audits — no match: Extracted contract names from multiple audit scope descriptions. The audit date is the last modified date of the page (June 19, 2026), which is the most prominent date.
- [28338] USX - Zellic Audit Report.pdf — no match: Scope section clearly lists 7 contracts with file paths. Audit date is October 2, 2025 from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| docs.blend.money/resources/audits | AcrossXChainAdapter | unmatched — not counted | — | listed in scope of multiple audits | no |
| docs.blend.money/resources/audits | CCTPXChainAdapter | unmatched — not counted | — | listed in scope of multiple audits | no |
| docs.blend.money/resources/audits | OFTXChainAdapter | unmatched — not counted | — | listed in scope of Cross-Chain Adapters & Withdraw Security Review | no |
| docs.blend.money/resources/audits | UserWithdrawVaultAction | unmatched — not counted | — | listed in scope of Cross-Chain Adapters & Withdraw Security Review | no |
| docs.blend.money/resources/audits | XChainVaultAction | unmatched — not counted | — | listed in scope of multiple audits | no |
| docs.blend.money/resources/audits | IXChainAdapterController | unmatched — not counted | — | listed in scope of Cross-Chain Adapters & Withdraw Security Review | no |
| docs.blend.money/resources/audits | DeallocateLib | unmatched — not counted | — | listed in scope of Cross-Chain Adapters & Withdraw Security Review | no |
| docs.blend.money/resources/audits | PriceLib | unmatched — not counted | — | listed in scope of multiple audits | no |
| docs.blend.money/resources/audits | UserWithdrawController | unmatched — not counted | — | listed in scope of User Withdraw Controller Security Review | no |
| docs.blend.money/resources/audits | DelegateController | unmatched — not counted | — | listed in scope of User Withdraw Controller Security Review | no |
| docs.blend.money/resources/audits | MorphoVaultLib | unmatched — not counted | — | listed in scope of multiple audits | no |
| docs.blend.money/resources/audits | StrategyManager | unmatched — not counted | — | listed in scope of User Withdraw Controller Security Review | no |
| docs.blend.money/resources/audits | RebalanceTypes | unmatched — not counted | — | listed in scope of User Withdraw Controller Security Review | no |
| docs.blend.money/resources/audits | StrategyTypes | unmatched — not counted | — | listed in scope of User Withdraw Controller Security Review | no |
| docs.blend.money/resources/audits | BlendSafeFactory | unmatched — not counted | — | listed in scope of Cross-Chain Infrastructure Security Review | no |
| docs.blend.money/resources/audits | SwapAdapter | unmatched — not counted | — | listed in scope of multiple audits | no |
| docs.blend.money/resources/audits | WhitelistedSwapAdapter | unmatched — not counted | — | listed in scope of Swap Adapter Security Assessment | no |
| USX - Zellic Audit Report.pdf | RewardDistributorFacet | unmatched — not counted | — | listed in scope table | no |
| USX - Zellic Audit Report.pdf | AssetManagerAllocatorFacet | unmatched — not counted | — | listed in scope table | no |
| USX - Zellic Audit Report.pdf | TreasuryStorage | unmatched — not counted | — | listed in scope table | no |
| USX - Zellic Audit Report.pdf | TreasuryDiamond | unmatched — not counted | — | listed in scope table | no |
| USX - Zellic Audit Report.pdf | StakedUSX | unmatched — not counted | — | listed in scope table | no |
| USX - Zellic Audit Report.pdf | USX | unmatched — not counted | — | listed in scope table | no |
| USX - Zellic Audit Report.pdf | AssetManager | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 1 |
| standard_library | 5 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 24 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [11712] docs.blend.money/resources/audits
- [28338] USX - Zellic Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
