# Agentic Audit Brief: LeetSwap

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

- Project: LeetSwap (`leetswap`)
- Website: [https://leetswap.finance](https://leetswap.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, canto, linea, manta-pacific, opbnb, polygon-zkevm, scroll
- Contract surface: 19 unique implementations (19 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $118,776.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for LeetSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across base, canto, linea, manta-pacific, opbnb, polygon-zkevm. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: openzeppelin (2), uniswap (1), uniswap-v2 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xe650686a3b474c01fbb5ad3b07ecc44093356090`, chain 169)
- UnnamedContract (`0xb3a737c3940287abbfd831086f0f24868d3e6fc4`, chain 204)
- UnnamedContract (`0xf2f41fe10d53e15ba34e410987eb0f986ec7509f`, chain 204)
- UnnamedContract (`0x7be3b0658c30de4896f89d26f79d6d64dda7ea8e`, chain 1101)
- UnnamedContract (`0x1bb9cf4e63cd2dab8741c334f525350ab2ee2c96`, chain 7700)
- UnnamedContract (`0xd463786e7d54fc570a92982157e15130e469dcd8`, chain 7700)
- UnnamedContract (`0xfbc0fc368bc57e6c203cf7fd823fc10c6d274e6c`, chain 7700)
- UnnamedContract (`0x987a758b221eabd262cae4fbb4d75c579275d8aa`, chain 8453)
- UnnamedContract (`0xff98dcf88d1ae42c7ebb835133ab57481d16076e`, chain 59144)
- UniswapV2Factory (`0xa2899c776baaf9925d432f83c950d5054a6cf59c`, chain 204)
- UniswapV2Router02 (`0xd3ea3bc1f5a3f881bd6ce9761cba5a0833a5d737`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 8 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 11 of 19 unique; 8 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 19
- Raw deployments: 19
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

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BurningBrian | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7cc74075d60c059468e267bef5d454d032565325` | ⚠️ Unaudited |
| LeetChefV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3a5e791405526efadf1432bac8d114b77da3628c` | ⚠️ Unaudited |
| LeetSwapV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x169c06b4cfb09bfd73a81e6f2bb1eb514d75bb19` | ⚠️ Unaudited |
| LeetSwapV2Router01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x169c06b4cfb09bfd73a81e6f2bb1eb514d75bb19` | ⚠️ Unaudited |
| LeetToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0963a1abaf36ca88c21032b82e479353126a1c4b` | ⚠️ Unaudited |
| LineaDoge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3278e54da0242a941e94b5eba2f2f2b200942f87` | ⚠️ Unaudited |
| Multicall3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10b7de073b514f54e27b71cd267cce4379bbfac9` | ⚠️ Unaudited |
| UniswapV2Factory | unknown | project_anchor | own_supporting | 0 | opbnb | unit-244767 | `0xa2899c776baaf9925d432f83c950d5054a6cf59c` | ⚠️ Unaudited |
| UniswapV2Router02 | unknown | project_anchor | own_supporting | 0 | base | unit-244775 | `0xd3ea3bc1f5a3f881bd6ce9761cba5a0833a5d737` | ⚠️ Unaudited |
| VestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x211638ab040cf78ada5331b233745e4fdc898bfc` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-244766 | `0xe650686a3b474c01fbb5ad3b07ecc44093356090` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | opbnb | unit-244768 | `0xb3a737c3940287abbfd831086f0f24868d3e6fc4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | opbnb | unit-244769 | `0xf2f41fe10d53e15ba34e410987eb0f986ec7509f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-244765 | `0x7be3b0658c30de4896f89d26f79d6d64dda7ea8e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-244771 | `0x1bb9cf4e63cd2dab8741c334f525350ab2ee2c96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-244772 | `0xd463786e7d54fc570a92982157e15130e469dcd8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-244773 | `0xfbc0fc368bc57e6c203cf7fd823fc10c6d274e6c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244774 | `0x987a758b221eabd262cae4fbb4d75c579275d8aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-244770 | `0xff98dcf88d1ae42c7ebb835133ab57481d16076e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 9 |

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
