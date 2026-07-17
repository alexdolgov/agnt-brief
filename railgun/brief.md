# Agentic Audit Brief: Railgun

## Project Overview

- Project: Railgun (`railgun`)
- Website: [https://railgun.org](https://railgun.org)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.537Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: arbitrum, bsc, ethereum, polygon
- Contract surface: 85 unique implementations (158 raw deployments)
- DeFi Llama TVL: $232,664,353.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Privacy. Structurally: 38 project-authored contract(s) across 4 chain(s); 2 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 4 common project-authored base contract(s) (commitments, tokenblacklist, verifier). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 200; live-surface contracts included: 158 (98 live, 60 unknown).
- Excluded by liveness: 42 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 12/23 (52.2%)
- Deployed-live implementations: 25 of 85 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 14/25
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 60
- Unique implementations: 85
- Raw deployments: 158
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 10 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 14 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zokyo | Tier 2 | 13 | 52.0% | 2023-02 |
| Hacken | Tier 2 | 8 | 32.0% | 2021-11 |
| HashCloak | Tier 2 | 3 | 12.0% | 2022-08 |
| ABDK | Tier 2 | 1 | 4.0% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Delegator | unknown | bsc | n/a | 8 deployments: ethereum `0xb6d513f6222ee92fff975e901bd792e2513fb53b`; bsc [`0x4a7532f58259524251d7df1052762dc23c98bae7`](./contracts/bsc-56/0x4a7532f58259524251d7df1052762dc23c98bae7/); bsc `0x92a9c92c215092720c731c96d4ff508c831a714f`; bsc `0xc20871f4b5281416c2bf72125507c5fcba9079cd`; bsc `0xfc4b580c9bda2eef4e94d9fb4bcb1f7a61660cf9`; polygon `0x5f67441090fbdf57f1d9f28dd65a29b0bb3e83a7`; arbitrum `0x92a9c92c215092720c731c96d4ff508c831a714f`; arbitrum `0xbb7d93ef65f4131ed13aee0497503d57ff74ccfa` | ✅ Audited |
| Distributor | unknown | bsc | n/a | 4 deployments: ethereum `0x3bb38cd4c801cb0bed481bc3fc4b14b06d81c5d2`; bsc [`0x025e99b45c840c829da0dcdd46bb8c8738182793`](./contracts/bsc-56/0x025e99b45c840c829da0dcdd46bb8c8738182793/); bsc `0xa353bc0454931ac46fd90c8ef27f908ab9e34686`; polygon `0x3b374464a714525498e445ba050b91571937bfc8` | ✅ Audited |
| GovernorRewards | unknown | bsc | n/a | 12 deployments: ethereum `0x27d30e803a0ec079daa3a2e6c3590cca9f63c9d8`; ethereum `0x7d1c12008d180718938f535ee0dec7ac3473c179`; ethereum `0x842da7aceb5d1041d6496ffd71222322c959e665`; ethereum `0x9cfa13a191cc37ee5f76c2f070bfab8a3208f465`; ethereum `0xaf51cd5f71ed88d6d1f65b575f1a8ce3a78ec42b`; bsc [`0x046e871ba524e4a868bd80f3b31721212847a682`](./contracts/bsc-56/0x046e871ba524e4a868bd80f3b31721212847a682/); bsc `0x7d9ef64f35b6afda8d258d1d2548a9ac997e35a1`; bsc `0xae4b2dccb9029c8ebd673626ffdfd6b29613af16`; polygon `0x2e01c6f7734070acf5226c6cbbd326296183e32d`; polygon `0x7d9ef64f35b6afda8d258d1d2548a9ac997e35a1`; polygon `0xb8af889809211fb9496de885240593c1a9efd3a9`; polygon `0xd0fe832d4108ee5ef215512f1a73c777b2bbebc8` | ✅ Audited |
| Multisend | unknown | ethereum | n/a | [`0x92a9c92c215092720c731c96d4ff508c831a714f`](./contracts/ethereum-1/0x92a9c92c215092720c731c96d4ff508c831a714f/) | ✅ Audited |
| ProxyAdmin | governance | ethereum | n/a | [`0xed0e97ca39973dc97416460b113f161be6f07a08`](./contracts/ethereum-1/0xed0e97ca39973dc97416460b113f161be6f07a08/) | ✅ Audited |
| RailgunLogic | unknown | polygon | n/a | 6 deployments: ethereum `0xbcfa4de73afb071c9ff18a20a22f818e657c541a`; ethereum `0xc6368d9998ea333b37eb869f4e1749b9296e6d09`; bsc `0xb8af889809211fb9496de885240593c1a9efd3a9`; bsc `0xbcfa4de73afb071c9ff18a20a22f818e657c541a`; polygon [`0x280e417ab3cafc378f3e6f91148fd8ef766d4c95`](./contracts/polygon-137/0x280e417ab3cafc378f3e6f91148fd8ef766d4c95/); polygon `0xc6368d9998ea333b37eb869f4e1749b9296e6d09` | ✅ Audited |
| RailgunSmartWallet | unknown | ethereum | n/a | [`0xfa7093cdd9ee6932b4eb2c9e1cde7ce00b1fa4b9`](./contracts/ethereum-1/0xfa7093cdd9ee6932b4eb2c9e1cde7ce00b1fa4b9/) | ✅ Audited |
| RailgunSmartWallet | unknown | bsc | n/a | 8 deployments: ethereum `0x321617e18be9ec7cfe5ab8856de2aabaa478e13b`; ethereum `0xc0bef2d373a1efade8b952f33c1370e486f209cc`; bsc [`0x2c4fb0bbb09945f8e5e2100d6cb4b69d994fa293`](./contracts/bsc-56/0x2c4fb0bbb09945f8e5e2100d6cb4b69d994fa293/); bsc `0x3352c7f34494201cd0f3621a8885b9f201582c24`; polygon `0x7a33ed42b44126fa285512e0d7d10ffbbcd0d559`; polygon `0xa375b97b5701bb85b963192072f1699b49c0e9f7`; arbitrum `0x5eb61fd880ef65200ef0beb0d964fa6020fd5877`; arbitrum `0xed378e351fae20b849270b391ac4a973df9e87bf` | ✅ Audited |
| RailgunSmartWallet | unknown | bsc | n/a | [`0x590162bf4b50f6576a459b75309ee21d92178a10`](./contracts/bsc-56/0x590162bf4b50f6576a459b75309ee21d92178a10/) | ✅ Audited |
| RailgunSmartWallet | unknown | polygon | n/a | [`0x19b620929f97b7b990801496c3b361ca5def8c71`](./contracts/polygon-137/0x19b620929f97b7b990801496c3b361ca5def8c71/) | ✅ Audited |
| RailgunSmartWallet | unknown | arbitrum | n/a | [`0xfa7093cdd9ee6932b4eb2c9e1cde7ce00b1fa4b9`](./contracts/arbitrum-42161/0xfa7093cdd9ee6932b4eb2c9e1cde7ce00b1fa4b9/) | ✅ Audited |
| Staking | unknown | bsc | n/a | 3 deployments: ethereum `0xee6a649aa3766bd117e12c161726b693a1b2ee20`; bsc [`0x753f0f9ba003dda95eb9284533cf5b0f19e441dc`](./contracts/bsc-56/0x753f0f9ba003dda95eb9284533cf5b0f19e441dc/); polygon `0x9ac2ba4bf7facb0bbb33447e5ff8f8d63b71ddc1` | ✅ Audited |
| Treasury | unknown | polygon | n/a | 12 deployments: ethereum `0xc851fbe0f07a326ce0326ccc70c2a62732e74d6c`; bsc `0x120c07ad6eb579d40a20157a0025d95f7afea2c5`; bsc `0x19b620929f97b7b990801496c3b361ca5def8c71`; bsc `0x1a73e89d101ea0083691a624962bb86831eec757`; bsc `0x5f67441090fbdf57f1d9f28dd65a29b0bb3e83a7`; bsc `0xbf0af567d60318f66460ec78b464589e3f9da48e`; polygon [`0x025e99b45c840c829da0dcdd46bb8c8738182793`](./contracts/polygon-137/0x025e99b45c840c829da0dcdd46bb8c8738182793/); polygon `0x1a73e89d101ea0083691a624962bb86831eec757`; polygon `0x7c956db76b4bd483f96fce6bea3615f263afd333`; polygon `0xfa7093cdd9ee6932b4eb2c9e1cde7ce00b1fa4b9`; arbitrum `0x39f3df0a8a2a7469e03a9519a4cdd22525b080c1`; arbitrum `0x9ac2ba4bf7facb0bbb33447e5ff8f8d63b71ddc1` | ✅ Audited |
| Voting | unknown | bsc | n/a | 8 deployments: ethereum `0xc480f68a3dcc3edd82134fab45c14a0fcf1da3cc`; ethereum `0xf271318cd7e75660224ff209ae5aa914159d77fb`; ethereum `0xfc4b580c9bda2eef4e94d9fb4bcb1f7a61660cf9`; bsc [`0x569c15b356d3ba9c9f407945b12c867f7c3608c9`](./contracts/bsc-56/0x569c15b356d3ba9c9f407945b12c867f7c3608c9/); bsc `0xc3f2c8f9d5f0705de706b1302b7a039e1e11ac88`; polygon `0x707c42119a0a4bc5b60ba140b39fa08adf1efb61`; polygon `0xa353bc0454931ac46fd90c8ef27f908ab9e34686`; polygon `0xc3f2c8f9d5f0705de706b1302b7a039e1e11ac88` | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArbitrumExecutor | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x280e417ab3cafc378f3e6f91148fd8ef766d4c95`](./contracts/arbitrum-42161/0x280e417ab3cafc378f3e6f91148fd8ef766d4c95/); arbitrum `0xc480f68a3dcc3edd82134fab45c14a0fcf1da3cc`; arbitrum `0xce567352aee08f11682b71d58685eb9b01ea045a` | ⚠️ Unaudited |
| ArbitrumSender | unknown | ethereum | n/a | 3 deployments: ethereum [`0x20fa11c4f794ec1db3527bf618b02754ff393bd5`](./contracts/ethereum-1/0x20fa11c4f794ec1db3527bf618b02754ff393bd5/); ethereum `0x8c2bac19a9f06d41a11646a7c21379fcc50b8482`; ethereum `0xf627484f9918a57b6782978b743d6d330616345a` | ⚠️ Unaudited |
| Getters | unknown | polygon | n/a | 6 deployments: ethereum `0xbef5f5f176d1b313c26eed887f2124c9bfab020f`; ethereum `0xe90275239d734899e8d94646139213f6f97beb0e`; bsc `0xc7ffa542736321a3dd69246d73987566a5486968`; bsc `0xd0fe832d4108ee5ef215512f1a73c777b2bbebc8`; polygon [`0x08196b488d3376c318bdb2fa61ac7a9b0d216400`](./contracts/polygon-137/0x08196b488d3376c318bdb2fa61ac7a9b0d216400/); polygon `0x9797723685c2656863e154fe4377336093defa4f` | ⚠️ Unaudited |
| OnlyAddress | unknown | ethereum | n/a | [`0xd071eddff4728f7a33bafd2759db6543b6545da7`](./contracts/ethereum-1/0xd071eddff4728f7a33bafd2759db6543b6545da7/) | ⚠️ Unaudited |
| PausableUpgradableProxy | unknown | ethereum | n/a | [`0xf943253b4c53fcf69ce92b936666da26916197af`](./contracts/ethereum-1/0xf943253b4c53fcf69ce92b936666da26916197af/) | ⚠️ Unaudited |
| RailgunSmartWalletStub | unknown | arbitrum | n/a | [`0x3c53c163c2ece58470ee219e647f18d133885c3a`](./contracts/arbitrum-42161/0x3c53c163c2ece58470ee219e647f18d133885c3a/) | ⚠️ Unaudited |
| RailToken | token | ethereum | n/a | [`0xe76c6c83af64e4c60245d8c7de953df673a7a33d`](./contracts/ethereum-1/0xe76c6c83af64e4c60245d8c7de953df673a7a33d/) | ⚠️ Unaudited |
| RailTokenFixedSupply | token | bsc | n/a | 2 deployments: bsc [`0x3f847b01d4d498a293e3197b186356039ecd737f`](./contracts/bsc-56/0x3f847b01d4d498a293e3197b186356039ecd737f/); polygon `0x92a9c92c215092720c731c96d4ff508c831a714f` | ⚠️ Unaudited |
| RelayAdapt | unknown | bsc | n/a | 5 deployments: ethereum `0xc3f2c8f9d5f0705de706b1302b7a039e1e11ac88`; bsc [`0x25f795a8ec8af7904aa403ff2cc7205ce683bf52`](./contracts/bsc-56/0x25f795a8ec8af7904aa403ff2cc7205ce683bf52/); polygon `0x969ee9ac1e0b5f5dd781f63a168c52b73062ff86`; arbitrum `0x3bb38cd4c801cb0bed481bc3fc4b14b06d81c5d2`; arbitrum `0x5ad95c537b002770a39dea342c4bb2b68b1497aa` | ⚠️ Unaudited |
| VestLock | unknown | ethereum | n/a | 4 deployments: ethereum [`0x19b620929f97b7b990801496c3b361ca5def8c71`](./contracts/ethereum-1/0x19b620929f97b7b990801496c3b361ca5def8c71/); bsc `0x27d30e803a0ec079daa3a2e6c3590cca9f63c9d8`; bsc `0xf943253b4c53fcf69ce92b936666da26916197af`; polygon `0xb00a75949806158a90a86f70b4d4393619a4d527` | ⚠️ Unaudited |
| VKeySetter | unknown | polygon | n/a | 4 deployments: ethereum `0x9086afc6fc88667d4031cabd556afdd0e3903b46`; bsc `0xed0e97ca39973dc97416460b113f161be6f07a08`; polygon [`0x4025ee6512dbbda97049bcf5aa5d38c54af6be8a`](./contracts/polygon-137/0x4025ee6512dbbda97049bcf5aa5d38c54af6be8a/); arbitrum `0x7d9ef64f35b6afda8d258d1d2548a9ac997e35a1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (60)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1cfad2ef1c1e2fbfccbbc2bf2884669f3b17c639` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x232c417d74cb9abd24c49e17b37440ec4bc73fc4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3352c7f34494201cd0f3621a8885b9f201582c24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b374464a714525498e445ba050b91571937bfc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3db1c53366fff57001ff6a9daacda1fcfbab56a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4025ee6512dbbda97049bcf5aa5d38c54af6be8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5eb61fd880ef65200ef0beb0d964fa6020fd5877` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7022be532d911cc3a7180288b504cdc3f498c3bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a865794e85c29a793962754370f8541d36dc12a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c956db76b4bd483f96fce6bea3615f263afd333` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d9ef64f35b6afda8d258d1d2548a9ac997e35a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e5689bde31b2a8d934138dfd7e7aa4db5a68ded` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb00a75949806158a90a86f70b4d4393619a4d527` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb7d93ef65f4131ed13aee0497503d57ff74ccfa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc20871f4b5281416c2bf72125507c5fcba9079cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0198dde1187b12af01a743d9e9f2b4b84e8f59b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf035ceba76c0c1f2c15457775745b1f5dc42ca2c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1a45445d99f8d1310317ec7609372ccba80abbf8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1cfad2ef1c1e2fbfccbbc2bf2884669f3b17c639` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b1016ad05e87477a321fa54eab005c93319fbdd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f8e20f55f879bee7bc010bd6bd2138b34ac65c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5eb61fd880ef65200ef0beb0d964fa6020fd5877` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e13386375c6a16560c7fb30f08d7ac4fc4da1ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x741936fb83ddf324636d3048b3e6bc800b8d9e12` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a013835727fa93975b0cbc37ad99670f0819064` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ab41bf26e56ab9c4ac52306ee3cc819dc3c41f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ac2ba4bf7facb0bbb33447e5ff8f8d63b71ddc1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa214d47e24de000dcdc83ef6cda192e5fc74a067` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa375b97b5701bb85b963192072f1699b49c0e9f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa7093cdd9ee6932b4eb2c9e1cde7ce00b1fa4b9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x20fa11c4f794ec1db3527bf618b02754ff393bd5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2ea76a3c4795dd1a5d206b285fd21b2fb83eaf1a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2eca05b128bf5cbd5a73cc4bb625b51131ff119b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x353ce4721f0fa55eb8951bddfaf97ca7a3d4f9b9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3ad1fc9c2f9852ffe5a4819b3ab0fbb0153297a4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3bb38cd4c801cb0bed481bc3fc4b14b06d81c5d2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x435a488e5385249bdf722ec3c54031f952030853` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4f8e20f55f879bee7bc010bd6bd2138b34ac65c8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x569c15b356d3ba9c9f407945b12c867f7c3608c9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x56e456fc9b0e4119872e65035948ef0a432d9b4e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x684545ad2438f485c48b6c6e5c657ea9754f3f7b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x807a9726d5ecac755ddbbb4646f1a552f45e3006` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9086afc6fc88667d4031cabd556afdd0e3903b46` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9429fd601f8dd0c9ba5ac04de62b4b37b8151de1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa20bafb78aa9ba98572aee533dfb30308188de5f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa3b66d79042f4add423e47efa7dbb622a384b270` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbf0af567d60318f66460ec78b464589e3f9da48e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc35b367fcf56ab9a641b54a242c9d49cfb5d50cb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc7ffa542736321a3dd69246d73987566a5486968` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xce567352aee08f11682b71d58685eb9b01ea045a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcea1f09043ef28d37d6dcde560e2958a2c8fe8ef` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd1092942b0de8f89a07e4cdf79b8f9ac76a7bc5a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf4a57a45afed570c80466a0de93c2b2303f81547` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfa4e675ce03f5db16a70d6276e3b95df8124a3bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x23484169921162f2a8799abb5f47184d697053f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3f847b01d4d498a293e3197b186356039ecd737f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d933226dcc39b9dcfcf0683c30ef49c8ccc5c98` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x753f0f9ba003dda95eb9284533cf5b0f19e441dc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7b0f34aecb2f4c01f54592a5b2d9ccef3bcf39e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa7a9582c2563a1b923dbff6a8a2fa625ee2fb1f8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2023-02-03 Zokyo.pdf](https://assets.railgun.org/docs/audits/2023-02-03%20Zokyo.pdf) | Zokyo | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [2022-12-21 Zokyo.pdf](https://assets.railgun.org/docs/audits/2022-12-21%20Zokyo.pdf) | Zokyo | Audit | 2022-12 | stale | Direct | contract_name | 6 | n/a |
| [2022-09-14 Zokyo.pdf](https://assets.railgun.org/docs/audits/2022-09-14%20Zokyo.pdf) | Zokyo | Audit | 2022-09 | stale | Direct | contract_name | 2 | n/a |
| [2022-08-29 Hashcloak.pdf](https://assets.railgun.org/docs/audits/2022-08-29%20Hashcloak.pdf) | HashCloak | Audit | 2022-08 | stale | Direct | contract_name | 3 | n/a |
| [2022-04-21 Zokyo.pdf](https://assets.railgun.org/docs/audits/2022-04-21%20Zokyo.pdf) | Zokyo | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [2022-04-20 Zokyo.pdf](https://assets.railgun.org/docs/audits/2022-04-20%20Zokyo.pdf) | Zokyo | Audit | 2022-04 | stale | Direct | contract_name | 1 | n/a |
| [2021-11-23 Zokyo.pdf](https://assets.railgun.org/docs/audits/2021-11-23%20Zokyo.pdf) | Zokyo | Audit | 2021-11 | stale | Direct | contract_name | 1 | n/a |
| [2021-11-03 Zokyo.pdf](https://assets.railgun.org/docs/audits/2021-11-03%20Zokyo.pdf) | Zokyo | Audit | 2021-11 | stale | Direct | contract_name | 8 | n/a |
| [2021-11-02 Hacken.pdf](https://assets.railgun.org/docs/audits/2021-11-02%20Hacken.pdf) | Hacken | Audit | 2021-11 | stale | Direct | contract_name | 8 | n/a |
| [2021-04-01 ABDK.pdf](https://assets.railgun.org/docs/audits/2021-04-01%20ABDK.pdf) | ABDK | Audit | 2021-04 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x280e417ab3cafc378f3e6f91148fd8ef766d4c95`](./contracts/arbitrum-42161/0x280e417ab3cafc378f3e6f91148fd8ef766d4c95/) | ArbitrumExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20fa11c4f794ec1db3527bf618b02754ff393bd5`](./contracts/ethereum-1/0x20fa11c4f794ec1db3527bf618b02754ff393bd5/) | ArbitrumSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x08196b488d3376c318bdb2fa61ac7a9b0d216400`](./contracts/polygon-137/0x08196b488d3376c318bdb2fa61ac7a9b0d216400/) | Getters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd071eddff4728f7a33bafd2759db6543b6545da7`](./contracts/ethereum-1/0xd071eddff4728f7a33bafd2759db6543b6545da7/) | OnlyAddress | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf943253b4c53fcf69ce92b936666da26916197af`](./contracts/ethereum-1/0xf943253b4c53fcf69ce92b936666da26916197af/) | PausableUpgradableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3c53c163c2ece58470ee219e647f18d133885c3a`](./contracts/arbitrum-42161/0x3c53c163c2ece58470ee219e647f18d133885c3a/) | RailgunSmartWalletStub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe76c6c83af64e4c60245d8c7de953df673a7a33d`](./contracts/ethereum-1/0xe76c6c83af64e4c60245d8c7de953df673a7a33d/) | RailToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3f847b01d4d498a293e3197b186356039ecd737f`](./contracts/bsc-56/0x3f847b01d4d498a293e3197b186356039ecd737f/) | RailTokenFixedSupply | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x25f795a8ec8af7904aa403ff2cc7205ce683bf52`](./contracts/bsc-56/0x25f795a8ec8af7904aa403ff2cc7205ce683bf52/) | RelayAdapt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19b620929f97b7b990801496c3b361ca5def8c71`](./contracts/ethereum-1/0x19b620929f97b7b990801496c3b361ca5def8c71/) | VestLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4025ee6512dbbda97049bcf5aa5d38c54af6be8a`](./contracts/polygon-137/0x4025ee6512dbbda97049bcf5aa5d38c54af6be8a/) | VKeySetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 60 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=30

Zero-match audit list:

- [13741] 2023-02-03 Zokyo.pdf
- [13745] 2022-04-21 Zokyo.pdf

Fork inheritance lineage and inherited audits are included when available.
