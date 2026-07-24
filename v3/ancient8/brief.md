# Agentic Audit Brief: Ancient8

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Ancient8 (`ancient8`)
- Website: [https://ancient8.gg/](https://ancient8.gg/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 27 unique implementations (27 raw deployments)
- Coverage basis: 0/7 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $170,248.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ancient8. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across ethereum. Structural roles: 5 core, 2 supporting. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (5), supporting (2)
- Contract kinds: contract (7)
- Detected standards: erc1967proxy (3), ownable (2)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (2), solmate (2)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xb09dc08428c8b4efb4ff9c0827386cdf34277996`, chain 1)
- UnnamedContract (`0xd5e3edf5b68135d559d572e26bf863fbc1950033`, chain 1)
- AddressManager (`0x15a52fed1c448028a240b603dd93f2697e12dc82`, chain 1)
- L1CrossDomainMessenger (`0x012c341506ee1939e56084f43ae5dbce224ce2af`, chain 1)
- L1ERC721Bridge (`0x132b3456300332d488f946b818eb9512931ebcaa`, chain 1)
- OptimismMintableERC20Factory (`0xf2b7b677d14f4f570d084d7d615254f984e7089e`, chain 1)
- OptimismPortal2 (`0x639f2aece398aa76b07e59ef6abe2cfe32bacb68`, chain 1)
- ProxyAdmin (`0x75a223fb459461b9fa61dd25109ea05522b4b492`, chain 1)
- SystemConfig (`0x0b4cfc49acc656ce6d03cb0794860da92be3e8ec`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/18 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/7 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 18 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 9 of 27 unique; 18 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/12
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 27
- Raw deployments: 27
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226624 | `0x15a52fed1c448028a240b603dd93f2697e12dc82` | ⚠️ Unaudited |
| Ancient8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e5a19c91266ad8ce2477b91585d1856b84062df` | ⚠️ Unaudited |
| ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2e04d727bb448082e9f2f27f7b64be9f438f302` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | project_anchor | own_supporting | 1 | ethereum | unit-226636 | `0x012c341506ee1939e56084f43ae5dbce224ce2af` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226623 | `0x132b3456300332d488f946b818eb9512931ebcaa` | ⚠️ Unaudited |
| L1StandardBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x12d4e64e1b46d27a00fe392653a894c1dd36fb80` | ⚠️ Unaudited |
| L2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f61619e8c228fb67204cd157a3e50aa6690fbf6` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-226639 | `0xf2b7b677d14f4f570d084d7d615254f984e7089e` | ⚠️ Unaudited |
| OptimismPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fc6a608b45c6f129650c26a34bbe5d26959e75e` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-226638 | `0x639f2aece398aa76b07e59ef6abe2cfe32bacb68` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | third_party_dependency | 0 | ethereum | unit-226628 | `0x75a223fb459461b9fa61dd25109ea05522b4b492` | ⚠️ Unaudited |
| SystemConfig | unknown | project_anchor | own_supporting | 1 | ethereum | unit-226637 | `0x0b4cfc49acc656ce6d03cb0794860da92be3e8ec` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09a25eb69b0d2858800a769da90934371c7174a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x188370729584052260214a6e0847b9810e3a120d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2362ff553a9e66bf378e971b2aaa631a4570b53d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42847d8faff45c72a92cce9458fe622001463df0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97423a68bae94b5de52d767a17abcc54c157c0e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226631 | `0xb09dc08428c8b4efb4ff9c0827386cdf34277996` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb76d6e8c82d06fd262ef3799db73d5a724108d4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1def3b344d9fd7e53a61e3797f98abce317f3a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226632 | `0xd5e3edf5b68135d559d572e26bf863fbc1950033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd812d616a7c54ee1c8e9c9cd20d72090bdf0d424` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4364d50b7b1f31e888b37c826d36ec8715df3de` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 5
- Live contracts: 0
- Unknown liveness contracts: 5
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=5

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x09a25eb69b0d2858800a769da90934371c7174a9` | non_address_book | unknown | unknown | unverified | n/a | `0x34519f343ee02781ebffaeadbc0679d2ba6671d7` |
| unverified unclassified | UnnamedContract<br>`0x188370729584052260214a6e0847b9810e3a120d` | non_address_book | unknown | unknown | unverified | n/a | `0x34519f343ee02781ebffaeadbc0679d2ba6671d7` |
| unverified unclassified | UnnamedContract<br>`0x2362ff553a9e66bf378e971b2aaa631a4570b53d` | non_address_book | unknown | unknown | unverified | n/a | `0x34519f343ee02781ebffaeadbc0679d2ba6671d7` |
| unverified unclassified | UnnamedContract<br>`0xd1def3b344d9fd7e53a61e3797f98abce317f3a3` | non_address_book | unknown | unknown | unverified | n/a | `0xa9a3e32e18b2936702d466d02e77a1fd64c9c4d4` |
| unverified unclassified | UnnamedContract<br>`0xf4364d50b7b1f31e888b37c826d36ec8715df3de` | non_address_book | unknown | unknown | unverified | n/a | `0x34519f343ee02781ebffaeadbc0679d2ba6671d7` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x15a52fed1c448028a240b603dd93f2697e12dc82` | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x012c341506ee1939e56084f43ae5dbce224ce2af` | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x132b3456300332d488f946b818eb9512931ebcaa` | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf2b7b677d14f4f570d084d7d615254f984e7089e` | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x639f2aece398aa76b07e59ef6abe2cfe32bacb68` | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0b4cfc49acc656ce6d03cb0794860da92be3e8ec` | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
