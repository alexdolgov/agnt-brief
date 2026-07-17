# Agentic Audit Brief: Gravita Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Gravita Protocol (`gravita-protocol`)
- Website: [https://docs.gravitaprotocol.com/gravita-docs](https://docs.gravitaprotocol.com/gravita-docs)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, linea, mantle, optimism, polygon-zkevm, zksync-era
- Contract surface: 122 unique implementations (122 raw deployments)
- Coverage basis: 0/9 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $281,914.47
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Gravita Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across arbitrum, ethereum, linea, mantle, optimism, polygon-zkevm, zksync-era. Structural roles: 5 infra, 3 core, 1 supporting. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: infra (5), core (3), supporting (1)
- Contract kinds: contract (9)
- Detected standards: erc1967proxy (5), ownable (3), erc20 (2), erc165 (1), erc20permit (1)
- Frameworks: openzeppelin (8), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 5

## Fork Analysis

1 of 98 contracts are derived from known codebases. 97 contracts have no detected origin.

### Forked Contracts

**GravitaDebtToken** (`0x894134a25a5fac1c2c26f1d8fbf05111a3cb9487`, chain 10)
Origin: zerolend (`0x894134a25a5fac1c2c26f1d8fbf05111a3cb9487`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2b0024ecee0626e9cfb5f0195f69dcac5b759dc9`, chain 1)
- UnnamedContract (`0x2bca0300c2aa65de6f19c2d241b54a445c9990e2`, chain 1)
- UnnamedContract (`0x4928c8f8c20a1e3c295dddbe05095a9abbdb3d14`, chain 1)
- UnnamedContract (`0x4f39f12064d83f6dd7a2bdb0d53af8be560356a6`, chain 1)
- UnnamedContract (`0x57a1953bf194a1ef73396e442ac7dc761dcd23cc`, chain 1)
- UnnamedContract (`0x84446698694b348eaece187b55df06ab4ce72b35`, chain 1)
- UnnamedContract (`0x89f1eccf2644902344db02788a790551bb070351`, chain 1)
- UnnamedContract (`0xc49b737fa56f9142974a54f6c66055468ec631d0`, chain 1)
- UnnamedContract (`0xdb5dacb1dfbe16326c3656a88017f0cb4ece0977`, chain 1)
- UnnamedContract (`0xf31d88232f36098096d1eb69f0de48b53a1d18ce`, chain 1)
- UnnamedContract (`0xf7cc67326f9a1d057c1e4b110ef6c680b13a1f53`, chain 1)
- UnnamedContract (`0x24ae02776b3c76cb20caf4ea24f8a8bd438b09e7`, chain 10)
- UnnamedContract (`0x326398de2db419ee39f97600a5eee97093cf3b27`, chain 10)
- UnnamedContract (`0x40e0e274a42d9b1a9d4b64dc6c46d21228d45c20`, chain 10)
- UnnamedContract (`0x5bd5b45f6565762928a79779f6c2dd43c15c92ee`, chain 10)
- UnnamedContract (`0x6adaa3eba85c77e8566b73aefb4c2f39df4046ca`, chain 10)
- UnnamedContract (`0x6b42581ac12f442503dfb3dff2bc75ed83850637`, chain 10)
- UnnamedContract (`0x82e34e39126190e622ebb2801e047d587ac94c5d`, chain 10)
- UnnamedContract (`0x8bbf5c949b05e185c470553add43f15118ca3e44`, chain 10)
- UnnamedContract (`0x9d8bb5496332cbeed59f1211f28db8b5eb214b6d`, chain 10)
- UnnamedContract (`0xc818f878f27d0273fb53b71d281c82921f0af15c`, chain 10)
- UnnamedContract (`0xc8a25ea0cbd92a6f787aeed8387e04559053a9f8`, chain 10)
- UnnamedContract (`0x03569d4c117f94e72e9f63b06f406c5bc7cadde9`, chain 324)
- UnnamedContract (`0x086d0981204b3e603bf8b70d42680da10b4dda31`, chain 324)
- UnnamedContract (`0x1b137f2a2257959b1d4f61586d56295ce4d62dcf`, chain 324)
- UnnamedContract (`0x23d57c3f65ed7cdd36fea54ca0f9e32d91eaed63`, chain 324)
- UnnamedContract (`0x285bc3b1b0856b41bba1f8dd0ef48cedd8ba91e1`, chain 324)
- UnnamedContract (`0x3ec7a7f366d846626fe462baefef3a78bec5964c`, chain 324)
- UnnamedContract (`0x441f6b484fd60c31b3ca9c61014030b0403f805a`, chain 324)
- UnnamedContract (`0x48df3880be9dfaac56960325fa9a32b31fd351ea`, chain 324)
- UnnamedContract (`0x4e5ec0ad40bc20468c6385790573add731f95fe1`, chain 324)
- UnnamedContract (`0x5fc44e95eaa48f9eb84be17bd3ac66b6a82af709`, chain 324)
- UnnamedContract (`0x8d9cdd9372740933702d606ead3bb55dffdc6303`, chain 324)
- UnnamedContract (`0xd085fd2338cefb9cbd212f74d479072c1e7a25bf`, chain 324)
- UnnamedContract (`0xdace04e411d9916169c0401033a7f76994ef5a0f`, chain 324)
- UnnamedContract (`0xe5b388dde9a73ac9e55577bf73ea03d1ee5ae48b`, chain 324)
- UnnamedContract (`0x0d2c4ae1859c4f8bfd47755d52ce844b26cb2a09`, chain 1101)
- UnnamedContract (`0x24ae02776b3c76cb20caf4ea24f8a8bd438b09e7`, chain 1101)
- UnnamedContract (`0x40e0e274a42d9b1a9d4b64dc6c46d21228d45c20`, chain 1101)
- UnnamedContract (`0x42865c7fa0b84cf76c8e8256f3356226edc3b1be`, chain 1101)
- UnnamedContract (`0x532e0cdc31f3bc0b38c7a1d1274e1211ccf81b75`, chain 1101)
- UnnamedContract (`0x57a1953bf194a1ef73396e442ac7dc761dcd23cc`, chain 1101)
- UnnamedContract (`0x5bd5b45f6565762928a79779f6c2dd43c15c92ee`, chain 1101)
- UnnamedContract (`0x5c3b45c9f9c6e3d37de94bc03318622d3dd3f525`, chain 1101)
- UnnamedContract (`0x6b42581ac12f442503dfb3dff2bc75ed83850637`, chain 1101)
- UnnamedContract (`0x82e34e39126190e622ebb2801e047d587ac94c5d`, chain 1101)
- UnnamedContract (`0x9d8bb5496332cbeed59f1211f28db8b5eb214b6d`, chain 1101)
- UnnamedContract (`0xc818f878f27d0273fb53b71d281c82921f0af15c`, chain 1101)
- UnnamedContract (`0xc8a25ea0cbd92a6f787aeed8387e04559053a9f8`, chain 1101)
- UnnamedContract (`0xca68ad4ee5c96871ec6c6dac2f714a8437a3fe66`, chain 1101)
- UnnamedContract (`0x10308774e482e16671d8dcc847ac6b701f516611`, chain 5000)
- UnnamedContract (`0x15f74458ae0bfdaa1a96ca1aa779d715cc1eefe4`, chain 5000)
- UnnamedContract (`0x4f39f12064d83f6dd7a2bdb0d53af8be560356a6`, chain 5000)
- UnnamedContract (`0x532e0cdc31f3bc0b38c7a1d1274e1211ccf81b75`, chain 5000)
- UnnamedContract (`0x53525a62e55b6002792b993a2c27af70d12443e4`, chain 5000)
- UnnamedContract (`0x5c3b45c9f9c6e3d37de94bc03318622d3dd3f525`, chain 5000)
- UnnamedContract (`0x6adaa3eba85c77e8566b73aefb4c2f39df4046ca`, chain 5000)
- UnnamedContract (`0x894134a25a5fac1c2c26f1d8fbf05111a3cb9487`, chain 5000)
- UnnamedContract (`0xb7d276b74b4c8042ad22d78ffad15fa5bd02a783`, chain 5000)
- UnnamedContract (`0xc49b737fa56f9142974a54f6c66055468ec631d0`, chain 5000)
- UnnamedContract (`0xdb5dacb1dfbe16326c3656a88017f0cb4ece0977`, chain 5000)
- UnnamedContract (`0xdc44093198ee130f92defed22791aa8d8df7fbfa`, chain 5000)
- UnnamedContract (`0xf31d88232f36098096d1eb69f0de48b53a1d18ce`, chain 5000)
- UnnamedContract (`0x15f74458ae0bfdaa1a96ca1aa779d715cc1eefe4`, chain 42161)
- UnnamedContract (`0x4928c8f8c20a1e3c295dddbe05095a9abbdb3d14`, chain 42161)
- UnnamedContract (`0x4f39f12064d83f6dd7a2bdb0d53af8be560356a6`, chain 42161)
- UnnamedContract (`0x6adaa3eba85c77e8566b73aefb4c2f39df4046ca`, chain 42161)
- UnnamedContract (`0x84446698694b348eaece187b55df06ab4ce72b35`, chain 42161)
- UnnamedContract (`0x894134a25a5fac1c2c26f1d8fbf05111a3cb9487`, chain 42161)
- UnnamedContract (`0x89f1eccf2644902344db02788a790551bb070351`, chain 42161)
- UnnamedContract (`0x9d8bb5496332cbeed59f1211f28db8b5eb214b6d`, chain 42161)
- UnnamedContract (`0xc49b737fa56f9142974a54f6c66055468ec631d0`, chain 42161)
- UnnamedContract (`0xdb5dacb1dfbe16326c3656a88017f0cb4ece0977`, chain 42161)
- UnnamedContract (`0xf0e0915d233c616cb727e0b2ca29ff0cbd51b66a`, chain 42161)
- UnnamedContract (`0xf31d88232f36098096d1eb69f0de48b53a1d18ce`, chain 42161)
- UnnamedContract (`0x1a9942b9eca8ec175261fd0f60a71ae4745520a4`, chain 59144)
- UnnamedContract (`0x40e0e274a42d9b1a9d4b64dc6c46d21228d45c20`, chain 59144)
- UnnamedContract (`0x42865c7fa0b84cf76c8e8256f3356226edc3b1be`, chain 59144)
- UnnamedContract (`0x53525a62e55b6002792b993a2c27af70d12443e4`, chain 59144)
- UnnamedContract (`0x57a1953bf194a1ef73396e442ac7dc761dcd23cc`, chain 59144)
- UnnamedContract (`0x5bd5b45f6565762928a79779f6c2dd43c15c92ee`, chain 59144)
- UnnamedContract (`0x894134a25a5fac1c2c26f1d8fbf05111a3cb9487`, chain 59144)
- UnnamedContract (`0x9d8bb5496332cbeed59f1211f28db8b5eb214b6d`, chain 59144)
- UnnamedContract (`0xad1b9867befd148c9476b9dd1e7c749bfcefbb2e`, chain 59144)
- UnnamedContract (`0xadea044772cfd35d996aa5e0de12ed5937badd61`, chain 59144)
- UnnamedContract (`0xc818f878f27d0273fb53b71d281c82921f0af15c`, chain 59144)
- UnnamedContract (`0xc8a25ea0cbd92a6f787aeed8387e04559053a9f8`, chain 59144)
- UnnamedContract (`0xdc44093198ee130f92defed22791aa8d8df7fbfa`, chain 59144)
- UnnamedContract (`0xf0e0915d233c616cb727e0b2ca29ff0cbd51b66a`, chain 59144)
- CollSurplusPool (`0x09dfdf392a56e4316e97a13e20b09c415fcd3d7b`, chain 1)
- DebtToken (`0x15f74458ae0bfdaa1a96ca1aa779d715cc1eefe4`, chain 1)
- ERC1967Proxy (`0x0a3137e103a8f268fa065f6d5922ed6173b7bdfa`, chain 5000)
- GasPool (`0x40e0e274a42d9b1a9d4b64dc6c46d21228d45c20`, chain 1)
- PriceFeedL2 (`0x15f74458ae0bfdaa1a96ca1aa779d715cc1eefe4`, chain 10)
- SortedVessels (`0x0d2c4ae1859c4f8bfd47755d52ce844b26cb2a09`, chain 10)
- StabilityPool (`0x0a3137e103a8f268fa065f6d5922ed6173b7bdfa`, chain 42161)
- Timelock (`0x09dfdf392a56e4316e97a13e20b09c415fcd3d7b`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 98/98 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/9 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 98 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 24 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 13
- Confirmed-live implementations: 98 of 122 unique; 24 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/33
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 89
- Unique implementations: 122
- Raw deployments: 122
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x09dfdf392a56e4316e97a13e20b09c415fcd3d7b` | ⚠️ Unaudited |
| BorrowerOperations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x118e3040b899ec6aad6a696b3583ae03a927d3a0` | ⚠️ Unaudited |
| CollSurplusPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-241537 | `0x09dfdf392a56e4316e97a13e20b09c415fcd3d7b` | ⚠️ Unaudited |
| ConstellationTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10a93d4452f65fd8680c3af11d1a48695e4ed2f0` | ⚠️ Unaudited |
| DebtToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241444 | `0x15f74458ae0bfdaa1a96ca1aa779d715cc1eefe4` | ⚠️ Unaudited |
| DefaultPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x24ae02776b3c76cb20caf4ea24f8a8bd438b09e7` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | mantle | unit-241541 | `0x0a3137e103a8f268fa065f6d5922ed6173b7bdfa` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x0d2c4ae1859c4f8bfd47755d52ce844b26cb2a09` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d2c4ae1859c4f8bfd47755d52ce844b26cb2a09` | ⚠️ Unaudited |
| FixedPriceAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x118e3040b899ec6aad6a696b3583ae03a927d3a0` | ⚠️ Unaudited |
| GasPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241447 | `0x40e0e274a42d9b1a9d4b64dc6c46d21228d45c20` | ⚠️ Unaudited |
| gravETH_L2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17abbb934786dc9feb18906dbc4524b29af2203b` | ⚠️ Unaudited |
| GravitaDebtToken | unknown | project_anchor | own_supporting | 0 | optimism | unit-241464 | `0x894134a25a5fac1c2c26f1d8fbf05111a3cb9487` | ⚠️ Unaudited |
| GravitaProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8c6b0d3a06e834a8f0f70603625a475b87703a0` | ⚠️ Unaudited |
| MerkleClaimStreamer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x312717e67b9a12402fb8d2db031ac9c84665a04e` | ⚠️ Unaudited |
| NodeSetOperatorRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x087d8c963d90c5b3e653b0afd3bfaa407521804c` | ⚠️ Unaudited |
| OperatorDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x102809fe582ecaa527bb316dcc4e99fc35fbabb9` | ⚠️ Unaudited |
| PoAConstellationOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x81c1001e1621d05be250814123cc81bbb244cb07` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x725c6873033f957ce3196197eaa57cb7384747d4` | ⚠️ Unaudited |
| PriceFeedL2 | unknown | project_anchor | own_supporting | 1 | optimism | unit-241539 | `0x15f74458ae0bfdaa1a96ca1aa779d715cc1eefe4` | ⚠️ Unaudited |
| PriceFetcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6047fa105a6dc0300dfe8777842673006db06774` | ⚠️ Unaudited |
| RPLVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0aff8d886572d65d1d8b41a8519a5acaabba2b84` | ⚠️ Unaudited |
| SfrxEth2EthPriceAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03d9a5eeebaf24870587e29ffb65d62a8d6d35f3` | ⚠️ Unaudited |
| SortedVessels | unknown | project_anchor | own_supporting | 1 | optimism | unit-241538 | `0x0d2c4ae1859c4f8bfd47755d52ce844b26cb2a09` | ⚠️ Unaudited |
| StabilityPool | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-241540 | `0x0a3137e103a8f268fa065f6d5922ed6173b7bdfa` | ⚠️ Unaudited |
| SuperNodeAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2a906f92b0378bb19a3619e2751b1e0b8cab6b29` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241497 | `0x09dfdf392a56e4316e97a13e20b09c415fcd3d7b` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x35e9a38cbdcdf773e649c0eaa4437184508833c9` | ⚠️ Unaudited |
| VesselManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d2c4ae1859c4f8bfd47755d52ce844b26cb2a09` | ⚠️ Unaudited |
| VesselManagerOperations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0a3137e103a8f268fa065f6d5922ed6173b7bdfa` | ⚠️ Unaudited |
| WETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1c649fd81727614881daeb9daa8a3c924a5bf78b` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e6d3ec2a3cd38819a43ec7b6abce5998d1169ad` | ⚠️ Unaudited |
| WstEth2UsdPriceAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8bbf5c949b05e185c470553add43f15118ca3e44` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (89)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241445 | `0x2b0024ecee0626e9cfb5f0195f69dcac5b759dc9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241446 | `0x2bca0300c2aa65de6f19c2d241b54a445c9990e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241448 | `0x4928c8f8c20a1e3c295dddbe05095a9abbdb3d14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241449 | `0x4f39f12064d83f6dd7a2bdb0d53af8be560356a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241450 | `0x57a1953bf194a1ef73396e442ac7dc761dcd23cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241451 | `0x84446698694b348eaece187b55df06ab4ce72b35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241452 | `0x89f1eccf2644902344db02788a790551bb070351` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241453 | `0xc49b737fa56f9142974a54f6c66055468ec631d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241454 | `0xdb5dacb1dfbe16326c3656a88017f0cb4ece0977` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241455 | `0xf31d88232f36098096d1eb69f0de48b53a1d18ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241456 | `0xf7cc67326f9a1d057c1e4b110ef6c680b13a1f53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241457 | `0x24ae02776b3c76cb20caf4ea24f8a8bd438b09e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241458 | `0x326398de2db419ee39f97600a5eee97093cf3b27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241459 | `0x40e0e274a42d9b1a9d4b64dc6c46d21228d45c20` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241460 | `0x5bd5b45f6565762928a79779f6c2dd43c15c92ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241461 | `0x6adaa3eba85c77e8566b73aefb4c2f39df4046ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241462 | `0x6b42581ac12f442503dfb3dff2bc75ed83850637` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241463 | `0x82e34e39126190e622ebb2801e047d587ac94c5d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241465 | `0x8bbf5c949b05e185c470553add43f15118ca3e44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241466 | `0x9d8bb5496332cbeed59f1211f28db8b5eb214b6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241467 | `0xc818f878f27d0273fb53b71d281c82921f0af15c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241468 | `0xc8a25ea0cbd92a6f787aeed8387e04559053a9f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241483 | `0x03569d4c117f94e72e9f63b06f406c5bc7cadde9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241484 | `0x086d0981204b3e603bf8b70d42680da10b4dda31` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241485 | `0x1b137f2a2257959b1d4f61586d56295ce4d62dcf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241486 | `0x23d57c3f65ed7cdd36fea54ca0f9e32d91eaed63` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241487 | `0x285bc3b1b0856b41bba1f8dd0ef48cedd8ba91e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241488 | `0x3ec7a7f366d846626fe462baefef3a78bec5964c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241489 | `0x441f6b484fd60c31b3ca9c61014030b0403f805a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241490 | `0x48df3880be9dfaac56960325fa9a32b31fd351ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241491 | `0x4e5ec0ad40bc20468c6385790573add731f95fe1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241492 | `0x5fc44e95eaa48f9eb84be17bd3ac66b6a82af709` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241493 | `0x8d9cdd9372740933702d606ead3bb55dffdc6303` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241494 | `0xd085fd2338cefb9cbd212f74d479072c1e7a25bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241495 | `0xdace04e411d9916169c0401033a7f76994ef5a0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241496 | `0xe5b388dde9a73ac9e55577bf73ea03d1ee5ae48b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241469 | `0x0d2c4ae1859c4f8bfd47755d52ce844b26cb2a09` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241470 | `0x24ae02776b3c76cb20caf4ea24f8a8bd438b09e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241471 | `0x40e0e274a42d9b1a9d4b64dc6c46d21228d45c20` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241472 | `0x42865c7fa0b84cf76c8e8256f3356226edc3b1be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241473 | `0x532e0cdc31f3bc0b38c7a1d1274e1211ccf81b75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241474 | `0x57a1953bf194a1ef73396e442ac7dc761dcd23cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241475 | `0x5bd5b45f6565762928a79779f6c2dd43c15c92ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241476 | `0x5c3b45c9f9c6e3d37de94bc03318622d3dd3f525` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241477 | `0x6b42581ac12f442503dfb3dff2bc75ed83850637` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241478 | `0x82e34e39126190e622ebb2801e047d587ac94c5d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241479 | `0x9d8bb5496332cbeed59f1211f28db8b5eb214b6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241480 | `0xc818f878f27d0273fb53b71d281c82921f0af15c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241481 | `0xc8a25ea0cbd92a6f787aeed8387e04559053a9f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241482 | `0xca68ad4ee5c96871ec6c6dac2f714a8437a3fe66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-241510 | `0x10308774e482e16671d8dcc847ac6b701f516611` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-241511 | `0x15f74458ae0bfdaa1a96ca1aa779d715cc1eefe4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-241512 | `0x4f39f12064d83f6dd7a2bdb0d53af8be560356a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-241513 | `0x532e0cdc31f3bc0b38c7a1d1274e1211ccf81b75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-241514 | `0x53525a62e55b6002792b993a2c27af70d12443e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-241515 | `0x5c3b45c9f9c6e3d37de94bc03318622d3dd3f525` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-241516 | `0x6adaa3eba85c77e8566b73aefb4c2f39df4046ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-241517 | `0x894134a25a5fac1c2c26f1d8fbf05111a3cb9487` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-241518 | `0xb7d276b74b4c8042ad22d78ffad15fa5bd02a783` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-241519 | `0xc49b737fa56f9142974a54f6c66055468ec631d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-241520 | `0xdb5dacb1dfbe16326c3656a88017f0cb4ece0977` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-241521 | `0xdc44093198ee130f92defed22791aa8d8df7fbfa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-241522 | `0xf31d88232f36098096d1eb69f0de48b53a1d18ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241498 | `0x15f74458ae0bfdaa1a96ca1aa779d715cc1eefe4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241499 | `0x4928c8f8c20a1e3c295dddbe05095a9abbdb3d14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241500 | `0x4f39f12064d83f6dd7a2bdb0d53af8be560356a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241501 | `0x6adaa3eba85c77e8566b73aefb4c2f39df4046ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241502 | `0x84446698694b348eaece187b55df06ab4ce72b35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241503 | `0x894134a25a5fac1c2c26f1d8fbf05111a3cb9487` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241504 | `0x89f1eccf2644902344db02788a790551bb070351` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241505 | `0x9d8bb5496332cbeed59f1211f28db8b5eb214b6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241506 | `0xc49b737fa56f9142974a54f6c66055468ec631d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241507 | `0xdb5dacb1dfbe16326c3656a88017f0cb4ece0977` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241508 | `0xf0e0915d233c616cb727e0b2ca29ff0cbd51b66a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241509 | `0xf31d88232f36098096d1eb69f0de48b53a1d18ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241523 | `0x1a9942b9eca8ec175261fd0f60a71ae4745520a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241524 | `0x40e0e274a42d9b1a9d4b64dc6c46d21228d45c20` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241525 | `0x42865c7fa0b84cf76c8e8256f3356226edc3b1be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241526 | `0x53525a62e55b6002792b993a2c27af70d12443e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241527 | `0x57a1953bf194a1ef73396e442ac7dc761dcd23cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241528 | `0x5bd5b45f6565762928a79779f6c2dd43c15c92ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241529 | `0x894134a25a5fac1c2c26f1d8fbf05111a3cb9487` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241530 | `0x9d8bb5496332cbeed59f1211f28db8b5eb214b6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241531 | `0xad1b9867befd148c9476b9dd1e7c749bfcefbb2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241532 | `0xadea044772cfd35d996aa5e0de12ed5937badd61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241533 | `0xc818f878f27d0273fb53b71d281c82921f0af15c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241534 | `0xc8a25ea0cbd92a6f787aeed8387e04559053a9f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241535 | `0xdc44093198ee130f92defed22791aa8d8df7fbfa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241536 | `0xf0e0915d233c616cb727e0b2ca29ff0cbd51b66a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [all Medium and Low findings were addressed.](https://hatsfinance.medium.com/gravita-audit-competition-final-writeup-dfb28463a0dc) | Hats Finance | Contest | 2023-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [- [Audits]()](https://docs.gravitaprotocol.com/gravita-docs/about-gravita-protocol/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17419] all Medium and Low findings were addressed. — no match: The document is a competition writeup, not a formal audit report. It mentions contract names like PriceFeed, VesselManagerOperations, StabilityPool, VesselManager, Timelock, SortedVessels, but these are not explicitly listed in a scope section. The date is the publication date of the writeup.
- [17420] - [Audits]() — no match: The provided text is a documentation page listing audit reports, not the audit reports themselves. No contract names or scope details are present.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x09dfdf392a56e4316e97a13e20b09c415fcd3d7b` | CollSurplusPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x15f74458ae0bfdaa1a96ca1aa779d715cc1eefe4` | DebtToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x40e0e274a42d9b1a9d4b64dc6c46d21228d45c20` | GasPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x894134a25a5fac1c2c26f1d8fbf05111a3cb9487` | GravitaDebtToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x15f74458ae0bfdaa1a96ca1aa779d715cc1eefe4` | PriceFeedL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x0d2c4ae1859c4f8bfd47755d52ce844b26cb2a09` | SortedVessels | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0a3137e103a8f268fa065f6d5922ed6173b7bdfa` | StabilityPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x09dfdf392a56e4316e97a13e20b09c415fcd3d7b` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 89 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=2
- Match method counts: n/a

Zero-match audit list:

- [17419] all Medium and Low findings were addressed.
- [17420] - [Audits]()

Fork inheritance lineage and inherited audits are included when available.
