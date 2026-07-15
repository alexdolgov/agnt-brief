# Agentic Audit Brief: Kleros

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Kleros (`kleros`)
- Website: [https://kleros.io](https://kleros.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, gnosis, polygon, sepolia
- Contract surface: 78 unique implementations (79 raw deployments)
- Coverage basis: 0/36 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $5,469,062.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Kleros. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 43 contract row(s) across arbitrum, ethereum, gnosis, polygon, sepolia. Structural roles: 22 unclassified, 11 core, 10 supporting. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 43
- Structural roles: unclassified (22), core (11), supporting (10)
- Contract kinds: contract (42), unclassified (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 48 contracts are derived from known codebases. 48 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x180eba...dfcb86`, chain 1)
- UnnamedContract (`0x2b562e...e1e940`, chain 1)
- UnnamedContract (`0x2b5950...7132e0`, chain 1)
- UnnamedContract (`0x2f0895...695f21`, chain 1)
- UnnamedContract (`0x7510c7...e1ed2b`, chain 1)
- UnnamedContract (`0x79d046...ea3d49`, chain 1)
- UnnamedContract (`0xa27bfe...8b208f`, chain 1)
- UnnamedContract (`0xcb4aae...3b125f`, chain 1)
- UnnamedContract (`0xcf1f07...8bece4`, chain 1)
- UnnamedContract (`0xd1a711...e46475`, chain 1)
- UnnamedContract (`0xd47f72...00a14d`, chain 1)
- UnnamedContract (`0x705335...92af60`, chain 100)
- UnnamedContract (`0xe04f57...91ea3e`, chain 100)
- UnnamedContract (`0x897d83...22cba3`, chain 42161)
- UnnamedContract (`0xfe34a7...e34d63`, chain 42161)
- AdminUpgradeabilityProxy (`0x9c1da9...5f9002`, chain 100)
- AdminUpgradeabilityProxy (`0xcb3231...223846`, chain 100)
- ArbitrableAddressList (`0x916dea...e5b4ab`, chain 1)
- ArbitrableProxy (`0x99489d...9ae0cf`, chain 1)
- ArbitrableTokenList (`0xebcf3b...f0e679`, chain 1)
- ClonableBeaconProxy (`0x330bd7...6dcae5`, chain 42161)
- DisputeKitShutterProxy (`0x9d3e3f...bbc768`, chain 42161)
- DisputeResolver (`0xb5526d...1f4323`, chain 42161)
- EvidenceModuleProxy (`0x48e052...981eb3`, chain 42161)
- KlerosCoreNeoProxy (`0x991d2d...4222ea`, chain 42161)
- KlerosGovernor (`0x327a29...eccfdf`, chain 1)
- KlerosGovernor (`0xe5bcea...0e5cf4`, chain 1)
- KlerosLiquid (`0x988b3a...e28069`, chain 1)
- LightGeneralizedTCR (`0x66260c...4c59f2`, chain 100)
- LightGeneralizedTCR (`0x957a53...52d6e1`, chain 100)
- MiniMeToken (`0x93ed3f...3bc04d`, chain 1)
- MultipleArbitrableTransaction (`0x0d6744...1e2522`, chain 1)
- PolicyRegistry (`0x9d4947...6c6d7e`, chain 100)
- ProofOfHumanity (`0xc5e9dd...7c9bdb`, chain 1)
- ProxyAdmin (`0xd1a711...e46475`, chain 100)
- RandomizerRNGProxy (`0x044afe...2fa9d3`, chain 42161)
- Realitio_v2_1_ArbitratorWithAppeals (`0x728cba...15a596`, chain 1)
- Realitio_v2_1_ArbitratorWithAppeals (`0xf72cfd...30adca`, chain 1)
- RealitioForeignArbitrationProxyWithAppeals (`0x776e58...231e52`, chain 1)
- RealitioHomeArbitrationProxy (`0xe40dd8...a75ecd`, chain 100)
- RealitioHomeArbitrationProxy (`0x5afa42...86f90e`, chain 137)
- SortitionModuleNeoProxy (`0x21a940...8dc03d`, chain 42161)
- SortitionSumTreeFactory (`0x7ae716...d561e9`, chain 100)
- TransactionBatcher (`0x82458d...9aa8cb`, chain 1)
- TransactionBatcher (`0x642680...794d46`, chain 100)
- TransactionBatcher (`0xbc5ef8...dea4ef`, chain 42161)
- TransparentUpgradeableProxy (`0xe0e1bc...86ea38`, chain 1)
- xKlerosLiquidExtraViews (`0xfa71f9...769e4b`, chain 100)

## Contract Surface Quality

- Indexed contracts: 43; live-surface contracts included: 43 (36 live, 7 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 50/77 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/36 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 50 own, 7 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 21 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Deployed-live implementations: 50 of 78 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/36
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 78
- Raw deployments: 79
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

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbitrableAddressList | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388394 | `0x916dea...e5b4ab` | ⚠️ Unaudited |
| ArbitrableProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388397 | `0x99489d...9ae0cf` | ⚠️ Unaudited |
| ArbitrableTokenList | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388410 | `0xebcf3b...f0e679` | ⚠️ Unaudited |
| BeaconRNG | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388393 | `0x90992f...19c879` | ⚠️ Unaudited |
| BlockHashRNG | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388440 | `0x39d123...f35b0b` | ⚠️ Unaudited |
| DisputeKitShutter | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-388454 | `0x9d3e3f...bbc768` | ⚠️ Unaudited |
| DisputeResolver | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388442 | `0xb5526d...1f4323` | ⚠️ Unaudited |
| EvidenceModule | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-388451 | `0x48e052...981eb3` | ⚠️ Unaudited |
| KlerosCoreNeo | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-388452 | `0x991d2d...4222ea` | ⚠️ Unaudited |
| KlerosGovernor | governance | project_anchor | own_supporting | 0 | ethereum | unit-388383 | `0x327a29...eccfdf` | ⚠️ Unaudited |
| KlerosGovernor | governance | project_anchor | own_supporting | 0 | ethereum | unit-388409 | `0xe5bcea...0e5cf4` | ⚠️ Unaudited |
| LightGeneralizedTCR | unknown | project_anchor | own_supporting | 0 | gnosis | unit-388416 | `0x66260c...4c59f2` | ⚠️ Unaudited |
| LightGeneralizedTCR | unknown | project_anchor | own_supporting | 0 | gnosis | unit-388419 | `0x957a53...52d6e1` | ⚠️ Unaudited |
| MiniMeToken | token | project_anchor | own_supporting | 0 | ethereum | unit-388395 | `0x93ed3f...3bc04d` | ⚠️ Unaudited |
| MultipleArbitrableTransaction | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388378 | `0x0d6744...1e2522` | ⚠️ Unaudited |
| PolicyRegistry | unknown | project_anchor | own_supporting | 0 | gnosis | unit-388420 | `0x9d4947...6c6d7e` | ⚠️ Unaudited |
| ProofOfHumanity | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388401 | `0xc5e9dd...7c9bdb` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | gnosis | unit-388421 | `0xd1a711...e46475` | ⚠️ Unaudited |
| RandomizerRNG | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-388453 | `0x044afe...2fa9d3` | ⚠️ Unaudited |
| Realitio_v2_1_ArbitratorWithAppeals | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388387 | `0x728cba...15a596` | ⚠️ Unaudited |
| Realitio_v2_1_ArbitratorWithAppeals | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388411 | `0xf72cfd...30adca` | ⚠️ Unaudited |
| RealitioForeignArbitrationProxyWithAppeals | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388389 | `0x776e58...231e52` | ⚠️ Unaudited |
| RealitioHomeArbitrationProxy | unknown | project_anchor | own_supporting | 0 | gnosis | unit-388414 | `0x29f39d...fce222` | ⚠️ Unaudited |
| RealitioHomeArbitrationProxy | unknown | project_anchor | own_supporting | 0 | gnosis | unit-388423 | `0xe40dd8...a75ecd` | ⚠️ Unaudited |
| RealitioHomeArbitrationProxy | unknown | project_anchor | own_supporting | 0 | polygon | unit-388439 | `0x5afa42...86f90e` | ⚠️ Unaudited |
| SortitionModuleNeo | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-388449 | `0x21a940...8dc03d` | ⚠️ Unaudited |
| SortitionSumTreeFactory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388445 | 2 deployments: ethereum `0x180eba...dfcb86`; ethereum `0x988b3a...e28069` | ⚠️ Unaudited |
| SortitionSumTreeFactory | unknown | project_anchor | own_supporting | 0 | gnosis | unit-388418 | `0x7ae716...d561e9` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-388450 | `0x330bd7...6dcae5` | ⚠️ Unaudited |
| TransactionBatcher | periphery | project_anchor | own_supporting | 0 | ethereum | unit-388392 | `0x82458d...9aa8cb` | ⚠️ Unaudited |
| TransactionBatcher | periphery | project_anchor | own_supporting | 0 | gnosis | unit-388415 | `0x642680...794d46` | ⚠️ Unaudited |
| TransactionBatcher | periphery | project_anchor | own_supporting | 0 | arbitrum | unit-388443 | `0xbc5ef8...dea4ef` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388446 | `0xe0e1bc...86ea38` | ⚠️ Unaudited |
| WrappedPinakion | unknown | project_anchor | own_supporting | 1 | gnosis | unit-388448 | `0xcb3231...223846` | ⚠️ Unaudited |
| xKlerosLiquid | unknown | project_anchor | own_supporting | 1 | gnosis | unit-388447 | `0x9c1da9...5f9002` | ⚠️ Unaudited |
| xKlerosLiquidExtraViews | unknown | project_anchor | own_supporting | 0 | gnosis | unit-388424 | `0xfa71f9...769e4b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (42)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388380 | `0x2b562e...e1e940` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388381 | `0x2b5950...7132e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388382 | `0x2f0895...695f21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388388 | `0x7510c7...e1ed2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388390 | `0x79d046...ea3d49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388400 | `0xa27bfe...8b208f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388403 | `0xcb4aae...3b125f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388404 | `0xcf1f07...8bece4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388405 | `0xd1a711...e46475` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388406 | `0xd47f72...00a14d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4163be...606362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4bef03...cbd177` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x53fc70...7938d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-388417 | `0x705335...92af60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa2c538...2bf9e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa353a7...11681a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd8798d...d06f27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-388422 | `0xe04f57...91ea3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfdd698...1e4860` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05b942...edff45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4163be...606362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4bef03...cbd177` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x53fc70...7938d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5562ac...96cdf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x56cf53...bf3665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x776e58...231e52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x88fb25...893aa5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388441 | `0x897d83...22cba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x90992f...19c879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa1ee4d...a24bfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2c538...2bf9e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa353a7...11681a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd8798d...d06f27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfdd698...1e4860` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388444 | `0xfe34a7...e34d63` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388425 | `0x05b942...edff45` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388429 | `0x5562ac...96cdf2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388430 | `0x56cf53...bf3665` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388431 | `0x776e58...231e52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388432 | `0x88fb25...893aa5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388433 | `0x90992f...19c879` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388434 | `0xa1ee4d...a24bfe` | ❓ Unverified |

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
| ethereum | `0x916dea...e5b4ab` | ArbitrableAddressList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x99489d...9ae0cf` | ArbitrableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xebcf3b...f0e679` | ArbitrableTokenList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x90992f...19c879` | BeaconRNG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x39d123...f35b0b` | BlockHashRNG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x9d3e3f...bbc768` | DisputeKitShutter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb5526d...1f4323` | DisputeResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x48e052...981eb3` | EvidenceModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x991d2d...4222ea` | KlerosCoreNeo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x327a29...eccfdf` | KlerosGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe5bcea...0e5cf4` | KlerosGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x66260c...4c59f2` | LightGeneralizedTCR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x957a53...52d6e1` | LightGeneralizedTCR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x93ed3f...3bc04d` | MiniMeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0d6744...1e2522` | MultipleArbitrableTransaction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x9d4947...6c6d7e` | PolicyRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc5e9dd...7c9bdb` | ProofOfHumanity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x044afe...2fa9d3` | RandomizerRNG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x728cba...15a596` | Realitio_v2_1_ArbitratorWithAppeals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf72cfd...30adca` | Realitio_v2_1_ArbitratorWithAppeals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x776e58...231e52` | RealitioForeignArbitrationProxyWithAppeals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x29f39d...fce222` | RealitioHomeArbitrationProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xe40dd8...a75ecd` | RealitioHomeArbitrationProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x5afa42...86f90e` | RealitioHomeArbitrationProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x21a940...8dc03d` | SortitionModuleNeo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x7ae716...d561e9` | SortitionSumTreeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x330bd7...6dcae5` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x82458d...9aa8cb` | TransactionBatcher | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x642680...794d46` | TransactionBatcher | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbc5ef8...dea4ef` | TransactionBatcher | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xcb3231...223846` | WrappedPinakion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x9c1da9...5f9002` | xKlerosLiquid | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xfa71f9...769e4b` | xKlerosLiquidExtraViews | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 43 |

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
