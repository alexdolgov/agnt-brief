# Agentic Audit Brief: Railgun

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 10 (1 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Railgun (`railgun`)
- Website: [https://railgun.org](https://railgun.org)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, bsc, ethereum, polygon
- Contract surface: 101 unique implementations (202 raw deployments)
- Coverage basis: 1/3 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $232,664,353.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Railgun. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across arbitrum, bsc, ethereum, polygon. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: erc20 (3), ownable (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- RailToken (`0xe76c6c83af64e4c60245d8c7de953df673a7a33d`, chain 1)
- RailTokenFixedSupply (`0x3f847b01d4d498a293e3197b186356039ecd737f`, chain 56)
- RailTokenFixedSupply (`0x92a9c92c215092720c731c96d4ff508c831a714f`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/3 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 98 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 18
- Confirmed-live implementations: 3 of 101 unique; 98 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/41
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 60
- Unique implementations: 101
- Raw deployments: 202
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 10 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zokyo | Tier 2 | 1 | 2.4% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RailToken | token | project_anchor | own_supporting | 0 | ethereum | unit-391271 | `0xe76c6c83af64e4c60245d8c7de953df673a7a33d` | ✅ Audited |

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbitrumExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x280e417ab3cafc378f3e6f91148fd8ef766d4c95`; arbitrum `0xc480f68a3dcc3edd82134fab45c14a0fcf1da3cc`; arbitrum `0xce567352aee08f11682b71d58685eb9b01ea045a` | ⚠️ Unaudited |
| ArbitrumSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x20fa11c4f794ec1db3527bf618b02754ff393bd5`; ethereum `0x8c2bac19a9f06d41a11646a7c21379fcc50b8482`; ethereum `0xf627484f9918a57b6782978b743d6d330616345a` | ⚠️ Unaudited |
| Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: ethereum `0xb6d513f6222ee92fff975e901bd792e2513fb53b`; bsc `0x4a7532f58259524251d7df1052762dc23c98bae7`; bsc `0x92a9c92c215092720c731c96d4ff508c831a714f`; bsc `0xc20871f4b5281416c2bf72125507c5fcba9079cd`; bsc `0xfc4b580c9bda2eef4e94d9fb4bcb1f7a61660cf9`; polygon `0x5f67441090fbdf57f1d9f28dd65a29b0bb3e83a7`; arbitrum `0x92a9c92c215092720c731c96d4ff508c831a714f`; arbitrum `0xbb7d93ef65f4131ed13aee0497503d57ff74ccfa` | ⚠️ Unaudited |
| Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f847b01d4d498a293e3197b186356039ecd737f` | ⚠️ Unaudited |
| Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: ethereum `0x3bb38cd4c801cb0bed481bc3fc4b14b06d81c5d2`; bsc `0x025e99b45c840c829da0dcdd46bb8c8738182793`; bsc `0xa353bc0454931ac46fd90c8ef27f908ab9e34686`; polygon `0x3b374464a714525498e445ba050b91571937bfc8` | ⚠️ Unaudited |
| Getters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: ethereum `0xbef5f5f176d1b313c26eed887f2124c9bfab020f`; ethereum `0xe90275239d734899e8d94646139213f6f97beb0e`; bsc `0xc7ffa542736321a3dd69246d73987566a5486968`; bsc `0xd0fe832d4108ee5ef215512f1a73c777b2bbebc8`; polygon `0x08196b488d3376c318bdb2fa61ac7a9b0d216400`; polygon `0x9797723685c2656863e154fe4377336093defa4f` | ⚠️ Unaudited |
| GovernorRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa02782ce1bf85f56f8cc7c0e66e61299ac75c86f`; ethereum `0xaf51cd5f71ed88d6d1f65b575f1a8ce3a78ec42b` | ⚠️ Unaudited |
| GovernorRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: ethereum `0x27d30e803a0ec079daa3a2e6c3590cca9f63c9d8`; ethereum `0x7d1c12008d180718938f535ee0dec7ac3473c179`; ethereum `0x842da7aceb5d1041d6496ffd71222322c959e665`; ethereum `0x9cfa13a191cc37ee5f76c2f070bfab8a3208f465`; bsc `0x046e871ba524e4a868bd80f3b31721212847a682`; polygon `0xb8af889809211fb9496de885240593c1a9efd3a9`; polygon `0xd0fe832d4108ee5ef215512f1a73c777b2bbebc8` | ⚠️ Unaudited |
| GovernorRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x7d9ef64f35b6afda8d258d1d2548a9ac997e35a1`; bsc `0xd0198dde1187b12af01a743d9e9f2b4b84e8f59b` | ⚠️ Unaudited |
| GovernorRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa7a9582c2563a1b923dbff6a8a2fa625ee2fb1f8`; bsc `0xae4b2dccb9029c8ebd673626ffdfd6b29613af16` | ⚠️ Unaudited |
| GovernorRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x25f795a8ec8af7904aa403ff2cc7205ce683bf52`; polygon `0x2e01c6f7734070acf5226c6cbbd326296183e32d` | ⚠️ Unaudited |
| GovernorRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x7d9ef64f35b6afda8d258d1d2548a9ac997e35a1`; polygon `0xd0198dde1187b12af01a743d9e9f2b4b84e8f59b` | ⚠️ Unaudited |
| Multisend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92a9c92c215092720c731c96d4ff508c831a714f` | ⚠️ Unaudited |
| OnlyAddress | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x3f9297fa8e166492e66df2215eb29e4f3c7aaac5`; ethereum `0xd071eddff4728f7a33bafd2759db6543b6545da7`; bsc `0x7d0488e99ca487cc91457b957664a9db647986d2`; bsc `0xaf51cd5f71ed88d6d1f65b575f1a8ce3a78ec42b`; polygon `0x8a013835727fa93975b0cbc37ad99670f0819064`; polygon `0xbf1cc6ac7204a9d9e1a5e9f08eef5472eb264c15`; arbitrum `0xfbfa61eaedd3537c58c94c4d125b6849c2740f49` | ⚠️ Unaudited |
| PausableUpgradableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x39f3df0a8a2a7469e03a9519a4cdd22525b080c1`; ethereum `0x4890eaf3d9b2b947980573934d7e0fa23dff11ac`; ethereum `0x4d933226dcc39b9dcfcf0683c30ef49c8ccc5c98`; ethereum `0xf943253b4c53fcf69ce92b936666da26916197af`; bsc `0x7a865794e85c29a793962754370f8541d36dc12a`; bsc `0x7c956db76b4bd483f96fce6bea3615f263afd333`; bsc `0xc851fbe0f07a326ce0326ccc70c2a62732e74d6c`; bsc `0xce567352aee08f11682b71d58685eb9b01ea045a`; polygon `0x4a7532f58259524251d7df1052762dc23c98bae7`; polygon `0x5eb61fd880ef65200ef0beb0d964fa6020fd5877`; polygon `0xa214d47e24de000dcdc83ef6cda192e5fc74a067` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: ethereum `0x4f8e20f55f879bee7bc010bd6bd2138b34ac65c8`; ethereum `0xed0e97ca39973dc97416460b113f161be6f07a08`; bsc `0x3bb38cd4c801cb0bed481bc3fc4b14b06d81c5d2`; bsc `0x5184cd71e0a6ee7eeb2e861c17926f20d6bf6877`; bsc `0x707c42119a0a4bc5b60ba140b39fa08adf1efb61`; bsc `0xc6368d9998ea333b37eb869f4e1749b9296e6d09`; polygon `0x3c53c163c2ece58470ee219e647f18d133885c3a`; arbitrum `0x5f67441090fbdf57f1d9f28dd65a29b0bb3e83a7`; arbitrum `0xb00a75949806158a90a86f70b4d4393619a4d527` | ⚠️ Unaudited |
| RailgunLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbf0af567d60318f66460ec78b464589e3f9da48e`; ethereum `0xc6368d9998ea333b37eb869f4e1749b9296e6d09` | ⚠️ Unaudited |
| RailgunLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0xbcfa4de73afb071c9ff18a20a22f818e657c541a`; bsc `0xb8af889809211fb9496de885240593c1a9efd3a9`; bsc `0xbcfa4de73afb071c9ff18a20a22f818e657c541a`; polygon `0x280e417ab3cafc378f3e6f91148fd8ef766d4c95` | ⚠️ Unaudited |
| RailgunLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x61ca7a0346a10cea849910c29617ac316461ad76`; polygon `0xc6368d9998ea333b37eb869f4e1749b9296e6d09` | ⚠️ Unaudited |
| RailgunSmartWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xfa7093cdd9ee6932b4eb2c9e1cde7ce00b1fa4b9` | ⚠️ Unaudited |
| RailgunSmartWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: ethereum `0x321617e18be9ec7cfe5ab8856de2aabaa478e13b`; ethereum `0xc0bef2d373a1efade8b952f33c1370e486f209cc`; bsc `0x2c4fb0bbb09945f8e5e2100d6cb4b69d994fa293`; bsc `0x3352c7f34494201cd0f3621a8885b9f201582c24`; polygon `0x7a33ed42b44126fa285512e0d7d10ffbbcd0d559`; polygon `0xa375b97b5701bb85b963192072f1699b49c0e9f7`; arbitrum `0x5eb61fd880ef65200ef0beb0d964fa6020fd5877`; arbitrum `0xed378e351fae20b849270b391ac4a973df9e87bf` | ⚠️ Unaudited |
| RailgunSmartWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x590162bf4b50f6576a459b75309ee21d92178a10` | ⚠️ Unaudited |
| RailgunSmartWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x19b620929f97b7b990801496c3b361ca5def8c71` | ⚠️ Unaudited |
| RailgunSmartWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xfa7093cdd9ee6932b4eb2c9e1cde7ce00b1fa4b9` | ⚠️ Unaudited |
| RailgunSmartWalletStub | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3c53c163c2ece58470ee219e647f18d133885c3a`; arbitrum `0x7c956db76b4bd483f96fce6bea3615f263afd333` | ⚠️ Unaudited |
| RailTokenFixedSupply | token | project_anchor | own_supporting | 0 | bsc | unit-391273 | `0x3f847b01d4d498a293e3197b186356039ecd737f` | ⚠️ Unaudited |
| RailTokenFixedSupply | token | project_anchor | own_supporting | 0 | polygon | unit-391272 | `0x92a9c92c215092720c731c96d4ff508c831a714f` | ⚠️ Unaudited |
| RelayAdapt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: ethereum `0xc3f2c8f9d5f0705de706b1302b7a039e1e11ac88`; bsc `0x25f795a8ec8af7904aa403ff2cc7205ce683bf52`; polygon `0x969ee9ac1e0b5f5dd781f63a168c52b73062ff86`; arbitrum `0x3bb38cd4c801cb0bed481bc3fc4b14b06d81c5d2`; arbitrum `0x5ad95c537b002770a39dea342c4bb2b68b1497aa` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: ethereum `0xee6a649aa3766bd117e12c161726b693a1b2ee20`; bsc `0x753f0f9ba003dda95eb9284533cf5b0f19e441dc`; polygon `0x9ac2ba4bf7facb0bbb33447e5ff8f8d63b71ddc1` | ⚠️ Unaudited |
| Sweeper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2ea76a3c4795dd1a5d206b285fd21b2fb83eaf1a`; ethereum `0x2eca05b128bf5cbd5a73cc4bb625b51131ff119b` | ⚠️ Unaudited |
| Sweeper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9b1310bdcc19d172d0092240e33209a9156c8ee2`; ethereum `0xa353bc0454931ac46fd90c8ef27f908ab9e34686` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1a73e89d101ea0083691a624962bb86831eec757`; bsc `0xdca05161ee5b5fa6df170191c88857e70ffb4094` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: ethereum `0xc851fbe0f07a326ce0326ccc70c2a62732e74d6c`; bsc `0x120c07ad6eb579d40a20157a0025d95f7afea2c5`; bsc `0x19b620929f97b7b990801496c3b361ca5def8c71`; bsc `0x5f67441090fbdf57f1d9f28dd65a29b0bb3e83a7`; bsc `0xbf0af567d60318f66460ec78b464589e3f9da48e`; polygon `0x025e99b45c840c829da0dcdd46bb8c8738182793`; polygon `0x7c956db76b4bd483f96fce6bea3615f263afd333`; polygon `0xfa7093cdd9ee6932b4eb2c9e1cde7ce00b1fa4b9` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x1a73e89d101ea0083691a624962bb86831eec757`; polygon `0xdca05161ee5b5fa6df170191c88857e70ffb4094` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x39f3df0a8a2a7469e03a9519a4cdd22525b080c1`; arbitrum `0x3b374464a714525498e445ba050b91571937bfc8` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x707c42119a0a4bc5b60ba140b39fa08adf1efb61`; arbitrum `0x9ac2ba4bf7facb0bbb33447e5ff8f8d63b71ddc1` | ⚠️ Unaudited |
| TreasuryMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: bsc `0x710fe3579e77c15d944844624d2feeac44f3cbfc`; polygon `0x1a45445d99f8d1310317ec7609372ccba80abbf8`; polygon `0x710fe3579e77c15d944844624d2feeac44f3cbfc` | ⚠️ Unaudited |
| VestLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x19b620929f97b7b990801496c3b361ca5def8c71`; bsc `0x27d30e803a0ec079daa3a2e6c3590cca9f63c9d8`; bsc `0xf943253b4c53fcf69ce92b936666da26916197af`; polygon `0xb00a75949806158a90a86f70b4d4393619a4d527` | ⚠️ Unaudited |
| VKeySetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0x9086afc6fc88667d4031cabd556afdd0e3903b46`; bsc `0xed0e97ca39973dc97416460b113f161be6f07a08`; polygon `0x4025ee6512dbbda97049bcf5aa5d38c54af6be8a`; arbitrum `0x7d9ef64f35b6afda8d258d1d2548a9ac997e35a1` | ⚠️ Unaudited |
| Voting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: ethereum `0xc480f68a3dcc3edd82134fab45c14a0fcf1da3cc`; ethereum `0xf271318cd7e75660224ff209ae5aa914159d77fb`; ethereum `0xfc4b580c9bda2eef4e94d9fb4bcb1f7a61660cf9`; bsc `0x569c15b356d3ba9c9f407945b12c867f7c3608c9`; bsc `0xc3f2c8f9d5f0705de706b1302b7a039e1e11ac88`; polygon `0x707c42119a0a4bc5b60ba140b39fa08adf1efb61`; polygon `0xa353bc0454931ac46fd90c8ef27f908ab9e34686`; polygon `0xc3f2c8f9d5f0705de706b1302b7a039e1e11ac88` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (60)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cfad2ef1c1e2fbfccbbc2bf2884669f3b17c639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x232c417d74cb9abd24c49e17b37440ec4bc73fc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3352c7f34494201cd0f3621a8885b9f201582c24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b374464a714525498e445ba050b91571937bfc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3db1c53366fff57001ff6a9daacda1fcfbab56a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4025ee6512dbbda97049bcf5aa5d38c54af6be8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5eb61fd880ef65200ef0beb0d964fa6020fd5877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7022be532d911cc3a7180288b504cdc3f498c3bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a865794e85c29a793962754370f8541d36dc12a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c956db76b4bd483f96fce6bea3615f263afd333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d9ef64f35b6afda8d258d1d2548a9ac997e35a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e5689bde31b2a8d934138dfd7e7aa4db5a68ded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb00a75949806158a90a86f70b4d4393619a4d527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb7d93ef65f4131ed13aee0497503d57ff74ccfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc20871f4b5281416c2bf72125507c5fcba9079cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0198dde1187b12af01a743d9e9f2b4b84e8f59b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf035ceba76c0c1f2c15457775745b1f5dc42ca2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a45445d99f8d1310317ec7609372ccba80abbf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1cfad2ef1c1e2fbfccbbc2bf2884669f3b17c639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b1016ad05e87477a321fa54eab005c93319fbdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f8e20f55f879bee7bc010bd6bd2138b34ac65c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5eb61fd880ef65200ef0beb0d964fa6020fd5877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e13386375c6a16560c7fb30f08d7ac4fc4da1ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x741936fb83ddf324636d3048b3e6bc800b8d9e12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a013835727fa93975b0cbc37ad99670f0819064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ab41bf26e56ab9c4ac52306ee3cc819dc3c41f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ac2ba4bf7facb0bbb33447e5ff8f8d63b71ddc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa214d47e24de000dcdc83ef6cda192e5fc74a067` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa375b97b5701bb85b963192072f1699b49c0e9f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa7093cdd9ee6932b4eb2c9e1cde7ce00b1fa4b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x20fa11c4f794ec1db3527bf618b02754ff393bd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2ea76a3c4795dd1a5d206b285fd21b2fb83eaf1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2eca05b128bf5cbd5a73cc4bb625b51131ff119b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x353ce4721f0fa55eb8951bddfaf97ca7a3d4f9b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3ad1fc9c2f9852ffe5a4819b3ab0fbb0153297a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3bb38cd4c801cb0bed481bc3fc4b14b06d81c5d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x435a488e5385249bdf722ec3c54031f952030853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4f8e20f55f879bee7bc010bd6bd2138b34ac65c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x569c15b356d3ba9c9f407945b12c867f7c3608c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x56e456fc9b0e4119872e65035948ef0a432d9b4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x684545ad2438f485c48b6c6e5c657ea9754f3f7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x807a9726d5ecac755ddbbb4646f1a552f45e3006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9086afc6fc88667d4031cabd556afdd0e3903b46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9429fd601f8dd0c9ba5ac04de62b4b37b8151de1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa20bafb78aa9ba98572aee533dfb30308188de5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa3b66d79042f4add423e47efa7dbb622a384b270` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbf0af567d60318f66460ec78b464589e3f9da48e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc35b367fcf56ab9a641b54a242c9d49cfb5d50cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc7ffa542736321a3dd69246d73987566a5486968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce567352aee08f11682b71d58685eb9b01ea045a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcea1f09043ef28d37d6dcde560e2958a2c8fe8ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd1092942b0de8f89a07e4cdf79b8f9ac76a7bc5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf4a57a45afed570c80466a0de93c2b2303f81547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa4e675ce03f5db16a70d6276e3b95df8124a3bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x23484169921162f2a8799abb5f47184d697053f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3f847b01d4d498a293e3197b186356039ecd737f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d933226dcc39b9dcfcf0683c30ef49c8ccc5c98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x753f0f9ba003dda95eb9284533cf5b0f19e441dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b0f34aecb2f4c01f54592a5b2d9ccef3bcf39e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa7a9582c2563a1b923dbff6a8a2fa625ee2fb1f8` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 159
- Live contracts: 0
- Unknown liveness contracts: 159
- Source-verified contracts: 108
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=64, contamination review=3, source verified unclassified=41, unverified unclassified=51

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | candidate review | ArbitrumExecutor<br>`0x280e417ab3cafc378f3e6f91148fd8ef766d4c95` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| arbitrum | candidate review | ArbitrumExecutor<br>`0xce567352aee08f11682b71d58685eb9b01ea045a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| arbitrum | candidate review | Delegator<br>`0x92a9c92c215092720c731c96d4ff508c831a714f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| arbitrum | candidate review | Delegator<br>`0xbb7d93ef65f4131ed13aee0497503d57ff74ccfa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| arbitrum | candidate review | RailgunSmartWallet<br>`0x5eb61fd880ef65200ef0beb0d964fa6020fd5877` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| arbitrum | candidate review | RailgunSmartWallet<br>`0xed378e351fae20b849270b391ac4a973df9e87bf` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| arbitrum | candidate review | RailgunSmartWalletStub<br>`0x3c53c163c2ece58470ee219e647f18d133885c3a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| arbitrum | candidate review | RelayAdapt<br>`0x3bb38cd4c801cb0bed481bc3fc4b14b06d81c5d2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| arbitrum | candidate review | Treasury<br>`0x39f3df0a8a2a7469e03a9519a4cdd22525b080c1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| arbitrum | candidate review | Treasury<br>`0x9ac2ba4bf7facb0bbb33447e5ff8f8d63b71ddc1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| arbitrum | candidate review | VKeySetter<br>`0x7d9ef64f35b6afda8d258d1d2548a9ac997e35a1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| arbitrum | source verified unclassified | OnlyAddress<br>`0xfbfa61eaedd3537c58c94c4d125b6849c2740f49` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| arbitrum | source verified unclassified | PausableUpgradableProxy<br>`0x3b374464a714525498e445ba050b91571937bfc8` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| arbitrum | source verified unclassified | PausableUpgradableProxy<br>`0x707c42119a0a4bc5b60ba140b39fa08adf1efb61` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| arbitrum | source verified unclassified | PausableUpgradableProxy<br>`0x7c956db76b4bd483f96fce6bea3615f263afd333` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| arbitrum | source verified unclassified | ProxyAdmin<br>`0x5f67441090fbdf57f1d9f28dd65a29b0bb3e83a7` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| arbitrum | source verified unclassified | ProxyAdmin<br>`0xb00a75949806158a90a86f70b4d4393619a4d527` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x23484169921162f2a8799abb5f47184d697053f1` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3f847b01d4d498a293e3197b186356039ecd737f` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4d933226dcc39b9dcfcf0683c30ef49c8ccc5c98` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x753f0f9ba003dda95eb9284533cf5b0f19e441dc` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7b0f34aecb2f4c01f54592a5b2d9ccef3bcf39e3` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa7a9582c2563a1b923dbff6a8a2fa625ee2fb1f8` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | candidate review | Delegator<br>`0x4a7532f58259524251d7df1052762dc23c98bae7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | candidate review | Delegator<br>`0x92a9c92c215092720c731c96d4ff508c831a714f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | candidate review | Delegator<br>`0xc20871f4b5281416c2bf72125507c5fcba9079cd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | candidate review | Delegator<br>`0xfc4b580c9bda2eef4e94d9fb4bcb1f7a61660cf9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | candidate review | Distributor<br>`0x025e99b45c840c829da0dcdd46bb8c8738182793` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | candidate review | Distributor<br>`0xa353bc0454931ac46fd90c8ef27f908ab9e34686` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | candidate review | Getters<br>`0xc7ffa542736321a3dd69246d73987566a5486968` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | candidate review | Getters<br>`0xd0fe832d4108ee5ef215512f1a73c777b2bbebc8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | candidate review | GovernorRewards<br>`0x046e871ba524e4a868bd80f3b31721212847a682` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | candidate review | GovernorRewards<br>`0x7d9ef64f35b6afda8d258d1d2548a9ac997e35a1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | candidate review | GovernorRewards<br>`0xae4b2dccb9029c8ebd673626ffdfd6b29613af16` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | candidate review | RailgunLogic<br>`0xb8af889809211fb9496de885240593c1a9efd3a9` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | candidate review | RailgunLogic<br>`0xbcfa4de73afb071c9ff18a20a22f818e657c541a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | candidate review | RailgunSmartWallet<br>`0x2c4fb0bbb09945f8e5e2100d6cb4b69d994fa293` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | candidate review | RailgunSmartWallet<br>`0x3352c7f34494201cd0f3621a8885b9f201582c24` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | candidate review | RelayAdapt<br>`0x25f795a8ec8af7904aa403ff2cc7205ce683bf52` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | candidate review | Treasury<br>`0x120c07ad6eb579d40a20157a0025d95f7afea2c5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | candidate review | Treasury<br>`0x19b620929f97b7b990801496c3b361ca5def8c71` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | candidate review | Treasury<br>`0x1a73e89d101ea0083691a624962bb86831eec757` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | candidate review | Treasury<br>`0x5f67441090fbdf57f1d9f28dd65a29b0bb3e83a7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | candidate review | Treasury<br>`0xbf0af567d60318f66460ec78b464589e3f9da48e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | candidate review | VestLock<br>`0x27d30e803a0ec079daa3a2e6c3590cca9f63c9d8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | candidate review | VestLock<br>`0xf943253b4c53fcf69ce92b936666da26916197af` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | candidate review | VKeySetter<br>`0xed0e97ca39973dc97416460b113f161be6f07a08` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | candidate review | Voting<br>`0x569c15b356d3ba9c9f407945b12c867f7c3608c9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | source verified unclassified | OnlyAddress<br>`0x7d0488e99ca487cc91457b957664a9db647986d2` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | source verified unclassified | OnlyAddress<br>`0xaf51cd5f71ed88d6d1f65b575f1a8ce3a78ec42b` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | source verified unclassified | PausableUpgradableProxy<br>`0x7a865794e85c29a793962754370f8541d36dc12a` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | source verified unclassified | PausableUpgradableProxy<br>`0x7c956db76b4bd483f96fce6bea3615f263afd333` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | source verified unclassified | PausableUpgradableProxy<br>`0xa7a9582c2563a1b923dbff6a8a2fa625ee2fb1f8` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | source verified unclassified | PausableUpgradableProxy<br>`0xc851fbe0f07a326ce0326ccc70c2a62732e74d6c` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | source verified unclassified | PausableUpgradableProxy<br>`0xce567352aee08f11682b71d58685eb9b01ea045a` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | source verified unclassified | PausableUpgradableProxy<br>`0xd0198dde1187b12af01a743d9e9f2b4b84e8f59b` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | source verified unclassified | PausableUpgradableProxy<br>`0xdca05161ee5b5fa6df170191c88857e70ffb4094` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | source verified unclassified | ProxyAdmin<br>`0x3bb38cd4c801cb0bed481bc3fc4b14b06d81c5d2` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | source verified unclassified | ProxyAdmin<br>`0x5184cd71e0a6ee7eeb2e861c17926f20d6bf6877` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | source verified unclassified | ProxyAdmin<br>`0x707c42119a0a4bc5b60ba140b39fa08adf1efb61` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | source verified unclassified | ProxyAdmin<br>`0xc6368d9998ea333b37eb869f4e1749b9296e6d09` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | source verified unclassified | TreasuryMigration<br>`0x710fe3579e77c15d944844624d2feeac44f3cbfc` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1a45445d99f8d1310317ec7609372ccba80abbf8` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1cfad2ef1c1e2fbfccbbc2bf2884669f3b17c639` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4b1016ad05e87477a321fa54eab005c93319fbdd` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4f8e20f55f879bee7bc010bd6bd2138b34ac65c8` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5eb61fd880ef65200ef0beb0d964fa6020fd5877` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6e13386375c6a16560c7fb30f08d7ac4fc4da1ca` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8a013835727fa93975b0cbc37ad99670f0819064` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8ab41bf26e56ab9c4ac52306ee3cc819dc3c41f9` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9ac2ba4bf7facb0bbb33447e5ff8f8d63b71ddc1` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa214d47e24de000dcdc83ef6cda192e5fc74a067` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa375b97b5701bb85b963192072f1699b49c0e9f7` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfa7093cdd9ee6932b4eb2c9e1cde7ce00b1fa4b9` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | candidate review | ArbitrumSender<br>`0x20fa11c4f794ec1db3527bf618b02754ff393bd5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | candidate review | GovernorRewards<br>`0x27d30e803a0ec079daa3a2e6c3590cca9f63c9d8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | candidate review | GovernorRewards<br>`0x7d1c12008d180718938f535ee0dec7ac3473c179` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | candidate review | GovernorRewards<br>`0x842da7aceb5d1041d6496ffd71222322c959e665` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | candidate review | GovernorRewards<br>`0xaf51cd5f71ed88d6d1f65b575f1a8ce3a78ec42b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | candidate review | RailgunLogic<br>`0xc6368d9998ea333b37eb869f4e1749b9296e6d09` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | candidate review | RailgunSmartWallet<br>`0x321617e18be9ec7cfe5ab8856de2aabaa478e13b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | candidate review | VestLock<br>`0x19b620929f97b7b990801496c3b361ca5def8c71` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | contamination review | OnlyAddress<br>`0x3f9297fa8e166492e66df2215eb29e4f3c7aaac5` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | contamination review | Sweeper<br>`0x2ea76a3c4795dd1a5d206b285fd21b2fb83eaf1a` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | source verified unclassified | Deployer<br>`0x3f847b01d4d498a293e3197b186356039ecd737f` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | source verified unclassified | PausableUpgradableProxy<br>`0x2eca05b128bf5cbd5a73cc4bb625b51131ff119b` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | source verified unclassified | PausableUpgradableProxy<br>`0x39f3df0a8a2a7469e03a9519a4cdd22525b080c1` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | source verified unclassified | PausableUpgradableProxy<br>`0x4890eaf3d9b2b947980573934d7e0fa23dff11ac` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | source verified unclassified | PausableUpgradableProxy<br>`0x4d933226dcc39b9dcfcf0683c30ef49c8ccc5c98` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | source verified unclassified | PausableUpgradableProxy<br>`0xa02782ce1bf85f56f8cc7c0e66e61299ac75c86f` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | source verified unclassified | PausableUpgradableProxy<br>`0xa353bc0454931ac46fd90c8ef27f908ab9e34686` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | source verified unclassified | PausableUpgradableProxy<br>`0xbf0af567d60318f66460ec78b464589e3f9da48e` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | source verified unclassified | ProxyAdmin<br>`0x4f8e20f55f879bee7bc010bd6bd2138b34ac65c8` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | source verified unclassified | Sweeper<br>`0x9b1310bdcc19d172d0092240e33209a9156c8ee2` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1cfad2ef1c1e2fbfccbbc2bf2884669f3b17c639` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x232c417d74cb9abd24c49e17b37440ec4bc73fc4` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3352c7f34494201cd0f3621a8885b9f201582c24` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3b374464a714525498e445ba050b91571937bfc8` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3db1c53366fff57001ff6a9daacda1fcfbab56a9` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5eb61fd880ef65200ef0beb0d964fa6020fd5877` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7022be532d911cc3a7180288b504cdc3f498c3bf` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7a865794e85c29a793962754370f8541d36dc12a` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7c956db76b4bd483f96fce6bea3615f263afd333` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7d9ef64f35b6afda8d258d1d2548a9ac997e35a1` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | candidate review | Delegator<br>`0x5f67441090fbdf57f1d9f28dd65a29b0bb3e83a7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | candidate review | Distributor<br>`0x3b374464a714525498e445ba050b91571937bfc8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | candidate review | Getters<br>`0x08196b488d3376c318bdb2fa61ac7a9b0d216400` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | candidate review | Getters<br>`0x9797723685c2656863e154fe4377336093defa4f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | candidate review | GovernorRewards<br>`0x2e01c6f7734070acf5226c6cbbd326296183e32d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | candidate review | GovernorRewards<br>`0x7d9ef64f35b6afda8d258d1d2548a9ac997e35a1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | candidate review | GovernorRewards<br>`0xb8af889809211fb9496de885240593c1a9efd3a9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | candidate review | GovernorRewards<br>`0xd0fe832d4108ee5ef215512f1a73c777b2bbebc8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | candidate review | RailgunLogic<br>`0x280e417ab3cafc378f3e6f91148fd8ef766d4c95` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | candidate review | RailgunLogic<br>`0xc6368d9998ea333b37eb869f4e1749b9296e6d09` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | candidate review | RailgunSmartWallet<br>`0x7a33ed42b44126fa285512e0d7d10ffbbcd0d559` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | candidate review | RailgunSmartWallet<br>`0xa375b97b5701bb85b963192072f1699b49c0e9f7` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | candidate review | RelayAdapt<br>`0x969ee9ac1e0b5f5dd781f63a168c52b73062ff86` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | candidate review | Treasury<br>`0x025e99b45c840c829da0dcdd46bb8c8738182793` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | candidate review | Treasury<br>`0x1a73e89d101ea0083691a624962bb86831eec757` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | candidate review | Treasury<br>`0x7c956db76b4bd483f96fce6bea3615f263afd333` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | candidate review | VestLock<br>`0xb00a75949806158a90a86f70b4d4393619a4d527` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | candidate review | VKeySetter<br>`0x4025ee6512dbbda97049bcf5aa5d38c54af6be8a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | candidate review | Voting<br>`0x707c42119a0a4bc5b60ba140b39fa08adf1efb61` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | candidate review | Voting<br>`0xa353bc0454931ac46fd90c8ef27f908ab9e34686` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | contamination review | TreasuryMigration<br>`0x1a45445d99f8d1310317ec7609372ccba80abbf8` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | source verified unclassified | OnlyAddress<br>`0x8a013835727fa93975b0cbc37ad99670f0819064` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | source verified unclassified | OnlyAddress<br>`0xbf1cc6ac7204a9d9e1a5e9f08eef5472eb264c15` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | source verified unclassified | PausableUpgradableProxy<br>`0x25f795a8ec8af7904aa403ff2cc7205ce683bf52` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | source verified unclassified | PausableUpgradableProxy<br>`0x4a7532f58259524251d7df1052762dc23c98bae7` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | source verified unclassified | PausableUpgradableProxy<br>`0x5eb61fd880ef65200ef0beb0d964fa6020fd5877` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | source verified unclassified | PausableUpgradableProxy<br>`0x61ca7a0346a10cea849910c29617ac316461ad76` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | source verified unclassified | PausableUpgradableProxy<br>`0xa214d47e24de000dcdc83ef6cda192e5fc74a067` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | source verified unclassified | PausableUpgradableProxy<br>`0xd0198dde1187b12af01a743d9e9f2b4b84e8f59b` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | source verified unclassified | PausableUpgradableProxy<br>`0xdca05161ee5b5fa6df170191c88857e70ffb4094` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | source verified unclassified | ProxyAdmin<br>`0x3c53c163c2ece58470ee219e647f18d133885c3a` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | source verified unclassified | TreasuryMigration<br>`0x710fe3579e77c15d944844624d2feeac44f3cbfc` | non_address_book | unknown | unknown | verified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | unverified unclassified | UnnamedContract<br>`0x20fa11c4f794ec1db3527bf618b02754ff393bd5` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2ea76a3c4795dd1a5d206b285fd21b2fb83eaf1a` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2eca05b128bf5cbd5a73cc4bb625b51131ff119b` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | unverified unclassified | UnnamedContract<br>`0x353ce4721f0fa55eb8951bddfaf97ca7a3d4f9b9` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3ad1fc9c2f9852ffe5a4819b3ab0fbb0153297a4` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3bb38cd4c801cb0bed481bc3fc4b14b06d81c5d2` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | unverified unclassified | UnnamedContract<br>`0x435a488e5385249bdf722ec3c54031f952030853` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4f8e20f55f879bee7bc010bd6bd2138b34ac65c8` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | unverified unclassified | UnnamedContract<br>`0x569c15b356d3ba9c9f407945b12c867f7c3608c9` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | unverified unclassified | UnnamedContract<br>`0x56e456fc9b0e4119872e65035948ef0a432d9b4e` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | unverified unclassified | UnnamedContract<br>`0x684545ad2438f485c48b6c6e5c657ea9754f3f7b` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | unverified unclassified | UnnamedContract<br>`0x807a9726d5ecac755ddbbb4646f1a552f45e3006` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9086afc6fc88667d4031cabd556afdd0e3903b46` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9429fd601f8dd0c9ba5ac04de62b4b37b8151de1` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa20bafb78aa9ba98572aee533dfb30308188de5f` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa3b66d79042f4add423e47efa7dbb622a384b270` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | unverified unclassified | UnnamedContract<br>`0xbf0af567d60318f66460ec78b464589e3f9da48e` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc35b367fcf56ab9a641b54a242c9d49cfb5d50cb` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | unverified unclassified | UnnamedContract<br>`0xce567352aee08f11682b71d58685eb9b01ea045a` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | unverified unclassified | UnnamedContract<br>`0xcea1f09043ef28d37d6dcde560e2958a2c8fe8ef` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd1092942b0de8f89a07e4cdf79b8f9ac76a7bc5a` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf4a57a45afed570c80466a0de93c2b2303f81547` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |
| polygon | unverified unclassified | UnnamedContract<br>`0xfa4e675ce03f5db16a70d6276e3b95df8124a3bf` | non_address_book | unknown | unknown | unverified | n/a | `0x76eb574eff49fb64de6f7f2854952b05b5e24624` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2023-02-03 Zokyo.pdf](https://assets.railgun.org/docs/audits/2023-02-03%20Zokyo.pdf) | Zokyo | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2022-12-21 Zokyo.pdf](https://assets.railgun.org/docs/audits/2022-12-21%20Zokyo.pdf) | Zokyo | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [2022-09-14 Zokyo.pdf](https://assets.railgun.org/docs/audits/2022-09-14%20Zokyo.pdf) | Zokyo | Audit | 2022-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [2022-08-29 Hashcloak.pdf](https://assets.railgun.org/docs/audits/2022-08-29%20Hashcloak.pdf) | HashCloak | Audit | 2022-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [2022-04-21 Zokyo.pdf](https://assets.railgun.org/docs/audits/2022-04-21%20Zokyo.pdf) | Zokyo | Audit | 2022-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [2022-04-20 Zokyo.pdf](https://assets.railgun.org/docs/audits/2022-04-20%20Zokyo.pdf) | Zokyo | Audit | 2022-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [2021-11-23 Zokyo.pdf](https://assets.railgun.org/docs/audits/2021-11-23%20Zokyo.pdf) | Zokyo | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [2021-11-03 Zokyo.pdf](https://assets.railgun.org/docs/audits/2021-11-03%20Zokyo.pdf) | Zokyo | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 17 | n/a |
| [2021-11-02 Hacken.pdf](https://assets.railgun.org/docs/audits/2021-11-02%20Hacken.pdf) | Hacken | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 24 | n/a |
| [2021-04-01 ABDK.pdf](https://assets.railgun.org/docs/audits/2021-04-01%20ABDK.pdf) | ABDK | Audit | 2021-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13741] 2023-02-03 Zokyo.pdf — no match: Two contracts explicitly listed in scope: Sender.sol and Executor.sol. Audit date from cover page: 'February 3rd 2023'.
- [13742] 2022-12-21 Zokyo.pdf — no match: No reason recorded
- [13743] 2022-09-14 Zokyo.pdf — no match: No reason recorded
- [13744] 2022-08-29 Hashcloak.pdf — no match: No reason recorded
- [13745] 2022-04-21 Zokyo.pdf — matched: Only one contract, Rail.sol, is explicitly mentioned in scope.
- [13746] 2022-04-20 Zokyo.pdf — no match: No reason recorded
- [13747] 2021-11-23 Zokyo.pdf — no match: No reason recorded
- [13748] 2021-11-03 Zokyo.pdf — no match: No reason recorded
- [13749] 2021-11-02 Hacken.pdf — no match: No reason recorded
- [13750] 2021-04-01 ABDK.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2023-02-03 Zokyo.pdf | Sender | unmatched — not counted | — | listed in scope section: 'Within the scope of this audit, the team of auditors reviewed the following contract(s): Sender.sol Executor.sol' | no |
| 2023-02-03 Zokyo.pdf | Executor | unmatched — not counted | — | listed in scope section: 'Within the scope of this audit, the team of auditors reviewed the following contract(s): Sender.sol Executor.sol' | no |
| 2022-12-21 Zokyo.pdf | Commitments | unmatched — not counted | — | — | no |
| 2022-12-21 Zokyo.pdf | RailgunLogic | unmatched — not counted | — | — | no |
| 2022-12-21 Zokyo.pdf | RailgunSmartWallet | unmatched — not counted | — | — | no |
| 2022-09-14 Zokyo.pdf | Delegator | unmatched — not counted | — | — | no |
| 2022-09-14 Zokyo.pdf | Voting | unmatched — not counted | — | — | no |
| 2022-08-29 Hashcloak.pdf | GovernorRewards.sol | unmatched — not counted | — | — | no |
| 2022-08-29 Hashcloak.pdf | PublicInputHash.circom | unmatched — not counted | — | — | no |
| 2022-08-29 Hashcloak.pdf | Treasury.sol | unmatched — not counted | — | — | no |
| 2022-08-29 Hashcloak.pdf | Voting.sol | unmatched — not counted | — | — | no |
| 2022-08-29 Hashcloak.pdf | joinsplit.circom | unmatched — not counted | — | — | no |
| 2022-04-21 Zokyo.pdf | Rail | own contract | RailToken (selected) `0xe76c6c83af64e4c60245d8c7de953df673a7a33d` — deployed 2021-07-03 16:16:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-04-20 Zokyo.pdf | Commitments.sol | unmatched — not counted | — | — | no |
| 2022-04-20 Zokyo.pdf | Globals.sol | unmatched — not counted | — | — | no |
| 2022-04-20 Zokyo.pdf | Poseidon.sol | unmatched — not counted | — | — | no |
| 2022-04-20 Zokyo.pdf | RailgunLogic.sol | unmatched — not counted | — | — | no |
| 2022-04-20 Zokyo.pdf | Snark.sol | unmatched — not counted | — | — | no |
| 2022-04-20 Zokyo.pdf | TokenBlacklist.sol | unmatched — not counted | — | — | no |
| 2022-04-20 Zokyo.pdf | Verifier.sol | unmatched — not counted | — | — | no |
| 2021-11-23 Zokyo.pdf | Commitments | unmatched — not counted | — | — | no |
| 2021-11-23 Zokyo.pdf | Globals | unmatched — not counted | — | — | no |
| 2021-11-23 Zokyo.pdf | RailgunLogic | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Commitments | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Delegator | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Deployer | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Distributor | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Globals | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Multisend | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Poseidon | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Proxy | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | ProxyAdmin | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | RailgunLogic | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Snark | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Staking | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | TokenWhitelist | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Treasury | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Verifier | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | VestLock | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Voting | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Commitments | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | CommitmentsStub | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Delegator | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Deployer | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Distributor | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Getter | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Globals | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | GovernanceTarget | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Multisend | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Poseidon | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Proxy | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | ProxyAdmin | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | ProxyTarget | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | RailgunLogic | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Snark | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Staking | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | StakingStub | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | TokenStubs | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | TokenWhitelist | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | TokenWhitelistStub | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Treasury | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Verifier | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | VestLock | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Voting | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | Commitments | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | HashInputs | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | JoinSplit | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | Large | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | MerkleTree | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | RailgunLogic | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | Small | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | Snark | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | TokenWhitelist | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | Types | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | Verifier | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x3f847b01d4d498a293e3197b186356039ecd737f` | RailTokenFixedSupply | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x92a9c92c215092720c731c96d4ff508c831a714f` | RailTokenFixedSupply | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 60 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 74 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=1

Zero-match audit list:

- [13741] 2023-02-03 Zokyo.pdf
- [13742] 2022-12-21 Zokyo.pdf
- [13743] 2022-09-14 Zokyo.pdf
- [13744] 2022-08-29 Hashcloak.pdf
- [13746] 2022-04-20 Zokyo.pdf
- [13747] 2021-11-23 Zokyo.pdf
- [13748] 2021-11-03 Zokyo.pdf
- [13749] 2021-11-02 Hacken.pdf
- [13750] 2021-04-01 ABDK.pdf

Fork inheritance lineage and inherited audits are included when available.
