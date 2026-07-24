# Agentic Audit Brief: SmartCredit

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: SmartCredit (`smartcredit`)
- Website: [https://smartcredit.io](https://smartcredit.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 90 unique implementations (104 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $708,424.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for SmartCredit. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- SMARTCREDIT (`0x72e9d9038ce484ee986fea183f8d8df93f9ada13`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 89 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 1 of 90 unique; 89 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/10
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 80
- Unique implementations: 90
- Raw deployments: 104
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 10.0% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SMARTCREDIT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392570 | `0x72e9d9038ce484ee986fea183f8d8df93f9ada13` | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1858e52217c2b36addfedf48b3fe29b9c5e1e29e`; ethereum `0x5409341c32481a1fed818f0395dae0f9ccaa8ab8` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84cb833f3f2e0443c5fc40f4a4619881213638a7` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x11c0a2a7e33f1227105e6f22c571acc5bfbbcf8b`; ethereum `0x81590d3a76fdf0a3f7ddc122f3c519bc97474ecd` | ⚠️ Unaudited |
| ReputationToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x221657776846890989a759ba2973e427dff5c9bb` | ⚠️ Unaudited |
| SmartCreditTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x20cd70ff67d249e3ba3d068262e2ce8af6224d45`; ethereum `0x3d3e25430535e429085f20bf21eb0b0145011343`; ethereum `0x967f978e36299cc2c250587e0a150e113ebd87b6`; ethereum `0x96b424daef21ba3f815ff95bffc6f6c438caf59a`; ethereum `0xac1c03272270a2cad05b15d99f8003ca15ae7118`; ethereum `0xd0209d339271b8049cd021a4a44ce915d4a77179`; ethereum `0xf29a2fc7ee889256f8d45ccea9dcfdf0690c5e73` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x1a0a75cd4b0e43e7a2cce92ce1406d30ec10afbf`; ethereum `0xf26848918644858bf7309cf3dda3c64d393f5e43`; ethereum `0xfc94c04ff51355bc195e9a85e8f6acea9c907d0d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x31ba589072278d82207212702de9a1c2b9d42c28`; ethereum `0x90de6b950b90d3977cfc832c5ea33ed3c8ebf7e4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x36e8616a2e5c3681e256a489d32c31430b0dcc6d`; ethereum `0x784c9c6def70cad7312f4e9f2af58094447c30e6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x44b00324f72f10896bf3a18bb25fb161a8fe9631`; ethereum `0x4c91455e0b8baf1fc255f7d8aed658f7b4ee82df`; ethereum `0x52291d11ef4930be59d12c4988b80c94b2616cff` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (80)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03e33b89c6ba724d10165871a78b6f85d33f8fff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0755a67e663fe71367bcaede4f540b840a95686d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0931c14dc8827c8f08d76f0f5d31910ba76078fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e644479c1d90831c64fbcfe19aa41330e4daf90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13998c6bcb673ae2aeecf2c21aaa927c95560ce7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13c7c67f5708b9fa6069d3e7ac5e750104afa6df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14bd940cf6815f53e0c8e309fe89f78baf673757` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x183b12880091e2d36013060f398cd627de4fa2ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1abd8272cd0ea0cd646b10fa14fef80197226fad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c3ea9fd468276c445927f53df51ee5ec87e3c84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f05dc0b6281b6f1e5d79f4875a0dee54d82018c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20af969f2c963f53608f492340b0a208e2ab16bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x213a7b19b497141876e7639b43134513cea07e7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2208c79e91d8d1945425cea4268f058ce2ec4dbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24805a247f2399282cf13554b90d62a761d59455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2515976c73e933b718dd869670d61248114b6532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x273808b64019e24323bc837bdb7d8a2724e6e5c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2841a080463524ea33023e95e421fa911049f6de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c33079dbbd2ac3a1ea50779648c07a567e6be11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f4d7a8fa7bc9922ef0c168fc84f6123222bc57d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4024467a311c41e3d276064b75d68fbf47385572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4122ef18ee8106438954a759d754159dff114249` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41a8120b9789bc7be4c2b737f8eca08fbee62a4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x432d098e3c586bcbff15346259cb8d051f2278fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45d45615955d03e53befc72187bfc6c247dacff9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x495adbf5ee22415a9b44684dd711d64962d94eb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b14ddc1b1b4bb3a89d574c2708c609d4e192730` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ba13e454ac0410e2dd95b67c429359be87221ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e7ce3b1acd3006d6a8f28dc598d6fde77ae565c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f9d9b1a4d17f60951529e3ea22f864413ffb6af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x508d31b209c2b3b805be14c1d97bef3e0a9134a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x550bf90cf0a0478a9b1f9b6d0b45a4c8268b1d86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56a88c00ea5da684c5ed650536fe218827f76794` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58c0cede28c221273319e9be2998292360e180f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c13b6e81c6c77c41975e7a6b1d5c4ad97189c58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60af549e70c06de06881e0bbcc33a6e2d60581d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x659773f2ef968a848570836796188cfadefa1d4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6af29228067c1a91aa422eb88a000d1947cdb1ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d3d91a78cec98e208100a70a7a92e8299c3bbde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e300f6671bd3812490380b427fa1532aa5de6c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x701f89924782e6f28166df6112cd5fc928ebd16d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70ca91db0b61f4391cd924e27b8594abcd7f293c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76c05c757e0764b5a15322a424a3c081126d2891` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x772b459a58d985eeb98ad845ba513434daca7056` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7768c4f860682e512984c9c3e65eb7cdb1e1fd21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x788b237aaa7265137f61d3a8998352064b1ac663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79dfac5995e6c68523518138f01111b6be611c51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a3a18528e072c26e21dc28f12d72c4f44c22f03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b9ca706375dc2af5425fb8d5c0adce73fa31f1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91a149c826dcdce89b02c7f6441e3738ae4d2e58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9454a06c73f0cbb8c94d11d8b5f9bd057a1d393e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98180899d924060e82f6248666a259b2f63e26d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a39acb341374f1aedd9eb63849ffe68b59118cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d385e24a6dae6d1101387a06c6c1f05db4f4767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f9c9b8312914341f2f39e3ac25a081276b50f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0e9c91d9b39c3465d11bdb708abfb62899e4b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa229d0504937f99326a36ea4a32d5328bfad30f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4f309c997b92776ae0fd20874dd465b39b634ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5d072b5464028f9a082fdfca22248a007404abc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb255f73c4ca59f806ab974425892eac39bb72063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc099fe8cee4462f0c614077e95afa3df9e2e79b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc46507ce7b32e4243ae39644f4b2fe42e6d9c46f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc922035077c4aee65eb58b47994920d234d85d35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9a4a838cf5132d98d2d9558c8498f05da9cbc18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcad5ab5b32b0c82d39e28ce0b541e1da45e5e2ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfe4d6273f4209e02a09d6b17532f89872c1e628` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd090ccca29e6a8c5dc185649bfef61afec954879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0f55366641d6faaf923399473a2c34d8e4dcc90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd516cddd59e8a8e33fba1e8495f51c662cdd7ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd88080814403597a601720b66e5aa12d4a42e675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdab506b36c76c83bfd72be3fb9dc73d3b2d4908e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb51879b85c45614495fd7b6ef4be3c3138fdb0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0e3235989247782c70c55b0a2e0ef859d0728a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe582dc371b2d7e1fffe6194cccef215736b4d981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7cf608072c89ba0d02ccc4fc087aac8c69587a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe97f36717a51fd61c54f35e8fb2ca49d82c121bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea873c735f740a3f9eaaf460b93dbdd429448908` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee323561a3dd1a4e9f2040259728e4cddd939e42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2ec7c4058f843322c8e2e3df2cd3bc5ce29c793` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7af33821d410d659118b935138e57751124d447` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 52
- Live contracts: 0
- Unknown liveness contracts: 52
- Source-verified contracts: 7
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=4, source verified unclassified=3, unverified unclassified=45

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | candidate review | ProxyAdmin<br>`0x11c0a2a7e33f1227105e6f22c571acc5bfbbcf8b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x31ba589072278d82207212702de9a1c2b9d42c28` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x44b00324f72f10896bf3a18bb25fb161a8fe9631` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x4c91455e0b8baf1fc255f7d8aed658f7b4ee82df` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | source verified unclassified | AdminUpgradeabilityProxy<br>`0x1858e52217c2b36addfedf48b3fe29b9c5e1e29e` | non_address_book | unknown | unknown | verified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | source verified unclassified | SmartCreditTimelock<br>`0x20cd70ff67d249e3ba3d068262e2ce8af6224d45` | non_address_book | unknown | unknown | verified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | source verified unclassified | SmartCreditTimelock<br>`0x3d3e25430535e429085f20bf21eb0b0145011343` | non_address_book | unknown | unknown | verified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x03e33b89c6ba724d10165871a78b6f85d33f8fff` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0755a67e663fe71367bcaede4f540b840a95686d` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0931c14dc8827c8f08d76f0f5d31910ba76078fa` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0e644479c1d90831c64fbcfe19aa41330e4daf90` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x13998c6bcb673ae2aeecf2c21aaa927c95560ce7` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x13c7c67f5708b9fa6069d3e7ac5e750104afa6df` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x14bd940cf6815f53e0c8e309fe89f78baf673757` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x183b12880091e2d36013060f398cd627de4fa2ec` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a0a75cd4b0e43e7a2cce92ce1406d30ec10afbf` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1c3ea9fd468276c445927f53df51ee5ec87e3c84` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1f05dc0b6281b6f1e5d79f4875a0dee54d82018c` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x20af969f2c963f53608f492340b0a208e2ab16bb` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x213a7b19b497141876e7639b43134513cea07e7c` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2208c79e91d8d1945425cea4268f058ce2ec4dbf` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x24805a247f2399282cf13554b90d62a761d59455` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2515976c73e933b718dd869670d61248114b6532` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x273808b64019e24323bc837bdb7d8a2724e6e5c1` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2841a080463524ea33023e95e421fa911049f6de` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x36e8616a2e5c3681e256a489d32c31430b0dcc6d` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3c33079dbbd2ac3a1ea50779648c07a567e6be11` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3f4d7a8fa7bc9922ef0c168fc84f6123222bc57d` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4024467a311c41e3d276064b75d68fbf47385572` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4122ef18ee8106438954a759d754159dff114249` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41a8120b9789bc7be4c2b737f8eca08fbee62a4f` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x432d098e3c586bcbff15346259cb8d051f2278fc` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x45d45615955d03e53befc72187bfc6c247dacff9` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x495adbf5ee22415a9b44684dd711d64962d94eb5` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4b14ddc1b1b4bb3a89d574c2708c609d4e192730` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4ba13e454ac0410e2dd95b67c429359be87221ab` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4e7ce3b1acd3006d6a8f28dc598d6fde77ae565c` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4f9d9b1a4d17f60951529e3ea22f864413ffb6af` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x508d31b209c2b3b805be14c1d97bef3e0a9134a3` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x52291d11ef4930be59d12c4988b80c94b2616cff` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5409341c32481a1fed818f0395dae0f9ccaa8ab8` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x550bf90cf0a0478a9b1f9b6d0b45a4c8268b1d86` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x56a88c00ea5da684c5ed650536fe218827f76794` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x58c0cede28c221273319e9be2998292360e180f8` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5c13b6e81c6c77c41975e7a6b1d5c4ad97189c58` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x60af549e70c06de06881e0bbcc33a6e2d60581d0` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x659773f2ef968a848570836796188cfadefa1d4a` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6af29228067c1a91aa422eb88a000d1947cdb1ec` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6d3d91a78cec98e208100a70a7a92e8299c3bbde` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6e300f6671bd3812490380b427fa1532aa5de6c0` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x701f89924782e6f28166df6112cd5fc928ebd16d` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x90de6b950b90d3977cfc832c5ea33ed3c8ebf7e4` | non_address_book | unknown | unknown | unverified | n/a | `0x77d1d1638d6770de23125f6298d2814a6ecebccc` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [SmartCredit Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/ca048cb8eaba4f7959fb83c1c6f5cb4803c85718/SmartCredit%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 9 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13854] SmartCredit Security Analysis by Pessimistic.pdf — matched: No explicit scope section; contracts extracted from findings and project description. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| SmartCredit Security Analysis by Pessimistic.pdf | ERC20CreditFIF | unmatched — not counted | — | mentioned in findings: fixedIncomeFundBalance() function of ERC20CreditFIF contract | no |
| SmartCredit Security Analysis by Pessimistic.pdf | NFTLoan | unmatched — not counted | — | mentioned in findings: NFTLoan contract, acceptLoanRequest function | no |
| SmartCredit Security Analysis by Pessimistic.pdf | SmartCredit | own contract | SMARTCREDIT (selected) `0x72e9d9038ce484ee986fea183f8d8df93f9ada13` — deployed 2020-10-07 11:16:52+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SmartCredit Security Analysis by Pessimistic.pdf | ETHFIF | unmatched — not counted | — | mentioned in findings: ETHFIF contract | no |
| SmartCredit Security Analysis by Pessimistic.pdf | CreditLine | unmatched — not counted | — | mentioned in findings: CreditLine contract, repay and finishLiquidation functions | no |
| SmartCredit Security Analysis by Pessimistic.pdf | USDLiquidator | unmatched — not counted | — | mentioned in findings: USDLiquidator, withdraw function | no |
| SmartCredit Security Analysis by Pessimistic.pdf | SmartRegistry | unmatched — not counted | — | mentioned in findings: SmartRegistry contract | no |
| SmartCredit Security Analysis by Pessimistic.pdf | StakingFIF | unmatched — not counted | — | mentioned in findings: StakingFIF contract | no |
| SmartCredit Security Analysis by Pessimistic.pdf | Liquidator | unmatched — not counted | — | mentioned in findings: Liquidator contract | no |
| SmartCredit Security Analysis by Pessimistic.pdf | ETHCreditFIF | unmatched — not counted | — | mentioned in findings: ETHCreditFIF contract | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 82 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 9 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: unique_name=1

Fork inheritance lineage and inherited audits are included when available.
