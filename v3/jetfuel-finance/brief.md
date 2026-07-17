# Agentic Audit Brief: JetFuel Finance

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

- Project: JetFuel Finance (`jetfuel-finance`)
- Website: [https://jetfuel.finance/](https://jetfuel.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 55 unique implementations (55 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $122,358.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for JetFuel Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across bsc. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: ownable (3), erc20 (2)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 3; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 51 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/54
- Verified + Unaudited implementations: 54
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 55
- Raw deployments: 55
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

### ⚠️ Verified + Unaudited (54)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BEP20Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb991a9bcbafc9931eb78ca6816e388f90d67ec7` | ⚠️ Unaudited |
| D100Presale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a950cafa914d898cbf7a7daa71eebc73e7ec051` | ⚠️ Unaudited |
| FortressIJO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2fc22a43bb759cfa07fed29cf4b40d2508e777d2` | ⚠️ Unaudited |
| FTSTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x94222bd8c1fc5ca4014fec75550aaced124783e8` | ⚠️ Unaudited |
| FuelToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-243298 | `0x2090c8295769791ab7a3cf1cc6e0aa19f35e441a` | ⚠️ Unaudited |
| GFCEPresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf2ef295115068bb4e4a37451210a97a02718874` | ⚠️ Unaudited |
| GFORCE | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-243300 | `0x94babbe728d9411612ee41b20241a6fa251b26ce` | ⚠️ Unaudited |
| GFORCEv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f136383e230f972739fae2e81e7e774afe64c66` | ⚠️ Unaudited |
| HarvestMoonTicket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c0287709e3c60bfccefdfbfccefdad57aef5b8d` | ⚠️ Unaudited |
| IJO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0196f8e442006a35a89734de83fc04c0d6675ae2` | ⚠️ Unaudited |
| JetBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3a3e10ceecd7ed81536a6c529bec1e4fb475cfb` | ⚠️ Unaudited |
| JetfuelAutoVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d211236ccad202bc5548d0243d0e7819ed995dd` | ⚠️ Unaudited |
| JetfuelAutoVaultv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6b4c20a45df1b47d15c66af601f5aa599bdbb60` | ⚠️ Unaudited |
| JetfuelBSCEXVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a8ab9f4c04b62ba48d513b39f0ae0c3e6997d8b` | ⚠️ Unaudited |
| JetfuelCakeBestVaultv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c6d9eef78b07fc13d6742b6473a4ffb1dbd4afa` | ⚠️ Unaudited |
| JetfuelFortressVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x647db6dce3c36ac1a3ba48f0f6b767a6c73e22d2` | ⚠️ Unaudited |
| JetfuelFortressVaultBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15e84d6ed8997590e02b25d3d3ceee9686753306` | ⚠️ Unaudited |
| JetFuelNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4628726f2ae19282c55fc464ed0553170ff899cb` | ⚠️ Unaudited |
| JetfuelVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x032bb900363be7a2fa566694a7f065f13820ecda` | ⚠️ Unaudited |
| JetfuelVaultDittoBoost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d6d415be40159f207540f95e398f29a7173dc20` | ⚠️ Unaudited |
| JetfuelVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x227f9a94815d3a30ef8ffb7302a1793d05cd2113` | ⚠️ Unaudited |
| JetfuelVenusVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x937f23ef476b6747b37f2125cbb257fc42e10f98` | ⚠️ Unaudited |
| JetfuelVenusVaultBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc15bb35a1752a40be9d5090e784a896074e1cd89` | ⚠️ Unaudited |
| JetfuelVenusVaultv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x050015dedfd2b063a706c98bfa82b3c98b1da25f` | ⚠️ Unaudited |
| JetFuelVIPNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f218191da87e736c859f7c57922561c4641bb28` | ⚠️ Unaudited |
| JetswapBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd079475f820bb3a01932083382aed733d3d61b47` | ⚠️ Unaudited |
| JetswapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0eb58e5c8aa63314ff5547289185cc4583dfcbd5` | ⚠️ Unaudited |
| JetswapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe65b8f75b9f20f4c522e0067a3887fada714800` | ⚠️ Unaudited |
| JetswapVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06fd5cab123990a0dd0ba2130bfa76da26c91b43` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63d6ec1cdef04464287e2af710ffef9780b6f9f5` | ⚠️ Unaudited |
| MasterFuel | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-243299 | `0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56` | ⚠️ Unaudited |
| RewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41aff2c6bdf200d205de307f597db738c0bf2922` | ⚠️ Unaudited |
| SmartChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x013bc4281cca84c3c2fac7203c4d2859099dce60` | ⚠️ Unaudited |
| SmartChefFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c202a3bf2ed24c6667f607d62b1fabbfcd8ae1e` | ⚠️ Unaudited |
| StrategyApe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c975a1f55d897cf7541693e732d6d474bedf9b1` | ⚠️ Unaudited |
| StrategyApeLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbfb7c6dd4037285a387d021fdad9383a71871d96` | ⚠️ Unaudited |
| StrategyAutoLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x408951aa05906cda702e52139a027d29d247fdb7` | ⚠️ Unaudited |
| StrategyAutoLPv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87b7972453d03e344d4fdf8dd5bef6ca692352f1` | ⚠️ Unaudited |
| StrategyAutoV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x715067fb405dc42bb0a201c31748dc15c24a944f` | ⚠️ Unaudited |
| StrategyBakeryLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00589273cfda2d74a0bee8cc7316919d52db964b` | ⚠️ Unaudited |
| StrategyCakeBest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d8f1fd50f0ce0d93ded70ec2194e5a6bb49a0e9` | ⚠️ Unaudited |
| StrategyCakeBestv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8ceea3951097a5efc46746aeafc339b28c8714c` | ⚠️ Unaudited |
| StrategyCakeSmart | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31a85811322211f5f7b2405e5eb2b2567f98f79a` | ⚠️ Unaudited |
| StrategyFortress | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc012ee194179ceb4f5431015148b0da1f964e1a` | ⚠️ Unaudited |
| StrategyFortressBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58b8b3430c70e76a33e91a6c942078b8f88c506d` | ⚠️ Unaudited |
| StrategyJetfuelBSCEX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x098daf85bed3ad16a284c4c5f2b04e5d84cd057c` | ⚠️ Unaudited |
| StrategyJetfuelLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01588b79b8b9c5dfd4d7199a978c4404d5daf7fc` | ⚠️ Unaudited |
| StrategyVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b4ac854160d97da09a183559cc8441f30de2a57` | ⚠️ Unaudited |
| StrategyVenusBNBV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x956bce4f086dc4579b960ed80336ef79737cdaa3` | ⚠️ Unaudited |
| StrategyVenusv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c0c0e0732ce790c4d30dbaa0a0eccb3c01014aa` | ⚠️ Unaudited |
| StrategyWingsLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d9ab0182a8004014dd22b7b6f614d07d13eedb6` | ⚠️ Unaudited |
| StrategyWingsSingleVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf150fd19a8f88668099eab23291162124f24e06f` | ⚠️ Unaudited |
| TRYONPresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb65be412326e54811ff47f0130c0d8be0776e0bf` | ⚠️ Unaudited |
| WingsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0487b824c8261462f88940f97053e65bdb498446` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xf6488205957f0b4497053d6422f49e27944ee3dd` | ❓ Unverified |

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
| native | 54 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

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
