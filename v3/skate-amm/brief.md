# Agentic Audit Brief: Skate AMM

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

- Project: Skate AMM (`skate-amm`)
- Website: [https://amm.skatechain.org/swap](https://amm.skatechain.org/swap)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, hyperliquid, mantle
- Contract surface: 77 unique implementations (77 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $123,898.60
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Skate AMM. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, base, bsc, ethereum, hyperliquid, mantle. Structural roles: 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 76 contracts are derived from known codebases. 76 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x19e099b7aed41fa52718d780dda74678113c0b32`, chain 1)
- UnnamedContract (`0x415f76117fd284d2fed4cb0dee1dc51fc13342ea`, chain 1)
- UnnamedContract (`0x4c1746a800d224393fe2470c70a35717ed4ea5f1`, chain 1)
- UnnamedContract (`0x4c9edd5852cd905f086c759e8383e09bff1e68b3`, chain 1)
- UnnamedContract (`0x61dbbbb552dc893ab3aad09f289f811e67cef285`, chain 1)
- UnnamedContract (`0x657440a33717d754c0df7732c11932838479bc11`, chain 1)
- UnnamedContract (`0x66a1e37c9b0eaddca17d3662d6c05f4decf3e110`, chain 1)
- UnnamedContract (`0x722a851b6798d65b80526562fc3a36e19b1f883b`, chain 1)
- UnnamedContract (`0x7477d52db2904c1c7b47a1680687b999dc7e3cb0`, chain 1)
- UnnamedContract (`0x81fa269e38184405f282bd46b6decb397372963c`, chain 1)
- UnnamedContract (`0x86adf47a8f785213bcc1065a27d57a8d655dea21`, chain 1)
- UnnamedContract (`0x97af2c120f2b87c333a7ae4886387bd4e5a5b694`, chain 1)
- UnnamedContract (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- UnnamedContract (`0xaf31d15b11315e0f24991945fc75aabd3e0a718f`, chain 1)
- UnnamedContract (`0xb17c0032f32536c4c44fd6878d277a4f6d3c574f`, chain 1)
- UnnamedContract (`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`, chain 1)
- UnnamedContract (`0xca3d6ffb1e6706c3c28bd0bd0fa8e925a5c99105`, chain 1)
- UnnamedContract (`0xe6829d9a7ee3040e1276fa75293bde931859e8fa`, chain 1)
- UnnamedContract (`0xed8c0958c5ccbe61cef6528e1e217010431b84ca`, chain 1)
- UnnamedContract (`0xeffc0fd0cad5762c360eb2158500a5537bb4637d`, chain 1)
- UnnamedContract (`0xf9581cdf02c1aaf3f398cd87fe3733e664e4949a`, chain 1)
- UnnamedContract (`0x1192c698cc6d68c3f8ebd980a91c2acd4f770d27`, chain 56)
- UnnamedContract (`0x2492d0006411af6c8bbb1c8afc1b0197350a79e9`, chain 56)
- UnnamedContract (`0x4b948d64de1f71fcd12fb586f4c776421a35b3ee`, chain 56)
- UnnamedContract (`0x6863b6f2e4e0e212cc43a460e6a9b49579a7ac8d`, chain 56)
- UnnamedContract (`0x7477d52db2904c1c7b47a1680687b999dc7e3cb0`, chain 56)
- UnnamedContract (`0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d`, chain 56)
- UnnamedContract (`0x97af2c120f2b87c333a7ae4886387bd4e5a5b694`, chain 56)
- UnnamedContract (`0xaccac7d207b25a16283ec31e42b0d92b18d42004`, chain 56)
- UnnamedContract (`0xca3d6ffb1e6706c3c28bd0bd0fa8e925a5c99105`, chain 56)
- UnnamedContract (`0xce9ecebafe2174ffc9b662fe6cc4610574ab602c`, chain 56)
- UnnamedContract (`0xfa54ff1a158b5189ebba6ae130ced6bbd3aea76e`, chain 56)
- UnnamedContract (`0x027c74f40d8b803b46d8ce31624bc86fd29654f5`, chain 999)
- UnnamedContract (`0x19c5382936b71864d249bbb3a7658764558b5896`, chain 999)
- UnnamedContract (`0x59964b3af53eb10c596b92b3d6aeafc038b3bd8d`, chain 999)
- UnnamedContract (`0x5d23264ac572c52454b37da765969f5511b7578e`, chain 999)
- UnnamedContract (`0x94faae1e0cfc4717e2832f5559cfe662d698bf09`, chain 999)
- UnnamedContract (`0xa7482d25bc18fc64abee988922f4ce8d7f3dbe8b`, chain 999)
- UnnamedContract (`0xd719be20d005d274eed297c4865fd20199a13efa`, chain 999)
- UnnamedContract (`0xeb397737c075214f6f1f3027ac210ff412980d50`, chain 999)
- UnnamedContract (`0x3ccfe69f37f32ee0dc52cbbf265433345d5105c7`, chain 5000)
- UnnamedContract (`0x3e053a349f8485f8489937d7e26a7f54dc1c11b5`, chain 5000)
- UnnamedContract (`0x59964b3af53eb10c596b92b3d6aeafc038b3bd8d`, chain 5000)
- UnnamedContract (`0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34`, chain 5000)
- UnnamedContract (`0x802be72795617acec443321504150951f85de652`, chain 5000)
- UnnamedContract (`0xaccac7d207b25a16283ec31e42b0d92b18d42004`, chain 5000)
- UnnamedContract (`0xc3406121fba68250af08c4933129e88ca84b81e8`, chain 5000)
- UnnamedContract (`0xde827ab5e8c1867b5f5351862b033d10c6e23f54`, chain 5000)
- UnnamedContract (`0xf730a744a817266a48714bd4d2b959b3e221977f`, chain 5000)
- UnnamedContract (`0x1c61629598e4a901136a81bc138e5828dc150d67`, chain 8453)
- UnnamedContract (`0x1e3fd498641f5fa9af2e08b3be40e7a0dc09ffe3`, chain 8453)
- UnnamedContract (`0x35e5db674d8e93a03d814fa0ada70731efe8a4b9`, chain 8453)
- UnnamedContract (`0x4200000000000000000000000000000000000006`, chain 8453)
- UnnamedContract (`0x59964b3af53eb10c596b92b3d6aeafc038b3bd8d`, chain 8453)
- UnnamedContract (`0x68b5c82caf6e5bc540c8a6d435664db2303d98c3`, chain 8453)
- UnnamedContract (`0x79e31a114e6d2f16e1e2a3ec47c82fac520881a4`, chain 8453)
- UnnamedContract (`0x82ee3dcdad829152996587322395cda941e20106`, chain 8453)
- UnnamedContract (`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`, chain 8453)
- UnnamedContract (`0x9b69c72b68b7a7e765335831d6234f593f818e6b`, chain 8453)
- UnnamedContract (`0xad1472e9d1e267cd87567776f6dbeec6f05da82d`, chain 8453)
- UnnamedContract (`0xc206e55f1595a5656a3e038e21837f8a79409827`, chain 8453)
- UnnamedContract (`0xca3d6ffb1e6706c3c28bd0bd0fa8e925a5c99105`, chain 8453)
- UnnamedContract (`0xfde4c96c8593536e31f229ea8f37b2ada2699bb2`, chain 8453)
- UnnamedContract (`0xfe39ee38afa0a7e1e10e32979fba97a023e827b6`, chain 8453)
- UnnamedContract (`0x27b0e2e956b410f33df9296f6bce8b0c915ba8ae`, chain 42161)
- UnnamedContract (`0x2bcc6d6cdbbdc0a4071e48bb3b969b06b3330c07`, chain 42161)
- UnnamedContract (`0x343389fe6a3b869bc7e96f77d9c94580d80b2cfd`, chain 42161)
- UnnamedContract (`0x59964b3af53eb10c596b92b3d6aeafc038b3bd8d`, chain 42161)
- UnnamedContract (`0x68b5c82caf6e5bc540c8a6d435664db2303d98c3`, chain 42161)
- UnnamedContract (`0xad1472e9d1e267cd87567776f6dbeec6f05da82d`, chain 42161)
- UnnamedContract (`0xaf88d065e77c8cc2239327c5edb3a432268e5831`, chain 42161)
- UnnamedContract (`0xca3d6ffb1e6706c3c28bd0bd0fa8e925a5c99105`, chain 42161)
- UnnamedContract (`0xf7b221f8a45a62539a53f20c8d3a5a1eddd1b510`, chain 42161)
- UnnamedContract (`0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9`, chain 42161)
- UnnamedContract (`0xfe39ee38afa0a7e1e10e32979fba97a023e827b6`, chain 42161)
- ERC1967Proxy (`0x6863b6f2e4e0e212cc43a460e6a9b49579a7ac8d`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 76/87 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 76 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 76 of 77 unique; 1 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 75
- Unique implementations: 77
- Raw deployments: 77
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ClaimAndStakeHandlerHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x802be72795617acec443321504150951f85de652` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-255037 | `0x6863b6f2e4e0e212cc43a460e6a9b49579a7ac8d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (75)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254952 | `0x19e099b7aed41fa52718d780dda74678113c0b32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254954 | `0x415f76117fd284d2fed4cb0dee1dc51fc13342ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254956 | `0x4c1746a800d224393fe2470c70a35717ed4ea5f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254957 | `0x4c9edd5852cd905f086c759e8383e09bff1e68b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254959 | `0x61dbbbb552dc893ab3aad09f289f811e67cef285` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254960 | `0x657440a33717d754c0df7732c11932838479bc11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254961 | `0x66a1e37c9b0eaddca17d3662d6c05f4decf3e110` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254964 | `0x722a851b6798d65b80526562fc3a36e19b1f883b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254965 | `0x7477d52db2904c1c7b47a1680687b999dc7e3cb0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254967 | `0x81fa269e38184405f282bd46b6decb397372963c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254969 | `0x86adf47a8f785213bcc1065a27d57a8d655dea21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254972 | `0x97af2c120f2b87c333a7ae4886387bd4e5a5b694` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254973 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254974 | `0xaf31d15b11315e0f24991945fc75aabd3e0a718f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254975 | `0xb17c0032f32536c4c44fd6878d277a4f6d3c574f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254976 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254978 | `0xca3d6ffb1e6706c3c28bd0bd0fa8e925a5c99105` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254979 | `0xe6829d9a7ee3040e1276fa75293bde931859e8fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254980 | `0xed8c0958c5ccbe61cef6528e1e217010431b84ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254981 | `0xeffc0fd0cad5762c360eb2158500a5537bb4637d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254982 | `0xf9581cdf02c1aaf3f398cd87fe3733e664e4949a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-255003 | `0x1192c698cc6d68c3f8ebd980a91c2acd4f770d27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-255004 | `0x2492d0006411af6c8bbb1c8afc1b0197350a79e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-255005 | `0x4b948d64de1f71fcd12fb586f4c776421a35b3ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-255006 | `0x6863b6f2e4e0e212cc43a460e6a9b49579a7ac8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-255007 | `0x7477d52db2904c1c7b47a1680687b999dc7e3cb0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-255008 | `0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-255009 | `0x97af2c120f2b87c333a7ae4886387bd4e5a5b694` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-255010 | `0xaccac7d207b25a16283ec31e42b0d92b18d42004` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-255011 | `0xca3d6ffb1e6706c3c28bd0bd0fa8e925a5c99105` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-255012 | `0xce9ecebafe2174ffc9b662fe6cc4610574ab602c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-255013 | `0xfa54ff1a158b5189ebba6ae130ced6bbd3aea76e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-255029 | `0x027c74f40d8b803b46d8ce31624bc86fd29654f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-255030 | `0x19c5382936b71864d249bbb3a7658764558b5896` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-255031 | `0x59964b3af53eb10c596b92b3d6aeafc038b3bd8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-255032 | `0x5d23264ac572c52454b37da765969f5511b7578e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-255033 | `0x94faae1e0cfc4717e2832f5559cfe662d698bf09` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-255034 | `0xa7482d25bc18fc64abee988922f4ce8d7f3dbe8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-255035 | `0xd719be20d005d274eed297c4865fd20199a13efa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-255036 | `0xeb397737c075214f6f1f3027ac210ff412980d50` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-254994 | `0x3ccfe69f37f32ee0dc52cbbf265433345d5105c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-254995 | `0x3e053a349f8485f8489937d7e26a7f54dc1c11b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-254996 | `0x59964b3af53eb10c596b92b3d6aeafc038b3bd8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-254997 | `0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-254998 | `0x802be72795617acec443321504150951f85de652` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-254999 | `0xaccac7d207b25a16283ec31e42b0d92b18d42004` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-255000 | `0xc3406121fba68250af08c4933129e88ca84b81e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-255001 | `0xde827ab5e8c1867b5f5351862b033d10c6e23f54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-255002 | `0xf730a744a817266a48714bd4d2b959b3e221977f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255014 | `0x1c61629598e4a901136a81bc138e5828dc150d67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255015 | `0x1e3fd498641f5fa9af2e08b3be40e7a0dc09ffe3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255016 | `0x35e5db674d8e93a03d814fa0ada70731efe8a4b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255017 | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255018 | `0x59964b3af53eb10c596b92b3d6aeafc038b3bd8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255019 | `0x68b5c82caf6e5bc540c8a6d435664db2303d98c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255020 | `0x79e31a114e6d2f16e1e2a3ec47c82fac520881a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255021 | `0x82ee3dcdad829152996587322395cda941e20106` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255022 | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255023 | `0x9b69c72b68b7a7e765335831d6234f593f818e6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255024 | `0xad1472e9d1e267cd87567776f6dbeec6f05da82d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255025 | `0xc206e55f1595a5656a3e038e21837f8a79409827` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255026 | `0xca3d6ffb1e6706c3c28bd0bd0fa8e925a5c99105` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255027 | `0xfde4c96c8593536e31f229ea8f37b2ada2699bb2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255028 | `0xfe39ee38afa0a7e1e10e32979fba97a023e827b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254983 | `0x27b0e2e956b410f33df9296f6bce8b0c915ba8ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254984 | `0x2bcc6d6cdbbdc0a4071e48bb3b969b06b3330c07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254985 | `0x343389fe6a3b869bc7e96f77d9c94580d80b2cfd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254986 | `0x59964b3af53eb10c596b92b3d6aeafc038b3bd8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254987 | `0x68b5c82caf6e5bc540c8a6d435664db2303d98c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254988 | `0xad1472e9d1e267cd87567776f6dbeec6f05da82d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254989 | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254990 | `0xca3d6ffb1e6706c3c28bd0bd0fa8e925a5c99105` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254991 | `0xf7b221f8a45a62539a53f20c8d3a5a1eddd1b510` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254992 | `0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254993 | `0xfe39ee38afa0a7e1e10e32979fba97a023e827b6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [NM0565-FINAL_Skate.pdf](https://github.com/NethermindEth/PublicAuditReports/blob/main/NM0565-FINAL_Skate.pdf) | Nethermind Security | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 39 | high |
| [NM-0550_SKATE_FINAL.pdf](https://github.com/NethermindEth/PublicAuditReports/blob/main/NM-0550_SKATE_FINAL.pdf) | Nethermind Security | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Manual audit seed](https://docs.skatechain.org/resources-and-support/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21447] NM0565-FINAL_Skate.pdf — no match: Extracted all 38 files from the 'Audited Files' table in Section 2. The audit date is the final report date (September 16, 2025) from the summary table.
- [21448] NM-0550_SKATE_FINAL.pdf — no match: Only one contract in scope: ClaimAndStakeHandlerHook.sol. Audit date from cover page: June 3, 2025.
- [24447] Manual audit seed — no match: The provided text is a navigation/documentation index page for Skate, not an audit report. It mentions a Nethermind Audit Report PDF but does not include its content. No contract names or audit details are extractable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| NM0565-FINAL_Skate.pdf | MessageBox | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | AccountStorage | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | SkateApp | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | AccountRegistry | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | IAccountRegistry | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | IMessageBox | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | ISkateApp | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | IExecutorRegistry | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | ExecutorRegistry | ambiguous — not counted | 0xfe39ee… (alternative) `0xfe39ee38afa0a7e1e10e32979fba97a023e827b6` — liveness: live (current_address_book_code)<br>0xca3d6f… (alternative) `0xca3d6ffb1e6706c3c28bd0bd0fa8e925a5c99105` — liveness: live (current_address_book_code)<br>0xca3d6f… (alternative) `0xca3d6ffb1e6706c3c28bd0bd0fa8e925a5c99105` — liveness: live (current_address_book_code)<br>0xfe39ee… (alternative) `0xfe39ee38afa0a7e1e10e32979fba97a023e827b6` — liveness: live (current_address_book_code)<br>0xde827a… (alternative) `0xde827ab5e8c1867b5f5351862b033d10c6e23f54` — liveness: live (current_address_book_code)<br>0x5d2326… (alternative) `0x5d23264ac572c52454b37da765969f5511b7578e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| NM0565-FINAL_Skate.pdf | Multicall | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | Utils | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | ActionBox | ambiguous — not counted | 0x19c538… (alternative) `0x19c5382936b71864d249bbb3a7658764558b5896` — liveness: live (current_address_book_code)<br>0xad1472… (alternative) `0xad1472e9d1e267cd87567776f6dbeec6f05da82d` — liveness: live (current_address_book_code)<br>0xaccac7… (alternative) `0xaccac7d207b25a16283ec31e42b0d92b18d42004` — liveness: live (current_address_book_code)<br>0x6863b6… (alternative) `0x6863b6f2e4e0e212cc43a460e6a9b49579a7ac8d` — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x6863b6f2e4e0e212cc43a460e6a9b49579a7ac8d` — deployed 2025-04-23 11:55:59+03 — liveness: live (current_address_book_code)<br>0xad1472… (alternative) `0xad1472e9d1e267cd87567776f6dbeec6f05da82d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| NM0565-FINAL_Skate.pdf | SkateGateway | ambiguous — not counted | 0x97af2c… (alternative) `0x97af2c120f2b87c333a7ae4886387bd4e5a5b694` — liveness: live (current_address_book_code)<br>0x59964b… (alternative) `0x59964b3af53eb10c596b92b3d6aeafc038b3bd8d` — liveness: live (current_address_book_code)<br>0x59964b… (alternative) `0x59964b3af53eb10c596b92b3d6aeafc038b3bd8d` — liveness: live (current_address_book_code)<br>0xf730a7… (alternative) `0xf730a744a817266a48714bd4d2b959b3e221977f` — liveness: live (current_address_book_code)<br>0x97af2c… (alternative) `0x97af2c120f2b87c333a7ae4886387bd4e5a5b694` — liveness: live (current_address_book_code)<br>0xd719be… (alternative) `0xd719be20d005d274eed297c4865fd20199a13efa` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| NM0565-FINAL_Skate.pdf | SkateAppPeriphery | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | ISkateAppPeriphery | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | ISkateGateway | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | KernelPool | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | KernelEventEmitter | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | KernelManagerStorage | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | KernelManager | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | KernelManagerLib | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | DataTypes | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | IKernelManager | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | IERC20Minimal | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | IKernelPool | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | IUniswapV3PoolActions | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | IUniswapV3PoolImmutables | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | IUniswapV3PoolState | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | IUniswapV3PoolDerivedState | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | IUniswapV3PoolEvents | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | IUniswapV3PoolOwnerActions | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | PeripheryManager | ambiguous — not counted | 0x7477d5… (alternative) `0x7477d52db2904c1c7b47a1680687b999dc7e3cb0` — liveness: live (current_address_book_code)<br>0x68b5c8… (alternative) `0x68b5c82caf6e5bc540c8a6d435664db2303d98c3` — liveness: live (current_address_book_code)<br>0x68b5c8… (alternative) `0x68b5c82caf6e5bc540c8a6d435664db2303d98c3` — liveness: live (current_address_book_code)<br>0x94faae… (alternative) `0x94faae1e0cfc4717e2832f5559cfe662d698bf09` — liveness: live (current_address_book_code)<br>0x59964b… (alternative) `0x59964b3af53eb10c596b92b3d6aeafc038b3bd8d` — liveness: live (current_address_book_code)<br>0x7477d5… (alternative) `0x7477d52db2904c1c7b47a1680687b999dc7e3cb0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| NM0565-FINAL_Skate.pdf | PeripheryPool | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | PeripheryEventEmitter | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | IPeripheryPool | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | IPeripheryManager | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | lib.rs | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | kernel_action.rs | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | helper.rs | unmatched — not counted | — | listed in audited files table | no |
| NM-0550_SKATE_FINAL.pdf | ClaimAndStakeHandlerHook | unmatched — not counted | — | listed in Audited Files table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 75 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 4 ambiguous, 36 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1
- Match method counts: n/a

Zero-match audit list:

- [21447] NM0565-FINAL_Skate.pdf
- [21448] NM-0550_SKATE_FINAL.pdf
- [24447] Manual audit seed

Fork inheritance lineage and inherited audits are included when available.
