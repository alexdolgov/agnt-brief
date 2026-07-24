# Agentic Audit Brief: Aurora Plus

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 15 (0 matched; 15 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Aurora Plus (`aurora-plus`)
- Website: [https://aurora.plus/](https://aurora.plus/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: aurora
- Contract surface: 75 unique implementations (75 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,495,590.88
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Aurora Plus. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across aurora. Structural roles: 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: abstract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xccc2b1ad21666a5847a804a73a41f904c4a4a0ec`, chain 1313161554)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 74 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 75 unique; 74 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 70
- Unique implementations: 75
- Raw deployments: 75
- Audits discovered: 15 (15 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 13 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x05702b754bdd27015a18faf2009d8781f641e48e` | ⚠️ Unaudited |
| EvmErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x18921f1e257038e538ba24d49fa6495c8b1617bc` | ⚠️ Unaudited |
| JetStakingV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x852f139dd31d2cdc669470880700037cb3790934` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x4c101a39ca2d3095db2507dadde736b8e6ed827a` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | aurora | unit-379832 | `0xccc2b1ad21666a5847a804a73a41f904c4a4a0ec` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (70)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x07e27499c54e6e9cbdcb9835bb28829bd57b7390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x0a45498ff2c50013182df413ef26ec925a3da190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x0b13e708d65afcaf42e28fd8a83a73d4e8457e35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x10bc61d01a5c5d23e462ab10c99e1c89ec24d36f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x1166eaa18a8d44b91175c8e554e01d58f262b88a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x142176c40bb98d4fcec14acf1451cc9567aeb4d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x16097bbee09b08c4ffec163f48b3c61718b2d650` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x1bc741235ec0ee86ad488fa49b69bb6c823ee7b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x1c3174f85e4263b533304834ad8bee3a2eeb0888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x1d1f82d8b8fc72f29a8c268285347563cb6cd8b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x1d7704efcc76cddd2bf922ca4c4f21fca161023b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x1eac44abd4eaac5d19a9ac9b67817efd835c84b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x2a571a9036219f97a3b4e8b3c94233b44525af09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x2afc245ef45bc1da8209a70a7d903d2b5ee2e551` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x3b3ee47db1e73a76dc7280275294611dba60bf18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x3b7e6954b276e91a1a7f998f80cd9a5e7b542a66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x42bc201b4ba78751f46cb936ce42f09c74afd748` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x479598549b3e5fcd74039086085b941c59fd9d92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x4988a896b1227218e4a686fde5eabdcabd91571f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x4af2358d9b6586d10834a2b654ebbf2e451e5703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x4bebf9e6e493882f6209b32e3a302fced6782949` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x4e834cdcc911605227eedddb89fad336ab9dc00a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x562cc8a24072f6366fbc85dbd91bab212bcd0efd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x572bc0a31b5ba18daa6a7bbe4502591ffc5be243` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x59d7e990c37990db8f142505b9e8b72674ba0d18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x6abe4cb1092fc6e7c895f3dd8d1f5f7b23f547a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x6b479fe866a19ca9b8b3d143049d1c07394a71f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x6ede987a51d7b4d3945e7a76af59ff2b968910a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x7821c773a12485b12a2b5b7bc451c3eb200986b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x80c9aaefc5992d760af9dc15a427b68ceaab6595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x82f1fbc1bfba4df0539b8178618bdfc1286f6ecf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x86a3fa37de2a7db14b34cabb4343169e47d5d745` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x8733d1509e604d6ebaf4d976f9b036621a447c22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x8828a5047d093f6354e3fe29ffcb2761300dc994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x885f8cf6e45bdd3fdcdc644efdcd0ac93880c781` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x8973c9ec7b79fe880697cdbca744892682764c37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x8bec47865ade3b172a928df8f990bc7f2a3b9f79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x8c0aadefdb0f2d5589b09ba906fd9ac4f82b6a82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x931babc268bea175d0ea93e63cec905f1b277485` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x94190d8ef039c670c6d6b9990142e0ce2a1e3178` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x950d3659119b101cd92d8371c7b68fdfc23787eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x9d510b767911b718e56d0317bb26269e2553fb29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xa5ad812ce99e0b0b8c44526128658d3aa1765229` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xa64514a8af3ff7366ad3d5daa5a548eefcef85e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xa779944ff0670647ccbef7ed90ed917db331c857` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xa95b4d575feef73858a6959a748e106fe78f9fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xaa01f5173116474f1d33c30e89c8dcd7f77bd884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xaac549e9f7dcfc34c926f9597e5146cc2acba0d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xabe9818c5fb5e751c4310be6f0f18c8d85f9bd7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xb12bfca5a55806aaf64e99521918a4bf0fc40802` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xb2f3a0db0ced564063d3e6190ba7590aae333d2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xb348f906335913c515c0dd452577b01f05289765` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xb59d0fdaf498182ff19c4e80c00ecfc4470926e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xc347bda069d857742b0f9c69dbe7a7d7f8fca8d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xc64a72a1d2d6b290bc3b48fb2baa5be13d35b2d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xd3b6d0fbc9a58fef36426831e189343370f9b032` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xd99c792e4591f252e25ad8c6addebe9a01d20e16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xdbce06ed12a6ea8daf3f17755b3971cd7df1c8ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xdc9be1ff012d3c6da818d136a3b2e5fdd4442f74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xdeacf0faa2b80af41470003b5f6cd113d47b4dcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xdf5f54180ad6796c7fad636229fc8b24bc239bb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xe3520349f477a5f6eb06107066048508498a291b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xe7363340a9648ebbc1382f5f6967e859022de895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xe7e76deb48249d9215c40f88c5d51c43b7df3ad2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xed625a3c1618ed35367668c95a3fa8b5ad59d488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xf075c896cbbb625e7911e284cd23ee19bdccf299` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xf1472bda6cca9304deb8dbfc95330a3d263e0337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xf4eb217ba2454613b15dbdea6e5f22276410e89e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xfb97cc2087f4f97457fb4e10fa5740dbeb31fabf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xfc7ed9a1ac31b8409cd3d60dcb9b5b49084c4cdc` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 70
- Live contracts: 0
- Unknown liveness contracts: 70
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=70

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x07e27499c54e6e9cbdcb9835bb28829bd57b7390` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x0a45498ff2c50013182df413ef26ec925a3da190` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x0b13e708d65afcaf42e28fd8a83a73d4e8457e35` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x10bc61d01a5c5d23e462ab10c99e1c89ec24d36f` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x1166eaa18a8d44b91175c8e554e01d58f262b88a` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x142176c40bb98d4fcec14acf1451cc9567aeb4d9` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x16097bbee09b08c4ffec163f48b3c61718b2d650` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x1bc741235ec0ee86ad488fa49b69bb6c823ee7b7` | non_address_book | unknown | unknown | unverified | n/a | `0x907fa89ba1bfe6eae8f8e970b7ba1184bd9259d1` |
| unverified unclassified | UnnamedContract<br>`0x1c3174f85e4263b533304834ad8bee3a2eeb0888` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x1d1f82d8b8fc72f29a8c268285347563cb6cd8b3` | non_address_book | unknown | unknown | unverified | n/a | `0x907fa89ba1bfe6eae8f8e970b7ba1184bd9259d1` |
| unverified unclassified | UnnamedContract<br>`0x1d7704efcc76cddd2bf922ca4c4f21fca161023b` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x1eac44abd4eaac5d19a9ac9b67817efd835c84b0` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x2a571a9036219f97a3b4e8b3c94233b44525af09` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x2afc245ef45bc1da8209a70a7d903d2b5ee2e551` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x3b3ee47db1e73a76dc7280275294611dba60bf18` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x3b7e6954b276e91a1a7f998f80cd9a5e7b542a66` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x42bc201b4ba78751f46cb936ce42f09c74afd748` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x479598549b3e5fcd74039086085b941c59fd9d92` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x4988a896b1227218e4a686fde5eabdcabd91571f` | non_address_book | unknown | unknown | unverified | n/a | `0x907fa89ba1bfe6eae8f8e970b7ba1184bd9259d1` |
| unverified unclassified | UnnamedContract<br>`0x4af2358d9b6586d10834a2b654ebbf2e451e5703` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x4bebf9e6e493882f6209b32e3a302fced6782949` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x4e834cdcc911605227eedddb89fad336ab9dc00a` | non_address_book | unknown | unknown | unverified | n/a | `0x907fa89ba1bfe6eae8f8e970b7ba1184bd9259d1` |
| unverified unclassified | UnnamedContract<br>`0x562cc8a24072f6366fbc85dbd91bab212bcd0efd` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x572bc0a31b5ba18daa6a7bbe4502591ffc5be243` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x59d7e990c37990db8f142505b9e8b72674ba0d18` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x6abe4cb1092fc6e7c895f3dd8d1f5f7b23f547a5` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x6b479fe866a19ca9b8b3d143049d1c07394a71f4` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x6ede987a51d7b4d3945e7a76af59ff2b968910a8` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x7821c773a12485b12a2b5b7bc451c3eb200986b1` | non_address_book | unknown | unknown | unverified | n/a | `0x907fa89ba1bfe6eae8f8e970b7ba1184bd9259d1` |
| unverified unclassified | UnnamedContract<br>`0x80c9aaefc5992d760af9dc15a427b68ceaab6595` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x82f1fbc1bfba4df0539b8178618bdfc1286f6ecf` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x86a3fa37de2a7db14b34cabb4343169e47d5d745` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x8733d1509e604d6ebaf4d976f9b036621a447c22` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x8828a5047d093f6354e3fe29ffcb2761300dc994` | non_address_book | unknown | unknown | unverified | n/a | `0x907fa89ba1bfe6eae8f8e970b7ba1184bd9259d1` |
| unverified unclassified | UnnamedContract<br>`0x885f8cf6e45bdd3fdcdc644efdcd0ac93880c781` | non_address_book | unknown | unknown | unverified | n/a | `0x907fa89ba1bfe6eae8f8e970b7ba1184bd9259d1` |
| unverified unclassified | UnnamedContract<br>`0x8973c9ec7b79fe880697cdbca744892682764c37` | non_address_book | unknown | unknown | unverified | n/a | `0x907fa89ba1bfe6eae8f8e970b7ba1184bd9259d1` |
| unverified unclassified | UnnamedContract<br>`0x8bec47865ade3b172a928df8f990bc7f2a3b9f79` | non_address_book | unknown | unknown | unverified | n/a | `0x907fa89ba1bfe6eae8f8e970b7ba1184bd9259d1` |
| unverified unclassified | UnnamedContract<br>`0x8c0aadefdb0f2d5589b09ba906fd9ac4f82b6a82` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x931babc268bea175d0ea93e63cec905f1b277485` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x94190d8ef039c670c6d6b9990142e0ce2a1e3178` | non_address_book | unknown | unknown | unverified | n/a | `0x907fa89ba1bfe6eae8f8e970b7ba1184bd9259d1` |
| unverified unclassified | UnnamedContract<br>`0x950d3659119b101cd92d8371c7b68fdfc23787eb` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0x9d510b767911b718e56d0317bb26269e2553fb29` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0xa5ad812ce99e0b0b8c44526128658d3aa1765229` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0xa64514a8af3ff7366ad3d5daa5a548eefcef85e0` | non_address_book | unknown | unknown | unverified | n/a | `0x907fa89ba1bfe6eae8f8e970b7ba1184bd9259d1` |
| unverified unclassified | UnnamedContract<br>`0xa779944ff0670647ccbef7ed90ed917db331c857` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0xa95b4d575feef73858a6959a748e106fe78f9fcc` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0xaa01f5173116474f1d33c30e89c8dcd7f77bd884` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0xaac549e9f7dcfc34c926f9597e5146cc2acba0d5` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0xabe9818c5fb5e751c4310be6f0f18c8d85f9bd7f` | non_address_book | unknown | unknown | unverified | n/a | `0x907fa89ba1bfe6eae8f8e970b7ba1184bd9259d1` |
| unverified unclassified | UnnamedContract<br>`0xb12bfca5a55806aaf64e99521918a4bf0fc40802` | non_address_book | unknown | unknown | unverified | n/a | `0x907fa89ba1bfe6eae8f8e970b7ba1184bd9259d1` |
| unverified unclassified | UnnamedContract<br>`0xb2f3a0db0ced564063d3e6190ba7590aae333d2f` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0xb348f906335913c515c0dd452577b01f05289765` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0xb59d0fdaf498182ff19c4e80c00ecfc4470926e2` | non_address_book | unknown | unknown | unverified | n/a | `0x907fa89ba1bfe6eae8f8e970b7ba1184bd9259d1` |
| unverified unclassified | UnnamedContract<br>`0xc347bda069d857742b0f9c69dbe7a7d7f8fca8d4` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0xc64a72a1d2d6b290bc3b48fb2baa5be13d35b2d5` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0xd3b6d0fbc9a58fef36426831e189343370f9b032` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0xd99c792e4591f252e25ad8c6addebe9a01d20e16` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0xdbce06ed12a6ea8daf3f17755b3971cd7df1c8ee` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0xdc9be1ff012d3c6da818d136a3b2e5fdd4442f74` | non_address_book | unknown | unknown | unverified | n/a | `0x907fa89ba1bfe6eae8f8e970b7ba1184bd9259d1` |
| unverified unclassified | UnnamedContract<br>`0xdeacf0faa2b80af41470003b5f6cd113d47b4dcd` | non_address_book | unknown | unknown | unverified | n/a | `0x907fa89ba1bfe6eae8f8e970b7ba1184bd9259d1` |
| unverified unclassified | UnnamedContract<br>`0xdf5f54180ad6796c7fad636229fc8b24bc239bb2` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0xe3520349f477a5f6eb06107066048508498a291b` | non_address_book | unknown | unknown | unverified | n/a | `0x907fa89ba1bfe6eae8f8e970b7ba1184bd9259d1` |
| unverified unclassified | UnnamedContract<br>`0xe7363340a9648ebbc1382f5f6967e859022de895` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0xe7e76deb48249d9215c40f88c5d51c43b7df3ad2` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0xed625a3c1618ed35367668c95a3fa8b5ad59d488` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0xf075c896cbbb625e7911e284cd23ee19bdccf299` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0xf1472bda6cca9304deb8dbfc95330a3d263e0337` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0xf4eb217ba2454613b15dbdea6e5f22276410e89e` | non_address_book | unknown | unknown | unverified | n/a | `0x907fa89ba1bfe6eae8f8e970b7ba1184bd9259d1` |
| unverified unclassified | UnnamedContract<br>`0xfb97cc2087f4f97457fb4e10fa5740dbeb31fabf` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |
| unverified unclassified | UnnamedContract<br>`0xfc7ed9a1ac31b8409cd3d60dcb9b5b49084c4cdc` | non_address_book | unknown | unknown | unverified | n/a | `0x61c8f8f192c345424a0836d722892231ce7a47b8` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://aurora.dev/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [January 2025 / HackenNEAR IntentsView audit report](https://www.datocms-assets.com/50156/1738583399-hacken_aurora-labs-limited-sca-aurora-labs-defuse-contracts-dec2024_p-2024-1418_2_20250127-10_50.pdf) | Hacken | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [May 2024 / AuditOneEngine/BridgeView audit report](https://www.datocms-assets.com/50156/1719854230-aurora-engine-audit-report.pdf) | Hacken | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 24 | high |
| [May 2024 / AuditOneForwarder/ControllerView audit report](https://www.datocms-assets.com/50156/1719853937-auroraf-c-audit-report.pdf) | Hacken | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [June 2023 / ZokyoNEAR FT ConnectorView audit report](https://www.datocms-assets.com/50156/1689941745-zokyo-near-ft-connector-audit.pdf) | Hacken | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [June 2023 / Sigma PrimeRainbow Bridge ETH2 ClientView audit report](https://www.datocms-assets.com/50156/1689149463-sigmaprime-rainbow-bridge-final-report-v2-2-june2023.pdf) | Sigma Prime | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [May 2023 / AuditOneFast BridgeView audit report](https://www.datocms-assets.com/50156/1686729017-auditone-fast-bridge-final-report-v3-may2023-1.pdf) | Hacken | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [March 2023 / HackenNEAR PluginsView audit report](https://www.datocms-assets.com/50156/1680101850-hacken-near-plugins-final-report-updated-march2023.pdf) | Hacken | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [March 2023 / AuditOneNEAR PluginsView audit report](https://www.datocms-assets.com/50156/1680590522-auditone-near-plugins-final-report-updated-march2023.pdf) | Hacken | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [January 2023 / HackenVote Token & Election ContractView audit report](https://www.datocms-assets.com/50156/1675403586-hacken-election-vote-contracts-final-report.pdf) | Hacken | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [October 2022 / BlaizeNEAR FT ConnectorView audit report](https://www.datocms-assets.com/50156/1676635327-blaize-near-ftconnector-reportv2-october-2022.pdf) | Hacken | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [June 2022 / Sigma PrimeRainbow BridgeView audit report](https://www.datocms-assets.com/50156/1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf) | Hacken | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [June 2022 / HackenStaking ContractView audit report](https://www.datocms-assets.com/50156/1659612404-hacken-staking-contract-final-report-08-06-2022.pdf) | Hacken | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [June 2022 / BlaizeStaking ContractView audit report](https://www.datocms-assets.com/50156/1660299853-blaize-staking-contract-final-report-8-6-2022.pdf) | Hacken | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [March 2022 / HalbornNEAR's Staking FarmView audit report](https://www.datocms-assets.com/50156/1659612370-aurora_farm_near_smart_contract_security_audit_report_halborn_final-2.pdf) | Halborn | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19461] DL audit link — no match: The provided text is a webpage listing multiple audit reports with links, but does not contain the full text of any single audit report. No contract names or scope details are present.
- [19462] January 2025 / HackenNEAR IntentsView audit report — no match: Scope section lists 6 main modules (bitmap, core, crypto, defuse, erc191, nep413) with many sub-files. Extracted top-level module names as they represent the contracts in scope.
- [19463] May 2024 / AuditOneEngine/BridgeView audit report — no match: Extracted contract names from scope section and findings. Audit date from finishing date.
- [19464] May 2024 / AuditOneForwarder/ControllerView audit report — no match: Extracted contracts from scope section and findings. Audit date from finishing date.
- [19465] June 2023 / ZokyoNEAR FT ConnectorView audit report — no match: Scope explicitly lists 'Bridge-common' and 'Token-locker' as contracts reviewed. Audit date from cover page.
- [19466] June 2023 / Sigma PrimeRainbow Bridge ETH2 ClientView audit report — no match: Extracted from the audit report title page and scope description. The report covers NEAR contracts and off-chain Rust programs for the Ethereum to NEAR side of the rainbow bridge.
- [19467] May 2023 / AuditOneFast BridgeView audit report — no match: Extracted 5 Rust source files from the 'Contracts in scope' table. The audit date is the finishing time (09-05-2023) from the project info table.
- [19468] March 2023 / HackenNEAR PluginsView audit report — no match: Extracted contract names from file paths listed in the scope sections for initial, second, and third reviews. The audit date is from the cover page: 'Date: March 27, 2023'.
- [19469] March 2023 / AuditOneNEAR PluginsView audit report — no match: Extracted 17 Rust source files from the 'Contracts in scope' section. Audit date is the finishing time (2023-03-14).
- [19470] January 2023 / HackenVote Token & Election ContractView audit report — no match: Four contracts in scope across three review rounds. Date from cover page: January 18, 2023.
- [19471] October 2022 / BlaizeNEAR FT ConnectorView audit report — no match: Scope explicitly lists 8 Solidity files and 5 Rust files. Audit date from cover page.
- [19472] June 2022 / Sigma PrimeRainbow BridgeView audit report — no match: Extracted contracts from scope description and detailed findings. Date from cover page: 'June, 2022' -> last day of month.
- [19473] June 2022 / HackenStaking ContractView audit report — no match: All contracts listed in the Scope section across three review phases. Date from cover page: June 8th, 2022.
- [19474] June 2022 / BlaizeStaking ContractView audit report — no match: Scope explicitly lists Treasury.sol, AdminControlled.sol, JetStakingV1.sol. Audit date from cover page: June 7th, 2022.
- [19475] March 2022 / HalbornNEAR's Staking FarmView audit report — no match: Scope section lists 'Staking Factory' and 'Staking Farm' as the contracts in scope. No file paths or addresses provided. Audit date is the end date of the engagement (March 25, 2022).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| January 2025 / HackenNEAR IntentsView audit report | bitmap | unmatched — not counted | — | listed in scope table | no |
| January 2025 / HackenNEAR IntentsView audit report | core | unmatched — not counted | — | listed in scope table | no |
| January 2025 / HackenNEAR IntentsView audit report | crypto | unmatched — not counted | — | listed in scope table | no |
| January 2025 / HackenNEAR IntentsView audit report | defuse | unmatched — not counted | — | listed in scope table | no |
| January 2025 / HackenNEAR IntentsView audit report | erc191 | unmatched — not counted | — | listed in scope table | no |
| January 2025 / HackenNEAR IntentsView audit report | nep413 | unmatched — not counted | — | listed in scope table | no |
| May 2024 / AuditOneEngine/BridgeView audit report | admin_controlled | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | deposit_event | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | errors | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | external | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | fungible_token | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | internal | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | mod | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | silo | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | whitelist | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | admin | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | evm_transaction | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | xcc | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | accounting | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | engine | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | hashchain | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | lib | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | map | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | pausable | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | prelude | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | state | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | connector | unmatched — not counted | — | mentioned in findings | no |
| May 2024 / AuditOneEngine/BridgeView audit report | EthConnectorContract | unmatched — not counted | — | mentioned in findings | no |
| May 2024 / AuditOneEngine/BridgeView audit report | EngineFungibleToken | unmatched — not counted | — | mentioned in findings | no |
| May 2024 / AuditOneEngine/BridgeView audit report | EngineStorageManagement | unmatched — not counted | — | mentioned in findings | no |
| May 2024 / AuditOneForwarder/ControllerView audit report | FeesCalculator | unmatched — not counted | — | mentioned in findings #1, #3, #6, #10, #16 | no |
| May 2024 / AuditOneForwarder/ControllerView audit report | AuroraForwarderFactory | unmatched — not counted | — | mentioned in findings #7, #11, #13, #17 | no |
| May 2024 / AuditOneForwarder/ControllerView audit report | Forwarder | unmatched — not counted | — | mentioned in findings #2, #4, #12, #14 | no |
| May 2024 / AuditOneForwarder/ControllerView audit report | Controller | unmatched — not counted | — | listed in scope under 'Controller contracts path' | no |
| June 2023 / ZokyoNEAR FT ConnectorView audit report | Bridge-common | unmatched — not counted | — | listed in scope | no |
| June 2023 / ZokyoNEAR FT ConnectorView audit report | Token-locker | unmatched — not counted | — | listed in scope | no |
| June 2023 / Sigma PrimeRainbow Bridge ETH2 ClientView audit report | eth2-client | unmatched — not counted | — | listed in scope as NEAR contract | no |
| June 2023 / Sigma PrimeRainbow Bridge ETH2 ClientView audit report | eth2-validator | unmatched — not counted | — | listed in scope as off-chain validator | no |
| June 2023 / Sigma PrimeRainbow Bridge ETH2 ClientView audit report | eth2_to_near_relay | unmatched — not counted | — | listed in scope as relayer component | no |
| June 2023 / Sigma PrimeRainbow Bridge ETH2 ClientView audit report | contract_wrapper | unmatched — not counted | — | mentioned in finding RBE2-15 as a package that does not compile | no |
| May 2023 / AuditOneFast BridgeView audit report | bridge | unmatched — not counted | — | listed in scope table | no |
| May 2023 / AuditOneFast BridgeView audit report | lp_relayer | unmatched — not counted | — | listed in scope table | no |
| May 2023 / AuditOneFast BridgeView audit report | whitelist | unmatched — not counted | — | listed in scope table | no |
| May 2023 / AuditOneFast BridgeView audit report | ft | unmatched — not counted | — | listed in scope table | no |
| May 2023 / AuditOneFast BridgeView audit report | utils | unmatched — not counted | — | listed in scope table | no |
| March 2023 / HackenNEAR PluginsView audit report | access_control_role | unmatched — not counted | — | listed in scope | no |
| March 2023 / HackenNEAR PluginsView audit report | access_controllable | unmatched — not counted | — | listed in scope | no |
| March 2023 / HackenNEAR PluginsView audit report | full_access_key_fallback | unmatched — not counted | — | listed in scope | no |
| March 2023 / HackenNEAR PluginsView audit report | lib | unmatched — not counted | — | listed in scope | no |
| March 2023 / HackenNEAR PluginsView audit report | ownable | unmatched — not counted | — | listed in scope | no |
| March 2023 / HackenNEAR PluginsView audit report | pausable | unmatched — not counted | — | listed in scope | no |
| March 2023 / HackenNEAR PluginsView audit report | upgradable | unmatched — not counted | — | listed in scope | no |
| March 2023 / HackenNEAR PluginsView audit report | utils | unmatched — not counted | — | listed in scope | no |
| March 2023 / HackenNEAR PluginsView audit report | events | unmatched — not counted | — | listed in scope | no |
| March 2023 / HackenNEAR PluginsView audit report | test_utils | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | access_control_role | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | access_controllable | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | events | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | full_access_key_fallback | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | lib | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | ownable | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | pausable | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | test_utils | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | upgradable | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | access_control_role_derive | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | access_controllable_derive | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | full_access_key_fallback_derive | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | lib_derive | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | ownable_derive | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | pausable_derive | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | utils_derive | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | upgradable_derive | unmatched — not counted | — | listed in scope | no |
| January 2023 / HackenVote Token & Election ContractView audit report | AuroraVoteTokenV1 | unmatched — not counted | — | listed in scope | no |
| January 2023 / HackenVote Token & Election ContractView audit report | ERC20VotesUpgradeable | unmatched — not counted | — | listed in scope | no |
| January 2023 / HackenVote Token & Election ContractView audit report | AdminControlled | unmatched — not counted | — | listed in scope | no |
| January 2023 / HackenVote Token & Election ContractView audit report | ElectionManager | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | BridgeToken | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | BridgeTokenFactory | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | BridgeTokenProxy | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | ProofConsumer | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | ResultsDecoder | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | ERC20Locker | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | Locker | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | ERC20MetadataLogger | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | bridge-common/src/lib.rs | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | bridge-common/src/prover.rs | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | bridge-common/src/result_types.rs | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | token-locker/src/lib.rs | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | token-locker/src/token_receiver.rs | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | token-locker/src/unlock_event.rs | unmatched — not counted | — | listed in scope | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | w-near | unmatched — not counted | — | listed in scope as w-near contracts | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | FungibleToken | unmatched — not counted | — | listed in scope as FungibleToken standard library | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | EthOnNearClient | unmatched — not counted | — | described in overview as part of Rainbow Bridge | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | NearOnEthClient | unmatched — not counted | — | described in overview as part of Rainbow Bridge | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | AdminControlled | unmatched — not counted | — | explicitly named in finding NSS-08 | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | NearBridge | unmatched — not counted | — | explicitly named in findings NSS-09, NSS-10, NSS-13 | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | NearProver | unmatched — not counted | — | mentioned in finding NSS-13 | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | EthCustodian | unmatched — not counted | — | explicitly named in findings NSS-06, NSS-07, NSS-13 | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | ERC20Locker | unmatched — not counted | — | explicitly named in findings NSS-06, NSS-07 | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | eNear | unmatched — not counted | — | mentioned in finding NSS-05 resolution | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | ProofKeeper | unmatched — not counted | — | mentioned in finding NSS-07 | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | ERC20MetadataLogger | unmatched — not counted | — | explicitly named in finding NSS-11 | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | ProofDecoder | unmatched — not counted | — | mentioned in finding NSS-13 | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | Borsh | unmatched — not counted | — | explicitly named in finding NSS-05 | no |
| June 2022 / HackenStaking ContractView audit report | AdminControlled | unmatched — not counted | — | listed in scope for all three reviews | no |
| June 2022 / HackenStaking ContractView audit report | DelegateCallGuard | unmatched — not counted | — | listed in scope for initial review | no |
| June 2022 / HackenStaking ContractView audit report | ITreasury | unmatched — not counted | — | listed in scope for all three reviews | no |
| June 2022 / HackenStaking ContractView audit report | JetStakingV1 | unmatched — not counted | — | listed in scope for all three reviews | no |
| June 2022 / HackenStaking ContractView audit report | Treasury | unmatched — not counted | — | listed in scope for all three reviews | no |
| June 2022 / BlaizeStaking ContractView audit report | AdminControlled | unmatched — not counted | — | listed in scope | no |
| June 2022 / BlaizeStaking ContractView audit report | JetStakingV1 | unmatched — not counted | — | listed in scope | no |
| June 2022 / BlaizeStaking ContractView audit report | Treasury | unmatched — not counted | — | listed in scope | no |
| March 2022 / HalbornNEAR's Staking FarmView audit report | StakingFactory | unmatched — not counted | — | listed in scope as 'Staking Factory' | no |
| March 2022 / HalbornNEAR's Staking FarmView audit report | StakingFarm | unmatched — not counted | — | listed in scope as 'Staking Farm' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 71 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 15
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 114 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=14, low=1
- Match method counts: n/a

Zero-match audit list:

- [19461] DL audit link
- [19462] January 2025 / HackenNEAR IntentsView audit report
- [19463] May 2024 / AuditOneEngine/BridgeView audit report
- [19464] May 2024 / AuditOneForwarder/ControllerView audit report
- [19465] June 2023 / ZokyoNEAR FT ConnectorView audit report
- [19466] June 2023 / Sigma PrimeRainbow Bridge ETH2 ClientView audit report
- [19467] May 2023 / AuditOneFast BridgeView audit report
- [19468] March 2023 / HackenNEAR PluginsView audit report
- [19469] March 2023 / AuditOneNEAR PluginsView audit report
- [19470] January 2023 / HackenVote Token & Election ContractView audit report
- [19471] October 2022 / BlaizeNEAR FT ConnectorView audit report
- [19472] June 2022 / Sigma PrimeRainbow BridgeView audit report
- [19473] June 2022 / HackenStaking ContractView audit report
- [19474] June 2022 / BlaizeStaking ContractView audit report
- [19475] March 2022 / HalbornNEAR's Staking FarmView audit report

Fork inheritance lineage and inherited audits are included when available.
