# Agentic Audit Brief: Ocean Point

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

- Project: Ocean Point (`ocean-point`)
- Website: [https://app.oceanpoint.fi/](https://app.oceanpoint.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 46 unique implementations (61 raw deployments)
- Coverage basis: 0/6 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $858,066.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ocean Point. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across ethereum. Structural roles: 6 core, 2 supporting, 1 infra. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (6), supporting (2), infra (1)
- Contract kinds: contract (8), abstract (1)
- Detected standards: erc20 (6), ownable (4), erc1967proxy (2), ownable2step (2), erc20permit (1)
- Frameworks: openzeppelin (8), openzeppelin-upgradeable (4)
- Upgradeable-pattern rows: 6

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BlocksquareToken (`0x509a38b7a1cc0dcd83aa9d06214663d9ec7c7f4a`, chain 1)
- BSPTStaking (`0x5d2c0cc239b33ffc01337c90194acacd50c79088`, chain 1)
- BSPTStakingProxy (`0x13299657e662894b933bb3ee73f7f8da94b55451`, chain 1)
- BSPTStakingProxy (`0x57ba886442d248c2e7a3a5826f2b183a22ecc73e`, chain 1)
- BSPTStakingV04 (`0x4cbd2c0fe3879b54dd9f5eb38f23467f9fb319bf`, chain 1)
- MarketplacePool (`0x77046396ff56a0ea858637ded142e721f4c80cf7`, chain 1)
- MarketplacePoolProxyFactory (`0x17887106a14f38bf10512565bdbb5bd7ac12f001`, chain 1)
- OceanStaking (`0x6f1e92fb8a685aaa0710bad194d7b1aa839f7f8a`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (8 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/6 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 39 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 16
- Confirmed-live implementations: 6 of 46 unique; 40 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/34
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 46
- Raw deployments: 61
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
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
| AirdropTokenGeneration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2d980466f7e9211bc398c68121140802d6d4901` | ⚠️ Unaudited |
| BlocksquareSeedSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e` | ⚠️ Unaudited |
| BlocksquareSeriesA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78fd5d570ad8d2a8af142118cd044010ca0ad9e5` | ⚠️ Unaudited |
| BlocksquareToken | token | project_anchor | own_supporting | 0 | ethereum | unit-389910 | `0x509a38b7a1cc0dcd83aa9d06214663d9ec7c7f4a` | ⚠️ Unaudited |
| BSPTStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15a63d3b8707f215a9ff97ea5e5f79b28760997f` | ⚠️ Unaudited |
| BSPTStaking | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389914 | 2 deployments: ethereum `0x57ba886442d248c2e7a3a5826f2b183a22ecc73e`; ethereum `0x5d2c0cc239b33ffc01337c90194acacd50c79088` | ⚠️ Unaudited |
| BSPTStakingV04 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389913 | 2 deployments: ethereum `0x13299657e662894b933bb3ee73f7f8da94b55451`; ethereum `0x4cbd2c0fe3879b54dd9f5eb38f23467f9fb319bf` | ⚠️ Unaudited |
| BSTRewardVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5c9f20647026d7ff918458be2ee12f42cdcf05d8`; ethereum `0xbd37ddc387b911fb3b811a5033ae40027010060e` | ⚠️ Unaudited |
| CertifiedPartners | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dbb99cc3721f5c9cc7c9e92db260813cf78cdd3` | ⚠️ Unaudited |
| CryptosnacksBSPTStakingV04 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x6f5ecf8a8dadaac3c8440a080c9271f845f34b07`; ethereum `0x7669b92ca40f7788440a928df069a92f61137ead`; ethereum `0xb0131b817695868bd64b59df76b101c92cd762de` | ⚠️ Unaudited |
| CryptosnacksOceanPropertyRegistryV04 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x05f5b75d80291910a54b65aea9b45f549cdd0acc`; ethereum `0x7a5a436896f064ef65e7f9f01b19765fca938730`; ethereum `0xcd08c347d959428ff90fe25c88f39389a4cecec8` | ⚠️ Unaudited |
| DataStorageProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c2a858fe7b2bf155247c7f528c6ca7b186197b5` | ⚠️ Unaudited |
| FactoryData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x146d589cfe136644bdf4f1958452b5a4bb9c5a05` | ⚠️ Unaudited |
| FixedPriceInitialOffering | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25862c4fb4ce9d6ff9b463488e0ec656fa08de78` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xfb531d5602fc0953be047605c77a7d289729ea8a` | ⚠️ Unaudited |
| LandhiveBSPTStakingV04 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x86d13326fabb4f45a5e9a5655909f0ca1a13ee30`; ethereum `0xfc7cd245913691fb2d305a0fc60a1dadd1ecdebf` | ⚠️ Unaudited |
| LandhiveOceanPropertyRegistryV04 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x3c18b35e8e919224ea4099acc0d280eda76a71c0`; ethereum `0x59a401af2a045b4b38974957652e78fb67c697de`; ethereum `0x6b1ab60b6a1bf25a7058531afa8a5343b5fc845a` | ⚠️ Unaudited |
| LPStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0f2e209f67c8900005f71a833c484221f965b33d`; ethereum `0x1802f66868d0649687a7a6bc9b8a4292e148daec` | ⚠️ Unaudited |
| MarketplacePool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389912 | `0x77046396ff56a0ea858637ded142e721f4c80cf7` | ⚠️ Unaudited |
| MarketplacePoolProxyFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-389909 | `0x17887106a14f38bf10512565bdbb5bd7ac12f001` | ⚠️ Unaudited |
| MultipleVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf62e5cb35ee81b3c259fb002d61d7c7733ed3476` | ⚠️ Unaudited |
| OceanPropertyRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x14db5b377d13ec9f9e7747f42d71634b5ef5a335`; ethereum `0xf31ce838c3132082cdb2d1fd5dccf140eb382936` | ⚠️ Unaudited |
| OceanPropertyRegistryV04 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xaeea40bb8393174459c4016bce2625076fe4deff`; ethereum `0xd0a2b9aad1ded6ee4a0379ffa092977234ad8f10` | ⚠️ Unaudited |
| OceanStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389911 | `0x6f1e92fb8a685aaa0710bad194d7b1aa839f7f8a` | ⚠️ Unaudited |
| PropertyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ae91a263a690bf2129cf0b3acac92bbb67e6685` | ⚠️ Unaudited |
| PropertyRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05325c1ab1440df7214db38f676f95999729267b` | ⚠️ Unaudited |
| PropToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9473481877cb241b0c8f647bf841973196e61a1d` | ⚠️ Unaudited |
| PropTokenRENT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73658d0f69c4327363d889276bced7e20dab984f` | ⚠️ Unaudited |
| RevenueDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8bb2c977c129bdc44a830bfe71e1d0d46855dd13`; ethereum `0xbcb1757cdadec25b6cadc1a83953a70eda2da8cb` | ⚠️ Unaudited |
| RevenueDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1b9a8fe61dc7da04a5d5d5a47057253e0f27906` | ⚠️ Unaudited |
| Roles | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcddd81a19cfd74281c7c5f83415e195b44953ec4` | ⚠️ Unaudited |
| TokenGeneration | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8af9acb3d9b8827e863d416f740c7e97eb5a72f` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-389908 | `0x0e85fb1be698e777f2185350b4a52e5ee8df51a6` | ⚠️ Unaudited |
| Users | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13344d0cb96b17df81c4171ce47e14ff6c1975f7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05e092ba7da8817eb98a7b250c74887ce8c8fb2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38da45d19db42422a8aeda7990a1a26c090bc8a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66be0954a653196ae7509c89fb612a9ef1481b62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cea8fc21c965f23cd25ad44e9bd91687f76f2f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7000ae60ae456bd16676b6c107f48a2985f48f98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa273efdc4756abc6774e621b0f7775f89248eca8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac562e240d809a280db26d22a892666acfb3826c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc2a056dc7956ad77d0602cd9f2eaf8ba476f6a9e`; ethereum `0xe8180724b574fddea8d4ef21b616a437483f49bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb641f6b46e1f2970db003c19515018d0338550a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0b7cb79cf6b32c86b9f2218c2914dbf1b391917` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0ee00fe7d52ed7ae78f659c9640b5651f45e8ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe98af4a36f3f02fa52a356e5f1cde0952aa84b06` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [hacken.io/audits/blocksquare](https://hacken.io/audits/blocksquare) | Hacken | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3225] hacken.io/audits/blocksquare — no match: The provided text is a marketing/overview page for Blocksquare audits on Hacken's website, not an actual audit report. It lists audit history but does not contain a scope section or detailed contract names for any specific audit.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x509a38b7a1cc0dcd83aa9d06214663d9ec7c7f4a` | BlocksquareToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x57ba886442d248c2e7a3a5826f2b183a22ecc73e` | BSPTStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x13299657e662894b933bb3ee73f7f8da94b55451` | BSPTStakingV04 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x77046396ff56a0ea858637ded142e721f4c80cf7` | MarketplacePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x17887106a14f38bf10512565bdbb5bd7ac12f001` | MarketplacePoolProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6f1e92fb8a685aaa0710bad194d7b1aa839f7f8a` | OceanStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [3225] hacken.io/audits/blocksquare

Fork inheritance lineage and inherited audits are included when available.
