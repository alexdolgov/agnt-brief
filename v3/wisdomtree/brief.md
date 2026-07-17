# Agentic Audit Brief: WisdomTree

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: WisdomTree (`wisdomtree`)
- Website: [https://www.wisdomtreeprime.com/](https://www.wisdomtreeprime.com/)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 34 unique implementations (52 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $728,449,142.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for WisdomTree. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 34 contract row(s) across arbitrum, base, ethereum, optimism. Structural roles: 30 unclassified, 4 core. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 34
- Structural roles: unclassified (30), core (4)
- Contract kinds: contract (34)
- Detected standards: erc1967proxy (4)
- Frameworks: none
- Upgradeable-pattern rows: 4

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 34; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 33 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations shown in the inventory but excluded from coverage (14 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 22
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 34
- Raw deployments: 52
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 2 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Beacon | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x10fe70382576f271caef5c152266fb458efb53fa` | ⚠️ Unaudited |
| ERC20RevocableComplianceStandard | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc2a8ca84bc363605c36757f9409b214b6ee710c9`; ethereum `0xf89aa0ae2b6c47c0eaefb49abcc266a44a1b61cb` | ⚠️ Unaudited |
| ERC20RevocableComplianceStandard | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0xc2a8ca84bc363605c36757f9409b214b6ee710c9`; optimism `0xc2f490d5ab8e918686ad4bb795b1bd7f60dbf7b1` | ⚠️ Unaudited |
| ERC20RevocableComplianceStandard | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | base | n/a | 2 deployments: base `0x1fecf3d9d4fee7f2c02917a66028a48c6706c179`; base `0xc2f490d5ab8e918686ad4bb795b1bd7f60dbf7b1` | ⚠️ Unaudited |
| ERC20RevocableComplianceStandard | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x6e46c98c4805b7cad59d557e1c47af535f1706b1`; arbitrum `0x9a289c9976215664c265a35ecb2fa733295369e7` | ⚠️ Unaudited |
| ERC721SoulboundToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-261898 | `0x2a33ae49f96b8982023f8381b57c1f2658f616bc` | ⚠️ Unaudited |
| ERC721SoulboundToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x507d898226e6a3e5eb8dbecae0b9e8fd51337656`; ethereum `0xfeb26f0943c3885b2cb85a9f933975356c81c33d` | ⚠️ Unaudited |
| ERC721SoulboundToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 2 | optimism | n/a | 3 deployments: optimism `0x1fecf3d9d4fee7f2c02917a66028a48c6706c179`; optimism `0x6e46c98c4805b7cad59d557e1c47af535f1706b1`; optimism `0xf89aa0ae2b6c47c0eaefb49abcc266a44a1b61cb` | ⚠️ Unaudited |
| ERC721SoulboundToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 2 | base | n/a | 3 deployments: base `0x507d898226e6a3e5eb8dbecae0b9e8fd51337656`; base `0x6e46c98c4805b7cad59d557e1c47af535f1706b1`; base `0xf89aa0ae2b6c47c0eaefb49abcc266a44a1b61cb` | ⚠️ Unaudited |
| ERC721SoulboundToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x03ebcbdbddbbe3390f227c73ed9073834787932c`; arbitrum `0x213e229b98a89ac771cdb1e46359e770d2ec9e53`; arbitrum `0xe0e4cff881e5b973d301d0ac1edaff0b0f72879c` | ⚠️ Unaudited |
| Proxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-261900 | `0x2e5f7dbed4aa799b13c737992562b7e8742b3a32` | ⚠️ Unaudited |
| Proxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-261894 | `0x3aa66362b62712f281a00e3d1f72b7b5b851736e` | ⚠️ Unaudited |
| WhitelistComplianceOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-261896 | `0x285d3256f0bbe7b69b511f75ce7a88f03d360a06` | ⚠️ Unaudited |
| WhitelistComplianceOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x404a814c5544ae631fb0e77fbb27f5550ee54600`; ethereum `0xc886d847c7a0e236c258e345367b388037283e43` | ⚠️ Unaudited |
| WhitelistComplianceOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 2 | optimism | n/a | 3 deployments: optimism `0x2a33ae49f96b8982023f8381b57c1f2658f616bc`; optimism `0x507d898226e6a3e5eb8dbecae0b9e8fd51337656`; optimism `0xfeb26f0943c3885b2cb85a9f933975356c81c33d` | ⚠️ Unaudited |
| WhitelistComplianceOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 2 | base | n/a | 3 deployments: base `0x2a33ae49f96b8982023f8381b57c1f2658f616bc`; base `0x404a814c5544ae631fb0e77fbb27f5550ee54600`; base `0xfeb26f0943c3885b2cb85a9f933975356c81c33d` | ⚠️ Unaudited |
| WhitelistComplianceOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x1a9aefcc9a622cf4681eb0172b587adaaa76d8b9`; arbitrum `0xb2187ff1b69ad1f06ce6ba13302a7988c451b56c`; arbitrum `0xfd90707291d688c3fdb12c09f6246bc2598659dd` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x1a17f2bdb023e516f1b32b121f332fa931802a9f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x1fecf3d9d4fee7f2c02917a66028a48c6706c179` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x2ecad4280b7720ba4f3830b47ab8ef2da4763f04` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x3340e2c0ddcc4a035737bc1f5445c7d0fa6cbf5c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x4d682cbd74a67b1ffe97a2bb78475a16efe23e8a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x518fb6afefea9bb0a5135014d8032edee4a8b1ec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x873d589f38abbcdd1fca27261aba2f1aa0661d44` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x92ff03a4bc4b3763a17a2ecfcf2a6c1544f7c6ca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x98f865bd2e5a3e289b8cca54f24a7eeb2bba56ce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x9e5621b5da05435f9931e5ccd01c3c24476155a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa14669a76b12f94d6ad09304ad15905e900a6e25` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa4964a2fe606f1d445e36006bcb7f7faee580042` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa58b23027cdeb442854bb8063164d1fd48f37707` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xabfb6d2535885f2f3cfb896825d3b99c47578ac6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd97421fce28c6a8c534b7530e23d413399762b98` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe7d2e561b8e3b1a0125f45da596706110f8953be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xfb20015fb2047320a0f1c209f35c6432147770e8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Whitelist Contexts Audit](https://dataspanapi.wisdomtree.com/pdr/documents/REGULATORY_MISC/WDM/US/EN-US/WHITELIST-CONTEXTS-AUDIT) | unknown | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 43 | high |
| [EVM Tokenization Audit](https://dataspanapi.wisdomtree.com/pdr/documents/REGULATORY_MISC/WDM/US/EN-US/EVM-TOKENIZATION-AUDIT) | unknown | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 32 | high |
| [Solana Tokenized Funds Audit Report](https://dataspanapi.wisdomtree.com/pdr/documents/REGULATORY_MISC/WDT/US/EN-US/SOLANA-TOKENIZED-FUNDS-AUDIT-REPORT) | unknown | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [30098] Whitelist Contexts Audit — no match: Extracted all contracts from the Scope section (pages 5-6) and diff-audited files. Audit date from cover page: February 26, 2025.
- [30099] EVM Tokenization Audit — no match: All contracts listed in the Scope section of the audit report were extracted. The audit date is from the cover page: 'August 11, 2025'.
- [30100] Solana Tokenized Funds Audit Report — no match: Extracted 8 program names from the scope section. Audit date found on cover page: January 14, 2026.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Whitelist Contexts Audit | AccessControl | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IAccessControl | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IBeacon | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IERC165 | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | BytesHelper | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | StorageSlot | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | ICompliance | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IOracle | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IOracleBeaconUpgrade | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IOracleInit | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IWhitelistComplianceOracle | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IWhitelistOracle | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | WhitelistComplianceOracle | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | Beacon | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | Proxy | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | ERC721BasicToken | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | ERC721SoulboundToken | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IERC1155 | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IERC721 | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IERC721BeaconUpgrade | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IERC721Burnable | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IERC721Enumerable | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IERC721Errors | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IERC721Events | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IERC721Metadata | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IERC721Mintable | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IERC721Receiver | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IERC721Token | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IERC721TokenInit | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IERC721Soulbound | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IERC721SoulboundBeaconUpgrade | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IERC721SoulboundBurnable | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IERC721SoulboundEnumerable | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IERC721SoulboundErrors | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IERC721SoulboundEvents | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IERC721SoulboundMetadata | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IERC721SoulboundMintable | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IERC721SoulboundReceiver | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IERC721SoulboundToken | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | IERC721SoulboundTokenInit | unmatched — not counted | — | listed in scope | no |
| Whitelist Contexts Audit | Arrays | unmatched — not counted | — | diff-audited against OpenZeppelin v5.0.0 | no |
| Whitelist Contexts Audit | Math | unmatched — not counted | — | diff-audited against OpenZeppelin v4.8.0 | no |
| Whitelist Contexts Audit | Strings | unmatched — not counted | — | diff-audited against OpenZeppelin v4.8.0 | no |
| EVM Tokenization Audit | IBeacon | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | IOracleInit | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | WhitelistComplianceOracle | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | Proxy | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | Beacon | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | BaseERC20 | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | ERC20BasicStandard | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | ERC20ControlledStandard | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | ERC20RevocableComplianceStandard | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | ERC20RevocableStandard | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | ERC721BasicToken | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | ERC721SoulboundToken | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | IERC721TokenInit | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | IERC721SoulboundTokenInit | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | IERC20 | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | IERC20BatchBasic | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | IERC20BatchClawback | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | IERC20BatchFreeze | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | IERC20Burnable | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | IERC20Clawback | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | IERC20ClawbackEvents | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | IERC20Errors | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | IERC20Events | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | IERC20Freeze | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | IERC20FreezeEvents | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | IERC20Mintable | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | IERC20Pausable | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | IERC20PausableEvents | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | IERC20Permit | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | IERC20RevocableCompliance | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | IERC20Token | unmatched — not counted | — | listed in scope | no |
| EVM Tokenization Audit | IERC20WithRoles | unmatched — not counted | — | listed in scope | no |
| Solana Tokenized Funds Audit Report | admin-operations | unmatched — not counted | — | listed in scope | no |
| Solana Tokenized Funds Audit Report | compliance-config | unmatched — not counted | — | listed in scope | no |
| Solana Tokenized Funds Audit Report | compliance-roles | unmatched — not counted | — | listed in scope | no |
| Solana Tokenized Funds Audit Report | sbt-registry | unmatched — not counted | — | listed in scope | no |
| Solana Tokenized Funds Audit Report | transfer-hook | unmatched — not counted | — | listed in scope | no |
| Solana Tokenized Funds Audit Report | fund-ops | unmatched — not counted | — | listed in scope | no |
| Solana Tokenized Funds Audit Report | roles-registry | unmatched — not counted | — | listed in scope | no |
| Solana Tokenized Funds Audit Report | sbt-ops | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 29 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 83 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [30098] Whitelist Contexts Audit
- [30099] EVM Tokenization Audit
- [30100] Solana Tokenized Funds Audit Report

Fork inheritance lineage and inherited audits are included when available.
