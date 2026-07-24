# Agentic Audit Brief: PulseChain Bridge

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: PulseChain Bridge (`pulsechain-bridge`)
- Website: [https://bridge.pulsechain.com](https://bridge.pulsechain.com)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: chain-369, chain-943, ethereum, sepolia
- Contract surface: 237 unique implementations (240 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $47,419,692.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for PulseChain Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across chain-369, chain-943, ethereum, sepolia. Structural roles: 2 core, 2 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (2), unclassified (2)
- Contract kinds: contract (4)
- Detected standards: erc20 (2)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 4; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 25 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 212 discovered implementations shown in the inventory but excluded from coverage (12 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 227
- Unique implementations: 237
- Raw deployments: 240
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

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BridgeValidators | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2fa878ab3f87cc1c9737fc071108f904c0b0c95d` | ⚠️ Unaudited |
| BridgeValidators | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-251962 | `0x95b303987a60c71504d99aa1b13b4da07b0790ab` | ⚠️ Unaudited |
| ForeignAMB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xd0764fae29e0a6a96ff685f71cfc685456d5636c`; ethereum `0xe98699957d3504acd57fff861e4b77b57eb02467` | ⚠️ Unaudited |
| ForeignOmnibridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1715a3e4a142d8b698131108995174f37aeba10d`; ethereum `0xb7df1e00ae030e966e635ede273625240546b873` | ⚠️ Unaudited |
| ForeignOmnibridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb825fd1e322061aac2ac8b3cde4ce18b93fae276`; ethereum `0xe20e337db2a00b1c37139c873b92a0aad3f468bf` | ⚠️ Unaudited |
| HEX | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x2b591e99afe9f32eaa6214f7b7629768c40eeb39` | ⚠️ Unaudited |
| PermittableToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-251963 | `0xa1077a294dde1b09bb078844df40758a5d0f9a27` | ⚠️ Unaudited |
| PermittableToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-251964 | `0xa882606494d86804b5514e07e6bd2d6a6ee6d68a` | ⚠️ Unaudited |
| TokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98bf93ebf5c380c0e6ae8e192a7e2ae08edacc02` | ⚠️ Unaudited |
| WETHOmnibridgeRouter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ac4ae65b3656e26dc4e0e69108b392283350f55` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (227)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x4ac429a7cdf2b533e2c0cff1b017f2c344e864e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d1ecabec994d290c666a57b13a31d55bc526dbe` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x6b175474e89094c44da98b954eedeac495271d0f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x97ac4a2439a47c07ad535bb1188c989dae755341` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf868da5a5d5f799cee2205d8fd1f5ad2c4a28499` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | chain-369 | n/a | `0x02dcdd04e3f455d838cd1249292c58f3b79e3c3c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | chain-369 | n/a | `0x0cb6f5a34ad42ec934882a05265a7d5f59b51a2f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | chain-369 | n/a | `0x15d38573d2feeb82e7ad5187ab8c1d52810b1f07` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | chain-369 | n/a | `0x57fde0a71132198bbec939b98976993d8d89d225` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-369 | n/a | `0x70499adebb11efd915e3b69e700c331778628707` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-369 | n/a | `0x95b303987a60c71504d99aa1b13b4da07b0790ab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-369 | n/a | `0xa1077a294dde1b09bb078844df40758a5d0f9a27` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | chain-369 | n/a | `0xb17d901469b9208b17d916112988a3fed19b5ca1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | chain-369 | n/a | `0xefd766ccb38eaf1dfd701853bfce31359239f305` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | chain-943 | n/a | `0x6b175474e89094c44da98b954eedeac495271d0f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | chain-943 | n/a | `0x826e4e896cc2f5b371cd7bb0bd929db3e3db67c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x003317012c18e306b616a549f70bcbdd1a62b15b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x00fdb2f338a53a095db3494290660e5d3938ab0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x02255c725097a8d0dd6186932d2ff2b95de81218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x02b67237793b86f6a0c1ff05fea5f1861da01c27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0479ac0089742491bbf09993f3f1e422580e877a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x05421ab318005d570d34bd7e414361818a4ca9f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x05c686049af388659aa5bb2ecca1f9bf333e153a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x05edf70a228090db408d30926642efb34ff5bd7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0621837a803dbad81f21c0d405d5a6d62515e61c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0746d79310d08df2b9e72ebd101a47e520b34b67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0a728292de1afd8c4d809df7685db15eb164922a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0cb1efd7593a6fcc4df0528e29481d693d633881` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0cdc269c1154e1a4cb2e10d24e642fddc03b3b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0d203b3ae15268dfe96e61c0681b7ceb0aab8a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0ec0e691aa6fa121fd777c5b0f46a450d1887771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x103a3bf1abe18c417fba0314ed1db30aaa9dce9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1161961f3709c853419ea4fa610fd971a12c3e47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1278b15341638c1cd9ad77c6c00e8b0568605275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x13bed2fd9f91e80b8dcec3eba6e6ae4964cf90a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x199de97cc40823ebfeb596441e0fb90519f8cbec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x19be3e54cc24ee51eda810e2b50544a3ce4d14ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1ecb61de8add9fcd86cd939681a29404bb040d57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1ee5c9ce826f44bfdf7f559f3640a9a6135ab128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x204b882dca46e0a57658ac23107a7ed801fcdf68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x21f238fb8f43370d297b963233aa8a171d8248b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x244df707e7304f86dc526309d8c212a4d5d4b458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x24ffafc6a06f223e30051246fa5e445ffddf2cc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x263c8f7476d5eca185cf1b8a75a320a520f958b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x270dc6efe713105919abb3ec749adb91f40848f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x27fc1160f24b06f2da494161b0a1134f274e443a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2b94315c8d9bc6cadc94de6e1286c5e7b6bfa758` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2c3bfd0909a721b2d0edb6bfa80a18eb44adf7cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2c89ec43e4f5cd7973fb491b30dd41c759f09d5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2e07201532b94bf212ddf377ecc191ecd2097ba0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2e9e20abf85fc06ce938d1788ab656c12152fa87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2ea5c89465d3e5d7c99881da024f609af0b61c91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2f09114a1f384d3e8831d3e4eb63739735cb52b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x30eab27194587fd6803ffef9b0b784719f546242` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3164ce6bec0b092f6ceeab92e8605ddbb2444593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x320a6d3e925233b0185052de0148091eeb3fcadf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3257a64ae3a7ace0d559f2cf634b622a5ab2f713` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3268012648c2ac76801b04bef224f2b69b48a458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3317df96f1878a99e3d275b7346420895f4c90bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3367dfa11e3148a07c2da773e1f65b155b0abe56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x34ae56a70ce7a2b7924010d4822bf57ac8ee2034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x35c06f2759b64ddaae44702ceb83b40a2735eb01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x36cffdb5113e5cb4e71e88348ece78271959e433` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x37cd1d1364f2b8dfb95aaa11c4e4a2a71505f549` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x394c4d634c2f85ac6c7de5e89a13bb2026050c1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x39aa00936575d69b98631ca763d82bab0e36f903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3b53e9270d0210214b9c242eb16c252474c5be01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3d01f4a61cc1c98e1fec5b318216f1a1f08f93f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3df534cbf11af7a367d0b8684348ea6d0b3db257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4142529cefcbd3a5484c325fae8faf5931b756b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4284efbbc0970fb22fdedaa6ea6344736c5d7ae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x42a3396b088a040cb10b35d7dba5a91d1cfd730f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x43acd39ce98d62f558a117644f401dfebdc3b30a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x45032d623459517d214745e0e352c9aa2c015736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x464f5bb823ada29b41ba19616ac71da2f4a0e251` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x46b33063db87c605bfa2b117937d6b968a7f9f58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4754a01cf5b6238cb2b6a9e0ceac028376105011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4820c9ab33aeaae86ce029f14524e4b951c06bca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4822918d1da87477b9a42e6dff65f7b1edb945fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x490350f353291db2d159a4a2fb14dd595aa4294f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4b4c001c72ecbc525b311a75c0b4589546b05b9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4b5011c89f3e727b71e113334e36ff70972a969f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4dc535d6e34aa4c3f90347667a7a8ad0535e2371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4e33d534fb1699f52a6d4c0bb2cf5fdc85d90bdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4ecb9e4cb7069806fe3368b4b67c2661df98a0e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4fc417a3d856e9ec17799be1d5125c305008720a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x500a2da43ce1d5e9943226dec71de135e3f0d525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x500fe909ca959f4c8379f8c918327de75499de77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5077bb4ee7a2cdd24bee52c8d77910b6fbf5e3c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x52eac61df5f7a508a48925f09c3d44936a8edbac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x53844f9577c2334e541aec7df7174ece5df1fcf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x53b515218ba1e06405edd75cb2ab2abfde47d4ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x546e37daa15cdb82fd1a717e5deea4af08d4349a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5594908801a12a423a04f25e472885281a53ab90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5899a34e101b823cc9325da861ae6ed7fdf48ea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x58f66fd7ddda63a0ba34d0ec4d861c860e26ae19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x598fb5c93ade43d4e1549bc92f341739aee8a807` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5b0aeed913b8962706839d44b6a140e4746b15e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5b3d18ae6e74038806ce5fa3b699cbeaafc6881b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5cd3941cdccb0b2936d51746f894567775096e5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5d074645a90fee3e4ca6137981cad00f04ac084a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5e238ef968467cf443ef5ecb683b76c5a04a0421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x615da713eb55dee4c8dcff15a4e5515646ea884a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6181d320f91c77b0cf06d5a3e1dbabc4c4139a8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x632527a3d8056b293f82cd7f657dbad9b37b9a4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x636f6407b90661b73b1c0f7e24f4c79f624d0738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x63881e36871e52480aac509695154f3357ab57ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x662cb1584a65e6300e66619a33d1244bd7aa2575` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x66d1aaab331fa1f80a6b005931f882fa6997c300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x67e190aaf39b9e05b162a78ab94189446077c694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6b73fcc4ce64a1f3205794c53969a4c506357135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6efafcb715f385c71d8af763e8478feea6fadf63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6f6ee49869b72c6204ed35b3984de7ffb0c43cf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6fa50575144d99ed3ce095090906742690722bc8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x70499adebb11efd915e3b69e700c331778628707` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x70874a74fb179b76c59887d6e35148538f083f6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7154947677af641a4802e2bb844a4b8cbc068f20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x73910cf7c43f2cd1421227c11da642992749354f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x73bcd5aa043c0ff70005697ee6cb2cdc4b740261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x73e4a44254d10768c239bc379aa04187950f4c00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7454ac60131be41d533e8abc99e658c9227daf91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x75ae397006ddeef7ec6f70cac46e652539886f38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x78c38e4536a39a78910fea9d7c80fdd0aaf89661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7a234bab64336cd5930c63c7da1cbbc5563bfb43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7a69084a67e33495b5c3310a467c9d4d4f5ad2d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7b56e5b66c8d701e414f7a9cedcb651544cd3846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7b79995e5f793a07bc00c21412e50ecae098e7f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7cde48b37628b77e280736a59d513d9b3e18230e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7d7ef8f1b4c526cbaa34b846f57d48ee49141cbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7e5eb29f1e0b02a52e6869a974fabf8c5a2435e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7f2698714842f59e89f1eb8b1b70ccb053b5a176` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x805e47a934fed65696b53e689e5c9df2e2bc91c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x80c5905fd9f91f377180a09d14f68b8659bd90c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x824b10d83af97d29b76424fd17c0ab2f163dda7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x84309b473bf2bd5dc914b20b3d330d0604f3f686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x84c035699c46e42d3949d9289196d6c1daf9d474` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x853121662b031c318b2f18636dea6cd82f7a7d21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x85db5e1b9c3cb31250f5ad6a99591943aba9de8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x87422e9c3d27be26748b2ae22fecbce1ebc4318d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8a810ea8b121d08342e9e7696f4a9915cbe494b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8c0d6d0f0d8efeaf8cf2df51f86da4d19f33a5fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8cb585f212406b9898ebab4cd10993839e9b25bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8de3910d217f902ed17931c92c9bf8687f985af9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8eab5a4ff074e8f5ae3a4e8edd9df6fbd880c07a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x906af6149cb6cba78f9fc268e9f96fa7f7bc1d42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9162fd00361f29f982062604c71d23b0226d530b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x916b5a70bd6fe32c00c55f9e0d427ccb399f54d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x923bac79bd54a0e9e8b80525fb0887aa1dc792b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x93c5311b9dd1b039de706dddd7916cd596465701` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x947b87288eeffa0cd2594eaf89311477d375f5ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9637a0c1f4cdc627e8111431af879a5ed79c3ecf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x98cec103ae046a31420508eabe1494e71c3ee7a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9a94e803889804934b741a3e0caa9bb1aab8f809` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9aa15dfb070f237b8adf6adbbeceebcb1cef0631` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9b938d338e7dbbfb56f802c74711fbc142d2b13d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x9ba8697a0913bb0b778068e81520baa97d200b9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9e6a12d7af6c077c70ccc17215c2bfd76d9f44b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9ec2b91023004c625b06463df306e56413546419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9ffcc54767b08c3fd72203f38ec4dd27883c36e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa254a034d1c66352648ada30aa2c0c34ceab1672` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa25a2195e6e257a408dcaf4f8e7ffc390488996f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa2f0482a259d787ac084268b93e40b022eb8a374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa5ba34220763f2bc2886c59e9ce3be0852790ab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa71cb154e9e46739e989bc557c3afc4f516e9c97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa746810966fd2c03bf60fba39e191ecb3e8e60f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa89d6a2e7f059df2d35a4597e148d7c6d82fb312` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa8d87c21c76e35a055723266dfe56a1b33cbc0eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaa0ab9911656c010dc2ee62b7040330e2080b593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xab0a40b3c0a0f0c4f16ff8aecf42065ad5dade97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xabef3030595ba887083bb7eb4c09b002fd7d4b04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xac612fc52b9714d0e5c335ef0331e88f8d524e87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xacd8bbb24f0f4755dbc35b9f7e0ac4d2fc5717b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xad055148c4ef280c419d35ed76559e2316f199db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaf35f5a2f35136d9d8b19c7730ad99d19c637de4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb242aa8a863cfce9fcba2b9a6b00b4cd62343f27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb5a15f770df6774cc6d440a3d14561e82ead1f88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb635be96898552bbe80043239c57ea864223fdc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbd0f7c749b6eb88fe440aac92f8356fd6386ba79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbdc1e888cff304b4433bac3f5377fbbbdfcc8ae4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbdcd2bc61ba8246e1139b2f88caa64da7e5ceb1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbee66a4070455096b4977ebdceee2350c74805be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbf4acb9702581743e0e1270ffbda20445754b414` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc0306b0cf62a88fd11abc769d96284b76a387f14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc1b06bc42cb6476d99847e4d469d9c549c1322d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc29d987421bf6f3b22a4a44f5b6d1776c20f9d93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc5281eb151633f7613d6ad9f77edf91195653dc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc730af7853b2d9e93c685887fb65b9ca72a5953c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc7a844baa16c5787e00b9b598511360b4f739418` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc933634bed72c96a937f15daf4312b48c70cd747` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc9d8fc1e04ebaeeacfe3d4a9c4845b4d6c3c2c80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcaed39a5172cf6ecb93e919651373403b12c4d96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcc45b50d67be1b2ce2dac5a4f4322dbff5d45b7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcd1328f6b072979e74b5a7798d548ef6bd610472` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcd288420331299dc53f306401e346ef878989cc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcfe93ee0d05a5226feb749cc790c97dfb182a135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd164e9c4822eddad0828103784859cc7c3d48351` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd21b590857409b7d12821b8dc6bf57903d6879e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd2ba55dbfa8e06d847ac0b6d57e8f5daf1c79f12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd3231c4df0e533b7f5ef7eda548435bc7c1a96eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd4b0013e98f708c6e40f318810cb2fa45a357a51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdae9dd3d1a52cfce9d5f2fac7fde164d500e50f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdafc6e1f3f8233d93a976b2d655cf2573a6d7c95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdc536f5e4441ca5c2ab791a3ab2d6375181034f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xddd10fba944bd9d3216c17bc5276005ee6c6ff6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xddea477c80d44f53a1764b9f580694981b62c5d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xde484f87bba6362905022c3b85d4bf7e495930ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe025a123809701ba988d368ec9f14ba674a110ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe159207c21a7a4512cc4c3a8bcd58beab9b4e381` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe1eb1dec0ddaca51de3443f9d646d0ba559e2bb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe2542c8883feebd60e1a54d954c9e7ef8e4cca29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe29d5ef654f5d7beb11a546f8e07429671f4a86f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xea81fdaa258d89c09ac21c354915ad7e26925114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xebb1888545d8f0006213177d2d9abe4447c0933b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xed54183d826051f53c31325a23beffff0af61302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xefbfcfca22d81f86d39b75e184724a8d99dfaec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf1e6f4cd66eede5758345c7b1bd6adc393e50778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf36906d930e34c1b2c8bd0c1e6e811d523bb410e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf3c93bb9a1a8f67db48094e897f1c743e6c12117` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf4541e33f12ae980e85f48460f0e98083a9d59ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf6417be6095f90ebfd46e19975a59041bdf84fd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf645dac4b7ef3afba8f84419802cda50dee46745` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xff533d1a85c296d1c2065ec85d1dec9847a85578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xffb5cef3ac9ff6cf63a58f859803884bac25d7f0` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 214
- Live contracts: 0
- Unknown liveness contracts: 214
- Source-verified contracts: 9
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: contamination review=4, exact address book overlap=1, source verified unclassified=4, unverified unclassified=205

Showing first 200 of 214 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | contamination review | EternalStorageProxy<br>`0x1715a3e4a142d8b698131108995174f37aeba10d` | non_address_book | unknown | unknown | verified | n/a | `0x30e22ab6e6b576e6a9c5dd73191237a9a5c72539` |
| ethereum | contamination review | EternalStorageProxy<br>`0x2fa878ab3f87cc1c9737fc071108f904c0b0c95d` | non_address_book | unknown | unknown | verified | n/a | `0x30e22ab6e6b576e6a9c5dd73191237a9a5c72539` |
| ethereum | contamination review | EternalStorageProxy<br>`0xd0764fae29e0a6a96ff685f71cfc685456d5636c` | non_address_book | unknown | unknown | verified | n/a | `0x30e22ab6e6b576e6a9c5dd73191237a9a5c72539` |
| ethereum | contamination review | TokenFactory<br>`0x98bf93ebf5c380c0e6ae8e192a7e2ae08edacc02` | non_address_book | unknown | unknown | verified | n/a | `0x30e22ab6e6b576e6a9c5dd73191237a9a5c72539` |
| ethereum | exact address book overlap | BridgeValidators<br>`0x95b303987a60c71504d99aa1b13b4da07b0790ab` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x30e22ab6e6b576e6a9c5dd73191237a9a5c72539` |
| ethereum | source verified unclassified | EternalStorageProxy<br>`0xe20e337db2a00b1c37139c873b92a0aad3f468bf` | non_address_book | unknown | unknown | verified | n/a | `0x30e22ab6e6b576e6a9c5dd73191237a9a5c72539` |
| ethereum | source verified unclassified | ForeignAMB<br>`0xe98699957d3504acd57fff861e4b77b57eb02467` | non_address_book | unknown | unknown | verified | n/a | `0x30e22ab6e6b576e6a9c5dd73191237a9a5c72539` |
| ethereum | source verified unclassified | ForeignOmnibridge<br>`0xb7df1e00ae030e966e635ede273625240546b873` | non_address_book | unknown | unknown | verified | n/a | `0x30e22ab6e6b576e6a9c5dd73191237a9a5c72539` |
| ethereum | source verified unclassified | ForeignOmnibridge<br>`0xb825fd1e322061aac2ac8b3cde4ce18b93fae276` | non_address_book | unknown | unknown | verified | n/a | `0x30e22ab6e6b576e6a9c5dd73191237a9a5c72539` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5d1ecabec994d290c666a57b13a31d55bc526dbe` | non_address_book | unknown | unknown | unverified | n/a | `0x896f23373667274e8647b99033c2a8461ddd98cc` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x003317012c18e306b616a549f70bcbdd1a62b15b` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x00fdb2f338a53a095db3494290660e5d3938ab0a` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x02255c725097a8d0dd6186932d2ff2b95de81218` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x02b67237793b86f6a0c1ff05fea5f1861da01c27` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0479ac0089742491bbf09993f3f1e422580e877a` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x05421ab318005d570d34bd7e414361818a4ca9f2` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x05c686049af388659aa5bb2ecca1f9bf333e153a` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x05edf70a228090db408d30926642efb34ff5bd7f` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0621837a803dbad81f21c0d405d5a6d62515e61c` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0746d79310d08df2b9e72ebd101a47e520b34b67` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0a728292de1afd8c4d809df7685db15eb164922a` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0cb1efd7593a6fcc4df0528e29481d693d633881` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0cdc269c1154e1a4cb2e10d24e642fddc03b3b55` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0d203b3ae15268dfe96e61c0681b7ceb0aab8a4a` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0ec0e691aa6fa121fd777c5b0f46a450d1887771` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x103a3bf1abe18c417fba0314ed1db30aaa9dce9b` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1161961f3709c853419ea4fa610fd971a12c3e47` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1278b15341638c1cd9ad77c6c00e8b0568605275` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x13bed2fd9f91e80b8dcec3eba6e6ae4964cf90a0` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x199de97cc40823ebfeb596441e0fb90519f8cbec` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x19be3e54cc24ee51eda810e2b50544a3ce4d14ca` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1ecb61de8add9fcd86cd939681a29404bb040d57` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1ee5c9ce826f44bfdf7f559f3640a9a6135ab128` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x204b882dca46e0a57658ac23107a7ed801fcdf68` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x21f238fb8f43370d297b963233aa8a171d8248b7` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x244df707e7304f86dc526309d8c212a4d5d4b458` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x24ffafc6a06f223e30051246fa5e445ffddf2cc2` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x263c8f7476d5eca185cf1b8a75a320a520f958b0` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x270dc6efe713105919abb3ec749adb91f40848f0` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x27fc1160f24b06f2da494161b0a1134f274e443a` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2b94315c8d9bc6cadc94de6e1286c5e7b6bfa758` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2c3bfd0909a721b2d0edb6bfa80a18eb44adf7cf` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2c89ec43e4f5cd7973fb491b30dd41c759f09d5d` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2e07201532b94bf212ddf377ecc191ecd2097ba0` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2e9e20abf85fc06ce938d1788ab656c12152fa87` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2ea5c89465d3e5d7c99881da024f609af0b61c91` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2f09114a1f384d3e8831d3e4eb63739735cb52b4` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x30eab27194587fd6803ffef9b0b784719f546242` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3164ce6bec0b092f6ceeab92e8605ddbb2444593` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x320a6d3e925233b0185052de0148091eeb3fcadf` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3257a64ae3a7ace0d559f2cf634b622a5ab2f713` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3268012648c2ac76801b04bef224f2b69b48a458` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3317df96f1878a99e3d275b7346420895f4c90bb` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3367dfa11e3148a07c2da773e1f65b155b0abe56` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x34ae56a70ce7a2b7924010d4822bf57ac8ee2034` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x35c06f2759b64ddaae44702ceb83b40a2735eb01` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x36cffdb5113e5cb4e71e88348ece78271959e433` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x37cd1d1364f2b8dfb95aaa11c4e4a2a71505f549` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x394c4d634c2f85ac6c7de5e89a13bb2026050c1d` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x39aa00936575d69b98631ca763d82bab0e36f903` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3b53e9270d0210214b9c242eb16c252474c5be01` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3d01f4a61cc1c98e1fec5b318216f1a1f08f93f0` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3df534cbf11af7a367d0b8684348ea6d0b3db257` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4142529cefcbd3a5484c325fae8faf5931b756b8` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4284efbbc0970fb22fdedaa6ea6344736c5d7ae5` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x42a3396b088a040cb10b35d7dba5a91d1cfd730f` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x43acd39ce98d62f558a117644f401dfebdc3b30a` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x45032d623459517d214745e0e352c9aa2c015736` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x464f5bb823ada29b41ba19616ac71da2f4a0e251` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x46b33063db87c605bfa2b117937d6b968a7f9f58` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4754a01cf5b6238cb2b6a9e0ceac028376105011` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4820c9ab33aeaae86ce029f14524e4b951c06bca` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4822918d1da87477b9a42e6dff65f7b1edb945fd` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x490350f353291db2d159a4a2fb14dd595aa4294f` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4b4c001c72ecbc525b311a75c0b4589546b05b9d` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4b5011c89f3e727b71e113334e36ff70972a969f` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4dc535d6e34aa4c3f90347667a7a8ad0535e2371` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4e33d534fb1699f52a6d4c0bb2cf5fdc85d90bdc` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4ecb9e4cb7069806fe3368b4b67c2661df98a0e9` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4fc417a3d856e9ec17799be1d5125c305008720a` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x500a2da43ce1d5e9943226dec71de135e3f0d525` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x500fe909ca959f4c8379f8c918327de75499de77` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5077bb4ee7a2cdd24bee52c8d77910b6fbf5e3c0` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x52eac61df5f7a508a48925f09c3d44936a8edbac` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x53b515218ba1e06405edd75cb2ab2abfde47d4ab` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x546e37daa15cdb82fd1a717e5deea4af08d4349a` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5594908801a12a423a04f25e472885281a53ab90` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5899a34e101b823cc9325da861ae6ed7fdf48ea4` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x58f66fd7ddda63a0ba34d0ec4d861c860e26ae19` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x598fb5c93ade43d4e1549bc92f341739aee8a807` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5b0aeed913b8962706839d44b6a140e4746b15e3` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5b3d18ae6e74038806ce5fa3b699cbeaafc6881b` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5cd3941cdccb0b2936d51746f894567775096e5e` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5d074645a90fee3e4ca6137981cad00f04ac084a` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5e238ef968467cf443ef5ecb683b76c5a04a0421` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x615da713eb55dee4c8dcff15a4e5515646ea884a` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6181d320f91c77b0cf06d5a3e1dbabc4c4139a8f` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x632527a3d8056b293f82cd7f657dbad9b37b9a4e` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x636f6407b90661b73b1c0f7e24f4c79f624d0738` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x63881e36871e52480aac509695154f3357ab57ae` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x662cb1584a65e6300e66619a33d1244bd7aa2575` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x66d1aaab331fa1f80a6b005931f882fa6997c300` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x67e190aaf39b9e05b162a78ab94189446077c694` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6b73fcc4ce64a1f3205794c53969a4c506357135` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6efafcb715f385c71d8af763e8478feea6fadf63` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6f6ee49869b72c6204ed35b3984de7ffb0c43cf6` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6fa50575144d99ed3ce095090906742690722bc8` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x70874a74fb179b76c59887d6e35148538f083f6a` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7154947677af641a4802e2bb844a4b8cbc068f20` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x73910cf7c43f2cd1421227c11da642992749354f` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x73bcd5aa043c0ff70005697ee6cb2cdc4b740261` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x73e4a44254d10768c239bc379aa04187950f4c00` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7454ac60131be41d533e8abc99e658c9227daf91` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x75ae397006ddeef7ec6f70cac46e652539886f38` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x78c38e4536a39a78910fea9d7c80fdd0aaf89661` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7a234bab64336cd5930c63c7da1cbbc5563bfb43` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7a69084a67e33495b5c3310a467c9d4d4f5ad2d4` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7b56e5b66c8d701e414f7a9cedcb651544cd3846` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7b79995e5f793a07bc00c21412e50ecae098e7f9` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7cde48b37628b77e280736a59d513d9b3e18230e` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7d7ef8f1b4c526cbaa34b846f57d48ee49141cbd` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7e5eb29f1e0b02a52e6869a974fabf8c5a2435e8` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7f2698714842f59e89f1eb8b1b70ccb053b5a176` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x805e47a934fed65696b53e689e5c9df2e2bc91c7` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x80c5905fd9f91f377180a09d14f68b8659bd90c8` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x824b10d83af97d29b76424fd17c0ab2f163dda7f` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x84309b473bf2bd5dc914b20b3d330d0604f3f686` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x84c035699c46e42d3949d9289196d6c1daf9d474` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x853121662b031c318b2f18636dea6cd82f7a7d21` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x85db5e1b9c3cb31250f5ad6a99591943aba9de8b` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x87422e9c3d27be26748b2ae22fecbce1ebc4318d` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8a810ea8b121d08342e9e7696f4a9915cbe494b7` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8c0d6d0f0d8efeaf8cf2df51f86da4d19f33a5fc` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8cb585f212406b9898ebab4cd10993839e9b25bf` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8de3910d217f902ed17931c92c9bf8687f985af9` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8eab5a4ff074e8f5ae3a4e8edd9df6fbd880c07a` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x906af6149cb6cba78f9fc268e9f96fa7f7bc1d42` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9162fd00361f29f982062604c71d23b0226d530b` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x916b5a70bd6fe32c00c55f9e0d427ccb399f54d2` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x923bac79bd54a0e9e8b80525fb0887aa1dc792b2` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x93c5311b9dd1b039de706dddd7916cd596465701` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x947b87288eeffa0cd2594eaf89311477d375f5ad` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9637a0c1f4cdc627e8111431af879a5ed79c3ecf` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x98cec103ae046a31420508eabe1494e71c3ee7a3` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9a94e803889804934b741a3e0caa9bb1aab8f809` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9aa15dfb070f237b8adf6adbbeceebcb1cef0631` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9b938d338e7dbbfb56f802c74711fbc142d2b13d` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9e6a12d7af6c077c70ccc17215c2bfd76d9f44b4` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9ec2b91023004c625b06463df306e56413546419` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9ffcc54767b08c3fd72203f38ec4dd27883c36e5` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa254a034d1c66352648ada30aa2c0c34ceab1672` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa25a2195e6e257a408dcaf4f8e7ffc390488996f` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa2f0482a259d787ac084268b93e40b022eb8a374` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa5ba34220763f2bc2886c59e9ce3be0852790ab1` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa71cb154e9e46739e989bc557c3afc4f516e9c97` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa746810966fd2c03bf60fba39e191ecb3e8e60f4` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa89d6a2e7f059df2d35a4597e148d7c6d82fb312` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa8d87c21c76e35a055723266dfe56a1b33cbc0eb` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xaa0ab9911656c010dc2ee62b7040330e2080b593` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xab0a40b3c0a0f0c4f16ff8aecf42065ad5dade97` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xabef3030595ba887083bb7eb4c09b002fd7d4b04` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xac612fc52b9714d0e5c335ef0331e88f8d524e87` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xacd8bbb24f0f4755dbc35b9f7e0ac4d2fc5717b2` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xad055148c4ef280c419d35ed76559e2316f199db` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xaf35f5a2f35136d9d8b19c7730ad99d19c637de4` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xb242aa8a863cfce9fcba2b9a6b00b4cd62343f27` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xb5a15f770df6774cc6d440a3d14561e82ead1f88` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xb635be96898552bbe80043239c57ea864223fdc1` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xbd0f7c749b6eb88fe440aac92f8356fd6386ba79` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xbdc1e888cff304b4433bac3f5377fbbbdfcc8ae4` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xbdcd2bc61ba8246e1139b2f88caa64da7e5ceb1a` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xbee66a4070455096b4977ebdceee2350c74805be` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xbf4acb9702581743e0e1270ffbda20445754b414` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc0306b0cf62a88fd11abc769d96284b76a387f14` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc1b06bc42cb6476d99847e4d469d9c549c1322d3` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc29d987421bf6f3b22a4a44f5b6d1776c20f9d93` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc5281eb151633f7613d6ad9f77edf91195653dc2` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc730af7853b2d9e93c685887fb65b9ca72a5953c` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc7a844baa16c5787e00b9b598511360b4f739418` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc933634bed72c96a937f15daf4312b48c70cd747` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc9d8fc1e04ebaeeacfe3d4a9c4845b4d6c3c2c80` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xcaed39a5172cf6ecb93e919651373403b12c4d96` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xcc45b50d67be1b2ce2dac5a4f4322dbff5d45b7a` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xcd1328f6b072979e74b5a7798d548ef6bd610472` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xcd288420331299dc53f306401e346ef878989cc8` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xcfe93ee0d05a5226feb749cc790c97dfb182a135` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd164e9c4822eddad0828103784859cc7c3d48351` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd21b590857409b7d12821b8dc6bf57903d6879e4` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd2ba55dbfa8e06d847ac0b6d57e8f5daf1c79f12` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd3231c4df0e533b7f5ef7eda548435bc7c1a96eb` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd4b0013e98f708c6e40f318810cb2fa45a357a51` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xdae9dd3d1a52cfce9d5f2fac7fde164d500e50f7` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xdafc6e1f3f8233d93a976b2d655cf2573a6d7c95` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xdc536f5e4441ca5c2ab791a3ab2d6375181034f8` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xddd10fba944bd9d3216c17bc5276005ee6c6ff6f` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xddea477c80d44f53a1764b9f580694981b62c5d5` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xde484f87bba6362905022c3b85d4bf7e495930ab` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xe025a123809701ba988d368ec9f14ba674a110ae` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xe159207c21a7a4512cc4c3a8bcd58beab9b4e381` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xe1eb1dec0ddaca51de3443f9d646d0ba559e2bb9` | non_address_book | unknown | unknown | unverified | n/a | `0x5dad5eb7a3e557642625399d51577838d26deae0` |

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
| upstream | 0 |
| standard_library | 0 |
| needs_review | 228 |

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
