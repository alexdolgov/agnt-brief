# Agentic Audit Brief: Aavegotchi

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

- Project: Aavegotchi (`aavegotchi`)
- Website: [https://aavegotchi.com](https://aavegotchi.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, base-sepolia, ethereum, polygon, sepolia
- Contract surface: 66 unique implementations (66 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $273,284.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Aavegotchi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across base, base-sepolia, ethereum, polygon, sepolia. Structural roles: 2 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (2), supporting (1)
- Contract kinds: contract (3)
- Detected standards: erc165 (1), erc20 (1)
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 21 contracts are derived from known codebases. 21 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1906fd...f5fa70`, chain 1)
- UnnamedContract (`0x385eea...fb54a7`, chain 137)
- UnnamedContract (`0x052e6c...752b4b`, chain 8453)
- UnnamedContract (`0x15e7ca...f31947`, chain 8453)
- UnnamedContract (`0x2028b4...3a0ff4`, chain 8453)
- UnnamedContract (`0x4b0040...c05372`, chain 8453)
- UnnamedContract (`0x4d140c...992c9d`, chain 8453)
- UnnamedContract (`0x50af2d...15186c`, chain 8453)
- UnnamedContract (`0x617fdb...c37938`, chain 8453)
- UnnamedContract (`0x80320a...ffda31`, chain 8453)
- UnnamedContract (`0x898d0f...b66e59`, chain 8453)
- UnnamedContract (`0xa32137...d54b58`, chain 8453)
- UnnamedContract (`0xa99c4b...f29dbf`, chain 8453)
- UnnamedContract (`0xab449d...280d2c`, chain 8453)
- UnnamedContract (`0xab59ca...9df479`, chain 8453)
- UnnamedContract (`0xdc27a8...dff45f`, chain 8453)
- UnnamedContract (`0xe46b89...7206a9`, chain 8453)
- UnnamedContract (`0xe52b91...8ca0e5`, chain 8453)
- UnnamedContract (`0xebba5b...d4e26b`, chain 8453)
- MiniMeToken (`0x3f382d...791550`, chain 1)
- TicketsFacet (`0x93ea6e...15e31a`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (2 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 21/53 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 21 own, 32 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 13 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 21 of 66 unique; 45 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 50
- Unique implementations: 66
- Raw deployments: 66
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ATokenChildChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ea9fa...bbedc8` | ⚠️ Unaudited |
| ATokenRootChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0d29ad...6e0d5c` | ⚠️ Unaudited |
| ChildChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x47195a...474e46` | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x14ab59...4d3f18` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa25346...71737a` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x201df8...db1dfb` | ⚠️ Unaudited |
| EscrowFacet | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-378462 | `0x86935f...cbf95d` | ⚠️ Unaudited |
| MiniMeToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378411 | `0x3f382d...791550` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb208f8...1431ab` | ⚠️ Unaudited |
| OwnershipFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14ab59...4d3f18` | ⚠️ Unaudited |
| RafflesContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x144d19...583db6` | ⚠️ Unaudited |
| StakingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a271b...317b15` | ⚠️ Unaudited |
| TicketsFacet | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378461 | `0x93ea6e...15e31a` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x93ea6e...15e31a` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xffe628...ce8020` | ⚠️ Unaudited |
| VouchersContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe54891...aed313` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (50)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378410 | `0x1906fd...f5fa70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378413 | `0x19f870...d6812a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378414 | `0x1d0360...af2a11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378415 | `0x1fe646...ea1b8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378416 | `0x3801c3...0b9afc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-378417 | `0x385eea...fb54a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378418 | `0x403e96...0bdd0f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378419 | `0x42e5e0...209c5c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378420 | `0x44a6e0...a8e8c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378421 | `0x4fdfc1...aad442` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378422 | `0x5004bc...d58395` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378423 | `0x58de9a...c6a44f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378424 | `0x6a3e7c...1daed2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378425 | `0x6c723c...52c1ce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378426 | `0x9216c3...dca355` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378427 | `0x9f6bcc...0b56d7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378428 | `0xa02d54...c3943f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378429 | `0xa44c8e...310efe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378430 | `0xa4e351...25d1d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378431 | `0xd55432...353306` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378432 | `0x052e6c...752b4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378433 | `0x15e7ca...f31947` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378434 | `0x2028b4...3a0ff4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378435 | `0x4b0040...c05372` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378436 | `0x4d140c...992c9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378437 | `0x50af2d...15186c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378438 | `0x617fdb...c37938` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378439 | `0x80320a...ffda31` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378440 | `0x898d0f...b66e59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378441 | `0xa32137...d54b58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378442 | `0xa99c4b...f29dbf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378443 | `0xab449d...280d2c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378444 | `0xab59ca...9df479` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base | unit-378445 | `0xb27fa5...ad92a0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-378446 | `0xcd2f22...fd9bcb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378447 | `0xdc27a8...dff45f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378448 | `0xe46b89...7206a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378449 | `0xe52b91...8ca0e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378450 | `0xebba5b...d4e26b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378451 | `0x03e26f...47feb0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378452 | `0x0f685b...5fafbb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378453 | `0x155171...22b713` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378454 | `0x37d140...45bf8d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378455 | `0x5aefdc...537609` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378456 | `0x607e44...4e8f3a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378457 | `0x6cff31...eefaec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378458 | `0x96b19f...a4c1da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378459 | `0xab1e7e...532e4a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378460 | `0xe97f36...53a7ae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-378412 | `0xb40b75...1019f9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://safefiles.defiyield.info/safe/files/audit/pdf/REP_Aavegotchi_02_01_2021.pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 26 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19398] DL audit link — no match: Extracted from scope table and Files In Scope section. Audit date from Delivery Date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | AavegotchiFacet | unmatched — not counted | — | listed in scope table | no |
| DL audit link | AavegotchiDiamond | unmatched — not counted | — | listed in scope table | no |
| DL audit link | CollateralFacet | unmatched — not counted | — | listed in scope table | no |
| DL audit link | CollateralEscrow | unmatched — not counted | — | listed in scope table | no |
| DL audit link | DAOFacet | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ILink | unmatched — not counted | — | listed in scope table | no |
| DL audit link | IERC721 | unmatched — not counted | — | listed in scope table | no |
| DL audit link | IERC1155 | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ItemsFacet | unmatched — not counted | — | listed in scope table | no |
| DL audit link | IAavegotchiDiamond | unmatched — not counted | — | listed in scope table | no |
| DL audit link | IERC1155TokenReceiver | unmatched — not counted | — | listed in scope table | no |
| DL audit link | LibVrf | unmatched — not counted | — | listed in scope table | no |
| DL audit link | LibERC20 | unmatched — not counted | — | listed in scope table | no |
| DL audit link | LibDiamond | unmatched — not counted | — | listed in scope table | no |
| DL audit link | LibERC1155 | unmatched — not counted | — | listed in scope table | no |
| DL audit link | LibAppStorage | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ShopFacet | unmatched — not counted | — | listed in scope table | no |
| DL audit link | VRFFacet | unmatched — not counted | — | listed in scope table | no |
| DL audit link | OwnershipFacet | unmatched — not counted | — | listed in Files In Scope section | no |
| DL audit link | DiamondCutFacet | unmatched — not counted | — | listed in Files In Scope section | no |
| DL audit link | DiamondLoupeFacet | unmatched — not counted | — | listed in Files In Scope section | no |
| DL audit link | IERC165 | unmatched — not counted | — | listed in Files In Scope section | no |
| DL audit link | IDiamondLoupe | unmatched — not counted | — | listed in Files In Scope section | no |
| DL audit link | SvgFacet | unmatched — not counted | — | listed in Files In Scope section | no |
| DL audit link | LibSvg | unmatched — not counted | — | listed in Files In Scope section | no |
| DL audit link | IERC20 | unmatched — not counted | — | listed in Files In Scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x3f382d...791550` | MiniMeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x93ea6e...15e31a` | TicketsFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 50 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 26 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [19398] DL audit link

Fork inheritance lineage and inherited audits are included when available.
