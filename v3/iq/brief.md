# Agentic Audit Brief: IQ

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

- Project: IQ (`iq`)
- Website: [https://iq.wiki](https://iq.wiki)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, bsc, ethereum, fraxtal, polygon
- Contract surface: 56 unique implementations (89 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,544,333.66
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for IQ. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across base, bsc, ethereum, fraxtal, polygon. Structural roles: 1 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), unclassified (1)
- Contract kinds: contract (1), unclassified (1)
- Detected standards: erc20 (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0e37d7...5464e3`, chain 56)
- UnnamedContract (`0xb96382...34a578`, chain 137)
- UnnamedContract (`0x6efb84...712101`, chain 252)
- UnnamedContract (`0xe59b07...8f7734`, chain 8453)
- IQERC20 (`0x579cea...29b0c9`, chain 1)
- Vyper_contract (`0x1bf545...4e16ba`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 50 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 6 of 56 unique; 50 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/34
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 56
- Raw deployments: 89
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

### ⚠️ Verified + Unaudited (34)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BAMMFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x199281...7db0ba` | ⚠️ Unaudited |
| BAMMUIHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb16f68...a0885a` | ⚠️ Unaudited |
| ExponentialPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 4 deployments: fraxtal `0x01480a...e0f358`; fraxtal `0x1a60b4...6d77d7`; fraxtal `0x5c845c...aa4b3e`; fraxtal `0x92e606...3ec0f3` | ⚠️ Unaudited |
| EzEthEthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x6fd11e...d36681` | ⚠️ Unaudited |
| EzEthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x1174b7...e16041` | ⚠️ Unaudited |
| FLETwammGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x7a6be1...9de91b`; fraxtal `0xce7063...8003d4` | ⚠️ Unaudited |
| FpiOracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xcacc09...90c60d` | ⚠️ Unaudited |
| FPISLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 4 deployments: fraxtal `0x36b406...b09840`; fraxtal `0xb4fdd7...02da35`; fraxtal `0xbbb3a1...126850`; fraxtal `0xe91488...e61c01` | ⚠️ Unaudited |
| FPISLockerUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 3 deployments: fraxtal `0x858afb...027aea`; fraxtal `0x8a3399...2da974`; fraxtal `0xf82385...732414` | ⚠️ Unaudited |
| FraxswapFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe30521...a667e6` | ⚠️ Unaudited |
| FrxEthDualOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x4b0ca6...91a527` | ⚠️ Unaudited |
| FxsDualOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb99c9d...01c6d2` | ⚠️ Unaudited |
| IQERC20 | token | project_anchor | own_supporting | 0 | ethereum | unit-387719 | `0x579cea...29b0c9` | ⚠️ Unaudited |
| L1VeFXSTotalSupplyOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 5 deployments: fraxtal `0x04d435...9f091d`; fraxtal `0x5185e8...8a1922`; fraxtal `0x602ccf...9e578e`; fraxtal `0xa938b8...8caff0`; fraxtal `0xc42e3c...7dbd72` | ⚠️ Unaudited |
| MerkleProofPriceSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x190ef4...6d5ee5`; fraxtal `0x9990eb...51114c` | ⚠️ Unaudited |
| MerkleProofPriceSourceEzEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa87174...03abc5` | ⚠️ Unaudited |
| MerkleProofPriceSourceFpiOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8fc742...8e9c37` | ⚠️ Unaudited |
| MerkleProofPriceSourceRsEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x5bac02...0c8dac` | ⚠️ Unaudited |
| MerkleProofPriceSourceSdai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x816cf9...36974e`; fraxtal `0xf3e3e2...95417a` | ⚠️ Unaudited |
| MerkleProofPriceSourceSfrxEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0xa560e0...27ce32`; fraxtal `0xabca0b...1b44db` | ⚠️ Unaudited |
| MerkleProofPriceSourceSUSDe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc2b984...8955e9` | ⚠️ Unaudited |
| MerkleProofPriceSourceWstEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xef583c...dce8a2` | ⚠️ Unaudited |
| Permit2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa37fe0...ca243b` | ⚠️ Unaudited |
| SfrxEthDualOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0xa36a19...f7e7f2`; fraxtal `0xfbcdf4...fd0164` | ⚠️ Unaudited |
| SfrxUsd2OracleImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | fraxtal | n/a | 2 deployments: fraxtal `0x1b680f...d3f1ff`; fraxtal `0xf75063...07fc60` | ⚠️ Unaudited |
| StateRootOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x28fb35...acb383`; fraxtal `0xed403d...cf9512` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x72d7b8...362588`; fraxtal `0xc16068...a4f0b2` | ⚠️ Unaudited |
| VariableInterestRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 3 deployments: fraxtal `0x3fda3e...878c1f`; fraxtal `0x3fdb6b...08c3b2`; fraxtal `0xfa7207...7a1652` | ⚠️ Unaudited |
| VeFXSAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 5 deployments: fraxtal `0x481073...886f26`; fraxtal `0x6a546c...6a57ae`; fraxtal `0x840f20...f39d3d`; fraxtal `0x8b7b81...ef31c1`; fraxtal `0x90eb2f...eb0d6b` | ⚠️ Unaudited |
| VeFXSYieldDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 8 deployments: fraxtal `0x12915b...04fed7`; fraxtal `0x2816ab...5d0437`; fraxtal `0x5fa025...f21a6d`; fraxtal `0x691d1a...42ed93`; fraxtal `0x90d52c...5e8a60`; fraxtal `0xa7ea2c...9b78e9`; fraxtal `0xb075ab...893a7d`; fraxtal `0xcadb17...f666f2` | ⚠️ Unaudited |
| VestedFXS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x54bd5c...24ee5c` | ⚠️ Unaudited |
| VestedFXSUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc540f0...a55030` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387718 | `0x1bf545...4e16ba` | ⚠️ Unaudited |
| YieldDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe901af...de527b` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-387722 | `0x0e37d7...5464e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-387720 | `0xb96382...34a578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x0d9346...94185c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x18348d...707a13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x5854f4...d69909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x6bd868...b2e4cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-387721 | `0x6efb84...712101` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8bf7af...1546f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x954f18...478114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x9937ab...a8624a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x9fab6a...6896c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xad84da...4f071f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xbb18f2...e85fc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc4af86...d289dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xd5be3c...a28723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xdbb6da...00f892` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xdcf13a...257508` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xdf567e...782427` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe510cc...57704e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xeec806...c7026a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xffd3a9...60550d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387723 | `0xe59b07...8f7734` | ❓ Unverified |

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
| ethereum | `0x579cea...29b0c9` | IQERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1bf545...4e16ba` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 22 |

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
