# Agentic Audit Brief: Levinswap

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Levinswap (`levinswap`)
- Website: [https://levinswap.org/](https://levinswap.org/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: gnosis
- Contract surface: 76 unique implementations (76 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $105,837.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Levinswap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across gnosis. Structural roles: 1 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), supporting (1)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xb18d4f69627f8320619a696202ad2c430cef7c53`, chain 100)
- UniswapV2Factory (`0x965769c9cea8a7667246058504dcdcdb1e2975a5`, chain 100)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 74 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 76 unique; 74 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 65
- Unique implementations: 76
- Raw deployments: 76
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

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EternalStorageProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x17e64926d5f92251822f66736ebd405e03809034` | ⚠️ Unaudited |
| ForeignAMBErc677ToErc677 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0d03852adf8877574f2537663760bd2174046fba` | ⚠️ Unaudited |
| LevinBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6a5f3d605613bd3b6515d803f8f7dc617f4f6bb3` | ⚠️ Unaudited |
| LevinMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6d81dda24b7ff5b4a65039ff15d06a076e018e49` | ⚠️ Unaudited |
| LevinTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x061cc9d4bda1805eac1dc27979e58dc4c01304f2` | ⚠️ Unaudited |
| LevinToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1698cd22278ef6e7c0df45a8dea72edbea9e42aa` | ⚠️ Unaudited |
| MasterChefLVN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x37a714661820927b6d1a6bdbb7dfd2bc23f4a072` | ⚠️ Unaudited |
| MasterLevin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0f2b0e9db46c6b538e9276d2cf0c6ce8d515eca1` | ⚠️ Unaudited |
| Moloch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x78f96767012ae634c9a9554e7b46bcd29ae98cff` | ⚠️ Unaudited |
| UniswapV2Factory | unknown | project_anchor | own_supporting | 0 | gnosis | unit-388479 | `0x965769c9cea8a7667246058504dcdcdb1e2975a5` | ⚠️ Unaudited |
| UnnamedContract | periphery | project_anchor | own_supporting | 0 | gnosis | unit-388480 | `0xb18d4f69627f8320619a696202ad2c430cef7c53` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (65)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x049872e67fdbca4ca046c6cf46f44a16e429a1dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x051ed096aeb1b8a390b489efb592e37fe6bc9281` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0e6deda45992c8258fc56479ce93a3a29ebda183` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0ea04cc3cc9de7e9161b44e4cd73fe152850c2a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0eeacdb0dd96588711581c5f3173dd55841b8e91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x145b5826b54b62a204af74e3cb8c2fd7c9c70ff2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x18a283a6e487596424fbc9e65f06dc6296c800d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x18bf92f048aa5f6ee02de24bf60028f804fc09ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1b2cbab750ace0ffd9874f015ad4e751cee8bfee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x21f3343eaf82508c8088154c0954bd3f0f1b0240` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x25d2252ec30de7830b6825d6b4a08e70a581cd6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2b3fe933888c17137f4910d8c957363bb0d05042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2e59f41a985cff05a9699f85c836294a0793589d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x33d136c1501709ee020d7a8ca56d44dacb15e227` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4092a9420838fbc348daea9fc0fc1de98d7957fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x41c4723d7c1eb3844fa08c7db7dbe16e68c61896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4aa8b13d621d1ca49091271469d3b8a4eb9c2622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5101f90b7901f5cb79b860191729606e4b86491d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x514dee9040fa230884b497061d93f464e96736be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x595a869869995b5fe635db6d4076a48248b6ca9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5e6d7fff1b7bfb31006fe8039ffb0f28d73a4bf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x630eecfd1cf0e0083d5a6ccb0a56b38c05995e1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x668f1b5fd1b5d54755cf67eb539ed2db3ec5d5c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6801f280ef5d238c5a76e0d9b5569097ed35b0d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6c481f4a9ede7140f39c23fbb91c316d7d109b2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6d13e97f4573b0cadc695b97f8365c35940c35d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6da405f35687e8ed2fbfbebb17fc50eb735a7193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6ec511084bd4fe420c931b8ff00cb822254ba1c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x74911c8f86642a4175407f38c5cf8e229a9f759d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x76144aa44ebd3d19a079055576b3332adb7dd929` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x763076d2a5f698409d9344fcfb72ca0bd39b39d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x773a506e46a1aa98dde59b2cb3acb60eb654097b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x77a44df6fb2be7d33f648c550af949a9327b82d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x800aac912c70b5442e3cd11a0aba11e0d5fba9f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x862a7443289324e7048855942ea8430a282887da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x895bbe612f14516237b57c097b92bd4190c4efe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8e97d8ccb5ad4af5b9b094a333b3a7a29ef89d79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8f569d6e7cb6968687d0979c1aa13639dc8459c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x90144c05080964ba90cff5730932f4e02d0ccdd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x90aaef6443942730fbae414961735af9c8568cfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9a43720fae770fa0c5bea969d8bee87135473eb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9fb45846d8e41818b31ad92671f354b1dd900013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa33ee0715c3fd1580cdab8d1d503378afeade3c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa9f314c2ab1ccd8c8b28eb4809fb2451eff570e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xafa57fb9d8d63ff8124e17c1495c73bc3a7678d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb17177b6f464c1970d2ec6c351bc752856f73db6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbe20f60339b06db32c319d46cf3bc9bacc0694ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc13721582de2d5b75b4b12e77f8688ea07fd468a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xcb8e5897d9adf66443690f5c0d506f60ae5a6cd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd395c34981673de51f65e63f88728255223c116f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe2ba111fc41198f567c68faeb6e10eb0b92d49f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe2ec0f6a6a664cd00b0c51a3db529e1c8a69a620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe43daa98d97a68034bfc16fc0bdfada33fa04c6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe62d61d36bcdb9f1d8e6ccdfac36433b222f97fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe69fff2f3a01bfbc10709ee80896c7910d6b7931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xee5041345a208122eafdd6fff73d6ad730ec301e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xefeedba3047ed72eb3ccbe4d097bb319ffedd78a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf0eda286e0c7f974d1692a7aec7e1dc69c61a546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf1e03d7dff9271f352a1db3b9e8961810ecc3199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf4a8bd12a8a95aa7fcdf8adf959f41a2b8497504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf53a6849ee2aa50be890b05b92019f8386ee3e51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf546c8d33036b9498d5c1fb01195c51943f1988f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf97c5f139fb942b841f07bd6496f658b0d9de210` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfbc342d7ce8eda77c8981ab4cc0838e8928ad906` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfe148ddbfa0ab7b099d2054138bb96219e59875f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 65
- Live contracts: 0
- Unknown liveness contracts: 65
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=65

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x049872e67fdbca4ca046c6cf46f44a16e429a1dd` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x051ed096aeb1b8a390b489efb592e37fe6bc9281` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x0e6deda45992c8258fc56479ce93a3a29ebda183` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x0ea04cc3cc9de7e9161b44e4cd73fe152850c2a5` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x0eeacdb0dd96588711581c5f3173dd55841b8e91` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x145b5826b54b62a204af74e3cb8c2fd7c9c70ff2` | non_address_book | unknown | unknown | unverified | n/a | `0xcd3819de87468620d8317cfcc165fd4114aa5090` |
| unverified unclassified | UnnamedContract<br>`0x18a283a6e487596424fbc9e65f06dc6296c800d5` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x18bf92f048aa5f6ee02de24bf60028f804fc09ff` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x1b2cbab750ace0ffd9874f015ad4e751cee8bfee` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x21f3343eaf82508c8088154c0954bd3f0f1b0240` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x25d2252ec30de7830b6825d6b4a08e70a581cd6a` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x2b3fe933888c17137f4910d8c957363bb0d05042` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x2e59f41a985cff05a9699f85c836294a0793589d` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x33d136c1501709ee020d7a8ca56d44dacb15e227` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x4092a9420838fbc348daea9fc0fc1de98d7957fc` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x41c4723d7c1eb3844fa08c7db7dbe16e68c61896` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x4aa8b13d621d1ca49091271469d3b8a4eb9c2622` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x5101f90b7901f5cb79b860191729606e4b86491d` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x514dee9040fa230884b497061d93f464e96736be` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x595a869869995b5fe635db6d4076a48248b6ca9d` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x5e6d7fff1b7bfb31006fe8039ffb0f28d73a4bf9` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x630eecfd1cf0e0083d5a6ccb0a56b38c05995e1a` | non_address_book | unknown | unknown | unverified | n/a | `0xcd3819de87468620d8317cfcc165fd4114aa5090` |
| unverified unclassified | UnnamedContract<br>`0x668f1b5fd1b5d54755cf67eb539ed2db3ec5d5c5` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x6801f280ef5d238c5a76e0d9b5569097ed35b0d6` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x6c481f4a9ede7140f39c23fbb91c316d7d109b2f` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x6d13e97f4573b0cadc695b97f8365c35940c35d4` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x6da405f35687e8ed2fbfbebb17fc50eb735a7193` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x6ec511084bd4fe420c931b8ff00cb822254ba1c6` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x74911c8f86642a4175407f38c5cf8e229a9f759d` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x76144aa44ebd3d19a079055576b3332adb7dd929` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x763076d2a5f698409d9344fcfb72ca0bd39b39d7` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x773a506e46a1aa98dde59b2cb3acb60eb654097b` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x77a44df6fb2be7d33f648c550af949a9327b82d7` | non_address_book | unknown | unknown | unverified | n/a | `0xcd3819de87468620d8317cfcc165fd4114aa5090` |
| unverified unclassified | UnnamedContract<br>`0x800aac912c70b5442e3cd11a0aba11e0d5fba9f6` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x862a7443289324e7048855942ea8430a282887da` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x895bbe612f14516237b57c097b92bd4190c4efe8` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x8e97d8ccb5ad4af5b9b094a333b3a7a29ef89d79` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x8f569d6e7cb6968687d0979c1aa13639dc8459c3` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x90144c05080964ba90cff5730932f4e02d0ccdd0` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x90aaef6443942730fbae414961735af9c8568cfb` | non_address_book | unknown | unknown | unverified | n/a | `0xcd3819de87468620d8317cfcc165fd4114aa5090` |
| unverified unclassified | UnnamedContract<br>`0x9a43720fae770fa0c5bea969d8bee87135473eb2` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0x9fb45846d8e41818b31ad92671f354b1dd900013` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0xa33ee0715c3fd1580cdab8d1d503378afeade3c2` | non_address_book | unknown | unknown | unverified | n/a | `0xcd3819de87468620d8317cfcc165fd4114aa5090` |
| unverified unclassified | UnnamedContract<br>`0xa9f314c2ab1ccd8c8b28eb4809fb2451eff570e2` | non_address_book | unknown | unknown | unverified | n/a | `0xcd3819de87468620d8317cfcc165fd4114aa5090` |
| unverified unclassified | UnnamedContract<br>`0xafa57fb9d8d63ff8124e17c1495c73bc3a7678d0` | non_address_book | unknown | unknown | unverified | n/a | `0xcd3819de87468620d8317cfcc165fd4114aa5090` |
| unverified unclassified | UnnamedContract<br>`0xb17177b6f464c1970d2ec6c351bc752856f73db6` | non_address_book | unknown | unknown | unverified | n/a | `0xcd3819de87468620d8317cfcc165fd4114aa5090` |
| unverified unclassified | UnnamedContract<br>`0xbe20f60339b06db32c319d46cf3bc9bacc0694ab` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0xc13721582de2d5b75b4b12e77f8688ea07fd468a` | non_address_book | unknown | unknown | unverified | n/a | `0xcd3819de87468620d8317cfcc165fd4114aa5090` |
| unverified unclassified | UnnamedContract<br>`0xcb8e5897d9adf66443690f5c0d506f60ae5a6cd9` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0xd395c34981673de51f65e63f88728255223c116f` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0xe2ba111fc41198f567c68faeb6e10eb0b92d49f1` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0xe2ec0f6a6a664cd00b0c51a3db529e1c8a69a620` | non_address_book | unknown | unknown | unverified | n/a | `0xcd3819de87468620d8317cfcc165fd4114aa5090` |
| unverified unclassified | UnnamedContract<br>`0xe43daa98d97a68034bfc16fc0bdfada33fa04c6b` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0xe62d61d36bcdb9f1d8e6ccdfac36433b222f97fc` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0xe69fff2f3a01bfbc10709ee80896c7910d6b7931` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0xee5041345a208122eafdd6fff73d6ad730ec301e` | non_address_book | unknown | unknown | unverified | n/a | `0xcd3819de87468620d8317cfcc165fd4114aa5090` |
| unverified unclassified | UnnamedContract<br>`0xefeedba3047ed72eb3ccbe4d097bb319ffedd78a` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0xf0eda286e0c7f974d1692a7aec7e1dc69c61a546` | non_address_book | unknown | unknown | unverified | n/a | `0xcd3819de87468620d8317cfcc165fd4114aa5090` |
| unverified unclassified | UnnamedContract<br>`0xf1e03d7dff9271f352a1db3b9e8961810ecc3199` | non_address_book | unknown | unknown | unverified | n/a | `0xcd3819de87468620d8317cfcc165fd4114aa5090` |
| unverified unclassified | UnnamedContract<br>`0xf4a8bd12a8a95aa7fcdf8adf959f41a2b8497504` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0xf53a6849ee2aa50be890b05b92019f8386ee3e51` | non_address_book | unknown | unknown | unverified | n/a | `0x70c58b28f5e39da89bee0e6e8623e3faf51f0ed1` |
| unverified unclassified | UnnamedContract<br>`0xf546c8d33036b9498d5c1fb01195c51943f1988f` | non_address_book | unknown | unknown | unverified | n/a | `0xcd3819de87468620d8317cfcc165fd4114aa5090` |
| unverified unclassified | UnnamedContract<br>`0xf97c5f139fb942b841f07bd6496f658b0d9de210` | non_address_book | unknown | unknown | unverified | n/a | `0xcd3819de87468620d8317cfcc165fd4114aa5090` |
| unverified unclassified | UnnamedContract<br>`0xfbc342d7ce8eda77c8981ab4cc0838e8928ad906` | non_address_book | unknown | unknown | unverified | n/a | `0xcd3819de87468620d8317cfcc165fd4114aa5090` |
| unverified unclassified | UnnamedContract<br>`0xfe148ddbfa0ab7b099d2054138bb96219e59875f` | non_address_book | unknown | unknown | unverified | n/a | `0xcd3819de87468620d8317cfcc165fd4114aa5090` |

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
| native | 9 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 66 |

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
