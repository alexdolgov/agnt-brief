# Agentic Audit Brief: ioTube

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: ioTube (`iotube`)
- Website: [https://iotube.org](https://iotube.org)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, polygon
- Contract surface: 26 unique implementations (26 raw deployments)
- Coverage basis: 0/24 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,285,769.39
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for ioTube. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 24 contract row(s) across bsc, ethereum, polygon. Structural roles: 16 core, 8 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 24
- Structural roles: core (16), unclassified (8)
- Contract kinds: contract (24)
- Detected standards: ownable (6), erc20 (3)
- Frameworks: openzeppelin (16)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 26 contracts are derived from known codebases. 26 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x8598df...0ad83f`, chain 1)
- UnnamedContract (`0xc02aaa...756cc2`, chain 1)
- CrosschainERC20 (`0x9f90b4...1d8fe1`, chain 1)
- CrosschainERC20 (`0x2aaf50...b60598`, chain 56)
- CrosschainERC20 (`0x300211...74d388`, chain 137)
- MinterPool (`0x964f4f...f63b45`, chain 1)
- MinterPool (`0xf72cfb...1a29be`, chain 56)
- MinterPool (`0x12af43...a30a5f`, chain 137)
- MinterPool (`0x4799d5...a5a454`, chain 137)
- TokenCashierWithPayload (`0x1b9aa8...43bac4`, chain 1)
- TokenCashierWithPayload (`0x78de1e...940204`, chain 56)
- TokenCashierWithPayload (`0x990b50...18d731`, chain 137)
- TokenList (`0x73ffdf...e35b3e`, chain 1)
- TokenList (`0x7c0bef...08aede`, chain 1)
- TokenList (`0x0d793f...743b34`, chain 56)
- TokenList (`0xa6ae93...321ee3`, chain 56)
- TokenList (`0xc8dc8d...303f3e`, chain 137)
- TokenList (`0xde9395...4bb0f7`, chain 137)
- TokenSafe (`0xc2e0f3...7f0d7a`, chain 1)
- TokenSafe (`0xfbe9a4...c4ce4b`, chain 56)
- TokenSafe (`0xa239f0...399e45`, chain 137)
- TransferValidatorWithPayload (`0xe7eba1...0c59d5`, chain 1)
- TransferValidatorWithPayload (`0x95c6f6...fc794a`, chain 56)
- TransferValidatorWithPayload (`0x87e2d4...890cd6`, chain 137)
- WitnessList (`0x811941...a1ee3f`, chain 56)
- WitnessList (`0x1e58ca...292c17`, chain 137)

## Contract Surface Quality

- Indexed contracts: 24; live-surface contracts included: 24 (24 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 26/43 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/24 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 26 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 26 of 26 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/24
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 26
- Raw deployments: 26
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CrosschainERC20 | token | project_anchor | own_supporting | 0 | ethereum | unit-243064 | `0x9f90b4...1d8fe1` | ⚠️ Unaudited |
| CrosschainERC20 | token | project_anchor | own_supporting | 0 | bsc | unit-243086 | `0x2aaf50...b60598` | ⚠️ Unaudited |
| CrosschainERC20 | token | project_anchor | own_supporting | 0 | polygon | unit-243074 | `0x300211...74d388` | ⚠️ Unaudited |
| MinterPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-243063 | `0x964f4f...f63b45` | ⚠️ Unaudited |
| MinterPool | unknown | project_anchor | own_supporting | 0 | bsc | unit-243095 | `0xf72cfb...1a29be` | ⚠️ Unaudited |
| MinterPool | unknown | project_anchor | own_supporting | 0 | polygon | unit-243071 | `0x12af43...a30a5f` | ⚠️ Unaudited |
| MinterPool | core_logic | project_anchor | own_supporting | 0 | polygon | unit-243075 | `0x4799d5...a5a454` | ⚠️ Unaudited |
| TokenCashierWithPayload | token | project_anchor | own_supporting | 0 | ethereum | unit-243054 | `0x1b9aa8...43bac4` | ⚠️ Unaudited |
| TokenCashierWithPayload | token | project_anchor | own_supporting | 0 | bsc | unit-243087 | `0x78de1e...940204` | ⚠️ Unaudited |
| TokenCashierWithPayload | token | project_anchor | own_supporting | 0 | polygon | unit-243079 | `0x990b50...18d731` | ⚠️ Unaudited |
| TokenList | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243059 | `0x73ffdf...e35b3e` | ⚠️ Unaudited |
| TokenList | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243060 | `0x7c0bef...08aede` | ⚠️ Unaudited |
| TokenList | unknown | project_anchor | own_supporting | 0 | bsc | unit-243085 | `0x0d793f...743b34` | ⚠️ Unaudited |
| TokenList | token | project_anchor | own_supporting | 0 | bsc | unit-243092 | `0xa6ae93...321ee3` | ⚠️ Unaudited |
| TokenList | unknown | project_anchor | own_supporting | 0 | polygon | unit-243082 | `0xc8dc8d...303f3e` | ⚠️ Unaudited |
| TokenList | unknown | project_anchor | own_supporting | 0 | polygon | unit-243084 | `0xde9395...4bb0f7` | ⚠️ Unaudited |
| TokenSafe | token | project_anchor | own_supporting | 0 | ethereum | unit-243068 | `0xc2e0f3...7f0d7a` | ⚠️ Unaudited |
| TokenSafe | unknown | project_anchor | own_supporting | 0 | bsc | unit-243096 | `0xfbe9a4...c4ce4b` | ⚠️ Unaudited |
| TokenSafe | unknown | project_anchor | own_supporting | 0 | polygon | unit-243080 | `0xa239f0...399e45` | ⚠️ Unaudited |
| TransferValidatorWithPayload | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243070 | `0xe7eba1...0c59d5` | ⚠️ Unaudited |
| TransferValidatorWithPayload | unknown | project_anchor | own_supporting | 0 | bsc | unit-243090 | `0x95c6f6...fc794a` | ⚠️ Unaudited |
| TransferValidatorWithPayload | unknown | project_anchor | own_supporting | 0 | polygon | unit-243077 | `0x87e2d4...890cd6` | ⚠️ Unaudited |
| WitnessList | unknown | project_anchor | own_supporting | 0 | bsc | unit-243088 | `0x811941...a1ee3f` | ⚠️ Unaudited |
| WitnessList | unknown | project_anchor | own_supporting | 0 | polygon | unit-243072 | `0x1e58ca...292c17` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243061 | `0x8598df...0ad83f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243067 | `0xc02aaa...756cc2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Iotube Audit Report v2-fuzzland.pdf](https://185197389-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MgvoWpXLOm6Tf5h6ulz%2Fuploads%2Fe4XSu5pssWrgS5FyaqCj%2FIotube%20Audit%20Report%20v2-fuzzland.pdf) | Fuzzland | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20590] Iotube Audit Report v2-fuzzland.pdf — no match: Scope section states 'contracts/*.sol' and findings reference specific contracts. Audit date from executive summary: 'On Feb 6, 2025'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Iotube Audit Report v2-fuzzland.pdf | CrosschainTokenCashierWithPayloadRouter | unmatched — not counted | — | mentioned in finding [Low] Unrestricted Token Approval in CrosschainTokenCashierWithPayloadRouter | no |
| Iotube Audit Report v2-fuzzland.pdf | UniswapUnwrapper | unmatched — not counted | — | mentioned in findings [Low] Unauthorized token withdrawal, [Low] TetherToken::transfer has no return value..., [Low] Any user can call UniswapUnwrapper::onReceive... | no |
| Iotube Audit Report v2-fuzzland.pdf | ShadowTokenListManager | unmatched — not counted | — | mentioned in finding [Low] All functions of the ShadowTokenListManager contract cannot be called | no |
| Iotube Audit Report v2-fuzzland.pdf | TetherToken | unmatched — not counted | — | mentioned in findings [Low] TetherToken::transfer has no return value..., [Info] TetherToken::deprecate should only be called once | no |
| Iotube Audit Report v2-fuzzland.pdf | SolanaHub | unmatched — not counted | — | mentioned in finding [Low] Any user can call UniswapUnwrapper::onReceive... (also have the same problem) | no |
| Iotube Audit Report v2-fuzzland.pdf | EthereumHub | unmatched — not counted | — | mentioned in finding [Low] Any user can call UniswapUnwrapper::onReceive... (also have the same problem) | no |
| Iotube Audit Report v2-fuzzland.pdf | TokenConfigList | unmatched — not counted | — | mentioned in finding [Info] Many contracts did not correctly inherit the ownable of openzeppelin | no |
| Iotube Audit Report v2-fuzzland.pdf | CashierConfig | unmatched — not counted | — | mentioned in finding [Info] Many contracts did not correctly inherit the ownable of openzeppelin | no |
| Iotube Audit Report v2-fuzzland.pdf | EthereumHubPrepaid | unmatched — not counted | — | mentioned in finding [Info] Many contracts did not correctly inherit the ownable of openzeppelin | no |
| Iotube Audit Report v2-fuzzland.pdf | SolanaHubPrepaid | unmatched — not counted | — | mentioned in finding [Info] Many contracts did not correctly inherit the ownable of openzeppelin | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x9f90b4...1d8fe1` | CrosschainERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2aaf50...b60598` | CrosschainERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x300211...74d388` | CrosschainERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x964f4f...f63b45` | MinterPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf72cfb...1a29be` | MinterPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x12af43...a30a5f` | MinterPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x4799d5...a5a454` | MinterPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1b9aa8...43bac4` | TokenCashierWithPayload | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x78de1e...940204` | TokenCashierWithPayload | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x990b50...18d731` | TokenCashierWithPayload | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x73ffdf...e35b3e` | TokenList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7c0bef...08aede` | TokenList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0d793f...743b34` | TokenList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa6ae93...321ee3` | TokenList | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xc8dc8d...303f3e` | TokenList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xde9395...4bb0f7` | TokenList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc2e0f3...7f0d7a` | TokenSafe | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xfbe9a4...c4ce4b` | TokenSafe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa239f0...399e45` | TokenSafe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe7eba1...0c59d5` | TransferValidatorWithPayload | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x95c6f6...fc794a` | TransferValidatorWithPayload | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x87e2d4...890cd6` | TransferValidatorWithPayload | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x811941...a1ee3f` | WitnessList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x1e58ca...292c17` | WitnessList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 10 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20590] Iotube Audit Report v2-fuzzland.pdf

Fork inheritance lineage and inherited audits are included when available.
