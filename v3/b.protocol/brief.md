# Agentic Audit Brief: B.Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 3 audit(s)
- Eligible audit results: 5 (3 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DEAD - TVL dropped 1.3% over 90 days

## Project Overview

- Project: B.Protocol (`b.protocol`)
- Website: [https://app.bprotocol.org/](https://app.bprotocol.org/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, fantom, polygon
- Contract surface: 186 unique implementations (324 raw deployments)
- Coverage basis: 1/10 confirmed own live verified implementations (10.0%); conservative 10.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,754,312.88
- On-chain TVL (included contracts): $46,215,007.68
- TVL by chain: Ethereum $46,142,619.15 | Polygon $72,388.53

## Project Description

This brief describes the observed EVM deployment and audit surface for B.Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across arbitrum, ethereum, fantom, polygon. Structural roles: 6 core, 4 unclassified, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: core (6), unclassified (4), supporting (1)
- Contract kinds: contract (11)
- Detected standards: ownable (5)
- Frameworks: openzeppelin (6), foundry (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

1 of 13 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

**BCdpManager** (`0x3f30c2381cd8b917dd96eb2f1a4f96d91324bbed`, chain 1)
Origin: b.protocol (`0x3320f0a2f18a5177dd53a46c59ad8145d9f7e147`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x5cbe121949f965472611d4b39907548598c86af2`, chain 1)
- UnnamedContract (`0x5eae7715d1970867e4d57c58b08e6acf405a094d`, chain 1)
- UnnamedContract (`0x896d8a30c32ead64f2e1195c2c8e0932be7dc20b`, chain 1)
- Arb (`0x12c60b3170fb43e6a8f8ba2d843621c19324329e`, chain 1)
- BAMM (`0x00ff66ab8699aafa050ee5ef5041d1503aa0849a`, chain 1)
- BAMM (`0x0a30963a461aa4eb4252b5a06525603e49034c41`, chain 42161)
- BAMM (`0x12c60b3170fb43e6a8f8ba2d843621c19324329e`, chain 42161)
- BAMM (`0xebf8252756268091e523e57d293c0522b8afe66b`, chain 42161)
- PBAMM (`0x54bc9113f1f55cdbdf221daf798dc73614f6d972`, chain 1)
- UnnamedContract (`0x6d62d6af9b82cdfa3a7d16601ddbcf8970634d22`, chain 250)
- UnnamedContract (`0xedc7905a491ff335685e2f2f1552541705138a3d`, chain 250)
- Vault (`0x7095f0b91a1010c11820b4e263927835a4cf52c9`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (10 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 15/18 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/10 (10.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 15 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 170 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 14
- Confirmed-live implementations: 15 of 186 unique; 171 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/117
- Verified + Unaudited implementations: 114
- Verified by bytecode match: 2
- Unverified implementations: 69
- Unique implementations: 186
- Raw deployments: 324
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $66.49
- Latest audit: 2021-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $66.49 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Solidified | Tier 2 | 1 | 0.9% | 2021-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BCdpManager | governance | project_anchor | own_core | 0 | ethereum | n/a | 3 deployments: ethereum `0x22d3fbe3afd0ffe8db1306eb857a2a8b21f051ae`; ethereum `0x3320f0a2f18a5177dd53a46c59ad8145d9f7e147`; ethereum `0x3f30c2381cd8b917dd96eb2f1a4f96d91324bbed` | ✅ Audited |

### ⚠️ Verified + Unaudited (114)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LUSDToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f98805a4e8be255a32880fdec7f6728c6568ba0` | ⚠️ Unaudited |
| LQTYToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d` | ⚠️ Unaudited |
| CErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 9 | polygon | n/a | 10 deployments: polygon `0x103f2ca2148b863942397dbc50a425cc4f4e9a27`; polygon `0x243e33aa7f6787154a8e59d3c27a66db3f8818ee`; polygon `0x30a026ae9e2a1363e96a5e5ab12786a46066beb8`; polygon `0x5b9451b1bfae2a74d7b9d0d45bdd0e9a27f7bb22`; polygon `0x607312a5c671d0c511998171e634de32156e69d0`; polygon `0x6bb6ebcf3ac808e26545d59ea60f27a202ce8586`; polygon `0xb4300e088a3ae4e624ee5c71bc1822f68bb5f2bc`; polygon `0xbb93c7f378b9b531216f9ad7b5748be189a55807`; polygon `0xe4e43864ea18d5e5211352a4b810383460ab7fcc`; polygon `0xfcd8570ad81e6c77b8d252bebeba62ed980bd64d` | ⚠️ Unaudited |
| StabilityPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66017d22b0f8556afdd19fc67041899eb65a21bb` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24179cd81c9e782a4096035f7ec97fb8b783e007` | ⚠️ Unaudited |
| CErc20Delegator | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x090a00a2de0ea83def700b5e216f87a5d4f394fe`; polygon `0x2c7a9d9919f042c4c120199c69e126124d09be7c`; polygon `0x36208a6d429b056be6be5fa81cdf4092748ac35d` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | ethereum | n/a | 6 deployments: ethereum `0x3328d5b2cabdf25a9aad31ae52f660398c54b6ce`; ethereum `0x7095f0b91a1010c11820b4e263927835a4cf52c9`; ethereum `0x9f69be585d0e635a846df7db15ad6f7741a9843a`; ethereum `0xb03927ff2880c3f89f561d8d9c3f7edf52a0bbb2`; ethereum `0xc507a27860c225aad8cb4a5a32a44d8892288880`; arbitrum `0xf2bb803010fa55ab60af1a4740d1a1d6c9c93a39` | ⚠️ Unaudited |
| ActivePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f` | ⚠️ Unaudited |
| CollSurplusPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d32e8b97ed5881324241cf03b2da5e2ebce5521` | ⚠️ Unaudited |
| Admin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: polygon `0x0bdcbcebcdcee127e15872fe4fb904b0a41e10cd`; polygon `0x30129f6a5b6cbe6690cba4f8f03142c1fe989b5e`; polygon `0x838766908a81bde23591ff5c7819784974576bfc`; polygon `0xe1561e635dc1487f5371827cd8bf2728e0e94eb9`; polygon `0xe5d36febb94a2b2c0e62bda40524a3ebf79bde63`; polygon `0xe71355366f4ff6a7218131c9799e27d7976d349a` | ⚠️ Unaudited |
| Arb | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228682 | `0x12c60b3170fb43e6a8f8ba2d843621c19324329e` | ⚠️ Unaudited |
| Arb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0xb19aae67f5f1b28ff6bde64cd2c4c24066253a2a`; ethereum `0xbc7e25fa81d4f6214bc046ff264be18750ead7f3`; ethereum `0xcaf3e011fda4f4cd98860acd7afce81c22de28e6`; arbitrum `0xceaf62ba209e2fb7990d29c5f5157377d54fc7b2` | ⚠️ Unaudited |
| ArbChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3648542ef46ae173aa2c4fe19707aa1078695ce0`; ethereum `0xde843d88b55a38e1e0fb831b6edb0110dee9ab9d` | ⚠️ Unaudited |
| BAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x214937a1777e28f188df0ecf3c53189894ef4c1c`; arbitrum `0x28cd4a0afa564f036b32e8ec6062fd01cf82b1a3`; arbitrum `0x547e253c9459cc26636ffaf208b9fe60b8e69e76`; arbitrum `0x654b4106f70c0cf88374216a2d1df9be898017be`; arbitrum `0x711f660e28b31a4debb7dcad79f4f60e10ec2971` | ⚠️ Unaudited |
| BalanceInfo | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd0c40203a6c25bc454d1e528962a4e6a755344b` | ⚠️ Unaudited |
| Balances | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ae823c44b3485918b359329f9f77925c1478082` | ⚠️ Unaudited |
| BAMM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228679 | `0x00ff66ab8699aafa050ee5ef5041d1503aa0849a` | ⚠️ Unaudited |
| BAMM | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-228681 | `0x0d3abaa7e088c2c82f54b2f47613da438ea8c598` | ⚠️ Unaudited |
| BAMM | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228692 | `0x04208f296039f482810b550ae0d68c3e1a5eb719` | ⚠️ Unaudited |
| BAMM | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228693 | `0x0a30963a461aa4eb4252b5a06525603e49034c41` | ⚠️ Unaudited |
| BAMM | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228694 | `0x12c60b3170fb43e6a8f8ba2d843621c19324329e` | ⚠️ Unaudited |
| BAMM | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228695 | `0x24099000ae45558ce4d049ad46ddaaf71429b168` | ⚠️ Unaudited |
| BAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa00cdcede860cd5853daf52f0c8d70bfd1db2a79` | ⚠️ Unaudited |
| BAMM | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228696 | `0xebf8252756268091e523e57d293c0522b8afe66b` | ⚠️ Unaudited |
| BAMMLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfae2e2d3f11bab10ee0ddd0332f6dfe957414ccb` | ⚠️ Unaudited |
| BCdpScore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46dfdffe7592eb565e702c4f8fc631065b2344cf` | ⚠️ Unaudited |
| BGelato | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0c8405ab6f8fd1b2838e4782bc88c4d30d7cf380`; ethereum `0x221ab7b8a2b00f171b1cae485e5f6ede03389102`; ethereum `0x9552d6f69e7639e5780007166a81476d702433ac` | ⚠️ Unaudited |
| BIP1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0ceca20349dcc3556e0fbaaac8f8aa1bf85da4e` | ⚠️ Unaudited |
| BIP3to6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dc1338ef4117c031c4c1dc61b969e45e6e7e1b4` | ⚠️ Unaudited |
| BKeeper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x31d85ef94360a46af2e59c700789ef952cb6eade`; ethereum `0x48420fad7cc1b517e3b49126edc9988df6e0e778` | ⚠️ Unaudited |
| BKeeper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8676cb811b9148bb1171747221d9cf36c8e1c1f2`; ethereum `0xc57071b52682ce253212ccb918695a4685d941ac` | ⚠️ Unaudited |
| BKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0xeae019ef845a4ffdb8829210de5d30ac6fbb5371`; arbitrum `0x102887d6bfc58b0abe721aad1ce5a036ace542c8`; arbitrum `0xddcaf169ce7d42f8d486df5582da8d0ac48e0323` | ⚠️ Unaudited |
| BlackFriday | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20f7cf5900d0e82ab0f7fe2b6a87c3355035a7e6` | ⚠️ Unaudited |
| BLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3843019c19259117ed473947007bcafc5c0c7129`; ethereum `0x9dcc156dfdc09bb52c7489e6ce5c1a9c90572064`; arbitrum `0x539a3f6d1f33c77c83e9b159e23e99fd8c26e7d9` | ⚠️ Unaudited |
| BPRO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbbbbbb5aa847a2003fbc6b5c16df0bd1e725f61` | ⚠️ Unaudited |
| BPROAggregated | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x6eaa36cb264ced039de3762635f098c20c358194`; ethereum `0x78000bfdbeb85eb119ec093c5290e0a7bd3efd2a`; ethereum `0xa01eb8e9b48fb7c027fcda2a02d4fadac7c41cc5`; ethereum `0xcfadc0abf01fb58fc9926a3645b876125a599c5d` | ⚠️ Unaudited |
| BProxyActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x351626387b5bb5408f97f8fd6b2ec415efc9e6a1`; ethereum `0x4bcad4920be1ca53f27656db49d31b23f9725ab0` | ⚠️ Unaudited |
| BStats | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79c3ceb9decd2de5f70e50b0eb2aeb4bca86a7ad` | ⚠️ Unaudited |
| BTCArb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82b4141c7a71cbcd9c95181f057f7dee35784770` | ⚠️ Unaudited |
| BTVL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60312e01a2acd1dac68838c949c1d20c609b20cf` | ⚠️ Unaudited |
| BudConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2325aa20deaa9770a978f1dc7c073589ffc79dc3`; ethereum `0x47f935ac93b785294d9a24503aa633112ecb2553`; ethereum `0x78a049d2fde5eff789555a11e9e8a2c60b0cac6d` | ⚠️ Unaudited |
| CEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xebd7f3349aba8bb15b897e03d6c1a4ba95b55e31` | ⚠️ Unaudited |
| ChainLogConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb043ffb54442e9fbdd720e666fb7292b654a31b` | ⚠️ Unaudited |
| CheapHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe7d1406cc09f6444973c798393f393f7e57e001f` | ⚠️ Unaudited |
| CLiquidationBotHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x8ede503c2df9fbd2be33726818dcb87a76c1bb6e`; polygon `0xd739a70845bc150481ed930990bd65b81fc02c4a` | ⚠️ Unaudited |
| CollateralAdder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: polygon `0x7d30d048f8693af30a10aa5d6d281a7a7e6e1245`; polygon `0xe8f99d91326be3b1116b76833821388a1cdaccef`; arbitrum `0x44794511f06d09ba45fac50312a6f7f7ab3a9a57`; arbitrum `0x6a28e379391c9a8113ba83ffbbea6208f2cf053d`; arbitrum `0xc1de3c0a4ee14abb828ef6d359779f8b00b604c4` | ⚠️ Unaudited |
| Comp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x10010069de6bd5408a6ded075cf6ae2498073c73` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3d9819210a31b4961b30ef54be2aed79b9c9cd3b` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x28707252fdea41b72cf321d153a6c01fa9f6fb79`; polygon `0x8c6139ff1e9d7c1e32bdafd79948d0895ba0a831` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x376020c5b0ba3fd603d7722381faa06da8078d8a`; polygon `0xa8cd5d59827514bcf343ec19f531ce1788ea48f8` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xb426c1b7fabea9ea6a273e8427040568a8c7df13`; polygon `0xedba32185baf7fef9a26ca567bc4a6cbe426e499` | ⚠️ Unaudited |
| ConnectV2BLiquity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19574e5dfb40bbd63a4f3bdcf27ed662b329b2ff` | ⚠️ Unaudited |
| Dripper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc860975ce853aa1eb4dea902839827a17ce8ac71` | ⚠️ Unaudited |
| DutchReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x3d45755ee30dd38ff5d3cc01e8ae6bea0bae3958`; ethereum `0x6253025e2d4c2e89915844ef9854eb7498f497db`; ethereum `0x7c6fc9d2cfa523f517a7958ceac9ff835286ae50`; ethereum `0x918308caf3239d4fdc846aca3a670076545d1b37`; ethereum `0xa45f9b0f82e4e08506eafa8081515b67f546ca1d`; ethereum `0xa58c6d029f0ee738c653ea6cca5417ce5532ea1a`; ethereum `0xb173dd805ededf5d833cfe832eab2a609ad2431e` | ⚠️ Unaudited |
| EIP20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x606b54659c185b669ef90f920d0b93c06a759605`; polygon `0x851bcc3b187e06cfa29361b90cc76e96ef6c63f1` | ⚠️ Unaudited |
| ETHArb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x8e0f69a4d5bfdff4847255c95db3d571de159475`; arbitrum `0x8f8043b6be157b973d735eda3363ae5a94eaf0d6`; arbitrum `0xb8b451b6817767a4e00cb511ca7e3fd890c29331`; arbitrum `0xc199d10d773329c505d8fcad32c7969cfb70ead9`; arbitrum `0xc7b03b19d9d896b0df9b02245a2cab0622279f68`; arbitrum `0xdb872fd74bdf099ff5432d10f6881045e04108a8`; arbitrum `0xeb66db4fa35d419731396fd00432804862ca0d4b` | ⚠️ Unaudited |
| ETHFeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x3d39a116f257f2eb6a63ce400197565e18df6919`; arbitrum `0x4fe29c68a162eb6fbeef85c502c42859d2f5f990` | ⚠️ Unaudited |
| Experiment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e80b3cd3ebe427dcafa230fc6064eac10062472` | ⚠️ Unaudited |
| Exponent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x29c24aad19750753289e414053546f54dff08332`; ethereum `0x5156434ab527b4f1903512b90035eb928be44a8d`; ethereum `0x89f58d968175e2f7460dd88f32b4562606e4d54b`; ethereum `0xf79a20bfaff3b0d57d390db24f918f427370997c` | ⚠️ Unaudited |
| FakeAmpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x89d4f9fbd7eaedb6209e9706a94ae1fadc6a414e`; arbitrum `0xc9ac45e312af112b63dd6566af1fd562c00790e6` | ⚠️ Unaudited |
| FakeBComptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6ba9a68430dc7b21f7b8ab9d23ea3ff0c008b6e` | ⚠️ Unaudited |
| FeeBurnerResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb79323ada11af9d7869d0d5563e561bd609c669` | ⚠️ Unaudited |
| FeeVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: polygon `0x07de5de2bc71223744523e31e613533a04ae33b3`; polygon `0x61c79045f21244981e1323fd2bb7c7702791c750`; polygon `0x8cf0b1c886ee522427ef57f5601689352f8161eb`; polygon `0x902810fecd278703aca73913ab2a6c7684019bbb`; polygon `0xb48bd808b9e8f0331fd02b6d7788d0c9c8fe63e7`; polygon `0xb9bc087c82ad975ad3f1bc03c5442c3c1fb80d34`; polygon `0xc4518e683a1be027fda91d3690730454d5f9ae31` | ⚠️ Unaudited |
| FixedSupplyToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x094c875704c14783049ddf8136e298b3a099c446`; ethereum `0x09677d0175dec51e2215426cddd055a71bf4228d`; ethereum `0x3d3b4858cbc9fcb61abdac44da82c5c3306f61d1`; ethereum `0x6132dbb79f570326485f3ac77628227ab8fbb381`; ethereum `0x71168ca1d778128dff21d799ba931d9dfd48f8a2` | ⚠️ Unaudited |
| FlashArbPolygon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x07f8c13ce5a8347c9ba264a3fc0271427e2933e2`; polygon `0x315358ef72ade2bf82e1b5d6e84b84e023d41939` | ⚠️ Unaudited |
| FlashKeeper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x0bc51a773e75de9c0953e837b989cf5426d01f2a`; polygon `0x83b80681199c24b6b5543dcc4b796afdc36874c0`; polygon `0x86efe17a9f0635be0bd11c1beed4fae3d8b7b154` | ⚠️ Unaudited |
| FlashKeeperFantom | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc969efa01bc20369862381192b0c7a8bf40abba` | ⚠️ Unaudited |
| FlashLoanImport | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5c48ef0301437bb2f5afdda8aedbe817f5e11d6` | ⚠️ Unaudited |
| FuseBAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x2227a0bd08a73e44ea1c992d6b7734a8f026c70c`; arbitrum `0x94fd843e77fe67a18d52e0ad0c9713c5a9399ef4` | ⚠️ Unaudited |
| GaugeHelper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbf689f50cb446f171f08691367f7d9398b24d382` | ⚠️ Unaudited |
| GetDecimals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7bfd2c0b917c1154aa3af1e85e1632f038950fd5`; ethereum `0xb4acba572fd7e69955dabb1ba4bfff89931fb0b6`; ethereum `0xfa1ba4ee3163b97f78307516d77ce28daac99d2d` | ⚠️ Unaudited |
| GOHMArb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x787af92cf661fb7b21a935389ec6505c84105f91` | ⚠️ Unaudited |
| GOHMOracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4710597795ccacdf99054afcc9459e91f08887d0` | ⚠️ Unaudited |
| GovernanceExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x09908cfe36e3941cbfa0c2b6fac623f523dff9fe`; ethereum `0x7b57a69be7e326129a1f671be9cd03f69d2301ad`; ethereum `0x81c4b9b35ec847151af8c81856e434b6a8c4ac68`; ethereum `0x8f95c99d8f2d03729c1300e59fc38299d831a7f7` | ⚠️ Unaudited |
| Jar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3c36ccf03dab88c1b1ac1eb9c3fb5db0b6763cff`; ethereum `0xbde0bac85116148d7cf515c949f3cd1bf6a2e6c1`; ethereum `0xdb89a7750472b1c2d5668385ef62e15898c1d50f` | ⚠️ Unaudited |
| JarConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2cd6eaf23f73bc4f359b69711fb34728c599c34c`; ethereum `0xf10bb2ca172249c715e4f9ee7776b2c8c31aaa69` | ⚠️ Unaudited |
| JumpRateModelV4 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x29ddb4c4f9baae366dbd40eff79d364e004425b0`; polygon `0x42b458056f887fd665ed6f160a59afe932e1f559` | ⚠️ Unaudited |
| KeeperProxy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc0f18d0b9f2239331efb86de92618749ccf14db` | ⚠️ Unaudited |
| KeeperRebate | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb67200fefcbf36b0ca3d70d59ebf90d0b9b38f82` | ⚠️ Unaudited |
| KyberBancorReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb020636f8e30cb8c35a863412503cfd5e3d6d6ce`; ethereum `0xba92981e049a79de1b79c2396d48063e02f47239` | ⚠️ Unaudited |
| KyberNetworkENSResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1982131c7d6959ff7768ee39c023ad002d8c9759` | ⚠️ Unaudited |
| LiquidationBotHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x19830074ceee045362eca46c972d3e3a225151d8` | ⚠️ Unaudited |
| LiquidatorBalanceInfo | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1f3b218869e2ce02671d64298a19589341cc90d0`; ethereum `0xdba0bfb7be95d7483dccde85125b59e98859aeb2`; ethereum `0xf0c02c4edc6b27fbec7ec57e2eac4e3445655ebe` | ⚠️ Unaudited |
| LiquidatorInfo | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0b74978ff389f2c720fbf5827ab848b447cccc6b`; ethereum `0x5fd74c9eb05a11c148297d83febd8b4862a1064d`; ethereum `0x720a2bdae0bd4dfc3cc5bd0bc1148d42685ad9fd`; ethereum `0xbe02c549625c397f1c6da95a97168572ea8ce884` | ⚠️ Unaudited |
| LQTYStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x89db3b59381bc06fe9bf74532afd777e5f78ef02` | ⚠️ Unaudited |
| Migrate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9eacb93cb65f8ad428e270690653b156e1bd0a49`; ethereum `0xa30b9677a14ed10eceb6ba87af73a27f51a17c89`; ethereum `0xf4062d5244aa3a1e664532337c276ea9dc7ed0ca` | ⚠️ Unaudited |
| MockComptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c5c1851626e379e069fb1543fb479a87a78f123` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4dbbbfb0e68be9d8f5a377a4654604a62e851e80`; ethereum `0x7ba651de9b7186f6f9665cf5cc0f19e491db3538`; ethereum `0xb7d931f1205350903e40228557aa7e5a09b7862c` | ⚠️ Unaudited |
| OracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x190b8c66e8e1694ae9ff16170122feb2d287820f`; arbitrum `0xa5e1ae2140d9fd147ce0e1ade024d64a334a4cdb` | ⚠️ Unaudited |
| PauseGuardian | governance | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x110614276f7b9ae8586a1c1d9bc079771e2ce8cf` | ⚠️ Unaudited |
| Pay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0ab366dbbb03c84f581963a4cc0756eb66176bde`; ethereum `0x1ea6f1b58c57a4de9718b5ee6927f1927348a157` | ⚠️ Unaudited |
| PBAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2c6af48e01be6f96fb8ea19c76cb936bb554ea02`; ethereum `0x5123bfe8fb81e9301f3b502d4a088f804431c70f`; ethereum `0xe4c3d5237ac9b4b45098de9e7009c1b75443e6f3` | ⚠️ Unaudited |
| PBAMM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228684 | `0x54bc9113f1f55cdbdf221daf798dc73614f6d972` | ⚠️ Unaudited |
| PickleUniLPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4955592be28b26acf4e9d2670d27d696141b5ab8` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3add75647681d3ba7a4ecfabf75d393936186a2c`; ethereum `0x84ff9784aca79629db8a80527ecbc53af34faf23`; ethereum `0x912d1953d0da41bd82de5c5b68a5ac1b94362d4c`; ethereum `0xba791e7313a3a0ba6fe3a0335f5102b2f60aa47f` | ⚠️ Unaudited |
| PTToDaiConversionRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3b755a375921c248250b03e0afffee779c8b9f75`; ethereum `0x7c3f1c43ed55847f6ca8dd660c85ff0c10be8c17` | ⚠️ Unaudited |
| PublicKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48420fad7cc1b517e3b49126edc9988df6e0e778` | ⚠️ Unaudited |
| Redeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xe4086cccad1d9c71ab96e01be444fc8d51f629d7`; arbitrum `0xea6b7bd072bef7a3a85f5a519d160babfcbde55d` | ⚠️ Unaudited |
| Registry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf698df5591caf546a7e087f5806e216afed666a` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf50fe9282e1be8c08b899a51628a085e81d0d57` | ⚠️ Unaudited |
| SafeChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2686ad73b7e09269672a2c3368883b4f271e4bc5` | ⚠️ Unaudited |
| Split3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xceaf62ba209e2fb7990d29c5f5157377d54fc7b2` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: polygon `0xb5b8dfa0df22d7280be0cebcb77857e64f7bf02d`; arbitrum `0x2980baa3f234efb3beb7793ec8ae1a428aa9f824` | ⚠️ Unaudited |
| TransferToReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0bc250d17261b6c31521c8cd6cbba71ce211256a`; ethereum `0x9c58e033a6465846f27bad998ee9bc4b505182bc` | ⚠️ Unaudited |
| TroveManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2` | ⚠️ Unaudited |
| Unipool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd37a77e71ddf3373a79be2ebb76b6c4808bdf0d5` | ⚠️ Unaudited |
| UniV3Twap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1459dac936578bbe620e2a22e3026ce9791f17d6` | ⚠️ Unaudited |
| UserInfo | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x468960199c8045dedcf6aeb33e28dc57346ad3ff`; ethereum `0x791678c01f00c989c7bc32081ba79196751ddfb1`; ethereum `0x907403da04eb05efd47eb0ba0c7a7d00d4f233ea` | ⚠️ Unaudited |
| Utils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6fc61357f00b7735e5a75156522def9cfb20ee02`; ethereum `0xaec7fa67e32f9ac53ce0684f508510324c018dcc` | ⚠️ Unaudited |
| VoteAndClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x923e21308f2468377b5655cd470662e3c24ed404` | ⚠️ Unaudited |
| WhitePaperInterestRateModelV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x772918d032cfd4ff09ea7af623e56e2d8d96bb65`; polygon `0xb1c4426c86082d91a6c097fc588e5d5d8dd1f5a8` | ⚠️ Unaudited |
| Wrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8f1a369ee7916491e43e412b0dcc7717e2fcb608`; ethereum `0xb6a1c0a18f82ff497d10ea1d1ac3804417e382b2` | ⚠️ Unaudited |
| wstETHArb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d3377912135a4083c10e60af7ff72763ac9e076` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: polygon `0x7025cb98aad5f5088516b1d206a1d0332651d32b`; polygon `0xdbb8aa916dc5d6cb4d043b2d0044e6eeca723d36`; arbitrum `0x0ab366dbbb03c84f581963a4cc0756eb66176bde`; arbitrum `0x7874fd762bfbda4bc653ae7aa5be958f5f60f869`; arbitrum `0x96d240a8fec780f356995ae6042d9ec26f60c21a` | ⚠️ Unaudited (bytecode match) |
| HundredBAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 15 deployments: polygon `0x0f0dd66d2d6c1f3b140037018958164c6ab80d56`; polygon `0x1346e106b4e2558daacd2e8207505ce7e31e05ca`; polygon `0x1ecf1b0de9b4c2d01554062ea2fab84b1917b41d`; polygon `0x240b3e909ac9440db33eae500b19c462f4810247`; polygon `0x2da13538056aff0bfc81d3a4c6364b0a7e0f9feb`; polygon `0x2ee9000587547ec2e1889c22db7bb4b6054d64c7`; polygon `0x753c750807373e52dbed6622ccf3779132d0feac`; polygon `0x998bf304ce9cb215f484aa39d1177b8210078f49`; polygon `0xa5e14874b4929782135cc9f76a4461914e85e0e4`; polygon `0xa8d60f5cc2c01bd1514348753140faa28e449e3d`; polygon `0xbdac312c7141f5d596aed0182da6ab07ca5c7247`; polygon `0xcebdf18ac062cfa15fb3416dd453342e72b17e25`; polygon `0xda57c07594b632d9b93693ee22d2e3d9f8c00bdb`; polygon `0xedce1c21ad6cb55d647671682b35766ea4a440f1`; arbitrum `0x51fbf83818e4fa195fd5d395a63fcfb5c45d9565` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (69)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04068da6c83afcfa0e13ba15a6696662335d5b75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04208f296039f482810b550ae0d68c3e1a5eb719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ad1af0c5d0bebb17fe7039c8feb949bba62fbf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x183994267258e85cb9335a31c0ef46469c12e28a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f97df8d9df85e7b5469f385dfe2c940bfc793dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29e7d0c82f885b0412cdc8d431e805e26c80c3c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55e8bef09624d60793181a125e07f040b4bcacbc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228685 | `0x5cbe121949f965472611d4b39907548598c86af2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228686 | `0x5eae7715d1970867e4d57c58b08e6acf405a094d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ad29d0c2a9b4e7ab4eb2869ef36b997e9c98865` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d444c2ab904296a1da82ef29307e56d0ada8322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d62d6af9b82cdfa3a7d16601ddbcf8970634d22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228688 | `0x896d8a30c32ead64f2e1195c2c8e0932be7dc20b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9247d4c95c9783fc1934c5f3c141cdda53c79c61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa42c5c5f7cca55a7911a00dd378274f14bb3bb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc970e21a06f67e362e1d355146726b872730570a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe574ccc2c33eb57f54cb350afff6919a5de06545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedc7905a491ff335685e2f2f1552541705138a3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf06c81c38a2f1128dc801f057f63f168129d2e79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc089830cc794731e9e35cfb123ffc2a18a49200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02824539cf87c184d4b9f4f1c4f89873966f44b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0aed20b39e2f13d746fb2528a5367750f12bb039` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ba89d15d7543c15012bd8fd44a06ce2057ae2b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x138f5b1e746e34d5a0382acb19e48459e36aeee1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x17625a02aff8be8b1c7195a74a90ff1af315a086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a1d74849373f665e597914f936da377b1361c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1cbdf5d28da18be6b289c752f52f9d3add27094e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x207a0b6b61815c870b9e85b3da7e26778dd5dff7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x26217502ba9f417b8707c44560a46bd2f01ac0bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x285e2e2280a8d2da2840d8300b81e84ef2592d90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x288a38a07ef3751a2de412221600e8ff1f0ded55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x28da2d51f80c17410a047204251c6125b51bb532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4db1d29ea5b51ddadcc5ab26709dda49e7eb1e71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x55fb2acadb3f6b95452bb6b796227cd1ed5c415e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x60d7de603607e5358ff285fed5224962df4e7c42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6f5e884ebb5c8b7a583a2d2e1ffdde86e22d118e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x757ad894ba805fbf541f7cced3bfaa912926bd7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7a0187613355902c009acbf1ed74031ad9ff4a96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8a0d639f272f4b966b2dea42d4b743dce7e82c28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8e15a22853a0a60a0fbb0d875055a8e66cff0235` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9062d1477c3cd000301a471be03c9db85c3fc27a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x94a64b8330b452065ddb18dcf6f5ecdfa1eb2a00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9a79a2b1c777bf2bf291cc25249f430499517a12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9a9e6eeed5efb3085d37f3003bea10f3959e4374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9d56800b8ae23b79fe9d4822aa3245fa527caf3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9f99f6bf9341af018e484d6e4f125c2af3423d92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa2fa2bce89081771b761214209ec00ba3f81d8ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa8236eafbaf1c3d39396de566ceea6f320e3db00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xadeba4065f3f3a60b25836b1fdeef2eddee0bb27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xae6277c3e741ecaf7a188aab4543b05ccabbfdf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafbc554d58a0ddde76739801dc41d0d7ecd542e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb04cc661cb4543cc1582958d6cc9248a4c4868ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb1ace6cb23c3b1b8c7dc8d7d555be182053e21a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb54f98976b40cdaccfc4958fc9c0f6955d52521e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbe76cd24f74634d50bba6fd86a4c1579bacba11c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcb6e2f66df0493b4dd23ac7727d1677d1208b697` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc2e620552c531d84764f8a82b0efaca59fe937e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe539b93620570a92ef90ef7e60c79d9faee91186` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe8f12f5492ec28609d2932519456b7436d6c93bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf2febab20b24c185aaa38157df5c91aec3ab0252` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf426ebc38bb724985f30ea9acaac9fb60afeb8f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf9c45c39fdc3c58ed85a159f2e26fd99d8511f45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfacd20bc2596ec1f3bd71aee73dee4207175738c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xff6a0d383ac1128f4edb81ce9d5d92c1def238f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | `0x24099000ae45558ce4d049ad46ddaaf71429b168` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-228690 | `0x6d62d6af9b82cdfa3a7d16601ddbcf8970634d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | `0xbbbbbbb5aa847a2003fbc6b5c16df0bd1e725f61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-228691 | `0xedc7905a491ff335685e2f2f1552541705138a3d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audit Report - Backstop Protocol [02.10.2020].pdf](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20Backstop%20Protocol%20%5B02.10.2020%5D.pdf) | Solidified | Audit | 2020-10 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 3 | high |
| [FPS_B.AMM_Liquity_Assessment_FINAL.pdf](https://github.com/Fixed-Point-Solutions/published-work/blob/master/SmartContractAudits/FPS_B.AMM_Liquity_Assessment_FINAL.pdf) | Fixed Point Solutions | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [FPS_B.AMM_Rari_Assessment_FINAL.pdf](https://github.com/Fixed-Point-Solutions/published-work/blob/master/SmartContractAudits/FPS_B.AMM_Rari_Assessment_FINAL.pdf) | Fixed Point Solutions | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Audit Report - B-Protocol [16.02.2021].pdf](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20B-Protocol%20%5B16.02.2021%5D.pdf) | Solidified | Audit | 2021-02 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 11 | high |
| [Audit Report - B-Protocol [16.02.2021].pdf](https://github.com/solidified-platform/audits/blob/60778395ae2f78fc1caec0085bfa96c6f70c4573/Audit%20Report%20-%20B-Protocol%20%5B16.02.2021%5D.pdf) | Code4rena | Contest | 2021-02 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 11 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2976] Audit Report - Backstop Protocol [02.10.2020].pdf — matched: All contracts listed in 'Audited Files' section are in scope.
- [2978] FPS_B.AMM_Liquity_Assessment_FINAL.pdf — no match: Scope explicitly mentions B.AMM Liquity-specific smart contracts in the repository, and findings reference BAMM.sol, crop.sol (CropJoin), and PriceFormula.sol.
- [2979] FPS_B.AMM_Rari_Assessment_FINAL.pdf — no match: Scope section lists three contracts: BAMM.sol, PriceFormula.sol, TokenAdapter.sol. Audit date is 2021/12/19 from the header.
- [2980] Audit Report - B-Protocol [16.02.2021].pdf — matched: All contracts listed in the 'Audited Files' section under 'contracts' folder.
- [14828] Audit Report - B-Protocol [16.02.2021].pdf — matched: All contracts listed in the 'Audited Files' section under 'contracts' folder.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit Report - Backstop Protocol [02.10.2020].pdf | BCdpManager | own contract | BCdpManager (selected) `0x3f30c2381cd8b917dd96eb2f1a4f96d91324bbed` — deployed 2020-10-17 22:19:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit Report - Backstop Protocol [02.10.2020].pdf | BCdpScoreConnector | unmatched — not counted | — | listed in audited files | no |
| Audit Report - Backstop Protocol [02.10.2020].pdf | LiquidationMachine | unmatched — not counted | — | listed in audited files | no |
| Audit Report - Backstop Protocol [02.10.2020].pdf | Math | unmatched — not counted | — | listed in audited files | no |
| Audit Report - Backstop Protocol [02.10.2020].pdf | Pool | own contract | 0x5cbe12… (selected) `0x5cbe121949f965472611d4b39907548598c86af2` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit Report - Backstop Protocol [02.10.2020].pdf | BProxyActions | own contract | 0x5eae77… (selected) `0x5eae7715d1970867e4d57c58b08e6acf405a094d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| FPS_B.AMM_Liquity_Assessment_FINAL.pdf | BAMM | ambiguous — not counted | BAMM (alternative) `0x12c60b3170fb43e6a8f8ba2d843621c19324329e` — deployed 2022-02-07 16:34:55+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0x0a30963a461aa4eb4252b5a06525603e49034c41` — deployed 2022-02-07 16:55:03+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0x24099000ae45558ce4d049ad46ddaaf71429b168` — deployed 2021-11-10 15:42:39+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0xebf8252756268091e523e57d293c0522b8afe66b` — deployed 2022-02-07 16:45:33+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0x00ff66ab8699aafa050ee5ef5041d1503aa0849a` — deployed 2022-01-24 13:32:56+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0x04208f296039f482810b550ae0d68c3e1a5eb719` — deployed 2021-11-21 12:56:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| FPS_B.AMM_Liquity_Assessment_FINAL.pdf | CropJoin | unmatched — not counted | — | listed in scope and findings | no |
| FPS_B.AMM_Liquity_Assessment_FINAL.pdf | PriceFormula | unmatched — not counted | — | listed in scope and findings | no |
| FPS_B.AMM_Rari_Assessment_FINAL.pdf | BAMM | ambiguous — not counted | BAMM (alternative) `0x12c60b3170fb43e6a8f8ba2d843621c19324329e` — deployed 2022-02-07 16:34:55+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0x0a30963a461aa4eb4252b5a06525603e49034c41` — deployed 2022-02-07 16:55:03+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0x24099000ae45558ce4d049ad46ddaaf71429b168` — deployed 2021-11-10 15:42:39+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0xebf8252756268091e523e57d293c0522b8afe66b` — deployed 2022-02-07 16:45:33+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0x00ff66ab8699aafa050ee5ef5041d1503aa0849a` — deployed 2022-01-24 13:32:56+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0x04208f296039f482810b550ae0d68c3e1a5eb719` — deployed 2021-11-21 12:56:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| FPS_B.AMM_Rari_Assessment_FINAL.pdf | PriceFormula | unmatched — not counted | — | listed in scope | no |
| FPS_B.AMM_Rari_Assessment_FINAL.pdf | TokenAdapter | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | BErc20 | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | AbsBToken | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | BEther | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | BComptroller | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | Pool | own contract | 0x5cbe12… (selected) `0x5cbe121949f965472611d4b39907548598c86af2` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit Report - B-Protocol [16.02.2021].pdf | Registry | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | Import | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | AbsCToken | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | AbsComptroller | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | Avatar | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | AbsAvatarBase | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | IBTokenScore | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | BErc20 | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | AbsBToken | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | BEther | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | BComptroller | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | Pool | own contract | 0x5cbe12… (selected) `0x5cbe121949f965472611d4b39907548598c86af2` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit Report - B-Protocol [16.02.2021].pdf | Registry | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | Import | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | AbsCToken | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | AbsComptroller | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | Avatar | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | AbsAvatarBase | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | IBTokenScore | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x3328d5b2cabdf25a9aad31ae52f660398c54b6ce` | Vault | core_logic | $66.49 | Verified native implementation with $66.49 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x12c60b3170fb43e6a8f8ba2d843621c19324329e` | Arb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x00ff66ab8699aafa050ee5ef5041d1503aa0849a` | BAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x04208f296039f482810b550ae0d68c3e1a5eb719` | BAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0a30963a461aa4eb4252b5a06525603e49034c41` | BAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x12c60b3170fb43e6a8f8ba2d843621c19324329e` | BAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x24099000ae45558ce4d049ad46ddaaf71429b168` | BAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xebf8252756268091e523e57d293c0522b8afe66b` | BAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x54bc9113f1f55cdbdf221daf798dc73614f6d972` | PBAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 110 |
| upstream | 18 |
| standard_library | 2 |
| needs_review | 56 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 29 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: unique_name=5

Zero-match audit list:

- [2978] FPS_B.AMM_Liquity_Assessment_FINAL.pdf
- [2979] FPS_B.AMM_Rari_Assessment_FINAL.pdf

Fork inheritance lineage and inherited audits are included when available.
