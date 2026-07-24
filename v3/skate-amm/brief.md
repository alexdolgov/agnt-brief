# Agentic Audit Brief: Skate AMM

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Skate AMM (`skate-amm`)
- Website: [https://amm.skatechain.org/swap](https://amm.skatechain.org/swap)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, bsc, ethereum, hyperliquid, mantle
- Contract surface: 379 unique implementations (379 raw deployments)
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
- Outside the address book: 303 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 76 of 379 unique; 303 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 377
- Unique implementations: 379
- Raw deployments: 379
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

### ❓ Unverified (377)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0167040a0a70e270e74c72a597c39a41bc763615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0205df24a1521900ecb0a1dfc0e6fddf8cd9cea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03f75a4dce6a2aa260d98d10c2c606e5bcfff85c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x052b1cacbdea7b4d711c6f428a20618ef60fda1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x052db3711fd69a06698c182394a14e086d168b0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x093285c34515c01a55e15a25812bcf87e7ab0dc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c55915a3b4e1e7e0b44e99c48666bd488417d2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0da21d330f3f75d730a1b5f1535ca75061cabf61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10f4d4ead6bcd4de7849898403d88528e3dfc872` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1202f5c7b4b9e47a1a484e8b270be34dbbc75055` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14219845c6b7984aa5ec0a39754dcc327169de32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254952 | `0x19e099b7aed41fa52718d780dda74678113c0b32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b246e8574e8c2dbfc2087148fd103130b3aecd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1de327c23ed8f52f797d55b31abce98cb46c8ea9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fc1bc7ef87ace92a3f2eed44581111eb1ffdeaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x234c908e749961d0329a0ed5916d55a99d1ad06c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26f01bc73cb7422db67bbdfacd9c987ae66bf3d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2718729fb710cf17fcc9293214c575c58526b654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27b0e2e956b410f33df9296f6bce8b0c915ba8ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x290d9544669c9c7a64f6899a0a3b28d563f6ebee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d00499079d7145163a213ab1443056cce6b0f77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d748a6dd7a0dc546f092f12b0d0285cbc82a2c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31319866778a5223633bd745780bb6d59406371e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32a07be243ac4ea140b6fef69e3aa44d59f39f7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35533f54740f1f1aa4179e57ba37039dfa16868b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35e5db674d8e93a03d814fa0ada70731efe8a4b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36c9b5e8f039381d1da79b94a206af8bc076c043` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x395de5cc3f5b796363bf13da49463e4f35da4fd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3dcd7a136f0a49f3efcc5e215793fa1ce5c400bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ed5dc199d8bce1e1a9ed8520a215ae9af9bd45d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f51cbfa16d605a271d06fd8b67a7ab070fd8dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40b988e4ee43351c679291b868fa35dc4caa0580` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254954 | `0x415f76117fd284d2fed4cb0dee1dc51fc13342ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46887a1f9885300f4185499ba48c248445eecab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46c1c168ca597b9e5423aa7081a0dce782caeaab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4956b52ae2ff65d74ca2d61207523288e4528f96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254956 | `0x4c1746a800d224393fe2470c70a35717ed4ea5f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254957 | `0x4c9edd5852cd905f086c759e8383e09bff1e68b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e35e7b1e03a37e40b0f1a4ee27813fe2d474ecb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5104b43c3e035d482aca16d342f8382d2b0c948a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52d9221f2ed69682d0c2d15a6a84fbbcfeb5abbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53c5b703465234f97c5a7b17b602c6224a08031e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56abf7334e2b4c2ec925a59cb2994a1a7632ecc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5943026e21e3936538620ba27e01525bba311255` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5daa068b9592781ad49235838fdd38e2d162084b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e90b0a657643c08a45cbd6a06337b37c98e1aa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60a7b7915980ed34fde6e239618fadcf67897c37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254959 | `0x61dbbbb552dc893ab3aad09f289f811e67cef285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62c7a9d458ddff45780acd60c25a5cc2d21c47dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63ca920425f683138b9407171b51b8172421ba50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64f6d0574633921fb00577ae332e2610f6ae320b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254960 | `0x657440a33717d754c0df7732c11932838479bc11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254961 | `0x66a1e37c9b0eaddca17d3662d6c05f4decf3e110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66f8c3733a0f4f151405f77e9bb727f2f7f62d55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ac1f64931e0fd9582a095090fab2e838904dbaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6af378625f7ae4620620d64d9ebffe54b59d5307` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c8984bc7dbbedaf4f6b2fd766f16ebb7d10aab4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ed5485d079d7f0cfa8e395499b3c01a6c359cc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7078c8b3687e4b2120e0a74e302a06dc51d52489` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254964 | `0x722a851b6798d65b80526562fc3a36e19b1f883b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254965 | `0x7477d52db2904c1c7b47a1680687b999dc7e3cb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75ec066efb238cf211baa73b28db539541493c70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d9582794b117d9efcc80f94c5b41e72d0d08fc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7dc47ab1df6ad7391f18a78ad2da3b9091f50290` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f45180d6ffd0435d8dd695fd01320e6999c261c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254967 | `0x81fa269e38184405f282bd46b6decb397372963c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84b883f8833e7eefd17b6a5e4e885b22f4acfed6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254969 | `0x86adf47a8f785213bcc1065a27d57a8d655dea21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x878943125019b86aeb0e97f36fb4f1dc5c43dd34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a93414f88f597922a9829df5f7c94b81bc46f64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ade71febab1337ce08062fe5208a611ee6e86e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b480bfc04492229c631686f94dc50b7bcc44ee6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f4e4e53b3aff8579d3c5509be2201979038cf3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8faff63a3f8a5dc7fed33174e93a6f23e8a99b48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91eda28735ce089a8b5133476263c3fb8303c8ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254972 | `0x97af2c120f2b87c333a7ae4886387bd4e5a5b694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9971f773f96f1223c2befa4aa4562ea5ce0af812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ace2068dcd9491d3e5a23551b6877658e1b4cf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d39a5de30e57443bff2a8307a4256c8797a3497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f805fc8679e5f81a0683c3203ad48417efdad12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254973 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa27a69ae180e202fde5d38189a3f24fe24e55861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa61040c021b073e6b5a4b41fb5eda60d69416f38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7482d25bc18fc64abee988922f4ce8d7f3dbe8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa33e5ecae01779b26cd9dbd3c62e34c29b2d565` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab17c1fe647c37ceb9b96d1c27dd189bf8451978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac85ef29192487e0a109b7f9e40c267a9ea95f2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacb7027f271b03b502d65feba617a0d817d62b8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadb2c15fde49d1a4294740acb650de94184e66b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae2364579d6cb4bbd6695846c1d595ca9af3574d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254974 | `0xaf31d15b11315e0f24991945fc75aabd3e0a718f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254975 | `0xb17c0032f32536c4c44fd6878d277a4f6d3c574f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1b385542b6e80f77b94393ba8342c3af699f15c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb63a5eb2f20cd7a2ee9b1421fc06059cf7b048a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb69b2ea98f0fcef104b5cde7d9236601d8c96be6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6a844ffa115ce39b2a0edd1ea908ba8448f319c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba1600735a039e2b3bf1d1d2f1a7f80f45973da7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba610d8c8c93580c19fb8800fc406227de8df947` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbac23ec6ccab8631f500ecb6c01ea0ee0b72ac69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb2213e9a4515174d433cd75cc2695043c85e32c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe23bb6d817c08e7ec4cd0adb0e23156189c1ba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf1762fdbb06e8ee715ae59495b2bf14fb1649df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254976 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc16b2a7a773c23e3e9d3325c7b173ef24fc2785d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc31389794ffac23331e0d9f611b7953f90aa5fdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3406121fba68250af08c4933129e88ca84b81e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4543073bfaba77781b46dfb4d43b5ae4e30eb28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc630a7736cb428e1a07e769158829459bc27cfbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc657b23d01907e3af6f8678d47467b3865428691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7ab90c2ea9271efb31f5fa2843eeb4b331eafa0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254978 | `0xca3d6ffb1e6706c3c28bd0bd0fa8e925a5c99105` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf3e9da6190997ca7b1f46a2568caa29575678bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1062547981471b821755c13cafa0f13d099705a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2ee2776f34ef4e7325745b06e6d464b08d4be0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda6cef7f667d992a60eb823ab215493aa0c6b360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdce79568cc5a8f7598fd68c97475c4b0e56c76a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde827ab5e8c1867b5f5351862b033d10c6e23f54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2322122a2c3f13d763ca7b875e8a65f2cbc9499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3c437f894283219275497b83e009de5cfe47171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6355d652dc3c2c857a246afba0d7fd965bfb1ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254979 | `0xe6829d9a7ee3040e1276fa75293bde931859e8fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec5aa0a31651703646bcb90c4e00bd8f77271dfe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254980 | `0xed8c0958c5ccbe61cef6528e1e217010431b84ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeef36320ee5d9f258e22ffc93df8619ec04acdd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef4c4bcbe105170810b6ef58a286d9ce97a1fabe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254981 | `0xeffc0fd0cad5762c360eb2158500a5537bb4637d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf28a9370da965b99b7b02447d38f32b81a7a890d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf47af3904dab5bb2ec2980a6100ec58a2f82ba80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7b221f8a45a62539a53f20c8d3a5a1eddd1b510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8391a4c2e964c7b175d4027cb384ae73784c46b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254982 | `0xf9581cdf02c1aaf3f398cd87fe3733e664e4949a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9c7c25fe58aaa494ee7ff1f6cf0b70d7c7ce88c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfff16789c95d987c214bcba466e26dfc5dc01ad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0205df24a1521900ecb0a1dfc0e6fddf8cd9cea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x052db3711fd69a06698c182394a14e086d168b0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c1174e911d1f13ef679cff15041cb01491af46b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c55915a3b4e1e7e0b44e99c48666bd488417d2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ca6db88ad5eec56ca982fb96a24ad2172b4a0ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0da21d330f3f75d730a1b5f1535ca75061cabf61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-255003 | `0x1192c698cc6d68c3f8ebd980a91c2acd4f770d27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x197de9de285b9ceadd351d4a491af72cc0967813` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b246e8574e8c2dbfc2087148fd103130b3aecd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c8050d5b27966181e989340a58de772b9b6a566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f5c460a8bf18b12fb7218019a1693391a8251a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1fa4a73a3f0133f0025378af00236f3abdee5d63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20f3bf9d966422026fc10ad1b298bec220614228` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-255004 | `0x2492d0006411af6c8bbb1c8afc1b0197350a79e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x250632378e573c6be1ac2f97fcdf00515d0aa91b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27b0e2e956b410f33df9296f6bce8b0c915ba8ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ac40249ec3791c4d4f70ef0a11d2666044f5413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2bf8a2bfecaf10b2ff98b3e61df52b264261bd10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35e5db674d8e93a03d814fa0ada70731efe8a4b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d6545b08693dae087e957cb1180ee38b9e3c25e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4254813524695def4163a169e901f3d7a1a55429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4309d3ae98c8a751fac34c91536ee860d9b8dce1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46887a1f9885300f4185499ba48c248445eecab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a221defd6014c42921e2e144ec5f1e945245383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a6f6e61093a802f5358a753827aef2c5d74496d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-255005 | `0x4b948d64de1f71fcd12fb586f4c776421a35b3ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5943026e21e3936538620ba27e01525bba311255` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64f6d0574633921fb00577ae332e2610f6ae320b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x66f8c3733a0f4f151405f77e9bb727f2f7f62d55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-255006 | `0x6863b6f2e4e0e212cc43a460e6a9b49579a7ac8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6eb37463dbc55b96dfa0186d8af7952827c6d761` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-255007 | `0x7477d52db2904c1c7b47a1680687b999dc7e3cb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78b0d65fbb83030372f1adaf1553a89a74e55306` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7950865a9140cb519342433146ed5b40c6f210f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x802be72795617acec443321504150951f85de652` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-255008 | `0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ade71febab1337ce08062fe5208a611ee6e86e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f16b23a11378be8573470e23f626b9a7e41b389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f4e4e53b3aff8579d3c5509be2201979038cf3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x947950bcc74888a40ffa2593c5798f11fc9124c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-255009 | `0x97af2c120f2b87c333a7ae4886387bd4e5a5b694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a2f5556e9a637e8fbce886d8e3cf8b316a1d8a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2b726b1145a4773f68593cf171187d8ebe4d495` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa89c6871c4bbc49bcd49d7d5d7c3853b05521bec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-255010 | `0xaccac7d207b25a16283ec31e42b0d92b18d42004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb6a844ffa115ce39b2a0edd1ea908ba8448f319c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7f8cd00c5a06c0537e2abff0b58033d02e5e094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf7c81fff98bbe61b40ed186e4afd6ddd01337fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc31389794ffac23331e0d9f611b7953f90aa5fdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3406121fba68250af08c4933129e88ca84b81e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc630a7736cb428e1a07e769158829459bc27cfbc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-255011 | `0xca3d6ffb1e6706c3c28bd0bd0fa8e925a5c99105` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-255012 | `0xce9ecebafe2174ffc9b662fe6cc4610574ab602c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2d9ad3cbad933e23d973e146a6ca48d2b8076f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd475c9c934dcd6d5f1cac530585aa5ba14185b92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda1426d5e7685ba9a6fdde238f52465e4dfc9c37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda6cef7f667d992a60eb823ab215493aa0c6b360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd3c817354e3855ef2b52d15ad2244793c50385a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde827ab5e8c1867b5f5351862b033d10c6e23f54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe84a60d66543ef8e2e162f66a7669692b01ee145` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed8ef245b6b2c44f9a1405134b5fd32ddb6f7b77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-255013 | `0xfa54ff1a158b5189ebba6ae130ced6bbd3aea76e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb6115445bff7b52feb98650c87f44907e58f802` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-255029 | `0x027c74f40d8b803b46d8ce31624bc86fd29654f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x07c74fc530c0dc15d43aba96fc6942be578ed690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x08cd405554832f44ad31e834482b4d8f4e1dcfc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x0c1174e911d1f13ef679cff15041cb01491af46b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x0c55915a3b4e1e7e0b44e99c48666bd488417d2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x16e04a161bd3e62e291cb18e02a5204a32e55b49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-255030 | `0x19c5382936b71864d249bbb3a7658764558b5896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x431a8811a3c2e0205095c5728e0776f6addaa506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x54954b6ed6f115970cb8a3add6e295245d2ec9a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-255031 | `0x59964b3af53eb10c596b92b3d6aeafc038b3bd8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-255032 | `0x5d23264ac572c52454b37da765969f5511b7578e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x66f8c3733a0f4f151405f77e9bb727f2f7f62d55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6863b6f2e4e0e212cc43a460e6a9b49579a7ac8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x77f0d62ee095fe78e9ae966d2e04b6b9080f326a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-255033 | `0x94faae1e0cfc4717e2832f5559cfe662d698bf09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x97af2c120f2b87c333a7ae4886387bd4e5a5b694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xa45618fd9681c1fec7acfbd92c197187bb96ef14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-255034 | `0xa7482d25bc18fc64abee988922f4ce8d7f3dbe8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc3406121fba68250af08c4933129e88ca84b81e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xca3d6ffb1e6706c3c28bd0bd0fa8e925a5c99105` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-255035 | `0xd719be20d005d274eed297c4865fd20199a13efa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe147d043d57e5df29be37d61b098eb84d03fddfa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-255036 | `0xeb397737c075214f6f1f3027ac210ff412980d50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xeee179e7107c3d685af4096eab06903f91106f83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xfe39ee38afa0a7e1e10e32979fba97a023e827b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x07c74fc530c0dc15d43aba96fc6942be578ed690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0872b8f8f7f3596b5ad14be5124e1673f83d768a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0c1174e911d1f13ef679cff15041cb01491af46b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0c55915a3b4e1e7e0b44e99c48666bd488417d2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-254994 | `0x3ccfe69f37f32ee0dc52cbbf265433345d5105c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-254995 | `0x3e053a349f8485f8489937d7e26a7f54dc1c11b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x46887a1f9885300f4185499ba48c248445eecab1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-254996 | `0x59964b3af53eb10c596b92b3d6aeafc038b3bd8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-254997 | `0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x634132a190552c70e99b392e1356f1fbea72b6c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x66f8c3733a0f4f151405f77e9bb727f2f7f62d55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x68368a26cfd2b2c28c4153a743e0b20f37d7123b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6863b6f2e4e0e212cc43a460e6a9b49579a7ac8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7477d52db2904c1c7b47a1680687b999dc7e3cb0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-254998 | `0x802be72795617acec443321504150951f85de652` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8c01c59e6a0e0bd1fd6c8941afcf33c43bbaea85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x97af2c120f2b87c333a7ae4886387bd4e5a5b694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9b69c72b68b7a7e765335831d6234f593f818e6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa7482d25bc18fc64abee988922f4ce8d7f3dbe8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-254999 | `0xaccac7d207b25a16283ec31e42b0d92b18d42004` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-255000 | `0xc3406121fba68250af08c4933129e88ca84b81e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xca3d6ffb1e6706c3c28bd0bd0fa8e925a5c99105` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcc850a7ed22d7f407e690ded76ce5effc1176d2d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-255001 | `0xde827ab5e8c1867b5f5351862b033d10c6e23f54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe08cb29e86a78ebd520e8f2e1ed0fcc6e0a24407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe3ac86bf5d9ab5d9705b5e9187437e978397528b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe6355d652dc3c2c857a246afba0d7fd965bfb1ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xeffc0fd0cad5762c360eb2158500a5537bb4637d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf28a9370da965b99b7b02447d38f32b81a7a890d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-255002 | `0xf730a744a817266a48714bd4d2b959b3e221977f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xfe39ee38afa0a7e1e10e32979fba97a023e827b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0205df24a1521900ecb0a1dfc0e6fddf8cd9cea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x05498574bd0fa99eecb01e1241661e7ee58f8a85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c1174e911d1f13ef679cff15041cb01491af46b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0ca6db88ad5eec56ca982fb96a24ad2172b4a0ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0f96024635043f35409e8c365ad308ebd3d5295f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x11104f7c9e50dc07c62904f3d281fc16b123feb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x197de9de285b9ceadd351d4a491af72cc0967813` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1b246e8574e8c2dbfc2087148fd103130b3aecd9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255014 | `0x1c61629598e4a901136a81bc138e5828dc150d67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255015 | `0x1e3fd498641f5fa9af2e08b3be40e7a0dc09ffe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2032ac3ed16531a7e936f7b70bc9fb3ee56baafd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2492d0006411af6c8bbb1c8afc1b0197350a79e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x24fb3dfba019e73ed45c884a31b5a60608968529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2514de713ca44177b4ea97014e6488e3dfe54b2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x26f01bc73cb7422db67bbdfacd9c987ae66bf3d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x29922fd24c75436e2f73c0c2f5678f28237b7634` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2ac40249ec3791c4d4f70ef0a11d2666044f5413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2bf8a2bfecaf10b2ff98b3e61df52b264261bd10` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255016 | `0x35e5db674d8e93a03d814fa0ada70731efe8a4b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x384eab89048520e35309e48ea933d845c495a613` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b72f6c87f37b29c9b7fdfa2bd96a694b789e74b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3e053a349f8485f8489937d7e26a7f54dc1c11b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f51cbfa16d605a271d06fd8b67a7ab070fd8dd8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255017 | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4309d3ae98c8a751fac34c91536ee860d9b8dce1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x430b6e7f7d43d70786267af7a5b2c1831372ca24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4568aa1ea0ed54db666c58b4526b3fc9bd9be9bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x45b265c7919d7fd8a0d673d7acaa8f5a7abb430d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255018 | `0x59964b3af53eb10c596b92b3d6aeafc038b3bd8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x610d4dfac3ec32e0be98d18ddb280dacd76a1889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x634132a190552c70e99b392e1356f1fbea72b6c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x64f6d0574633921fb00577ae332e2610f6ae320b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x66cfbd79257dc5217903a36293120282548e2254` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255019 | `0x68b5c82caf6e5bc540c8a6d435664db2303d98c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6e5b50e8603683a6eaee681a548105d298a62777` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6eb37463dbc55b96dfa0186d8af7952827c6d761` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7666c8c455c02cb88ac767babe708c1b0af0f5a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255020 | `0x79e31a114e6d2f16e1e2a3ec47c82fac520881a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7d9582794b117d9efcc80f94c5b41e72d0d08fc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7dc47ab1df6ad7391f18a78ad2da3b9091f50290` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x802be72795617acec443321504150951f85de652` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255021 | `0x82ee3dcdad829152996587322395cda941e20106` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255022 | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8a69a00e0abbd754f7f6b19e0f860985f3dad534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8f16b23a11378be8573470e23f626b9a7e41b389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8f234a681bde0e219625dd920ad86c12bf2c93f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9128ba6b88a3851d6aa856aade7da0bb694560db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9816d7c448f79cdd4af18c4ae1726a14299e8c75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x985a9a95558861ff5ef6cbefedfa9d8bfdbdabd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9b31d7616c3d970ba76e5c05f112da62d10c6a12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255023 | `0x9b69c72b68b7a7e765335831d6234f593f818e6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255024 | `0xad1472e9d1e267cd87567776f6dbeec6f05da82d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb26cacfc329f117f2748328799ec8772ada2acb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb67675158b412d53fe6b68946483ba920b135ba1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbdcf0bb40eb8642f907133bdb5fcc681d81f0651` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255025 | `0xc206e55f1595a5656a3e038e21837f8a79409827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc31389794ffac23331e0d9f611b7953f90aa5fdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc3406121fba68250af08c4933129e88ca84b81e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc3a17dc6b70cd58f8ae49fb969cca5a57cf84a73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255026 | `0xca3d6ffb1e6706c3c28bd0bd0fa8e925a5c99105` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcf3e9da6190997ca7b1f46a2568caa29575678bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd2d9ad3cbad933e23d973e146a6ca48d2b8076f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd8284305b520ff5486ab718dbdfe46f18454aede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd829adf0fb755f38d1d691f822619c3fbaa5ccd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xda1426d5e7685ba9a6fdde238f52465e4dfc9c37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xed8ef245b6b2c44f9a1405134b5fd32ddb6f7b77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf352dc165783538a26e38a536e76dcef227d90f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf54beb9c327829e9e4cb9b2609870ac7c8b3445f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf730a744a817266a48714bd4d2b959b3e221977f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfa81b396270730dbd276d3ee002b0b7ff68d86f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfd76d7ecbf91b2bf7f225af29c1cb7f213fa71b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255027 | `0xfde4c96c8593536e31f229ea8f37b2ada2699bb2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-255028 | `0xfe39ee38afa0a7e1e10e32979fba97a023e827b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0205df24a1521900ecb0a1dfc0e6fddf8cd9cea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0872b8f8f7f3596b5ad14be5124e1673f83d768a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c1174e911d1f13ef679cff15041cb01491af46b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ca6db88ad5eec56ca982fb96a24ad2172b4a0ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1120d6b34c4eb0cd49200ae9fbd2e4fb002d949f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x11e61ab27b5ca16835dbbdbeda8965bf924f2301` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a5edd2592dead6ab698817b78059248033cdbd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2032ac3ed16531a7e936f7b70bc9fb3ee56baafd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26f01bc73cb7422db67bbdfacd9c987ae66bf3d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254983 | `0x27b0e2e956b410f33df9296f6bce8b0c915ba8ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254984 | `0x2bcc6d6cdbbdc0a4071e48bb3b969b06b3330c07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2bf8a2bfecaf10b2ff98b3e61df52b264261bd10` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254985 | `0x343389fe6a3b869bc7e96f77d9c94580d80b2cfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3dcd7a136f0a49f3efcc5e215793fa1ce5c400bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e053a349f8485f8489937d7e26a7f54dc1c11b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3f51cbfa16d605a271d06fd8b67a7ab070fd8dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4309d3ae98c8a751fac34c91536ee860d9b8dce1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5104b43c3e035d482aca16d342f8382d2b0c948a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5592d5882c2a84470038e84d1b8c970823101e8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254986 | `0x59964b3af53eb10c596b92b3d6aeafc038b3bd8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x62c7a9d458ddff45780acd60c25a5cc2d21c47dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x634132a190552c70e99b392e1356f1fbea72b6c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63ca920425f683138b9407171b51b8172421ba50` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254987 | `0x68b5c82caf6e5bc540c8a6d435664db2303d98c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6eb37463dbc55b96dfa0186d8af7952827c6d761` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7666c8c455c02cb88ac767babe708c1b0af0f5a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7d9582794b117d9efcc80f94c5b41e72d0d08fc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x803ed7fa8934d4fe51a276ca02506b585cdb3eb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x88f0b4f27ef831b61c5f739cbec640ff6748cad9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f16b23a11378be8573470e23f626b9a7e41b389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8faff63a3f8a5dc7fed33174e93a6f23e8a99b48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b69c72b68b7a7e765335831d6234f593f818e6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ecf0840b0d88398e31c1efccc95f46887b522bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6f8719524b707d1a9beaa112138a50a11ada26c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254988 | `0xad1472e9d1e267cd87567776f6dbeec6f05da82d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254989 | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6a844ffa115ce39b2a0edd1ea908ba8448f319c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc817b1e03fd3db56e0e094b5ee0f46dd69012ed2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254990 | `0xca3d6ffb1e6706c3c28bd0bd0fa8e925a5c99105` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce9ecebafe2174ffc9b662fe6cc4610574ab602c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda1426d5e7685ba9a6fdde238f52465e4dfc9c37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe2bfb6d855e4d280318a7d5b2427e7a7ff42df0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe84a60d66543ef8e2e162f66a7669692b01ee145` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xecb40a9d7b1ced2979879fbfc13bb68250121277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xed8ef245b6b2c44f9a1405134b5fd32ddb6f7b77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf730a744a817266a48714bd4d2b959b3e221977f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254991 | `0xf7b221f8a45a62539a53f20c8d3a5a1eddd1b510` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254992 | `0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfd3de2d7c603508241e47b1be055f3615be054ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254993 | `0xfe39ee38afa0a7e1e10e32979fba97a023e827b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff696990040602190baa27e4ce9bdf0ae7773581` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 302
- Live contracts: 0
- Unknown liveness contracts: 302
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=302

Showing first 200 of 302 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0167040a0a70e270e74c72a597c39a41bc763615` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x0205df24a1521900ecb0a1dfc0e6fddf8cd9cea4` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x03f75a4dce6a2aa260d98d10c2c606e5bcfff85c` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x052b1cacbdea7b4d711c6f428a20618ef60fda1b` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x052db3711fd69a06698c182394a14e086d168b0b` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x093285c34515c01a55e15a25812bcf87e7ab0dc6` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x0c55915a3b4e1e7e0b44e99c48666bd488417d2b` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x0da21d330f3f75d730a1b5f1535ca75061cabf61` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x10f4d4ead6bcd4de7849898403d88528e3dfc872` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x1202f5c7b4b9e47a1a484e8b270be34dbbc75055` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x14219845c6b7984aa5ec0a39754dcc327169de32` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x1b246e8574e8c2dbfc2087148fd103130b3aecd9` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x1de327c23ed8f52f797d55b31abce98cb46c8ea9` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x1fc1bc7ef87ace92a3f2eed44581111eb1ffdeaf` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x234c908e749961d0329a0ed5916d55a99d1ad06c` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x26f01bc73cb7422db67bbdfacd9c987ae66bf3d3` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x2718729fb710cf17fcc9293214c575c58526b654` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x27b0e2e956b410f33df9296f6bce8b0c915ba8ae` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x290d9544669c9c7a64f6899a0a3b28d563f6ebee` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x2d00499079d7145163a213ab1443056cce6b0f77` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x2d748a6dd7a0dc546f092f12b0d0285cbc82a2c0` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x31319866778a5223633bd745780bb6d59406371e` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x32a07be243ac4ea140b6fef69e3aa44d59f39f7a` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x35533f54740f1f1aa4179e57ba37039dfa16868b` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x35e5db674d8e93a03d814fa0ada70731efe8a4b9` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x36c9b5e8f039381d1da79b94a206af8bc076c043` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x395de5cc3f5b796363bf13da49463e4f35da4fd8` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x3dcd7a136f0a49f3efcc5e215793fa1ce5c400bf` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x3ed5dc199d8bce1e1a9ed8520a215ae9af9bd45d` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x3f51cbfa16d605a271d06fd8b67a7ab070fd8dd8` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x40b988e4ee43351c679291b868fa35dc4caa0580` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x46887a1f9885300f4185499ba48c248445eecab1` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x46c1c168ca597b9e5423aa7081a0dce782caeaab` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x4956b52ae2ff65d74ca2d61207523288e4528f96` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x4e35e7b1e03a37e40b0f1a4ee27813fe2d474ecb` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x5104b43c3e035d482aca16d342f8382d2b0c948a` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x52d9221f2ed69682d0c2d15a6a84fbbcfeb5abbd` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x53c5b703465234f97c5a7b17b602c6224a08031e` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x56abf7334e2b4c2ec925a59cb2994a1a7632ecc2` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x5943026e21e3936538620ba27e01525bba311255` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x5daa068b9592781ad49235838fdd38e2d162084b` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x5e90b0a657643c08a45cbd6a06337b37c98e1aa1` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x60a7b7915980ed34fde6e239618fadcf67897c37` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x62c7a9d458ddff45780acd60c25a5cc2d21c47dd` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x63ca920425f683138b9407171b51b8172421ba50` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x64f6d0574633921fb00577ae332e2610f6ae320b` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x66f8c3733a0f4f151405f77e9bb727f2f7f62d55` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x6ac1f64931e0fd9582a095090fab2e838904dbaf` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x6af378625f7ae4620620d64d9ebffe54b59d5307` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x6c8984bc7dbbedaf4f6b2fd766f16ebb7d10aab4` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x6ed5485d079d7f0cfa8e395499b3c01a6c359cc0` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x7078c8b3687e4b2120e0a74e302a06dc51d52489` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x75ec066efb238cf211baa73b28db539541493c70` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x7d9582794b117d9efcc80f94c5b41e72d0d08fc8` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x7dc47ab1df6ad7391f18a78ad2da3b9091f50290` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x7f45180d6ffd0435d8dd695fd01320e6999c261c` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x84b883f8833e7eefd17b6a5e4e885b22f4acfed6` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x878943125019b86aeb0e97f36fb4f1dc5c43dd34` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x8a93414f88f597922a9829df5f7c94b81bc46f64` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x8ade71febab1337ce08062fe5208a611ee6e86e9` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x8b480bfc04492229c631686f94dc50b7bcc44ee6` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x8f4e4e53b3aff8579d3c5509be2201979038cf3c` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x8faff63a3f8a5dc7fed33174e93a6f23e8a99b48` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x91eda28735ce089a8b5133476263c3fb8303c8ca` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x9971f773f96f1223c2befa4aa4562ea5ce0af812` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x9ace2068dcd9491d3e5a23551b6877658e1b4cf9` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x9d39a5de30e57443bff2a8307a4256c8797a3497` | non_address_book | unknown | unknown | unverified | n/a | `0x8de54b1cefedeab1766b947c7d9a9963436e8fae` |
| unverified unclassified | UnnamedContract<br>`0x9f805fc8679e5f81a0683c3203ad48417efdad12` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xa27a69ae180e202fde5d38189a3f24fe24e55861` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xa61040c021b073e6b5a4b41fb5eda60d69416f38` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0xa7482d25bc18fc64abee988922f4ce8d7f3dbe8b` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0xaa33e5ecae01779b26cd9dbd3c62e34c29b2d565` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xab17c1fe647c37ceb9b96d1c27dd189bf8451978` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xac85ef29192487e0a109b7f9e40c267a9ea95f2e` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xacb7027f271b03b502d65feba617a0d817d62b8e` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xadb2c15fde49d1a4294740acb650de94184e66b2` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xae2364579d6cb4bbd6695846c1d595ca9af3574d` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xb1b385542b6e80f77b94393ba8342c3af699f15c` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xb63a5eb2f20cd7a2ee9b1421fc06059cf7b048a7` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xb69b2ea98f0fcef104b5cde7d9236601d8c96be6` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xb6a844ffa115ce39b2a0edd1ea908ba8448f319c` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0xba1600735a039e2b3bf1d1d2f1a7f80f45973da7` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xba610d8c8c93580c19fb8800fc406227de8df947` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xbac23ec6ccab8631f500ecb6c01ea0ee0b72ac69` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xbb2213e9a4515174d433cd75cc2695043c85e32c` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xbe23bb6d817c08e7ec4cd0adb0e23156189c1ba9` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xbf1762fdbb06e8ee715ae59495b2bf14fb1649df` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xc16b2a7a773c23e3e9d3325c7b173ef24fc2785d` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xc31389794ffac23331e0d9f611b7953f90aa5fdc` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xc3406121fba68250af08c4933129e88ca84b81e8` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0xc4543073bfaba77781b46dfb4d43b5ae4e30eb28` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xc630a7736cb428e1a07e769158829459bc27cfbc` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0xc657b23d01907e3af6f8678d47467b3865428691` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xc7ab90c2ea9271efb31f5fa2843eeb4b331eafa0` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xcf3e9da6190997ca7b1f46a2568caa29575678bd` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xd1062547981471b821755c13cafa0f13d099705a` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xd2ee2776f34ef4e7325745b06e6d464b08d4be0e` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xda6cef7f667d992a60eb823ab215493aa0c6b360` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xdce79568cc5a8f7598fd68c97475c4b0e56c76a8` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xde827ab5e8c1867b5f5351862b033d10c6e23f54` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0xe2322122a2c3f13d763ca7b875e8a65f2cbc9499` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0xe3c437f894283219275497b83e009de5cfe47171` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0xe6355d652dc3c2c857a246afba0d7fd965bfb1ec` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0xec5aa0a31651703646bcb90c4e00bd8f77271dfe` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0xeef36320ee5d9f258e22ffc93df8619ec04acdd3` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xef4c4bcbe105170810b6ef58a286d9ce97a1fabe` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xf28a9370da965b99b7b02447d38f32b81a7a890d` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0xf47af3904dab5bb2ec2980a6100ec58a2f82ba80` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xf7b221f8a45a62539a53f20c8d3a5a1eddd1b510` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0xf8391a4c2e964c7b175d4027cb384ae73784c46b` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xf9c7c25fe58aaa494ee7ff1f6cf0b70d7c7ce88c` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xfff16789c95d987c214bcba466e26dfc5dc01ad6` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x0205df24a1521900ecb0a1dfc0e6fddf8cd9cea4` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x052db3711fd69a06698c182394a14e086d168b0b` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x0c1174e911d1f13ef679cff15041cb01491af46b` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x0c55915a3b4e1e7e0b44e99c48666bd488417d2b` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x0ca6db88ad5eec56ca982fb96a24ad2172b4a0ef` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x0da21d330f3f75d730a1b5f1535ca75061cabf61` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x197de9de285b9ceadd351d4a491af72cc0967813` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x1b246e8574e8c2dbfc2087148fd103130b3aecd9` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x1c8050d5b27966181e989340a58de772b9b6a566` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x1f5c460a8bf18b12fb7218019a1693391a8251a7` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x1fa4a73a3f0133f0025378af00236f3abdee5d63` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| unverified unclassified | UnnamedContract<br>`0x20f3bf9d966422026fc10ad1b298bec220614228` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x250632378e573c6be1ac2f97fcdf00515d0aa91b` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| unverified unclassified | UnnamedContract<br>`0x27b0e2e956b410f33df9296f6bce8b0c915ba8ae` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x2ac40249ec3791c4d4f70ef0a11d2666044f5413` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x2bf8a2bfecaf10b2ff98b3e61df52b264261bd10` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x35e5db674d8e93a03d814fa0ada70731efe8a4b9` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x3d6545b08693dae087e957cb1180ee38b9e3c25e` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| unverified unclassified | UnnamedContract<br>`0x4254813524695def4163a169e901f3d7a1a55429` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x4309d3ae98c8a751fac34c91536ee860d9b8dce1` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x46887a1f9885300f4185499ba48c248445eecab1` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x4a221defd6014c42921e2e144ec5f1e945245383` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x4a6f6e61093a802f5358a753827aef2c5d74496d` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x5943026e21e3936538620ba27e01525bba311255` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x64f6d0574633921fb00577ae332e2610f6ae320b` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x66f8c3733a0f4f151405f77e9bb727f2f7f62d55` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x6eb37463dbc55b96dfa0186d8af7952827c6d761` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x78b0d65fbb83030372f1adaf1553a89a74e55306` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x7950865a9140cb519342433146ed5b40c6f210f7` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| unverified unclassified | UnnamedContract<br>`0x802be72795617acec443321504150951f85de652` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x8ade71febab1337ce08062fe5208a611ee6e86e9` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x8f16b23a11378be8573470e23f626b9a7e41b389` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x8f4e4e53b3aff8579d3c5509be2201979038cf3c` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x947950bcc74888a40ffa2593c5798f11fc9124c4` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| unverified unclassified | UnnamedContract<br>`0x9a2f5556e9a637e8fbce886d8e3cf8b316a1d8a2` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| unverified unclassified | UnnamedContract<br>`0xa2b726b1145a4773f68593cf171187d8ebe4d495` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| unverified unclassified | UnnamedContract<br>`0xa89c6871c4bbc49bcd49d7d5d7c3853b05521bec` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0xb6a844ffa115ce39b2a0edd1ea908ba8448f319c` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0xb7f8cd00c5a06c0537e2abff0b58033d02e5e094` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| unverified unclassified | UnnamedContract<br>`0xbf7c81fff98bbe61b40ed186e4afd6ddd01337fe` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| unverified unclassified | UnnamedContract<br>`0xc31389794ffac23331e0d9f611b7953f90aa5fdc` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xc3406121fba68250af08c4933129e88ca84b81e8` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0xc630a7736cb428e1a07e769158829459bc27cfbc` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0xd2d9ad3cbad933e23d973e146a6ca48d2b8076f3` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0xd475c9c934dcd6d5f1cac530585aa5ba14185b92` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| unverified unclassified | UnnamedContract<br>`0xda1426d5e7685ba9a6fdde238f52465e4dfc9c37` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0xda6cef7f667d992a60eb823ab215493aa0c6b360` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xdd3c817354e3855ef2b52d15ad2244793c50385a` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| unverified unclassified | UnnamedContract<br>`0xde827ab5e8c1867b5f5351862b033d10c6e23f54` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0xe84a60d66543ef8e2e162f66a7669692b01ee145` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0xed8ef245b6b2c44f9a1405134b5fd32ddb6f7b77` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0xfb6115445bff7b52feb98650c87f44907e58f802` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| unverified unclassified | UnnamedContract<br>`0x07c74fc530c0dc15d43aba96fc6942be578ed690` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x08cd405554832f44ad31e834482b4d8f4e1dcfc1` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x0c1174e911d1f13ef679cff15041cb01491af46b` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x0c55915a3b4e1e7e0b44e99c48666bd488417d2b` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x16e04a161bd3e62e291cb18e02a5204a32e55b49` | non_address_book | unknown | unknown | unverified | n/a | `0xa5609803b728737a62584af25523f9f23738e4b4` |
| unverified unclassified | UnnamedContract<br>`0x431a8811a3c2e0205095c5728e0776f6addaa506` | non_address_book | unknown | unknown | unverified | n/a | `0xa5609803b728737a62584af25523f9f23738e4b4` |
| unverified unclassified | UnnamedContract<br>`0x54954b6ed6f115970cb8a3add6e295245d2ec9a5` | non_address_book | unknown | unknown | unverified | n/a | `0xa5609803b728737a62584af25523f9f23738e4b4` |
| unverified unclassified | UnnamedContract<br>`0x66f8c3733a0f4f151405f77e9bb727f2f7f62d55` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x6863b6f2e4e0e212cc43a460e6a9b49579a7ac8d` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x77f0d62ee095fe78e9ae966d2e04b6b9080f326a` | non_address_book | unknown | unknown | unverified | n/a | `0xa5609803b728737a62584af25523f9f23738e4b4` |
| unverified unclassified | UnnamedContract<br>`0x97af2c120f2b87c333a7ae4886387bd4e5a5b694` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0xa45618fd9681c1fec7acfbd92c197187bb96ef14` | non_address_book | unknown | unknown | unverified | n/a | `0xa5609803b728737a62584af25523f9f23738e4b4` |
| unverified unclassified | UnnamedContract<br>`0xc3406121fba68250af08c4933129e88ca84b81e8` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0xca3d6ffb1e6706c3c28bd0bd0fa8e925a5c99105` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0xe147d043d57e5df29be37d61b098eb84d03fddfa` | non_address_book | unknown | unknown | unverified | n/a | `0xa5609803b728737a62584af25523f9f23738e4b4` |
| unverified unclassified | UnnamedContract<br>`0xeee179e7107c3d685af4096eab06903f91106f83` | non_address_book | unknown | unknown | unverified | n/a | `0xa5609803b728737a62584af25523f9f23738e4b4` |
| unverified unclassified | UnnamedContract<br>`0xfe39ee38afa0a7e1e10e32979fba97a023e827b6` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x07c74fc530c0dc15d43aba96fc6942be578ed690` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x0872b8f8f7f3596b5ad14be5124e1673f83d768a` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x0c1174e911d1f13ef679cff15041cb01491af46b` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0x0c55915a3b4e1e7e0b44e99c48666bd488417d2b` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2` | non_address_book | unknown | unknown | unverified | n/a | `0xaa439fb33e55306c7c79841f20121b4c4139f3dc` |
| unverified unclassified | UnnamedContract<br>`0x46887a1f9885300f4185499ba48c248445eecab1` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x634132a190552c70e99b392e1356f1fbea72b6c7` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x66f8c3733a0f4f151405f77e9bb727f2f7f62d55` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x68368a26cfd2b2c28c4153a743e0b20f37d7123b` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x6863b6f2e4e0e212cc43a460e6a9b49579a7ac8d` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x7477d52db2904c1c7b47a1680687b999dc7e3cb0` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x8c01c59e6a0e0bd1fd6c8941afcf33c43bbaea85` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x97af2c120f2b87c333a7ae4886387bd4e5a5b694` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0x9b69c72b68b7a7e765335831d6234f593f818e6b` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0xa7482d25bc18fc64abee988922f4ce8d7f3dbe8b` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |
| unverified unclassified | UnnamedContract<br>`0xca3d6ffb1e6706c3c28bd0bd0fa8e925a5c99105` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0xcc850a7ed22d7f407e690ded76ce5effc1176d2d` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0xe08cb29e86a78ebd520e8f2e1ed0fcc6e0a24407` | non_address_book | unknown | unknown | unverified | n/a | `0x8111102f703843364273d877b662394c23ae90f9` |
| unverified unclassified | UnnamedContract<br>`0xe3ac86bf5d9ab5d9705b5e9187437e978397528b` | non_address_book | unknown | unknown | unverified | n/a | `0x3c5a430443b463241678d33d781dc69b349af7df` |

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
| NM0565-FINAL_Skate.pdf | ExecutorRegistry | ambiguous — not counted | 0xfe39ee… (alternative) `0xfe39ee38afa0a7e1e10e32979fba97a023e827b6` — deployed 2025-04-28 12:50:30+03 — liveness: live (current_address_book_code)<br>0xca3d6f… (alternative) `0xca3d6ffb1e6706c3c28bd0bd0fa8e925a5c99105` — deployed 2025-04-23 11:55:23+03 — liveness: live (current_address_book_code)<br>0xca3d6f… (alternative) `0xca3d6ffb1e6706c3c28bd0bd0fa8e925a5c99105` — deployed 2025-05-05 11:00:31+03 — liveness: live (current_address_book_code)<br>0xfe39ee… (alternative) `0xfe39ee38afa0a7e1e10e32979fba97a023e827b6` — deployed 2025-04-28 12:53:33+03 — liveness: live (current_address_book_code)<br>0xde827a… (alternative) `0xde827ab5e8c1867b5f5351862b033d10c6e23f54` — deployed 2025-05-29 09:22:52+03 — liveness: live (current_address_book_code)<br>0x5d2326… (alternative) `0x5d23264ac572c52454b37da765969f5511b7578e` — deployed 2025-05-29 10:36:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| NM0565-FINAL_Skate.pdf | Multicall | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | Utils | unmatched — not counted | — | listed in audited files table | no |
| NM0565-FINAL_Skate.pdf | ActionBox | ambiguous — not counted | 0x19c538… (alternative) `0x19c5382936b71864d249bbb3a7658764558b5896` — deployed 2025-05-29 10:38:00+03 — liveness: live (current_address_book_code)<br>0xad1472… (alternative) `0xad1472e9d1e267cd87567776f6dbeec6f05da82d` — deployed 2025-04-28 12:50:42+03 — liveness: live (current_address_book_code)<br>0xaccac7… (alternative) `0xaccac7d207b25a16283ec31e42b0d92b18d42004` — deployed 2025-05-29 09:23:14+03 — liveness: live (current_address_book_code)<br>0x6863b6… (alternative) `0x6863b6f2e4e0e212cc43a460e6a9b49579a7ac8d` — deployed 2025-05-05 11:00:44+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x6863b6f2e4e0e212cc43a460e6a9b49579a7ac8d` — deployed 2025-04-23 11:55:59+03 — liveness: live (current_address_book_code)<br>0xad1472… (alternative) `0xad1472e9d1e267cd87567776f6dbeec6f05da82d` — deployed 2025-04-28 12:53:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| NM0565-FINAL_Skate.pdf | SkateGateway | ambiguous — not counted | 0x97af2c… (alternative) `0x97af2c120f2b87c333a7ae4886387bd4e5a5b694` — deployed 2025-04-23 11:56:23+03 — liveness: live (current_address_book_code)<br>0x59964b… (alternative) `0x59964b3af53eb10c596b92b3d6aeafc038b3bd8d` — deployed 2025-04-28 12:54:05+03 — liveness: live (current_address_book_code)<br>0x59964b… (alternative) `0x59964b3af53eb10c596b92b3d6aeafc038b3bd8d` — deployed 2025-04-28 12:50:54+03 — liveness: live (current_address_book_code)<br>0xf730a7… (alternative) `0xf730a744a817266a48714bd4d2b959b3e221977f` — deployed 2025-05-29 09:23:34+03 — liveness: live (current_address_book_code)<br>0x97af2c… (alternative) `0x97af2c120f2b87c333a7ae4886387bd4e5a5b694` — deployed 2025-05-05 11:00:55+03 — liveness: live (current_address_book_code)<br>0xd719be… (alternative) `0xd719be20d005d274eed297c4865fd20199a13efa` — deployed 2025-05-29 10:40:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| NM0565-FINAL_Skate.pdf | PeripheryManager | ambiguous — not counted | 0x7477d5… (alternative) `0x7477d52db2904c1c7b47a1680687b999dc7e3cb0` — deployed 2025-05-05 11:01:13+03 — liveness: live (current_address_book_code)<br>0x68b5c8… (alternative) `0x68b5c82caf6e5bc540c8a6d435664db2303d98c3` — deployed 2025-04-28 12:54:25+03 — liveness: live (current_address_book_code)<br>0x68b5c8… (alternative) `0x68b5c82caf6e5bc540c8a6d435664db2303d98c3` — deployed 2025-04-28 12:51:12+03 — liveness: live (current_address_book_code)<br>0x94faae… (alternative) `0x94faae1e0cfc4717e2832f5559cfe662d698bf09` — deployed 2025-05-29 10:43:00+03 — liveness: live (current_address_book_code)<br>0x59964b… (alternative) `0x59964b3af53eb10c596b92b3d6aeafc038b3bd8d` — deployed 2025-05-29 09:24:40+03 — liveness: live (current_address_book_code)<br>0x7477d5… (alternative) `0x7477d52db2904c1c7b47a1680687b999dc7e3cb0` — deployed 2025-04-23 11:56:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| needs_review | 377 |

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
