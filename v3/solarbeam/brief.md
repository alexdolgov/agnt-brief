# Agentic Audit Brief: Solarbeam

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Solarbeam (`solarbeam`)
- Website: [https://app.solarbeam.io/exchange/swap](https://app.solarbeam.io/exchange/swap)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: moonriver
- Contract surface: 25 unique implementations (25 raw deployments)
- Coverage basis: 0/5 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $146,420.50
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Solarbeam. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across moonriver. Structural roles: 5 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (5)
- Contract kinds: contract (5)
- Detected standards: accesscontrol (1), erc165 (1), erc20 (1), erc20permit (1), ownable (1), pausable (1)
- Frameworks: openzeppelin (3), boringcrypto (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x7e6e03822d0077f3c417d33caeac900fc2645679`, chain 1285)
- UnnamedContract (`0xaa30ef758139ae4a7f798112902bf6d65612045f`, chain 1285)
- UnnamedContract (`0xb256c57aa0778a184d26d3b7c033db950c7bf007`, chain 1285)
- Forwarder (`0x0d0b4862f5ffa3a47d04ddf0351356d20c830460`, chain 1285)
- Multicall2 (`0x43d002a2b468f048028ea9c2d3ed4705a94e68ae`, chain 1285)
- SolarBeamToken (`0x6bd193ee6d2104f14f94e2ca6efefae561a4334b`, chain 1285)
- SolarDistributorV2 (`0x0329867a8c457e9f75e25b0685011291cd30904f`, chain 1285)
- SolarFactory (`0x049581aeb6fe262727f290165c29bdab065a1b68`, chain 1285)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/5 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 17 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 8 of 25 unique; 17 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/22
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 25
- Raw deployments: 25
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnyswapV5ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x639a647fbe20b6c8ac19e48e2de44ea792c62c5c` | ⚠️ Unaudited |
| CommonEclipse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x022bcb66662bb3854b6f16babd4c13bfa3db0b08` | ⚠️ Unaudited |
| ComplexRewarderPerSecV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0d66e60d31c8f2a0dcc4fb2d06d5e8e326ee8212` | ⚠️ Unaudited |
| ComplexRewarderPerSecV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0f132276b72add2c0ade8ac60e53997086dc35da` | ⚠️ Unaudited |
| ComplexRewarderPerSecV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x10449fc8bc5659a96c75af43198ec6ca63a0ef58` | ⚠️ Unaudited |
| Forwarder | unknown | project_anchor | own_supporting | 0 | moonriver | unit-392679 | `0x0d0b4862f5ffa3a47d04ddf0351356d20c830460` | ⚠️ Unaudited |
| GasSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x44b288a8258d3bda04ccdb5d06c72a4dcd295700` | ⚠️ Unaudited |
| MoonLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0134eb236b47186021a50d25a51365ac77e39eb3` | ⚠️ Unaudited |
| Multicall2 | unknown | project_anchor | own_supporting | 0 | moonriver | unit-392680 | `0x43d002a2b468f048028ea9c2d3ed4705a94e68ae` | ⚠️ Unaudited |
| setText | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9bde9edcf175f3b084b1246ab869bc4d3d2582db` | ⚠️ Unaudited |
| SolarBeamToken | unknown | project_anchor | own_supporting | 0 | moonriver | unit-392681 | `0x6bd193ee6d2104f14f94e2ca6efefae561a4334b` | ⚠️ Unaudited |
| SolarDistributorV2 | unknown | project_anchor | own_supporting | 0 | moonriver | unit-392677 | `0x0329867a8c457e9f75e25b0685011291cd30904f` | ⚠️ Unaudited |
| SolarFactory | unknown | project_anchor | own_supporting | 0 | moonriver | unit-392678 | `0x049581aeb6fe262727f290165c29bdab065a1b68` | ⚠️ Unaudited |
| SolarPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2cc54b4a3878e36e1c754871438113c1117a3ad7` | ⚠️ Unaudited |
| SolarRouterAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x39019dd93c539643246c38c1aa0d20439d2a62c7` | ⚠️ Unaudited |
| SolarVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x783d5eb06ce15b43b0635035bae9a73750c3a0b1` | ⚠️ Unaudited |
| SwapCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x124d2b0b4119dd3c0fa884dd66ce49b44197a410` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0a498032174320c79e61c5cd6687b3a50df31f0b` | ⚠️ Unaudited |
| SwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x50160284393296cc0d75f7db4c3d1d2fda23938b` | ⚠️ Unaudited |
| TokenFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7124c3e7a1bbdaa61a111944884694a5a5b84039` | ⚠️ Unaudited |
| VestedSolarBeamToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x76906411d07815491a5e577022757ad941fb5066` | ⚠️ Unaudited |
| WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x98878b06940ae243284ca214f92bb71a2b032b8a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-392682 | `0x7e6e03822d0077f3c417d33caeac900fc2645679` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-392683 | `0xaa30ef758139ae4a7f798112902bf6d65612045f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-392684 | `0xb256c57aa0778a184d26d3b7c033db950c7bf007` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/solarbeam](https://skynet.certik.com/projects/solarbeam) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [www.certik.com/projects/solarbeam](https://www.certik.com/projects/solarbeam) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [docs.google.com/document/d/1PVcP0CYyVHZ7tzNOP8l_tFidLcSX_RZP4c3UcsqxDM8/edit](https://docs.google.com/document/d/1PVcP0CYyVHZ7tzNOP8l_tFidLcSX_RZP4c3UcsqxDM8/edit) | Haechi Audit | Audit | 2021-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21449] skynet.certik.com/projects/solarbeam — no match: Extracted from Audited Files section listing two flattened Solidity files.
- [21450] www.certik.com/projects/solarbeam — no match: Extracted from Audited Files section showing two flattened Solidity files.
- [21451] docs.google.com/document/d/1PVcP0CYyVHZ7tzNOP8l_tFidLcSX_RZP4c3UcsqxDM8/edit — no match: The provided text is incomplete and does not contain the actual audit report content. It appears to be a Google Docs error message indicating JavaScript is disabled, preventing the document from loading. No contract names, scope sections, or dates could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/solarbeam | TimelockFlatten | unmatched — not counted | — | listed in Audited Files section | no |
| skynet.certik.com/projects/solarbeam | SolarPairFlatten | unmatched — not counted | — | listed in Audited Files section | no |
| www.certik.com/projects/solarbeam | TimelockFlatten | unmatched — not counted | — | listed in Audited Files section | no |
| www.certik.com/projects/solarbeam | SolarPairFlatten | unmatched — not counted | — | listed in Audited Files section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonriver | `0x0d0b4862f5ffa3a47d04ddf0351356d20c830460` | Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x6bd193ee6d2104f14f94e2ca6efefae561a4334b` | SolarBeamToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x0329867a8c457e9f75e25b0685011291cd30904f` | SolarDistributorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x049581aeb6fe262727f290165c29bdab065a1b68` | SolarFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1
- Match method counts: n/a

Zero-match audit list:

- [21449] skynet.certik.com/projects/solarbeam
- [21450] www.certik.com/projects/solarbeam
- [21451] docs.google.com/document/d/1PVcP0CYyVHZ7tzNOP8l_tFidLcSX_RZP4c3UcsqxDM8/edit

Fork inheritance lineage and inherited audits are included when available.
