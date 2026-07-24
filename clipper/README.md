# Agentic Audit Brief: Clipper

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Clipper (`clipper`)
- Website: [https://clipper.exchange](https://clipper.exchange)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, ethereum, mantle, moonbeam, optimism, polygon, polygon-zkevm
- Contract surface: 89 unique implementations (89 raw deployments)
- Coverage basis: 0/10 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $685,744.09
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Clipper. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 17 contract row(s) across arbitrum, base, ethereum, mantle, moonbeam, optimism, polygon, polygon-zkevm. Structural roles: 14 core, 2 supporting, 1 infra. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 17
- Structural roles: core (14), supporting (2), infra (1)
- Contract kinds: contract (14), abstract (3)
- Detected standards: erc20 (13), ownable (7), erc20permit (2), erc165 (1), erc4626 (1), ownable2step (1)
- Frameworks: openzeppelin (17), prb-math (3), chainlink (2)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6e3fb8a019e78785e80cea1d413bc3ab650c2449`, chain 1)
- UnnamedContract (`0xac2b3f9a13e7273639bcdca55742391cdacc74cb`, chain 10)
- UnnamedContract (`0x8e44d33d980e9e6f23370600173b22ca1815a7ad`, chain 137)
- UnnamedContract (`0xae00af61be6861ee956c8e56bf22144d024acb57`, chain 1101)
- UnnamedContract (`0xb32d856cad3d2ef07c94867a800035e37241247c`, chain 8453)
- UnnamedContract (`0x769728b5298445ba2828c0f3f5384227fbf590c5`, chain 42161)
- ClipperApproximateCaravelExchange (`0x655edce464cc797526600a462a8154650eee4b77`, chain 1)
- ClipperPackedVerifiedExchange (`0x5130f6ce257b8f9bf7fac0a0b519bd588120ed40`, chain 10)
- ClipperProtocolDeposit (`0x84f4625c3e92b368e403cb002a9bf9bc7a9ae1b9`, chain 1)
- ClipperVerifiedExchange (`0x6bfce69d1df30fd2b2c8e478edec9daa643ae3b8`, chain 137)
- ClonableBeaconProxy (`0xb52bd62ee0cf462fa9ccbda4bf27fe84d9ab6cf7`, chain 42161)
- FxERC20 (`0xd1a718f77ab5d22e3955050658d7f65ae857a85e`, chain 137)
- OptimismSailToken (`0x7a1263ec3bf0a19e25c553b8a2c312e903262c5e`, chain 10)
- SailToken (`0xd8f1460044925d2d5c723c7054cd9247027415b7`, chain 1)
- SplitFeeFarm (`0xd0454428ecd868a9ac615125fcbdb5da9027436e`, chain 1)
- veSAIL (`0x26fe2f89a1fef1bc90b8a89d8ad18a1891166ff5`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 17; live-surface rows included: 17 (10 live, 7 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/25 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/10 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 9 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 64 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 16 of 89 unique; 73 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/35
- Verified + Unaudited implementations: 35
- Verified by bytecode match: 0
- Unverified implementations: 54
- Unique implementations: 89
- Raw deployments: 89
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (35)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BlacklistAndTimeFilter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb38ae58d7c8ce6c5bf8e57ddb6f43968d46c2ea2` | ⚠️ Unaudited |
| ClipperApproximateCaravelExchange | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381719 | `0x655edce464cc797526600a462a8154650eee4b77` | ⚠️ Unaudited |
| ClipperCaravelExchange | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-381722 | `0xcc12532e95c2a6a4c53af153b9b739a3cc9218a7` | ⚠️ Unaudited |
| ClipperCove | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08f7e9458a341db71d2abbe32e2b5a2c727d4be8` | ⚠️ Unaudited |
| ClipperDirectExchange | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-381736 | `0xd01e3549160c62acabc4d0eb89f67aafa3de8eed` | ⚠️ Unaudited |
| ClipperExchangeInterface | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-381718 | `0x2e9c6dcdca22a5952a88c4b18edb5b54c5155bc9` | ⚠️ Unaudited |
| ClipperExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f7c9c7d9e69d0cfbfd6f009cc59ae341f68b738` | ⚠️ Unaudited |
| ClipperFarmingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x08b4b3be5bfab1be319599ce8e41c3da7fe7f3f8` | ⚠️ Unaudited |
| ClipperPackedExchange | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-381730 | `0xdbd4ffc32b34f630dd8ac18d37162ec8462db7db` | ⚠️ Unaudited |
| ClipperPackedVerifiedExchange | unknown | project_anchor | own_supporting | 1 | optimism | unit-381741 | `0x5130f6ce257b8f9bf7fac0a0b519bd588120ed40` | ⚠️ Unaudited |
| ClipperPermitRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x41c5362adf3a2cf6815454f7633172e7f6c1f834` | ⚠️ Unaudited |
| ClipperPool | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-381726 | `0xe82906b6b1b04f631d126c974af57a3a7b6a99d9` | ⚠️ Unaudited |
| ClipperProtocolDeposit | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381721 | `0x84f4625c3e92b368e403cb002a9bf9bc7a9ae1b9` | ⚠️ Unaudited |
| ClipperResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x235d3afac42f5e5ff346cb6c19af13194988551f` | ⚠️ Unaudited |
| ClipperRouter | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-381727 | `0xf0f455e8b8f4f96ae5109493c5d3ea5e2c09de47` | ⚠️ Unaudited |
| ClipperTransferHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12bb166f997146d3d33645146eedbc4a923195d7` | ⚠️ Unaudited |
| ClipperVerifiedCaravelExchange | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-381725 | `0xe7b0ce0526fbe3969035a145c9e9691d4d9d216c` | ⚠️ Unaudited |
| ClipperVerifiedExchange | unknown | project_anchor | own_supporting | 0 | polygon | unit-381734 | `0x6bfce69d1df30fd2b2c8e478edec9daa643ae3b8` | ⚠️ Unaudited |
| ClonableBeaconProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381739 | `0xb52bd62ee0cf462fa9ccbda4bf27fe84d9ab6cf7` | ⚠️ Unaudited |
| CollectionContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb83e7f92d919f8475f5a520bbe0d509327a6e41` | ⚠️ Unaudited |
| FxERC20 | unknown | project_anchor | own_supporting | 0 | polygon | unit-381737 | `0xd1a718f77ab5d22e3955050658d7f65ae857a85e` | ⚠️ Unaudited |
| LinearVestingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c7840e80beb3642043273cf7bf01944a8dfed3c` | ⚠️ Unaudited |
| Longship | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x840e960c9c0989929160361b73ff9acd9b8ff003` | ⚠️ Unaudited |
| LongshipFrontendUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x21995cb3c92c99de3876517c6fabe32d830e30ca` | ⚠️ Unaudited |
| LongshipParent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x35242f4a0067ff0e992e7a262c29dfd8874bcd60` | ⚠️ Unaudited |
| LPTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c16dd6e9b402ea4fb5be647be2f49e3d59bb08a` | ⚠️ Unaudited |
| MainnetLPTransferFromOldClipper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x205e8c5b8b9ab41e934ebf394aa319ccbdedd3bb` | ⚠️ Unaudited |
| OptimismSailToken | unknown | project_anchor | own_supporting | 0 | optimism | unit-381728 | `0x7a1263ec3bf0a19e25c553b8a2c312e903262c5e` | ⚠️ Unaudited |
| OwnedCollectionContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5041f1ae02feb3580c4424d4417d202845cefcd8` | ⚠️ Unaudited |
| PublicCollectionContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x238cc13495b30d0b8f2df3d646af443c17063c22` | ⚠️ Unaudited |
| SailToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381724 | `0xd8f1460044925d2d5c723c7054cd9247027415b7` | ⚠️ Unaudited |
| SplitFeeFarm | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381723 | `0xd0454428ecd868a9ac615125fcbdb5da9027436e` | ⚠️ Unaudited |
| veSAIL | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381717 | `0x26fe2f89a1fef1bc90b8a89d8ad18a1891166ff5` | ⚠️ Unaudited |
| VestingMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ffbf1160764aa96b016d9124646e8c78cf46488` | ⚠️ Unaudited |
| WrappedEthRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x137f48d01459944fefc1f637feeafe49c0f6e69c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (54)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35242f4a0067ff0e992e7a262c29dfd8874bcd60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44d097113dbead613fde74b387081fb3b547c54f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53954a6191ad795e331cffdb1b035d389f2ac516` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55f7c152b0c3cc1cd7479e4858ac07f50d7fcfad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c3e758408692bd4c4d8ee97929059b877f32d32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d72d1266aad8b12102675a2931e360878ea18e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68a38675cc1bb67ad0893b8a1b726003d0ebfeb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381720 | `0x6e3fb8a019e78785e80cea1d413bc3ab650c2449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8470533b1add972f153e84471badbfd929207d4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x853d55ad9d1a66bfd5319a6730bf57897b230b30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e233dd6a90678baacd89c05ce5c48f43fcc106e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac2b3f9a13e7273639bcdca55742391cdacc74cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae00af61be6861ee956c8e56bf22144d024acb57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc60bcdce144a3b677e8f34bd4462dc112948efb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe5f68cdf736d007f2d70e7f3976458dba9745f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3f7c9c7d9e69d0cfbfd6f009cc59ae341f68b738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4344936f43fbe4073127d98f795213ff669bac9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x55f7c152b0c3cc1cd7479e4858ac07f50d7fcfad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x769728b5298445ba2828c0f3f5384227fbf590c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8765472ff328e26ebb1429a41c98ec7e797f89f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x93a5943e3091e94aa16f0813bb6901c3e9d4eb98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x98898bc1975e369345519b6c11c9a1f8a37ab877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9b259e06de4d0960cf9ea434ed3a97c50067b0e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa0f7f3a9188f72ba3aaa6093ed22940b9fbe86d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa9c5712f8121792c16e7b028997993c2bf37f774` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-381729 | `0xac2b3f9a13e7273639bcdca55742391cdacc74cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb08e05eeb7bbd8443fec318fec4954b096c582d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3ab44e7c3e56a055f73df10fab12efc41ee55064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8667c105b379c7c4fe757b2136de60f558860010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x87e6a4c413ecfdec3e6ae22b2f9680da6037e970` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-381735 | `0x8e44d33d980e9e6f23370600173b22ca1815a7ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8ec8a4670276d0f6e0078457960a826004c023e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaff695b671d185496753dc596ffffa74b3e81983` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xca42ee568234ead8e773b8df79679adf6b558537` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcf0ce865194d0bc2369c18bb44c4f6e8ae3aba88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe38c90a0233f18749fb74e595c4de871e5498c13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf0acd34bb7bf6c0260f70276a410be8fa64488a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-381731 | `0xae00af61be6861ee956c8e56bf22144d024acb57` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon-zkevm | unit-381732 | `0xe38c90a0233f18749fb74e595c4de871e5498c13` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonbeam | unit-381733 | `0xe90d415af331237ae18a882ec21870f1965be933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xfaaf1f22ea5629562a8e70543e25b26dcf3c7d8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4c16dd6e9b402ea4fb5be647be2f49e3d59bb08a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x769728b5298445ba2828c0f3f5384227fbf590c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x98898bc1975e369345519b6c11c9a1f8a37ab877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x617773fc126daa7f6dc9f189d88b40acd8fcefe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x90296538701c73af76758f4778916daa2407956f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb0b2f39dafc7a761ae97a7eec63dd31ac211d0f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-381740 | `0xb32d856cad3d2ef07c94867a800035e37241247c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd628309c01d0c868a33155e3fa0f56bb0e768b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfaab5716703bb76fb2402a94052ad336baf38d3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381738 | `0x769728b5298445ba2828c0f3f5384227fbf590c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x87e6a4c413ecfdec3e6ae22b2f9680da6037e970` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x93a5943e3091e94aa16f0813bb6901c3e9d4eb98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb873921b1add94ea47bf983b060ce812e97873df` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 43
- Live contracts: 0
- Unknown liveness contracts: 43
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=43

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x35242f4a0067ff0e992e7a262c29dfd8874bcd60` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0x44d097113dbead613fde74b387081fb3b547c54f` | non_address_book | unknown | unknown | unverified | n/a | `0xa12b36b31eab47bdc9fc5346d2dbbc0d360b6a75` |
| unverified unclassified | UnnamedContract<br>`0x53954a6191ad795e331cffdb1b035d389f2ac516` | non_address_book | unknown | unknown | unverified | n/a | `0xa12b36b31eab47bdc9fc5346d2dbbc0d360b6a75` |
| unverified unclassified | UnnamedContract<br>`0x55f7c152b0c3cc1cd7479e4858ac07f50d7fcfad` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0x5c3e758408692bd4c4d8ee97929059b877f32d32` | non_address_book | unknown | unknown | unverified | n/a | `0x5a6a62ec6478e4ee7397ecd0710b876307be6a12` |
| unverified unclassified | UnnamedContract<br>`0x5d72d1266aad8b12102675a2931e360878ea18e4` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0x68a38675cc1bb67ad0893b8a1b726003d0ebfeb1` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0x8470533b1add972f153e84471badbfd929207d4c` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0x853d55ad9d1a66bfd5319a6730bf57897b230b30` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0x9e233dd6a90678baacd89c05ce5c48f43fcc106e` | non_address_book | unknown | unknown | unverified | n/a | `0xa12b36b31eab47bdc9fc5346d2dbbc0d360b6a75` |
| unverified unclassified | UnnamedContract<br>`0xac2b3f9a13e7273639bcdca55742391cdacc74cb` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0xc60bcdce144a3b677e8f34bd4462dc112948efb6` | non_address_book | unknown | unknown | unverified | n/a | `0x5a6a62ec6478e4ee7397ecd0710b876307be6a12` |
| unverified unclassified | UnnamedContract<br>`0xfe5f68cdf736d007f2d70e7f3976458dba9745f3` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0x3f7c9c7d9e69d0cfbfd6f009cc59ae341f68b738` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0x4344936f43fbe4073127d98f795213ff669bac9a` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0x55f7c152b0c3cc1cd7479e4858ac07f50d7fcfad` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0x769728b5298445ba2828c0f3f5384227fbf590c5` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0x8765472ff328e26ebb1429a41c98ec7e797f89f0` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0x93a5943e3091e94aa16f0813bb6901c3e9d4eb98` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0x98898bc1975e369345519b6c11c9a1f8a37ab877` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0x9b259e06de4d0960cf9ea434ed3a97c50067b0e9` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0xa0f7f3a9188f72ba3aaa6093ed22940b9fbe86d3` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0xa9c5712f8121792c16e7b028997993c2bf37f774` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0xb08e05eeb7bbd8443fec318fec4954b096c582d8` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0x3ab44e7c3e56a055f73df10fab12efc41ee55064` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0x8667c105b379c7c4fe757b2136de60f558860010` | non_address_book | unknown | unknown | unverified | n/a | `0x712285cb5df8000beaeba8f35adcc3b79ba1b134` |
| unverified unclassified | UnnamedContract<br>`0x87e6a4c413ecfdec3e6ae22b2f9680da6037e970` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0x8ec8a4670276d0f6e0078457960a826004c023e9` | non_address_book | unknown | unknown | unverified | n/a | `0x712285cb5df8000beaeba8f35adcc3b79ba1b134` |
| unverified unclassified | UnnamedContract<br>`0xaff695b671d185496753dc596ffffa74b3e81983` | non_address_book | unknown | unknown | unverified | n/a | `0x712285cb5df8000beaeba8f35adcc3b79ba1b134` |
| unverified unclassified | UnnamedContract<br>`0xca42ee568234ead8e773b8df79679adf6b558537` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0xcf0ce865194d0bc2369c18bb44c4f6e8ae3aba88` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0xf0acd34bb7bf6c0260f70276a410be8fa64488a9` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0xfaaf1f22ea5629562a8e70543e25b26dcf3c7d8f` | non_address_book | unknown | unknown | unverified | n/a | `0xbda8ae721791afcebe73b02e43e7c64c59903911` |
| unverified unclassified | UnnamedContract<br>`0x4c16dd6e9b402ea4fb5be647be2f49e3d59bb08a` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0x98898bc1975e369345519b6c11c9a1f8a37ab877` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0x617773fc126daa7f6dc9f189d88b40acd8fcefe2` | non_address_book | unknown | unknown | unverified | n/a | `0x6a3c1cde086e5667b2dc5796fbb9dbb3815f1384` |
| unverified unclassified | UnnamedContract<br>`0x90296538701c73af76758f4778916daa2407956f` | non_address_book | unknown | unknown | unverified | n/a | `0x6a3c1cde086e5667b2dc5796fbb9dbb3815f1384` |
| unverified unclassified | UnnamedContract<br>`0xb0b2f39dafc7a761ae97a7eec63dd31ac211d0f4` | non_address_book | unknown | unknown | unverified | n/a | `0x6a3c1cde086e5667b2dc5796fbb9dbb3815f1384` |
| unverified unclassified | UnnamedContract<br>`0xbd628309c01d0c868a33155e3fa0f56bb0e768b3` | non_address_book | unknown | unknown | unverified | n/a | `0x6a3c1cde086e5667b2dc5796fbb9dbb3815f1384` |
| unverified unclassified | UnnamedContract<br>`0xfaab5716703bb76fb2402a94052ad336baf38d3a` | non_address_book | unknown | unknown | unverified | n/a | `0x6a3c1cde086e5667b2dc5796fbb9dbb3815f1384` |
| unverified unclassified | UnnamedContract<br>`0x87e6a4c413ecfdec3e6ae22b2f9680da6037e970` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0x93a5943e3091e94aa16f0813bb6901c3e9d4eb98` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |
| unverified unclassified | UnnamedContract<br>`0xb873921b1add94ea47bf983b060ce812e97873df` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5a771e690af1bbd854df638ed945baf1066ed0` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Rendered PDF capture](https://2356525178-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MZxPgaEAx6qALhvK9dz%2F-MeQPVj2lfzFokn8pVdf%2F-MeQQbEsv7rRnS9IUpNp%2FClipper%20-%20Report%20(Quantstamp).pdf) | Quantstamp | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [Rendered PDF capture](https://2356525178-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MZxPgaEAx6qALhvK9dz%2Fuploads%2FgKn8GiO5Smfnub8EoByN%2FAudit%20Report%20-%20AdmiralDAO%20Sail%20Token.pdf) | AdmiralDAO | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Rendered PDF capture](https://2356525178-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MZxPgaEAx6qALhvK9dz%2Fuploads%2FbIKOLmSOkmQEjMkyEuH3%2FClipper%20-%20RFQ%20Report%20(Solidified)%20.pdf) | Solidified | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Rendered PDF capture](https://2356525178-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MZxPgaEAx6qALhvK9dz%2F-MeRSHTtRzJdRmITR5HS%2F-MeRSMu1QaF-AvqWDc01%2FClipper%20-%20Report%20(Solidified).pdf) | Solidified | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19643] Rendered PDF capture — no match: Scope includes all contracts listed in the file signatures appendix and mentioned in findings. Audit date is the reaudit update date (2021-05-25) from the changelog.
- [19644] Rendered PDF capture — no match: Only one contract in scope: AdmiralDAOSailToken. Date from title and header.
- [19645] Rendered PDF capture — no match: Extracted from audited files list and findings references.
- [19646] Rendered PDF capture — no match: Scope explicitly lists 9 contracts in the file tree under 'contracts/' and 'contracts/libraries/'. Mocks excluded.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Rendered PDF capture | GalleonPool | unmatched — not counted | — | Listed in scope table and findings | no |
| Rendered PDF capture | GalleonExchangeInterface | unmatched — not counted | — | Listed in scope table and findings | no |
| Rendered PDF capture | GalleonDeposit | unmatched — not counted | — | Listed in scope table and findings | no |
| Rendered PDF capture | BlacklistAndTimeFilter | unmatched — not counted | — | Listed in scope table and findings | no |
| Rendered PDF capture | GalleonEscapeContract | unmatched — not counted | — | Listed in scope table | no |
| Rendered PDF capture | UniERC20 | unmatched — not counted | — | Listed in scope table | no |
| Rendered PDF capture | AggregatorInterface | unmatched — not counted | — | Listed in scope table | no |
| Rendered PDF capture | Sqrt | unmatched — not counted | — | Listed in scope table | no |
| Rendered PDF capture | ApprovalInterface | unmatched — not counted | — | Listed in scope table | no |
| Rendered PDF capture | MockToken | unmatched — not counted | — | Listed in scope table | no |
| Rendered PDF capture | MockOracle | unmatched — not counted | — | Listed in scope table | no |
| Rendered PDF capture | SqrtMock | unmatched — not counted | — | Listed in scope table | no |
| Rendered PDF capture | AdmiralDAOSailToken | unmatched — not counted | — | Audited file is the AdmiralDAOSailToken contract, referenced throughout the report. | no |
| Rendered PDF capture | ClipperDirectExchange | unmatched — not counted | — | listed in audited files list | no |
| Rendered PDF capture | OwnedCollectionContract | unmatched — not counted | — | listed in audited files list | no |
| Rendered PDF capture | WrapperProxy | unmatched — not counted | — | mentioned in findings as ClipperDirectExchange.sol / WrapperProxy.sol | no |
| Rendered PDF capture | BlacklistAndTimeFilter | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | GalleonDeposit | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | GalleonEscapeContract | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | GalleonExchangeInterface | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | GalleonPool | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | AggregatorInterface | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ApprovalInterface | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | Sqrt | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | UniERC20 | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x655edce464cc797526600a462a8154650eee4b77` | ClipperApproximateCaravelExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x5130f6ce257b8f9bf7fac0a0b519bd588120ed40` | ClipperPackedVerifiedExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x84f4625c3e92b368e403cb002a9bf9bc7a9ae1b9` | ClipperProtocolDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x6bfce69d1df30fd2b2c8e478edec9daa643ae3b8` | ClipperVerifiedExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb52bd62ee0cf462fa9ccbda4bf27fe84d9ab6cf7` | ClonableBeaconProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xd1a718f77ab5d22e3955050658d7f65ae857a85e` | FxERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x7a1263ec3bf0a19e25c553b8a2c312e903262c5e` | OptimismSailToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd8f1460044925d2d5c723c7054cd9247027415b7` | SailToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd0454428ecd868a9ac615125fcbdb5da9027436e` | SplitFeeFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x26fe2f89a1fef1bc90b8a89d8ad18a1891166ff5` | veSAIL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 54 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 25 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: n/a

Zero-match audit list:

- [19643] Rendered PDF capture
- [19644] Rendered PDF capture
- [19645] Rendered PDF capture
- [19646] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
