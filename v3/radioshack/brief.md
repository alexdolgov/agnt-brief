# Agentic Audit Brief: RadioShack

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

- Project: RadioShack (`radioshack`)
- Website: [https://radioshack.org/](https://radioshack.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, bsc, cronos, ethereum, fantom, optimism, polygon
- Contract surface: 61 unique implementations (61 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $440,907.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for RadioShack. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across avalanche, bsc, cronos, ethereum, fantom, optimism, polygon. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 1; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 7 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 54 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/55
- Verified + Unaudited implementations: 55
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 61
- Raw deployments: 61
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (55)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ATH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x532a59c28469684316fabdaf81b67664a18839f0` | ⚠️ Unaudited |
| Bitcoin100000K | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd42d0437e6512f110199e8bd619d64ea64049d38` | ⚠️ Unaudited |
| BuildToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57b59f981730c6257df57cf6f0d98283749a9eeb` | ⚠️ Unaudited |
| CARROT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9ee2adc33350bd89369e424e01bb2156df7b04e` | ⚠️ Unaudited |
| CHAPTER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x874000d720dcbf7feef7347fe80c731c00e70efa` | ⚠️ Unaudited |
| CHORUS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5421f0dfcd30fc433fbecb8ccd87e17d43c03cf` | ⚠️ Unaudited |
| CollateralRatioPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x239089e5c3f2506c77e1e6704ad62d37143949bf` | ⚠️ Unaudited |
| CollateralReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x038ee16bc19e362cc5ba1915f32a3a6717047287` | ⚠️ Unaudited |
| Dollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e1437d78cf4f0d2ddffd15d01047a3140be6c4d` | ⚠️ Unaudited |
| DollarOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03c70a4623a9b9510e16c4d9a530d117cc275ddd` | ⚠️ Unaudited |
| DreamToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02f171afa137875bb631e7ea3cbdb4a295acf333` | ⚠️ Unaudited |
| Farms | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x070c026511c8972938069286bac74f23bcb1d235` | ⚠️ Unaudited |
| FORMULA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8f0925c18aa0d0c00d55a2555e3aa7347e337376` | ⚠️ Unaudited |
| iCollateralOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03c70a4623a9b9510e16c4d9a530d117cc275ddd` | ⚠️ Unaudited |
| JACKET | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f0988bd97fe801bd7960a3a6ccdad49deae728d` | ⚠️ Unaudited |
| LaunchToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0cfc52767599dd07885697e14b1a08a4f8978e` | ⚠️ Unaudited |
| LAYOUT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfbd6015306d860c1b048715797d06634c42db32d` | ⚠️ Unaudited |
| MATERIAL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0effba87d0507876f3c669b611225a031941b936` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb5657def64768972a997891f922b521c0736f3b1` | ⚠️ Unaudited |
| MOUNTAIN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x944ab22938acd82ed204766b2d7faa631171a562` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07609dd4980c5f6951d38ca161eb8afbeec6ca2c` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd0a8822202ad830dd1a6c8afe1e343151714c5b6` | ⚠️ Unaudited |
| MUSEUM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf0470ede87dc392285c4587dbed62b1fa37ec5c6` | ⚠️ Unaudited |
| NewWorldOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00c2999c8b2adf4abc835cc63209533973718eb1` | ⚠️ Unaudited |
| NWORoboticsBilling | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ed4a655f622c09332fa7a67e3f449fe591bc9f6` | ⚠️ Unaudited |
| NWOStatePayout | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26a61de7e9c23ae1e93f291712e0d41c5dc2ad01` | ⚠️ Unaudited |
| PBLCTreasureMultiClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2a192bff3fe6edbbb1f663624421b2c1144d900` | ⚠️ Unaudited |
| PcsPairOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x038ee16bc19e362cc5ba1915f32a3a6717047287` | ⚠️ Unaudited |
| PoliticoinToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ffbd6b41b802550c57d4661d81a1700a502f2ab` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x261845d1d274f542867f78be7be90510fd4899bf` | ⚠️ Unaudited |
| ProximaCentauri | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff7383a4f602b64c9eb8bad7a2cb5631416a7d44` | ⚠️ Unaudited |
| RadioStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a55abd871a8a5aa973980ac5f4e7b9e732532c0` | ⚠️ Unaudited |
| RadioToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-252243 | `0x02bfd11499847003de5f0f5aa081c43854d48815` | ⚠️ Unaudited |
| RBABY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f48d04025d537498e34a41db53b4e872f3dca07` | ⚠️ Unaudited |
| RBRIAR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9e9284dab829961c0964fc849cf93f1ba1695ee` | ⚠️ Unaudited |
| RDFC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73b107389b5c6e08958d59490fe70307aba96afa` | ⚠️ Unaudited |
| REMEDY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc15504ed6e2bb2460750150433320068500ede64` | ⚠️ Unaudited |
| RewardRepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0404084e0e63eb98766a4540a0ac6b0fbf17d155` | ⚠️ Unaudited |
| REXO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c5aa389da4d357ffe7ab4606522dab2067a9a13` | ⚠️ Unaudited |
| RSTATE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0f6cb7c6dd1c7144129cd64022b9ff537458094` | ⚠️ Unaudited |
| ShackStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01d97df7dc98e97da0c14ffb27adf00fda0245dd` | ⚠️ Unaudited |
| ShackToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f018e73c185ab23647c82bd039e762813877f0e` | ⚠️ Unaudited |
| Share | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18a1ea69a50a85752b7bc204a2c45a95ce6e429d` | ⚠️ Unaudited |
| ShareOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x18a1ea69a50a85752b7bc204a2c45a95ce6e429d` | ⚠️ Unaudited |
| StakePBLCNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50202d4e2c96e11ed54f94e4f376d194901901e3` | ⚠️ Unaudited |
| StakeSTATE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1502fb51a6bf1884b33dcda38958e8c1e818146e` | ⚠️ Unaudited |
| STATEActivationBuyback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61d348a2f85bd60da448a1eccbfef9c5b26ba20d` | ⚠️ Unaudited |
| TokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x43bc055a39b40e39d64419f3bc1ae3bc5a3e2087` | ⚠️ Unaudited |
| TreasureContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdff3a0fb729c66c185056972a8c39164b529d866` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f70b82c4031f7b5ee841aaa3a9ba4369f816586` | ⚠️ Unaudited |
| TreasuryPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01f4af873f0cbd914deaa3ab95d2fa1b7d4c86c0` | ⚠️ Unaudited |
| UNIFORM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3018234c038d524147ff47148baa8381306f28cf` | ⚠️ Unaudited |
| UniswapV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5ef0153590d4a762f129dcf3c59186d91365e4e1` | ⚠️ Unaudited |
| UniswapV2Router02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x68797130d8e63745761c524c33121fdd7290cb72` | ⚠️ Unaudited |
| ZapPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0616bd64fdc6fbe68c1c2e8f8224af0427857407` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x7a5d3a9dcd33cb8d527f7b5f96eb4fef43d55636` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xf899e3909b4492859d44260e1de41a9e663e70f5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0xf899e3909b4492859d44260e1de41a9e663e70f5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x30807d3b851a31d62415b8bb7af7dca59390434a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x613a489785c95afeb3b404cc41565ccff107b6e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xf899e3909b4492859d44260e1de41a9e663e70f5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/radioshack](https://skynet.certik.com/projects/radioshack) | CertiK | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20983] skynet.certik.com/projects/radioshack — no match: Extracted from CertiK Skynet page for RadioShack. Only two files explicitly listed as audited. Date from 'Last Audit was delivered on 5/25/2022'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/radioshack | Ownable | unmatched — not counted | — | listed in Audited Files section | no |
| skynet.certik.com/projects/radioshack | SafeMath | unmatched — not counted | — | listed in Audited Files section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 51 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [20983] skynet.certik.com/projects/radioshack

Fork inheritance lineage and inherited audits are included when available.
