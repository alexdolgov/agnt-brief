# Agentic Audit Brief: Clearpool

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Clearpool (`clearpool`)
- Website: [https://clearpool.finance](https://clearpool.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, ethereum, mantle, optimism, polygon, polygon-zkevm
- Contract surface: 73 unique implementations (118 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $44,431,289.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Clearpool. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across avalanche, base, ethereum, mantle, optimism, polygon, polygon-zkevm. Structural roles: 3 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (3), unclassified (1)
- Contract kinds: contract (4)
- Detected standards: erc20 (3), ownable (2)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 4; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 14 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 59 discovered implementations shown in the inventory but excluded from coverage (4 third-party/infra; 5 standard proxy/library)
- Proxy deployments represented within implementation groups: 31
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/47
- Verified + Unaudited implementations: 47
- Verified by bytecode match: 0
- Unverified implementations: 26
- Unique implementations: 73
- Raw deployments: 118
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (47)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AMPT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f17cf...6819da` | ⚠️ Unaudited |
| Auction | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-232006 | `0x5f04bc...a4f91a` | ⚠️ Unaudited |
| Auction | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x3b194b...798d00`; polygon `0xdad6e9...c66453` | ⚠️ Unaudited |
| Auction | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-232019 | `0xf55ec6...96f150` | ⚠️ Unaudited |
| Auction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 4 deployments: polygon `0x7e5034...d9251c`; mantle `0x661bf0...8519df`; mantle `0xa36937...1786f7`; base `0xb939a6...10d052` | ⚠️ Unaudited |
| Auction | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x7554fa...4479ae`; mantle `0xfe0c81...e74103` | ⚠️ Unaudited |
| Auction | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x0762a9...dd2447` | ⚠️ Unaudited |
| BondNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x022741...56729d` | ⚠️ Unaudited |
| ClearpoolLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: polygon `0xe57bb7...d17148`; mantle `0x6278bc...b9e79b` | ⚠️ Unaudited |
| CosineInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 6 deployments: optimism `0xb98c68...edb66c`; optimism `0xf041a2...896a9b`; polygon `0x43cb89...e5afe5`; mantle `0x244ef5...33903d`; mantle `0x56713f...1db71b`; mantle `0xd4f764...1c6ef2` | ⚠️ Unaudited |
| CPOOL | core_logic | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-232007 | `0x66761f...c2fac5` | ⚠️ Unaudited |
| CPOOLOFT | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0x379c8d...faacd9`; base `0x29157e...783a5c` | ⚠️ Unaudited |
| CPOOLOFT20 | core_logic | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-232017 | `0xb08b36...3a2d91` | ⚠️ Unaudited |
| CPOOLOFT20 | core_logic | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | unit-232020 | `0x0c8927...5279d8` | ⚠️ Unaudited |
| MembershipStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x4a7e8e...3b7c2a`; polygon `0x67a24c...ac9b67` | ⚠️ Unaudited |
| MembershipStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x1f64d0...433db3`; mantle `0xe5860c...6a798a` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x34aeed...08d9de` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x281af7...cd4197` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 3 deployments: optimism `0xbdf557...b56943`; mantle `0x1de6ba...fc6a4c`; base `0x8e5573...ab2b7a` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xb98c68...edb66c` | ⚠️ Unaudited |
| PoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-232010 | `0xde204e...4c2d48` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x01af79...31f26d`; optimism `0xe3e26d...9eb755` | ⚠️ Unaudited |
| PoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | optimism | unit-232012 | `0x99c10a...356b80` | ⚠️ Unaudited |
| PoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-232021 | `0x215cca...da79ba` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | mantle | n/a | 3 deployments: mantle `0xa7209c...42d729`; mantle `0xb217d9...bcde41`; mantle `0xd51f04...61e5ce` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: polygon `0x16497f...0c2508`; polygon `0x7de081...ccee87`; mantle `0x063d68...3850a7`; mantle `0x8e40e7...f25172`; base `0x01af79...31f26d` | ⚠️ Unaudited |
| PoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x199a01...05dfad` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x721dbb...5cc5cd`; base `0xbdf557...b56943` | ⚠️ Unaudited |
| PoolMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x45e766...dc1fe0` | ⚠️ Unaudited |
| PoolMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: optimism `0x616b66...9db213`; polygon `0x331781...c850ff`; polygon `0x9827d9...280cfd`; mantle `0xc15871...41fe72`; mantle `0xe16860...f8c7c7`; base `0x0fc1a1...0a2ff3`; base `0x207ac3...575a47`; base `0xca7aaa...738314` | ⚠️ Unaudited |
| PoolMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xa83b8f...78d27a` | ⚠️ Unaudited |
| Prime | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x5a9c1b...1e2be5`; optimism `0xc31761...ec16de` | ⚠️ Unaudited |
| Prime | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xb8a7e3...b50865`; base `0xf041a2...896a9b` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: optimism `0x785395...cd9552`; polygon `0xee3eac...4aa19e`; mantle `0x8eff31...9bd1cc`; base `0x616b66...9db213`; base `0xe3e26d...9eb755`; avalanche `0x8bc02e...18b2b3`; avalanche `0xb8a7e3...b50865` | ⚠️ Unaudited |
| TermPoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-232009 | `0x91a4a1...a2e60e` | ⚠️ Unaudited |
| TermPoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-232018 | `0xc3d7f8...4d35a7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x7593e8...df23ff`; avalanche `0x7a0528...c89067` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x79740b...c58690`; avalanche `0xb4546c...b009df` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x8e5573...ab2b7a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0xc31761...ec16de` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0xe3e26d...9eb755` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 3 deployments: mantle `0x0e07ce...002e7d`; base `0x379c8d...faacd9`; avalanche `0x785395...cd9552` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x428d56...4d4dca` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x721dbb...5cc5cd` | ⚠️ Unaudited |
| ViaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x2a4a34...c07322`; polygon `0x47a960...505a3b` | ⚠️ Unaudited |
| WhitelistControl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: mantle `0xb4f37f...3cdd51`; base `0x72429e...d2fe0f` | ⚠️ Unaudited |
| WhitelistControl | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x8ef02f...89b280` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (26)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1c91b3...114aa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3786a1...9324e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x544c91...8885af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5c328d...50642f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x612b62...9f3e37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x703a49...7e1fb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7aada5...618af7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xad254c...7f9d41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc4b4d0...c057fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xea2556...dc1ff1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xed7067...d6bcf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa1152...044464` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfd61cd...173776` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-232013 | `0x04df6f...cd4445` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-232014 | `0x5cda11...255900` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon-zkevm | unit-232015 | `0xc3630b...f3d3fe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-232016 | `0xce3fec...c7ca16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8996e0...64200e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x919e83...a262c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01af79...31f26d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x246df1...ef50e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x281af7...cd4197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5a9c1b...1e2be5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb98c68...edb66c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbdf557...b56943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf041a2...896a9b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 38 | high |
| [0xmacro-boring-vault-arctic-1.pdf](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/audit/0xmacro-boring-vault-arctic-1.pdf) | 0xMacro | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [pashov-boring-vault.pdf](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/audit/pashov-boring-vault.pdf) | Pashov Audit Group | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [pashov-hyperlane.pdf](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/audit/pashov-hyperlane.pdf) | Pashov Audit Group | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [spearbit-boring-vault-arctic-0.pdf](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/audit/spearbit-boring-vault-arctic-0.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [skynet.certik.com/projects/clearpool](https://skynet.certik.com/projects/clearpool) | CertiK | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [spaces/hkiSI8bK3ThlypJ3jdEC/uploads/OFonx1OQS6ni5lUsyiPx/Clearpool Security Analysis by Pessimistic.pdf](https://3929482601-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FhkiSI8bK3ThlypJ3jdEC%2Fuploads%2FOFonx1OQS6ni5lUsyiPx%2FClearpool%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [5805] 0xmacro-boring-vault-arctic-0.pdf — no match: All contracts listed in the 'Source Code' section of the audit report are included. The audit date is the end date of the audit period (April 1-5, 2024).
- [5806] 0xmacro-boring-vault-arctic-1.pdf — no match: All contracts listed in the 'Source Code' section with SHA256 hashes are in scope. The audit date is from the cover page.
- [5807] pashov-boring-vault.pdf — no match: Extracted 10 contract names from the scope section on page 4. Audit date is July 13th 2024 (end date of the review period).
- [5808] pashov-hyperlane.pdf — no match: Scope section lists 5 contracts. Audit date from header: December 14th - December 16th, using end date.
- [5809] spearbit-boring-vault-arctic-0.pdf — no match: The report does not have a dedicated scope section, but the contracts are explicitly mentioned in findings and context. The audit date is from the cover page: April 19, 2024.
- [12320] skynet.certik.com/projects/clearpool — no match: Extracted from 'Audited Files/SHA256' section listing Auction.sol and InterestRateModel.sol. Audit date from 'Last Audit was delivered on 3/18/2022'.
- [12321] spaces/hkiSI8bK3ThlypJ3jdEC/uploads/OFonx1OQS6ni5lUsyiPx/Clearpool Security Analysis by Pessimistic.pdf — no match: No explicit scope section; contracts extracted from findings and project description.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 0xmacro-boring-vault-arctic-0.pdf | AtomicQueue | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AtomicSolver | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IAtomicSolver | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BoringVault | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BaseDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | EtherFiLiquidDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | LidoLiquidDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AaveV3DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AuraDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BalancerV2DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | ConvexDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | CurveDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | ERC4626DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | EtherFiDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | GearboxDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | LidoDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | MorphoBlueDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | NativeWrapperDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | OneInchDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | PendleRouterDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | UniswapV3DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AccountantWithRateProviders | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | ManagerWithMerkleVerification | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BoringVaultV0Lens | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AggregationRouterV5 | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BalancerVault | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BeforeTransferHook | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | DecoderCustomTypes | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | EtherFiLiquid1 | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IRateProvider | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IStaking | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IUniswapV3Router | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | PriceRouter | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | RawDataDecoderAndSanitizerInterfaces | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | DexAggregatorUManager | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | DexSwapperUManager | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | CellarMigrationAdaptor | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | ITBPositionDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | AaveDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | BoringDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | ITBContractDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | Ownable2StepDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | WithdrawableDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | ConvexDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | CurveAndConvexDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | CurveNoConfigDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | GearboxDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| pashov-boring-vault.pdf | CrossChainLayerZeroTellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | CrossChainTellerBase | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | OAppAuth | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | OAppAuthCore | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | OAppAuthReceiver | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | OAppAuthSender | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | BoringVaultCrossChainDepositor | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | BoringVaultL2OFT | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | BoringVaultOFTAdapter | unmatched — not counted | — | listed in scope | no |
| pashov-hyperlane.pdf | MultiChainHyperlaneTellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope section | no |
| pashov-hyperlane.pdf | CrossChainTellerBase | unmatched — not counted | — | listed in scope section | no |
| pashov-hyperlane.pdf | MultiChainTellerBase | unmatched — not counted | — | listed in scope section | no |
| pashov-hyperlane.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope section | no |
| pashov-hyperlane.pdf | AtomicQueueUCP | unmatched — not counted | — | listed in scope section | no |
| spearbit-boring-vault-arctic-0.pdf | UniswapV3DecoderAndSanitizer | unmatched — not counted | — | Listed in findings context and scope | no |
| spearbit-boring-vault-arctic-0.pdf | DexAggregatorUManager | unmatched — not counted | — | Listed in findings context and scope | no |
| spearbit-boring-vault-arctic-0.pdf | DexSwapperUManager | unmatched — not counted | — | Listed in findings context and scope | no |
| spearbit-boring-vault-arctic-0.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | Listed in findings context and scope | no |
| spearbit-boring-vault-arctic-0.pdf | BoringVault | unmatched — not counted | — | Listed in findings context and scope | no |
| spearbit-boring-vault-arctic-0.pdf | ManagerWithMerkleVerification | unmatched — not counted | — | Listed in findings context and scope | no |
| spearbit-boring-vault-arctic-0.pdf | AccountantWithRateProviders | unmatched — not counted | — | Listed in findings context and scope | no |
| spearbit-boring-vault-arctic-0.pdf | CurveDecoderAndSanitizer | unmatched — not counted | — | Listed in findings context and scope | no |
| spearbit-boring-vault-arctic-0.pdf | MorphoBlueDecoderAndSanitizer | unmatched — not counted | — | Listed in findings context and scope | no |
| spearbit-boring-vault-arctic-0.pdf | BalancerV2DecoderAndSanitizer | unmatched — not counted | — | Listed in findings context and scope | no |
| skynet.certik.com/projects/clearpool | Auction | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/clearpool | InterestRateModel | unmatched — not counted | — | listed in audited files | no |
| spaces/hkiSI8bK3ThlypJ3jdEC/uploads/OFonx1OQS6ni5lUsyiPx/Clearpool Security Analysis by Pessimistic.pdf | PoolMaster | unmatched — not counted | — | mentioned in findings C01, L03, L05 | no |
| spaces/hkiSI8bK3ThlypJ3jdEC/uploads/OFonx1OQS6ni5lUsyiPx/Clearpool Security Analysis by Pessimistic.pdf | PoolFactory | unmatched — not counted | — | mentioned in findings M01, M02, L03, N03 | no |
| spaces/hkiSI8bK3ThlypJ3jdEC/uploads/OFonx1OQS6ni5lUsyiPx/Clearpool Security Analysis by Pessimistic.pdf | MembershipStaking | unmatched — not counted | — | mentioned in findings M01, M02, L01, L03 | no |
| spaces/hkiSI8bK3ThlypJ3jdEC/uploads/OFonx1OQS6ni5lUsyiPx/Clearpool Security Analysis by Pessimistic.pdf | Auction | unmatched — not counted | — | mentioned in findings M01, L03 | no |
| spaces/hkiSI8bK3ThlypJ3jdEC/uploads/OFonx1OQS6ni5lUsyiPx/Clearpool Security Analysis by Pessimistic.pdf | FlashGovernor | unmatched — not counted | — | mentioned in findings M01, L08 | no |
| spaces/hkiSI8bK3ThlypJ3jdEC/uploads/OFonx1OQS6ni5lUsyiPx/Clearpool Security Analysis by Pessimistic.pdf | PoolBase | unmatched — not counted | — | mentioned in findings M03, M04, M05, L09 | no |
| spaces/hkiSI8bK3ThlypJ3jdEC/uploads/OFonx1OQS6ni5lUsyiPx/Clearpool Security Analysis by Pessimistic.pdf | CPOOL | unmatched — not counted | — | mentioned in findings L02, L06, L07 | no |
| spaces/hkiSI8bK3ThlypJ3jdEC/uploads/OFonx1OQS6ni5lUsyiPx/Clearpool Security Analysis by Pessimistic.pdf | PoolRewards | unmatched — not counted | — | mentioned in finding L10 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 34 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 83 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, medium=1
- Match method counts: n/a

Zero-match audit list:

- [5805] 0xmacro-boring-vault-arctic-0.pdf
- [5806] 0xmacro-boring-vault-arctic-1.pdf
- [5807] pashov-boring-vault.pdf
- [5808] pashov-hyperlane.pdf
- [5809] spearbit-boring-vault-arctic-0.pdf
- [12320] skynet.certik.com/projects/clearpool
- [12321] spaces/hkiSI8bK3ThlypJ3jdEC/uploads/OFonx1OQS6ni5lUsyiPx/Clearpool Security Analysis by Pessimistic.pdf

Fork inheritance lineage and inherited audits are included when available.
