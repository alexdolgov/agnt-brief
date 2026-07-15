# Agentic Audit Brief: Orbit Bridge

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

- Project: Orbit Bridge (`orbit-bridge`)
- Website: [https://bridge.orbitchain.io](https://bridge.orbitchain.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, bsc, celo, ethereum, heco, kaia, polygon, wemix
- Contract surface: 31 unique implementations (31 raw deployments)
- Coverage basis: 0/5 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $14,578,629.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Orbit Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across avalanche, bsc, celo, ethereum, heco, kaia, polygon, wemix. Structural roles: 3 core, 1 unclassified. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (3), unclassified (1)
- Contract kinds: contract (4)
- Detected standards: erc1967proxy (2)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 10 contracts are derived from known codebases. 10 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x60070f...10f7b9`, chain 1)
- UnnamedContract (`0x6bd8e3...e6706f`, chain 1)
- UnnamedContract (`0x917655...806bf8`, chain 8217)
- UnnamedContract (`0xe38ca0...8386cf`, chain 43114)
- MessageMultiSigWallet (`0xf2c5a8...eab09f`, chain 56)
- UnnamedContract (`0x9abc3f...3f648d`, chain 8217)
- Vault (`0x89c527...beb780`, chain 56)
- Vault (`0x506dc4...28dbd5`, chain 137)
- Vault (`0x979cd0...da3777`, chain 42220)
- WEMIX Minter (`0x3fc270...dd716e`, chain 1111)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/5 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 18 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 11 of 31 unique; 20 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 31
- Raw deployments: 31
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Admin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8d5dce...6bd1bd` | ⚠️ Unaudited |
| CeloVaultImpl | unknown | project_anchor | own_supporting | 1 | celo | unit-250479 | `0x979cd0...da3777` | ⚠️ Unaudited |
| EthVaultImpl | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250493 | `0x1bf68a...cb489a` | ⚠️ Unaudited |
| EthVaultImpl | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4f16a2...9ff81e` | ⚠️ Unaudited |
| MessageMultiSigWallet | unknown | project_anchor | own_supporting | 0 | bsc | unit-250485 | `0xf2c5a8...eab09f` | ⚠️ Unaudited |
| ORCToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x662b67...ef2f51` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3b31c9...174720` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 1 | bsc | unit-250497 | `0x89c527...beb780` | ⚠️ Unaudited |
| Vault | unknown | project_anchor | own_supporting | 1 | polygon | unit-250495 | `0x506dc4...28dbd5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x73add4934d3bf6367d9c9b0eabd30685cb9a25f6) | unknown | project_anchor | own_supporting | 1 | avalanche | unit-250480 | `0xe38ca0...8386cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0207ec...cab30b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x093333...25d0cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x123d6d...0f79d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2127ed...24b79f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ff16c...95fbe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54ad07...34a4d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250475 | `0x60070f...10f7b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250476 | `0x6bd8e3...e6706f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c943d...0463c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f1014...d8a1f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd23c23...8721b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8c163...9b8ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff3eb6...a912a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-250477 | `0x38c92a...4d279f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-250478 | `0x711299...b9e44e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6aeec0...dbaee8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x98d729...a708b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9fad26...c4ee25` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-250489 | `0x917655...806bf8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-250491 | `0x9abc3f...3f648d` | ❓ Unverified |
| WEMIX Minter | unknown | project_anchor | own_supporting | 0 | wemix | n/a | `0x3fc270...dd716e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Theori_OrbitBridge_2022_1Q.pdf](https://github.com/orbit-chain/bridge-contract/blob/master/audit/Theori_OrbitBridge_2022_1Q.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1951] Theori_OrbitBridge_2022_1Q.pdf — no match: Extracted contract names from scope section listing files and contracts. Also extracted audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Theori_OrbitBridge_2022_1Q.pdf | StacksAddressBook.Layer1 | unmatched — not counted | — | listed in scope | no |
| Theori_OrbitBridge_2022_1Q.pdf | StacksBridge.Layer1.impl | unmatched — not counted | — | listed in scope | no |
| Theori_OrbitBridge_2022_1Q.pdf | StacksBridge.Layer1 | unmatched — not counted | — | listed in scope | no |
| Theori_OrbitBridge_2022_1Q.pdf | StacksBridge.Layer2.impl | unmatched — not counted | — | listed in scope | no |
| Theori_OrbitBridge_2022_1Q.pdf | StacksBridge.Layer2 | unmatched — not counted | — | listed in scope | no |
| Theori_OrbitBridge_2022_1Q.pdf | Bridge-token | unmatched — not counted | — | listed in scope | no |
| Theori_OrbitBridge_2022_1Q.pdf | multi-sig | unmatched — not counted | — | listed in scope | no |
| Theori_OrbitBridge_2022_1Q.pdf | Farmer | unmatched — not counted | — | listed in scope | no |
| Theori_OrbitBridge_2022_1Q.pdf | OrbitFarmProxy | unmatched — not counted | — | listed in scope | no |
| Theori_OrbitBridge_2022_1Q.pdf | Farm.compound | unmatched — not counted | — | listed in scope | no |
| Theori_OrbitBridge_2022_1Q.pdf | Farm.venus | unmatched — not counted | — | listed in scope | no |
| Theori_OrbitBridge_2022_1Q.pdf | BscVault.impl | unmatched — not counted | — | listed in scope | no |
| Theori_OrbitBridge_2022_1Q.pdf | EthVault.impl | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x1bf68a...cb489a` | EthVaultImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf2c5a8...eab09f` | MessageMultiSigWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x89c527...beb780` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x506dc4...28dbd5` | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 13 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [1951] Theori_OrbitBridge_2022_1Q.pdf

Fork inheritance lineage and inherited audits are included when available.
