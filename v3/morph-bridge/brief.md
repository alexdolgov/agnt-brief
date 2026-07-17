# Agentic Audit Brief: Morph Bridge

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Morph Bridge (`morph-bridge`)
- Website: [https://bridge.morphl2.io/](https://bridge.morphl2.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: chain-2910, ethereum, hoodi, morph
- Contract surface: 31 unique implementations (31 raw deployments)
- Coverage basis: 0/5 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $12,938,553.58
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Morph Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across chain-2910, ethereum, hoodi, morph. Structural roles: 3 core, 2 infra. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (3), infra (2)
- Contract kinds: contract (5)
- Detected standards: erc1967proxy (5)
- Frameworks: openzeppelin (5)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6c5c4e930b7b53f482b2f2ed5f37cf78c15a9388`, chain 1)
- UnnamedContract (`0x5300000000000000000000000000000000000006`, chain 2818)
- UnnamedContract (`0x5300000000000000000000000000000000000008`, chain 2818)
- UnnamedContract (`0x5300000000000000000000000000000000000010`, chain 2818)
- UnnamedContract (`0x5300000000000000000000000000000000000016`, chain 2818)
- UnnamedContract (`0x5300000000000000000000000000000000000018`, chain 2818)
- UnnamedContract (`0x5300000000000000000000000000000000000020`, chain 2818)
- UnnamedContract (`0xc5e44e2ffe9523809146ed17d62bb382eccf426b`, chain 2818)
- TransparentUpgradeableProxy (`0x1c1ffb5828c3a48b54e8910f1c75256a498ade68`, chain 1)
- TransparentUpgradeableProxy (`0x2c8314f5aada5d7a9d32eefebfc43accabe1b289`, chain 1)
- TransparentUpgradeableProxy (`0x44c28f61a5c2dd24fc71d7df8e85e18af4ab2bd8`, chain 1)
- TransparentUpgradeableProxy (`0x788890ba6f105cca373c4ff01055cd34de01877f`, chain 1)
- TransparentUpgradeableProxy (`0xa534badd09b4c62b7b1c32c41df310aa17b52ef1`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/25 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/5 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 13 own, 12 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 6 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Confirmed-live implementations: 13 of 31 unique; 18 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 31
- Raw deployments: 31
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

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xdc71366effa760804dcfc3edf87fa2a6f1623304` | ⚠️ Unaudited |
| L1CustomERC20Gateway | token | project_anchor | own_supporting | 1 | ethereum | unit-389636 | `0xa534badd09b4c62b7b1c32c41df310aa17b52ef1` | ⚠️ Unaudited |
| L1ETHGateway | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389634 | `0x1c1ffb5828c3a48b54e8910f1c75256a498ade68` | ⚠️ Unaudited |
| L1GatewayRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7497756ada7e656ae9f00781af49fc0fd08f8a8a` | ⚠️ Unaudited |
| L1Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0dc417f8af88388737c5053ff73f345f080543f7` | ⚠️ Unaudited |
| L1StandardERC20Gateway | token | project_anchor | own_supporting | 1 | ethereum | unit-389635 | `0x44c28f61a5c2dd24fc71d7df8e85e18af4ab2bd8` | ⚠️ Unaudited |
| L1USDCGateway | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389637 | `0x2c8314f5aada5d7a9d32eefebfc43accabe1b289` | ⚠️ Unaudited |
| L1WETHGateway | token | project_anchor | own_supporting | 1 | ethereum | unit-389633 | `0x788890ba6f105cca373c4ff01055cd34de01877f` | ⚠️ Unaudited |
| Rollup | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x759894ced0e6af42c26668076ffa84d02e3cef60` | ⚠️ Unaudited |
| TimelockControllerUpgradeable | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x542675e90e269f20ecbb9e0095d4751ac155b530` | ⚠️ Unaudited |
| ZkEvmVerifierV1 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9f24400816c4cc1a3cbb9b851c9b0bab63ad692` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389613 | `0x6c5c4e930b7b53f482b2f2ed5f37cf78c15a9388` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | morph | unit-389614 | `0x5300000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | morph | unit-389615 | `0x5300000000000000000000000000000000000008` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | morph | unit-389616 | `0x5300000000000000000000000000000000000010` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | morph | unit-389617 | `0x5300000000000000000000000000000000000016` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | morph | unit-389618 | `0x5300000000000000000000000000000000000018` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | morph | unit-389619 | `0x5300000000000000000000000000000000000020` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | morph | unit-389620 | `0xc5e44e2ffe9523809146ed17d62bb382eccf426b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-2910 | unit-389621 | `0x5300000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-2910 | unit-389622 | `0x5300000000000000000000000000000000000008` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-2910 | unit-389623 | `0x5300000000000000000000000000000000000010` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-2910 | unit-389624 | `0x5300000000000000000000000000000000000016` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-2910 | unit-389625 | `0x5de20686680ed9bbae10cafbc2fddbca3fd61fee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-2910 | unit-389626 | `0xc5e26e7091333cc3b200f2dc42e17d1f7e7630bc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-389627 | `0x2d14dcfa6c0ecec2b9bbe8c2ee0e422d0a3d60ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-389628 | `0x4061a8dc9e41f219db4bde7eb3b253165e3de689` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-389629 | `0x625849788c16315680f34ee72a5e9961cd15d581` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-389630 | `0x80a9f200e457169ff560dc8b4fb2a138bba58faf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-389631 | `0xb57ea443b92242895fafec4e02bb0a59b0ddabe5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-389632 | `0xf4f8e700573c74dd69d4437a7289933a68e96dee` | ❓ Unverified |

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
| ethereum | `0xa534badd09b4c62b7b1c32c41df310aa17b52ef1` | L1CustomERC20Gateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1c1ffb5828c3a48b54e8910f1c75256a498ade68` | L1ETHGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x44c28f61a5c2dd24fc71d7df8e85e18af4ab2bd8` | L1StandardERC20Gateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2c8314f5aada5d7a9d32eefebfc43accabe1b289` | L1USDCGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x788890ba6f105cca373c4ff01055cd34de01877f` | L1WETHGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 20 |

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
