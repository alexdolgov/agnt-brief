# Agentic Audit Brief: Centrifuge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Centrifuge (`centrifuge`)
- Website: [https://centrifuge.io/](https://centrifuge.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, hyperliquid, monad, optimism, pharos
- Contract surface: 258 unique implementations (520 raw deployments)
- Coverage basis: 0/134 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,799,152,243.00
- On-chain TVL (included contracts): $727,709,329.43
- TVL by chain: Ethereum $400,447,777.57 | Avalanche $259,827,751.04 | Base $64,168,095.57 | Bsc $3,049,876.85 | Optimism $199,748.90 | Arbitrum $16,079.50

## Project Description

This brief describes the observed EVM deployment and audit surface for Centrifuge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 318 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, hyperliquid, monad, optimism, pharos. Structural roles: 160 supporting, 158 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 318
- Structural roles: supporting (160), core (158)
- Contract kinds: contract (318)
- Detected standards: erc165 (80), multicall (24), erc20 (22), erc20permit (22), erc4626 (22), pausable (6)
- Frameworks: foundry (184), solmate (130)
- Upgradeable-pattern rows: 0

## Fork Analysis

22 of 414 contracts are derived from known codebases. 392 contracts have no detected origin.

### Forked Contracts

**AsyncVault** (`0x18ab9fc0b2e4fef9e0e03c8ec63ba287a3238257`, chain 1)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x1ad3644a0834e7c9ed4aec2660b0ee2ea18a1f36`, chain 1)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x381f4f3b43c30b78c1f7777553236e57bb8ae9ff`, chain 1)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x4865bc9701fbd1207a7b50e2af442c7daf154c9c`, chain 1)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x4880799ee5200fc58da299e965df644fbf46780b`, chain 1)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x559907981ed375b2d7eea6108273d181216a10cc`, chain 1)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x74a739ea1dc67c5a0179ebad665d1d3c4b80b712`, chain 1)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0xfe6920eb6c421f1179ca8c8d4170530cdbdfd77a`, chain 1)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x5aa84705a2cb2054ed303565336f188e6bffbaf5`, chain 56)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x6e6b8498415083a4386be83dd59edd4366402ffa`, chain 56)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x9effaa5614c689fa12892379e097b3acad239961`, chain 56)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0xcbafe61d84c6fb88252a6adf1c9cb0b9d029cb99`, chain 56)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x096dc8ce2fb630b2728c9a088a04b13bbbb5b4f4`, chain 8453)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x2aef271f00a9d1b0da8065d396f4e601dbd0ef0b`, chain 8453)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x2da40f061536c2f3a8f95f23a5f4c133d07d393a`, chain 8453)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x9183dbe074a61cebf82525c907458cabb984f9da`, chain 8453)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x99e9092bae6d4394e54034ecb1e45441678323b9`, chain 8453)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x04ffdbd63626942d5cabf12120805465b7a17547`, chain 42161)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0xe897e7f16e8f4ed568a62955b17744bcb3207d6e`, chain 42161)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x498b6394b778a75ed9b0148e379778070b4621d2`, chain 43114)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x5b9b6070c517be849ad79fc49d95e02084826f77`, chain 43114)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**SyncDepositVault** (`0x67fda49952cd0b059d019e51b58e742f9592bb8f`, chain 10)
Origin: 3f (`0x488079...46780b`)
Containment: 70.7% - 29 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- asyncManager()
- cancelDepositRequest(uint256,address)
- claimableCancelDepositRequest(uint256,address)
- claimableDepositRequest(uint256,address)
- claimCancelDepositRequest(uint256,address,address)
- deposit(uint256,address,address)
- mint(uint256,address,address)
- onCancelDepositClaimable(address,uint256)
- onDepositClaimable(address,uint256,uint256)
- pendingCancelDepositRequest(uint256,address)
- pendingDepositRequest(uint256,address)
- requestDeposit(uint256,address,address)

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x050206c38f06e4710c4a37d39f75ddc5c16a7396`, chain 143)
- UnnamedContract (`0x055589229506ee89645ef08ebe9b9a863486d0de`, chain 143)
- UnnamedContract (`0x05e22c20b21c1314a0c93d34855358b9b96133cf`, chain 143)
- UnnamedContract (`0x082c62088669facc1fa9f056c5efc8cbccda39b2`, chain 143)
- UnnamedContract (`0x0defb429b1663698da4bae3278393f6844c3392c`, chain 143)
- UnnamedContract (`0x12a110ce5f0fc871cc72bc7ecaf35cf39dd0f43e`, chain 143)
- UnnamedContract (`0x19a524d03aa94ecee41a80341537bcfcb47d3172`, chain 143)
- UnnamedContract (`0x19f46d8130e610c6c0f0116ea40fb781defade93`, chain 143)
- UnnamedContract (`0x1e70530e9555711f8df4838ab940b97c039b4037`, chain 143)
- UnnamedContract (`0x2539e60b0b50d7bd004a09e9d2b7e8c86eb0aaf6`, chain 143)
- UnnamedContract (`0x280c94eb440a8a75c2f8f6ca8c6faff907000823`, chain 143)
- UnnamedContract (`0x2a9b9c14851baf7ad19f26607c9171ca1e7a1a61`, chain 143)
- UnnamedContract (`0x2fabf1c784b8583d63c00c5c9c0377d8cf1a3245`, chain 143)
- UnnamedContract (`0x34e904237341c3de02d4447c3ff0ca8880ca6484`, chain 143)
- UnnamedContract (`0x35c837f0a54b715a23d193e1476bfc9bc30073be`, chain 143)
- UnnamedContract (`0x39cf679eb0ac9075cfb5f94930a367ba1557d955`, chain 143)
- UnnamedContract (`0x3b150b19245d2c366bc8f18c775b725dfb298f71`, chain 143)
- UnnamedContract (`0x3f0c8d8d2637881c3f6d8531f51a47c2094c918d`, chain 143)
- UnnamedContract (`0x493b6c8ccc7bfd43c5a20c4f2c648701f74e9130`, chain 143)
- UnnamedContract (`0x5187a505c485e22f0b8a5fbdf69ef1c29c478ce3`, chain 143)
- UnnamedContract (`0x55cde53b7dbc24336e34ffe233af8df10f72f0be`, chain 143)
- UnnamedContract (`0x796ba8a2f2d80340ddb6ca8e43e7883812f13cd5`, chain 143)
- UnnamedContract (`0x8ca5372a5613a6df75fd5fbc43216e68c1be6d38`, chain 143)
- UnnamedContract (`0x8e680873b4c77e6088b4ba0abd59d100c3d224a4`, chain 143)
- UnnamedContract (`0x926030b9912bd42b092151cfb2396499b967df3a`, chain 143)
- UnnamedContract (`0x971aca9b4ab4895f400ba042fd10a31c7918d220`, chain 143)
- UnnamedContract (`0x97cc7e9dafdd725cc23b25eebc93c4384b4fe30a`, chain 143)
- UnnamedContract (`0xa4a7bb3831958463b3fe3e27a6a160f764341953`, chain 143)
- UnnamedContract (`0xad48f183e586e92a591a610397ebf534609df797`, chain 143)
- UnnamedContract (`0xaffc269c8fe18ee9c7ddb22301ac2c2507d69bef`, chain 143)
- UnnamedContract (`0xbebef21d686a957dececce6a58455fa0f16754be`, chain 143)
- UnnamedContract (`0xbfc7b60684880457030c08acee2e675cbcb9d646`, chain 143)
- UnnamedContract (`0xc18e6f730896971a79d748e8dea61067a9bc6040`, chain 143)
- UnnamedContract (`0xc4f9a1dcf2e05eb55abb30baa7070838d3fd3d5b`, chain 143)
- UnnamedContract (`0xc5243bdea2d86ea7541ac69084df3eddc137a18b`, chain 143)
- UnnamedContract (`0xc52bd1bdfa0135147d3f01a0b6d6cd0a831dfe77`, chain 143)
- UnnamedContract (`0xcbdb6effc9b954d05df89c747ecaa8a143c26e6d`, chain 143)
- UnnamedContract (`0xce1616505f93215751fbb41efac618b631997c38`, chain 143)
- UnnamedContract (`0xceb7ed5d5b3bad3088f6a1697738b60d829635c6`, chain 143)
- UnnamedContract (`0xd40871a6336fd19a25a7bd96c0c0dd66ed60931d`, chain 143)
- UnnamedContract (`0xd517bc7ba17271a8d87be7355b2523bf5c750295`, chain 143)
- UnnamedContract (`0xd5b243f05b2906f1f6c80c6096945faada0731c1`, chain 143)
- UnnamedContract (`0xd9531ac47928c3386346f82d9a2478960bf2ca7b`, chain 143)
- UnnamedContract (`0xdb9c27762045addd713182521c0580c68bdf700a`, chain 143)
- UnnamedContract (`0xdc9456e7e20f15029c8231ec433a20f404b7235e`, chain 143)
- UnnamedContract (`0xe5423ed8602fa0f263e17b6212d88efe42317f06`, chain 143)
- UnnamedContract (`0xec3582fcdc34078a4b7a8c75a5a3ae46f48525ab`, chain 143)
- UnnamedContract (`0xf48256abddf96ecddc4b3dbd23e8c1921f9761ae`, chain 143)
- UnnamedContract (`0xf684014771c01e50b8b526968b3a1e33acda63f6`, chain 143)
- UnnamedContract (`0xf837a22883e004f705e0d7e1dee08e295df30b27`, chain 143)
- UnnamedContract (`0xff8ed1862f6ac3a8e89b81c75507c225e36e273d`, chain 143)
- UnnamedContract (`0x050206c38f06e4710c4a37d39f75ddc5c16a7396`, chain 1672)
- UnnamedContract (`0x055589229506ee89645ef08ebe9b9a863486d0de`, chain 1672)
- UnnamedContract (`0x05e22c20b21c1314a0c93d34855358b9b96133cf`, chain 1672)
- UnnamedContract (`0x0defb429b1663698da4bae3278393f6844c3392c`, chain 1672)
- UnnamedContract (`0x12a110ce5f0fc871cc72bc7ecaf35cf39dd0f43e`, chain 1672)
- UnnamedContract (`0x19a524d03aa94ecee41a80341537bcfcb47d3172`, chain 1672)
- UnnamedContract (`0x19f46d8130e610c6c0f0116ea40fb781defade93`, chain 1672)
- UnnamedContract (`0x1e70530e9555711f8df4838ab940b97c039b4037`, chain 1672)
- UnnamedContract (`0x2539e60b0b50d7bd004a09e9d2b7e8c86eb0aaf6`, chain 1672)
- UnnamedContract (`0x280c94eb440a8a75c2f8f6ca8c6faff907000823`, chain 1672)
- UnnamedContract (`0x2a9b9c14851baf7ad19f26607c9171ca1e7a1a61`, chain 1672)
- UnnamedContract (`0x35c837f0a54b715a23d193e1476bfc9bc30073be`, chain 1672)
- UnnamedContract (`0x39cf679eb0ac9075cfb5f94930a367ba1557d955`, chain 1672)
- UnnamedContract (`0x3b150b19245d2c366bc8f18c775b725dfb298f71`, chain 1672)
- UnnamedContract (`0x3f0c8d8d2637881c3f6d8531f51a47c2094c918d`, chain 1672)
- UnnamedContract (`0x493b6c8ccc7bfd43c5a20c4f2c648701f74e9130`, chain 1672)
- UnnamedContract (`0x5187a505c485e22f0b8a5fbdf69ef1c29c478ce3`, chain 1672)
- UnnamedContract (`0x55cde53b7dbc24336e34ffe233af8df10f72f0be`, chain 1672)
- UnnamedContract (`0x8ca5372a5613a6df75fd5fbc43216e68c1be6d38`, chain 1672)
- UnnamedContract (`0x8e680873b4c77e6088b4ba0abd59d100c3d224a4`, chain 1672)
- UnnamedContract (`0x971aca9b4ab4895f400ba042fd10a31c7918d220`, chain 1672)
- UnnamedContract (`0x97cc7e9dafdd725cc23b25eebc93c4384b4fe30a`, chain 1672)
- UnnamedContract (`0xa4a7bb3831958463b3fe3e27a6a160f764341953`, chain 1672)
- UnnamedContract (`0xaffc269c8fe18ee9c7ddb22301ac2c2507d69bef`, chain 1672)
- UnnamedContract (`0xbebef21d686a957dececce6a58455fa0f16754be`, chain 1672)
- UnnamedContract (`0xbfc7b60684880457030c08acee2e675cbcb9d646`, chain 1672)
- UnnamedContract (`0xc4f9a1dcf2e05eb55abb30baa7070838d3fd3d5b`, chain 1672)
- UnnamedContract (`0xc5243bdea2d86ea7541ac69084df3eddc137a18b`, chain 1672)
- UnnamedContract (`0xc52bd1bdfa0135147d3f01a0b6d6cd0a831dfe77`, chain 1672)
- UnnamedContract (`0xce1616505f93215751fbb41efac618b631997c38`, chain 1672)
- UnnamedContract (`0xceb7ed5d5b3bad3088f6a1697738b60d829635c6`, chain 1672)
- UnnamedContract (`0xd40871a6336fd19a25a7bd96c0c0dd66ed60931d`, chain 1672)
- UnnamedContract (`0xd517bc7ba17271a8d87be7355b2523bf5c750295`, chain 1672)
- UnnamedContract (`0xd5b243f05b2906f1f6c80c6096945faada0731c1`, chain 1672)
- UnnamedContract (`0xd9531ac47928c3386346f82d9a2478960bf2ca7b`, chain 1672)
- UnnamedContract (`0xdb9c27762045addd713182521c0580c68bdf700a`, chain 1672)
- UnnamedContract (`0xdc9456e7e20f15029c8231ec433a20f404b7235e`, chain 1672)
- UnnamedContract (`0xe5423ed8602fa0f263e17b6212d88efe42317f06`, chain 1672)
- UnnamedContract (`0xec3582fcdc34078a4b7a8c75a5a3ae46f48525ab`, chain 1672)
- UnnamedContract (`0xf48256abddf96ecddc4b3dbd23e8c1921f9761ae`, chain 1672)
- UnnamedContract (`0xf684014771c01e50b8b526968b3a1e33acda63f6`, chain 1672)
- UnnamedContract (`0xf837a22883e004f705e0d7e1dee08e295df30b27`, chain 1672)
- UnnamedContract (`0xff8ed1862f6ac3a8e89b81c75507c225e36e273d`, chain 1672)
- UnnamedContract (`0x1121f4e21ed8b9bc1bb9a2952cdd8639ac897784`, chain 43114)
- UnnamedContract (`0xfe6920eb6c421f1179ca8c8d4170530cdbdfd77a`, chain 43114)
- Accounting (`0x050206c38f06e4710c4a37d39f75ddc5c16a7396`, chain 1)
- Accounting (`0x050206c38f06e4710c4a37d39f75ddc5c16a7396`, chain 10)
- Accounting (`0x050206c38f06e4710c4a37d39f75ddc5c16a7396`, chain 56)
- Accounting (`0x050206c38f06e4710c4a37d39f75ddc5c16a7396`, chain 999)
- Accounting (`0x050206c38f06e4710c4a37d39f75ddc5c16a7396`, chain 8453)
- Accounting (`0x050206c38f06e4710c4a37d39f75ddc5c16a7396`, chain 42161)
- AsyncRequestManager (`0xf48256abddf96ecddc4b3dbd23e8c1921f9761ae`, chain 1)
- AsyncRequestManager (`0xf48256abddf96ecddc4b3dbd23e8c1921f9761ae`, chain 10)
- AsyncRequestManager (`0xf48256abddf96ecddc4b3dbd23e8c1921f9761ae`, chain 56)
- AsyncRequestManager (`0xf48256abddf96ecddc4b3dbd23e8c1921f9761ae`, chain 999)
- AsyncRequestManager (`0xf48256abddf96ecddc4b3dbd23e8c1921f9761ae`, chain 8453)
- AsyncRequestManager (`0xf48256abddf96ecddc4b3dbd23e8c1921f9761ae`, chain 42161)
- AsyncVaultFactory (`0x55cde53b7dbc24336e34ffe233af8df10f72f0be`, chain 1)
- AsyncVaultFactory (`0x55cde53b7dbc24336e34ffe233af8df10f72f0be`, chain 10)
- AsyncVaultFactory (`0x55cde53b7dbc24336e34ffe233af8df10f72f0be`, chain 56)
- AsyncVaultFactory (`0x55cde53b7dbc24336e34ffe233af8df10f72f0be`, chain 999)
- AsyncVaultFactory (`0x55cde53b7dbc24336e34ffe233af8df10f72f0be`, chain 8453)
- AsyncVaultFactory (`0x55cde53b7dbc24336e34ffe233af8df10f72f0be`, chain 42161)
- AxelarAdapter (`0x34e904237341c3de02d4447c3ff0ca8880ca6484`, chain 1)
- AxelarAdapter (`0x34e904237341c3de02d4447c3ff0ca8880ca6484`, chain 10)
- AxelarAdapter (`0x34e904237341c3de02d4447c3ff0ca8880ca6484`, chain 56)
- AxelarAdapter (`0x34e904237341c3de02d4447c3ff0ca8880ca6484`, chain 999)
- AxelarAdapter (`0x34e904237341c3de02d4447c3ff0ca8880ca6484`, chain 8453)
- AxelarAdapter (`0x34e904237341c3de02d4447c3ff0ca8880ca6484`, chain 42161)
- BalanceSheet (`0x12a110ce5f0fc871cc72bc7ecaf35cf39dd0f43e`, chain 1)
- BalanceSheet (`0x12a110ce5f0fc871cc72bc7ecaf35cf39dd0f43e`, chain 10)
- BalanceSheet (`0x12a110ce5f0fc871cc72bc7ecaf35cf39dd0f43e`, chain 56)
- BalanceSheet (`0x12a110ce5f0fc871cc72bc7ecaf35cf39dd0f43e`, chain 999)
- BalanceSheet (`0x12a110ce5f0fc871cc72bc7ecaf35cf39dd0f43e`, chain 8453)
- BalanceSheet (`0x12a110ce5f0fc871cc72bc7ecaf35cf39dd0f43e`, chain 42161)
- BatchRequestManager (`0xc52bd1bdfa0135147d3f01a0b6d6cd0a831dfe77`, chain 1)
- BatchRequestManager (`0xc52bd1bdfa0135147d3f01a0b6d6cd0a831dfe77`, chain 10)
- BatchRequestManager (`0xc52bd1bdfa0135147d3f01a0b6d6cd0a831dfe77`, chain 56)
- BatchRequestManager (`0xc52bd1bdfa0135147d3f01a0b6d6cd0a831dfe77`, chain 999)
- BatchRequestManager (`0xc52bd1bdfa0135147d3f01a0b6d6cd0a831dfe77`, chain 8453)
- BatchRequestManager (`0xc52bd1bdfa0135147d3f01a0b6d6cd0a831dfe77`, chain 42161)
- ChainlinkAdapter (`0x39cf679eb0ac9075cfb5f94930a367ba1557d955`, chain 1)
- ChainlinkAdapter (`0x39cf679eb0ac9075cfb5f94930a367ba1557d955`, chain 10)
- ChainlinkAdapter (`0x39cf679eb0ac9075cfb5f94930a367ba1557d955`, chain 56)
- ChainlinkAdapter (`0x39cf679eb0ac9075cfb5f94930a367ba1557d955`, chain 999)
- ChainlinkAdapter (`0x39cf679eb0ac9075cfb5f94930a367ba1557d955`, chain 8453)
- ChainlinkAdapter (`0x39cf679eb0ac9075cfb5f94930a367ba1557d955`, chain 42161)
- CircleDecoder (`0xd40871a6336fd19a25a7bd96c0c0dd66ed60931d`, chain 1)
- CircleDecoder (`0xd40871a6336fd19a25a7bd96c0c0dd66ed60931d`, chain 10)
- CircleDecoder (`0xd40871a6336fd19a25a7bd96c0c0dd66ed60931d`, chain 56)
- CircleDecoder (`0xd40871a6336fd19a25a7bd96c0c0dd66ed60931d`, chain 999)
- CircleDecoder (`0xd40871a6336fd19a25a7bd96c0c0dd66ed60931d`, chain 8453)
- CircleDecoder (`0xd40871a6336fd19a25a7bd96c0c0dd66ed60931d`, chain 42161)
- ContractUpdater (`0x3b150b19245d2c366bc8f18c775b725dfb298f71`, chain 1)
- ContractUpdater (`0x3b150b19245d2c366bc8f18c775b725dfb298f71`, chain 10)
- ContractUpdater (`0x3b150b19245d2c366bc8f18c775b725dfb298f71`, chain 56)
- ContractUpdater (`0x3b150b19245d2c366bc8f18c775b725dfb298f71`, chain 999)
- ContractUpdater (`0x3b150b19245d2c366bc8f18c775b725dfb298f71`, chain 8453)
- ContractUpdater (`0x3b150b19245d2c366bc8f18c775b725dfb298f71`, chain 42161)
- FreelyTransferable (`0x2a9b9c14851baf7ad19f26607c9171ca1e7a1a61`, chain 1)
- FreelyTransferable (`0x2a9b9c14851baf7ad19f26607c9171ca1e7a1a61`, chain 10)
- FreelyTransferable (`0x2a9b9c14851baf7ad19f26607c9171ca1e7a1a61`, chain 56)
- FreelyTransferable (`0x2a9b9c14851baf7ad19f26607c9171ca1e7a1a61`, chain 999)
- FreelyTransferable (`0x2a9b9c14851baf7ad19f26607c9171ca1e7a1a61`, chain 8453)
- FreelyTransferable (`0x2a9b9c14851baf7ad19f26607c9171ca1e7a1a61`, chain 42161)
- FreezeOnly (`0xd5b243f05b2906f1f6c80c6096945faada0731c1`, chain 1)
- FreezeOnly (`0xd5b243f05b2906f1f6c80c6096945faada0731c1`, chain 10)
- FreezeOnly (`0xd5b243f05b2906f1f6c80c6096945faada0731c1`, chain 56)
- FreezeOnly (`0xd5b243f05b2906f1f6c80c6096945faada0731c1`, chain 999)
- FreezeOnly (`0xd5b243f05b2906f1f6c80c6096945faada0731c1`, chain 8453)
- FreezeOnly (`0xd5b243f05b2906f1f6c80c6096945faada0731c1`, chain 42161)
- FullRestrictions (`0x8e680873b4c77e6088b4ba0abd59d100c3d224a4`, chain 1)
- FullRestrictions (`0x8e680873b4c77e6088b4ba0abd59d100c3d224a4`, chain 10)
- FullRestrictions (`0x8e680873b4c77e6088b4ba0abd59d100c3d224a4`, chain 56)
- FullRestrictions (`0x8e680873b4c77e6088b4ba0abd59d100c3d224a4`, chain 999)
- FullRestrictions (`0x8e680873b4c77e6088b4ba0abd59d100c3d224a4`, chain 8453)
- FullRestrictions (`0x8e680873b4c77e6088b4ba0abd59d100c3d224a4`, chain 42161)
- GasService (`0xbebef21d686a957dececce6a58455fa0f16754be`, chain 1)
- GasService (`0xbebef21d686a957dececce6a58455fa0f16754be`, chain 10)
- GasService (`0xbebef21d686a957dececce6a58455fa0f16754be`, chain 56)
- GasService (`0xbebef21d686a957dececce6a58455fa0f16754be`, chain 999)
- GasService (`0xbebef21d686a957dececce6a58455fa0f16754be`, chain 8453)
- GasService (`0xbebef21d686a957dececce6a58455fa0f16754be`, chain 42161)
- Gateway (`0x19a524d03aa94ecee41a80341537bcfcb47d3172`, chain 1)
- Gateway (`0x19a524d03aa94ecee41a80341537bcfcb47d3172`, chain 10)
- Gateway (`0x19a524d03aa94ecee41a80341537bcfcb47d3172`, chain 56)
- Gateway (`0x19a524d03aa94ecee41a80341537bcfcb47d3172`, chain 999)
- Gateway (`0x19a524d03aa94ecee41a80341537bcfcb47d3172`, chain 8453)
- Gateway (`0x19a524d03aa94ecee41a80341537bcfcb47d3172`, chain 42161)
- Holdings (`0x3f0c8d8d2637881c3f6d8531f51a47c2094c918d`, chain 1)
- Holdings (`0x3f0c8d8d2637881c3f6d8531f51a47c2094c918d`, chain 10)
- Holdings (`0x3f0c8d8d2637881c3f6d8531f51a47c2094c918d`, chain 56)
- Holdings (`0x3f0c8d8d2637881c3f6d8531f51a47c2094c918d`, chain 999)
- Holdings (`0x3f0c8d8d2637881c3f6d8531f51a47c2094c918d`, chain 8453)
- Holdings (`0x3f0c8d8d2637881c3f6d8531f51a47c2094c918d`, chain 42161)
- Hub (`0xa4a7bb3831958463b3fe3e27a6a160f764341953`, chain 1)
- Hub (`0xa4a7bb3831958463b3fe3e27a6a160f764341953`, chain 10)
- Hub (`0xa4a7bb3831958463b3fe3e27a6a160f764341953`, chain 56)
- Hub (`0xa4a7bb3831958463b3fe3e27a6a160f764341953`, chain 999)
- Hub (`0xa4a7bb3831958463b3fe3e27a6a160f764341953`, chain 8453)
- Hub (`0xa4a7bb3831958463b3fe3e27a6a160f764341953`, chain 42161)
- HubHandler (`0x0defb429b1663698da4bae3278393f6844c3392c`, chain 1)
- HubHandler (`0x0defb429b1663698da4bae3278393f6844c3392c`, chain 10)
- HubHandler (`0x0defb429b1663698da4bae3278393f6844c3392c`, chain 56)
- HubHandler (`0x0defb429b1663698da4bae3278393f6844c3392c`, chain 999)
- HubHandler (`0x0defb429b1663698da4bae3278393f6844c3392c`, chain 8453)
- HubHandler (`0x0defb429b1663698da4bae3278393f6844c3392c`, chain 42161)
- HubRegistry (`0x19f46d8130e610c6c0f0116ea40fb781defade93`, chain 1)
- HubRegistry (`0x19f46d8130e610c6c0f0116ea40fb781defade93`, chain 10)
- HubRegistry (`0x19f46d8130e610c6c0f0116ea40fb781defade93`, chain 56)
- HubRegistry (`0x19f46d8130e610c6c0f0116ea40fb781defade93`, chain 999)
- HubRegistry (`0x19f46d8130e610c6c0f0116ea40fb781defade93`, chain 8453)
- HubRegistry (`0x19f46d8130e610c6c0f0116ea40fb781defade93`, chain 42161)
- IdentityValuation (`0x05e22c20b21c1314a0c93d34855358b9b96133cf`, chain 1)
- IdentityValuation (`0x05e22c20b21c1314a0c93d34855358b9b96133cf`, chain 10)
- IdentityValuation (`0x05e22c20b21c1314a0c93d34855358b9b96133cf`, chain 56)
- IdentityValuation (`0x05e22c20b21c1314a0c93d34855358b9b96133cf`, chain 999)
- IdentityValuation (`0x05e22c20b21c1314a0c93d34855358b9b96133cf`, chain 8453)
- IdentityValuation (`0x05e22c20b21c1314a0c93d34855358b9b96133cf`, chain 42161)
- LayerZeroAdapter (`0xd517bc7ba17271a8d87be7355b2523bf5c750295`, chain 1)
- LayerZeroAdapter (`0xd517bc7ba17271a8d87be7355b2523bf5c750295`, chain 10)
- LayerZeroAdapter (`0xd517bc7ba17271a8d87be7355b2523bf5c750295`, chain 56)
- LayerZeroAdapter (`0xd517bc7ba17271a8d87be7355b2523bf5c750295`, chain 999)
- LayerZeroAdapter (`0xd517bc7ba17271a8d87be7355b2523bf5c750295`, chain 8453)
- LayerZeroAdapter (`0xd517bc7ba17271a8d87be7355b2523bf5c750295`, chain 42161)
- MerkleProofManagerFactory (`0xc5243bdea2d86ea7541ac69084df3eddc137a18b`, chain 1)
- MerkleProofManagerFactory (`0xc5243bdea2d86ea7541ac69084df3eddc137a18b`, chain 10)
- MerkleProofManagerFactory (`0xc5243bdea2d86ea7541ac69084df3eddc137a18b`, chain 56)
- MerkleProofManagerFactory (`0xc5243bdea2d86ea7541ac69084df3eddc137a18b`, chain 999)
- MerkleProofManagerFactory (`0xc5243bdea2d86ea7541ac69084df3eddc137a18b`, chain 8453)
- MerkleProofManagerFactory (`0xc5243bdea2d86ea7541ac69084df3eddc137a18b`, chain 42161)
- MessageDispatcher (`0xf837a22883e004f705e0d7e1dee08e295df30b27`, chain 1)
- MessageDispatcher (`0xf837a22883e004f705e0d7e1dee08e295df30b27`, chain 10)
- MessageDispatcher (`0xf837a22883e004f705e0d7e1dee08e295df30b27`, chain 56)
- MessageDispatcher (`0xf837a22883e004f705e0d7e1dee08e295df30b27`, chain 999)
- MessageDispatcher (`0xf837a22883e004f705e0d7e1dee08e295df30b27`, chain 8453)
- MessageDispatcher (`0xf837a22883e004f705e0d7e1dee08e295df30b27`, chain 42161)
- MessageProcessor (`0x97cc7e9dafdd725cc23b25eebc93c4384b4fe30a`, chain 1)
- MessageProcessor (`0x97cc7e9dafdd725cc23b25eebc93c4384b4fe30a`, chain 10)
- MessageProcessor (`0x97cc7e9dafdd725cc23b25eebc93c4384b4fe30a`, chain 56)
- MessageProcessor (`0x97cc7e9dafdd725cc23b25eebc93c4384b4fe30a`, chain 999)
- MessageProcessor (`0x97cc7e9dafdd725cc23b25eebc93c4384b4fe30a`, chain 8453)
- MessageProcessor (`0x97cc7e9dafdd725cc23b25eebc93c4384b4fe30a`, chain 42161)
- MultiAdapter (`0x35c837f0a54b715a23d193e1476bfc9bc30073be`, chain 1)
- MultiAdapter (`0x35c837f0a54b715a23d193e1476bfc9bc30073be`, chain 10)
- MultiAdapter (`0x35c837f0a54b715a23d193e1476bfc9bc30073be`, chain 56)
- MultiAdapter (`0x35c837f0a54b715a23d193e1476bfc9bc30073be`, chain 999)
- MultiAdapter (`0x35c837f0a54b715a23d193e1476bfc9bc30073be`, chain 8453)
- MultiAdapter (`0x35c837f0a54b715a23d193e1476bfc9bc30073be`, chain 42161)
- NAVManager (`0x493b6c8ccc7bfd43c5a20c4f2c648701f74e9130`, chain 1)
- NAVManager (`0x493b6c8ccc7bfd43c5a20c4f2c648701f74e9130`, chain 10)
- NAVManager (`0x493b6c8ccc7bfd43c5a20c4f2c648701f74e9130`, chain 56)
- NAVManager (`0x493b6c8ccc7bfd43c5a20c4f2c648701f74e9130`, chain 999)
- NAVManager (`0x493b6c8ccc7bfd43c5a20c4f2c648701f74e9130`, chain 8453)
- NAVManager (`0x493b6c8ccc7bfd43c5a20c4f2c648701f74e9130`, chain 42161)
- OnOfframpManagerFactory (`0x2539e60b0b50d7bd004a09e9d2b7e8c86eb0aaf6`, chain 1)
- OnOfframpManagerFactory (`0x2539e60b0b50d7bd004a09e9d2b7e8c86eb0aaf6`, chain 10)
- OnOfframpManagerFactory (`0x2539e60b0b50d7bd004a09e9d2b7e8c86eb0aaf6`, chain 56)
- OnOfframpManagerFactory (`0x2539e60b0b50d7bd004a09e9d2b7e8c86eb0aaf6`, chain 999)
- OnOfframpManagerFactory (`0x2539e60b0b50d7bd004a09e9d2b7e8c86eb0aaf6`, chain 8453)
- OnOfframpManagerFactory (`0x2539e60b0b50d7bd004a09e9d2b7e8c86eb0aaf6`, chain 42161)
- OpsGuardian (`0x055589229506ee89645ef08ebe9b9a863486d0de`, chain 1)
- OpsGuardian (`0x055589229506ee89645ef08ebe9b9a863486d0de`, chain 10)
- OpsGuardian (`0x055589229506ee89645ef08ebe9b9a863486d0de`, chain 56)
- OpsGuardian (`0x055589229506ee89645ef08ebe9b9a863486d0de`, chain 999)
- OpsGuardian (`0x055589229506ee89645ef08ebe9b9a863486d0de`, chain 8453)
- OpsGuardian (`0x055589229506ee89645ef08ebe9b9a863486d0de`, chain 42161)
- OracleValuation (`0xcbdb6effc9b954d05df89c747ecaa8a143c26e6d`, chain 1)
- OracleValuation (`0xcbdb6effc9b954d05df89c747ecaa8a143c26e6d`, chain 10)
- OracleValuation (`0xcbdb6effc9b954d05df89c747ecaa8a143c26e6d`, chain 56)
- OracleValuation (`0xcbdb6effc9b954d05df89c747ecaa8a143c26e6d`, chain 999)
- OracleValuation (`0xcbdb6effc9b954d05df89c747ecaa8a143c26e6d`, chain 8453)
- OracleValuation (`0xcbdb6effc9b954d05df89c747ecaa8a143c26e6d`, chain 42161)
- PoolEscrowFactory (`0x5187a505c485e22f0b8a5fbdf69ef1c29c478ce3`, chain 1)
- PoolEscrowFactory (`0x5187a505c485e22f0b8a5fbdf69ef1c29c478ce3`, chain 10)
- PoolEscrowFactory (`0x5187a505c485e22f0b8a5fbdf69ef1c29c478ce3`, chain 56)
- PoolEscrowFactory (`0x5187a505c485e22f0b8a5fbdf69ef1c29c478ce3`, chain 999)
- PoolEscrowFactory (`0x5187a505c485e22f0b8a5fbdf69ef1c29c478ce3`, chain 8453)
- PoolEscrowFactory (`0x5187a505c485e22f0b8a5fbdf69ef1c29c478ce3`, chain 42161)
- ProtocolGuardian (`0xceb7ed5d5b3bad3088f6a1697738b60d829635c6`, chain 1)
- ProtocolGuardian (`0xceb7ed5d5b3bad3088f6a1697738b60d829635c6`, chain 10)
- ProtocolGuardian (`0xceb7ed5d5b3bad3088f6a1697738b60d829635c6`, chain 56)
- ProtocolGuardian (`0xceb7ed5d5b3bad3088f6a1697738b60d829635c6`, chain 999)
- ProtocolGuardian (`0xceb7ed5d5b3bad3088f6a1697738b60d829635c6`, chain 8453)
- ProtocolGuardian (`0xceb7ed5d5b3bad3088f6a1697738b60d829635c6`, chain 42161)
- QueueManager (`0x971aca9b4ab4895f400ba042fd10a31c7918d220`, chain 1)
- QueueManager (`0x971aca9b4ab4895f400ba042fd10a31c7918d220`, chain 10)
- QueueManager (`0x971aca9b4ab4895f400ba042fd10a31c7918d220`, chain 56)
- QueueManager (`0x971aca9b4ab4895f400ba042fd10a31c7918d220`, chain 999)
- QueueManager (`0x971aca9b4ab4895f400ba042fd10a31c7918d220`, chain 8453)
- QueueManager (`0x971aca9b4ab4895f400ba042fd10a31c7918d220`, chain 42161)
- RedemptionRestrictions (`0xe5423ed8602fa0f263e17b6212d88efe42317f06`, chain 1)
- RedemptionRestrictions (`0xe5423ed8602fa0f263e17b6212d88efe42317f06`, chain 10)
- RedemptionRestrictions (`0xe5423ed8602fa0f263e17b6212d88efe42317f06`, chain 56)
- RedemptionRestrictions (`0xe5423ed8602fa0f263e17b6212d88efe42317f06`, chain 999)
- RedemptionRestrictions (`0xe5423ed8602fa0f263e17b6212d88efe42317f06`, chain 8453)
- RedemptionRestrictions (`0xe5423ed8602fa0f263e17b6212d88efe42317f06`, chain 42161)
- RefundEscrowFactory (`0xc4f9a1dcf2e05eb55abb30baa7070838d3fd3d5b`, chain 1)
- RefundEscrowFactory (`0xc4f9a1dcf2e05eb55abb30baa7070838d3fd3d5b`, chain 10)
- RefundEscrowFactory (`0xc4f9a1dcf2e05eb55abb30baa7070838d3fd3d5b`, chain 56)
- RefundEscrowFactory (`0xc4f9a1dcf2e05eb55abb30baa7070838d3fd3d5b`, chain 999)
- RefundEscrowFactory (`0xc4f9a1dcf2e05eb55abb30baa7070838d3fd3d5b`, chain 8453)
- RefundEscrowFactory (`0xc4f9a1dcf2e05eb55abb30baa7070838d3fd3d5b`, chain 42161)
- Root (`0x7ed48c31f2fdc40d37407cbabf0870b2b688368f`, chain 1)
- Root (`0xdc9456e7e20f15029c8231ec433a20f404b7235e`, chain 10)
- Root (`0x7ed48c31f2fdc40d37407cbabf0870b2b688368f`, chain 56)
- Root (`0xdc9456e7e20f15029c8231ec433a20f404b7235e`, chain 999)
- Root (`0x7ed48c31f2fdc40d37407cbabf0870b2b688368f`, chain 8453)
- Root (`0x7ed48c31f2fdc40d37407cbabf0870b2b688368f`, chain 42161)
- ShareClassManager (`0xaffc269c8fe18ee9c7ddb22301ac2c2507d69bef`, chain 1)
- ShareClassManager (`0xaffc269c8fe18ee9c7ddb22301ac2c2507d69bef`, chain 10)
- ShareClassManager (`0xaffc269c8fe18ee9c7ddb22301ac2c2507d69bef`, chain 56)
- ShareClassManager (`0xaffc269c8fe18ee9c7ddb22301ac2c2507d69bef`, chain 999)
- ShareClassManager (`0xaffc269c8fe18ee9c7ddb22301ac2c2507d69bef`, chain 8453)
- ShareClassManager (`0xaffc269c8fe18ee9c7ddb22301ac2c2507d69bef`, chain 42161)
- ShareToken (`0x9477724bb54ad5417de8baff29e59df3fb4da74f`, chain 1)
- ShareToken (`0xa6233014b9b7aaa74f38fa1977ffc7a89642dc72`, chain 1)
- ShareToken (`0xaaa0008c8cf3a7dca931adaf04336a5d808c82cc`, chain 1)
- ShareToken (`0x9e2679eabff131b8b1b48ff7566140794e0eedc4`, chain 10)
- ShareToken (`0x58f93d6b1ef2f44ec379cb975657c132cbed3b6b`, chain 56)
- ShareToken (`0xa5d465251fbcc907f5dd6bb2145488dfc6a2627b`, chain 56)
- ShareToken (`0x09b61343097c1f9b159a3ae7151298efd10f0db2`, chain 8453)
- ShareToken (`0x9477724bb54ad5417de8baff29e59df3fb4da74f`, chain 8453)
- ShareToken (`0x9c5c365e764829876243d0b289733b9d2b729685`, chain 8453)
- ShareToken (`0xa6233014b9b7aaa74f38fa1977ffc7a89642dc72`, chain 8453)
- ShareToken (`0xaaa0008c8cf3a7dca931adaf04336a5d808c82cc`, chain 8453)
- ShareToken (`0xa6233014b9b7aaa74f38fa1977ffc7a89642dc72`, chain 42161)
- ShareToken (`0xaaa0008c8cf3a7dca931adaf04336a5d808c82cc`, chain 42161)
- ShareToken (`0x58f93d6b1ef2f44ec379cb975657c132cbed3b6b`, chain 43114)
- ShareToken (`0xa5d465251fbcc907f5dd6bb2145488dfc6a2627b`, chain 43114)
- ShareToken (`0xa6233014b9b7aaa74f38fa1977ffc7a89642dc72`, chain 43114)
- ShareToken (`0xaaa0008c8cf3a7dca931adaf04336a5d808c82cc`, chain 43114)
- SimplePriceManager (`0x280c94eb440a8a75c2f8f6ca8c6faff907000823`, chain 1)
- SimplePriceManager (`0x280c94eb440a8a75c2f8f6ca8c6faff907000823`, chain 10)
- SimplePriceManager (`0x280c94eb440a8a75c2f8f6ca8c6faff907000823`, chain 56)
- SimplePriceManager (`0x280c94eb440a8a75c2f8f6ca8c6faff907000823`, chain 999)
- SimplePriceManager (`0x280c94eb440a8a75c2f8f6ca8c6faff907000823`, chain 8453)
- SimplePriceManager (`0x280c94eb440a8a75c2f8f6ca8c6faff907000823`, chain 42161)
- Spoke (`0xec3582fcdc34078a4b7a8c75a5a3ae46f48525ab`, chain 1)
- Spoke (`0xec3582fcdc34078a4b7a8c75a5a3ae46f48525ab`, chain 10)
- Spoke (`0xec3582fcdc34078a4b7a8c75a5a3ae46f48525ab`, chain 56)
- Spoke (`0xec3582fcdc34078a4b7a8c75a5a3ae46f48525ab`, chain 999)
- Spoke (`0xec3582fcdc34078a4b7a8c75a5a3ae46f48525ab`, chain 8453)
- Spoke (`0xec3582fcdc34078a4b7a8c75a5a3ae46f48525ab`, chain 42161)
- SubsidyManager (`0xbfc7b60684880457030c08acee2e675cbcb9d646`, chain 1)
- SubsidyManager (`0xbfc7b60684880457030c08acee2e675cbcb9d646`, chain 10)
- SubsidyManager (`0xbfc7b60684880457030c08acee2e675cbcb9d646`, chain 56)
- SubsidyManager (`0xbfc7b60684880457030c08acee2e675cbcb9d646`, chain 999)
- SubsidyManager (`0xbfc7b60684880457030c08acee2e675cbcb9d646`, chain 8453)
- SubsidyManager (`0xbfc7b60684880457030c08acee2e675cbcb9d646`, chain 42161)
- SyncDepositVaultFactory (`0xdb9c27762045addd713182521c0580c68bdf700a`, chain 1)
- SyncDepositVaultFactory (`0xdb9c27762045addd713182521c0580c68bdf700a`, chain 10)
- SyncDepositVaultFactory (`0xdb9c27762045addd713182521c0580c68bdf700a`, chain 56)
- SyncDepositVaultFactory (`0xdb9c27762045addd713182521c0580c68bdf700a`, chain 999)
- SyncDepositVaultFactory (`0xdb9c27762045addd713182521c0580c68bdf700a`, chain 8453)
- SyncDepositVaultFactory (`0xdb9c27762045addd713182521c0580c68bdf700a`, chain 42161)
- SyncManager (`0xff8ed1862f6ac3a8e89b81c75507c225e36e273d`, chain 1)
- SyncManager (`0xff8ed1862f6ac3a8e89b81c75507c225e36e273d`, chain 10)
- SyncManager (`0xff8ed1862f6ac3a8e89b81c75507c225e36e273d`, chain 56)
- SyncManager (`0xff8ed1862f6ac3a8e89b81c75507c225e36e273d`, chain 999)
- SyncManager (`0xff8ed1862f6ac3a8e89b81c75507c225e36e273d`, chain 8453)
- SyncManager (`0xff8ed1862f6ac3a8e89b81c75507c225e36e273d`, chain 42161)
- TokenFactory (`0xce1616505f93215751fbb41efac618b631997c38`, chain 1)
- TokenFactory (`0xce1616505f93215751fbb41efac618b631997c38`, chain 10)
- TokenFactory (`0xce1616505f93215751fbb41efac618b631997c38`, chain 56)
- TokenFactory (`0xce1616505f93215751fbb41efac618b631997c38`, chain 999)
- TokenFactory (`0xce1616505f93215751fbb41efac618b631997c38`, chain 8453)
- TokenFactory (`0xce1616505f93215751fbb41efac618b631997c38`, chain 42161)
- TokenRecoverer (`0x1e70530e9555711f8df4838ab940b97c039b4037`, chain 1)
- TokenRecoverer (`0x1e70530e9555711f8df4838ab940b97c039b4037`, chain 10)
- TokenRecoverer (`0x1e70530e9555711f8df4838ab940b97c039b4037`, chain 56)
- TokenRecoverer (`0x1e70530e9555711f8df4838ab940b97c039b4037`, chain 999)
- TokenRecoverer (`0x1e70530e9555711f8df4838ab940b97c039b4037`, chain 8453)
- TokenRecoverer (`0x1e70530e9555711f8df4838ab940b97c039b4037`, chain 42161)
- Tranche (`0x5a0f93d040de44e78f251b03c43be9cf317dcf64`, chain 1)
- Tranche (`0x8c213ee79581ff4984583c6a801e5263418c4b86`, chain 1)
- Tranche (`0x5a0f93d040de44e78f251b03c43be9cf317dcf64`, chain 8453)
- Tranche (`0x8c213ee79581ff4984583c6a801e5263418c4b86`, chain 8453)
- Tranche (`0x8c213ee79581ff4984583c6a801e5263418c4b86`, chain 42161)
- VaultDecoder (`0x8ca5372a5613a6df75fd5fbc43216e68c1be6d38`, chain 1)
- VaultDecoder (`0x8ca5372a5613a6df75fd5fbc43216e68c1be6d38`, chain 10)
- VaultDecoder (`0x8ca5372a5613a6df75fd5fbc43216e68c1be6d38`, chain 56)
- VaultDecoder (`0x8ca5372a5613a6df75fd5fbc43216e68c1be6d38`, chain 999)
- VaultDecoder (`0x8ca5372a5613a6df75fd5fbc43216e68c1be6d38`, chain 8453)
- VaultDecoder (`0x8ca5372a5613a6df75fd5fbc43216e68c1be6d38`, chain 42161)
- VaultRegistry (`0xd9531ac47928c3386346f82d9a2478960bf2ca7b`, chain 1)
- VaultRegistry (`0xd9531ac47928c3386346f82d9a2478960bf2ca7b`, chain 10)
- VaultRegistry (`0xd9531ac47928c3386346f82d9a2478960bf2ca7b`, chain 56)
- VaultRegistry (`0xd9531ac47928c3386346f82d9a2478960bf2ca7b`, chain 999)
- VaultRegistry (`0xd9531ac47928c3386346f82d9a2478960bf2ca7b`, chain 8453)
- VaultRegistry (`0xd9531ac47928c3386346f82d9a2478960bf2ca7b`, chain 42161)
- VaultRouter (`0xf684014771c01e50b8b526968b3a1e33acda63f6`, chain 1)
- VaultRouter (`0xf684014771c01e50b8b526968b3a1e33acda63f6`, chain 10)
- VaultRouter (`0xf684014771c01e50b8b526968b3a1e33acda63f6`, chain 56)
- VaultRouter (`0xf684014771c01e50b8b526968b3a1e33acda63f6`, chain 999)
- VaultRouter (`0xf684014771c01e50b8b526968b3a1e33acda63f6`, chain 8453)
- VaultRouter (`0xf684014771c01e50b8b526968b3a1e33acda63f6`, chain 42161)
- WormholeAdapter (`0x4be430401760075315e931dd34b892dfdfc706a7`, chain 1)
- WormholeAdapter (`0x4be430401760075315e931dd34b892dfdfc706a7`, chain 56)
- WormholeAdapter (`0x4be430401760075315e931dd34b892dfdfc706a7`, chain 8453)
- WormholeAdapter (`0x4be430401760075315e931dd34b892dfdfc706a7`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 318; live-surface rows included: 318 (318 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 414/418 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/134 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 230 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 27 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 230 of 258 unique; 28 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/157
- Verified + Unaudited implementations: 156
- Verified by bytecode match: 1
- Unverified implementations: 101
- Unique implementations: 258
- Raw deployments: 520
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $727,709,329.43
- Latest audit: 2020-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (156)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232221 | `0x4880799ee5200fc58da299e965df644fbf46780b` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | avalanche | unit-232456 | `0x58f93d6b1ef2f44ec379cb975657c132cbed3b6b` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | base | unit-232528 | `0x2aef271f00a9d1b0da8065d396f4e601dbd0ef0b` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232225 | `0x559907981ed375b2d7eea6108273d181216a10cc` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232220 | `0x4865bc9701fbd1207a7b50e2af442c7daf154c9c` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | ethereum | unit-232238 | `0xaaa0008c8cf3a7dca931adaf04336a5d808c82cc` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232209 | `0x1ad3644a0834e7c9ed4aec2660b0ee2ea18a1f36` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232206 | `0x18ab9fc0b2e4fef9e0e03c8ec63ba287a3238257` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | base | unit-232549 | `0x99e9092bae6d4394e54034ecb1e45441678323b9` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | base | unit-232550 | `0x9c5c365e764829876243d0b289733b9d2b729685` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | base | unit-232529 | `0x2da40f061536c2f3a8f95f23a5f4c133d07d393a` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | base | unit-232545 | `0x9183dbe074a61cebf82525c907458cabb984f9da` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | base | unit-232553 | `0xaaa0008c8cf3a7dca931adaf04336a5d808c82cc` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | bsc | unit-232491 | `0x9effaa5614c689fa12892379e097b3acad239961` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | bsc | unit-232500 | `0xcbafe61d84c6fb88252a6adf1c9cb0b9d029cb99` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | bsc | unit-232483 | `0x58f93d6b1ef2f44ec379cb975657c132cbed3b6b` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | bsc | unit-232484 | `0x5aa84705a2cb2054ed303565336f188e6bffbaf5` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | bsc | unit-232485 | `0x6e6b8498415083a4386be83dd59edd4366402ffa` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | bsc | unit-232493 | `0xa5d465251fbcc907f5dd6bb2145488dfc6a2627b` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232228 | `0x74a739ea1dc67c5a0179ebad665d1d3c4b80b712` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | ethereum | unit-232233 | `0x9477724bb54ad5417de8baff29e59df3fb4da74f` | ⚠️ Unaudited |
| SyncDepositVault | core_logic | project_anchor | own_supporting | 0 | optimism | unit-232279 | `0x67fda49952cd0b059d019e51b58e742f9592bb8f` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | optimism | unit-232284 | `0x9e2679eabff131b8b1b48ff7566140794e0eedc4` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-232448 | `0xe897e7f16e8f4ed568a62955b17744bcb3207d6e` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | arbitrum | unit-232432 | `0xaaa0008c8cf3a7dca931adaf04336a5d808c82cc` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-232403 | `0x04ffdbd63626942d5cabf12120805465b7a17547` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | avalanche | unit-232460 | `0xaaa0008c8cf3a7dca931adaf04336a5d808c82cc` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-232455 | `0x498b6394b778a75ed9b0148e379778070b4621d2` | ⚠️ Unaudited |
| Accounting | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232201 | 6 deployments: ethereum `0x050206c38f06e4710c4a37d39f75ddc5c16a7396`; optimism `0x050206c38f06e4710c4a37d39f75ddc5c16a7396`; bsc `0x050206c38f06e4710c4a37d39f75ddc5c16a7396`; hyperliquid `0x050206c38f06e4710c4a37d39f75ddc5c16a7396`; base `0x050206c38f06e4710c4a37d39f75ddc5c16a7396`; arbitrum `0x050206c38f06e4710c4a37d39f75ddc5c16a7396` | ⚠️ Unaudited |
| AsyncRequestManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-232255 | 6 deployments: ethereum `0xf48256abddf96ecddc4b3dbd23e8c1921f9761ae`; optimism `0xf48256abddf96ecddc4b3dbd23e8c1921f9761ae`; bsc `0xf48256abddf96ecddc4b3dbd23e8c1921f9761ae`; hyperliquid `0xf48256abddf96ecddc4b3dbd23e8c1921f9761ae`; base `0xf48256abddf96ecddc4b3dbd23e8c1921f9761ae`; arbitrum `0xf48256abddf96ecddc4b3dbd23e8c1921f9761ae` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232216 | `0x381f4f3b43c30b78c1f7777553236e57bb8ae9ff` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232258 | `0xfe6920eb6c421f1179ca8c8d4170530cdbdfd77a` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | base | unit-232518 | `0x096dc8ce2fb630b2728c9a088a04b13bbbb5b4f4` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-232457 | `0x5b9b6070c517be849ad79fc49d95e02084826f77` | ⚠️ Unaudited |
| AsyncVaultFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-232226 | 4 deployments: ethereum `0x55cde53b7dbc24336e34ffe233af8df10f72f0be`; bsc `0x55cde53b7dbc24336e34ffe233af8df10f72f0be`; base `0x55cde53b7dbc24336e34ffe233af8df10f72f0be`; arbitrum `0x55cde53b7dbc24336e34ffe233af8df10f72f0be` | ⚠️ Unaudited |
| AsyncVaultFactory | registry | project_anchor | own_supporting | 0 | optimism | unit-232278 | 2 deployments: optimism `0x55cde53b7dbc24336e34ffe233af8df10f72f0be`; hyperliquid `0x55cde53b7dbc24336e34ffe233af8df10f72f0be` | ⚠️ Unaudited |
| AxelarAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-232214 | `0x34e904237341c3de02d4447c3ff0ca8880ca6484` | ⚠️ Unaudited |
| AxelarAdapter | adapter | project_anchor | own_supporting | 0 | optimism | unit-232271 | 4 deployments: optimism `0x34e904237341c3de02d4447c3ff0ca8880ca6484`; hyperliquid `0x34e904237341c3de02d4447c3ff0ca8880ca6484`; base `0x34e904237341c3de02d4447c3ff0ca8880ca6484`; arbitrum `0x34e904237341c3de02d4447c3ff0ca8880ca6484` | ⚠️ Unaudited |
| AxelarAdapter | adapter | project_anchor | own_supporting | 0 | bsc | unit-232474 | `0x34e904237341c3de02d4447c3ff0ca8880ca6484` | ⚠️ Unaudited |
| BalanceSheet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232205 | 4 deployments: ethereum `0x12a110ce5f0fc871cc72bc7ecaf35cf39dd0f43e`; bsc `0x12a110ce5f0fc871cc72bc7ecaf35cf39dd0f43e`; base `0x12a110ce5f0fc871cc72bc7ecaf35cf39dd0f43e`; arbitrum `0x12a110ce5f0fc871cc72bc7ecaf35cf39dd0f43e` | ⚠️ Unaudited |
| BalanceSheet | unknown | project_anchor | own_supporting | 0 | optimism | unit-232264 | 2 deployments: optimism `0x12a110ce5f0fc871cc72bc7ecaf35cf39dd0f43e`; hyperliquid `0x12a110ce5f0fc871cc72bc7ecaf35cf39dd0f43e` | ⚠️ Unaudited |
| BatchRequestManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-232244 | 6 deployments: ethereum `0xc52bd1bdfa0135147d3f01a0b6d6cd0a831dfe77`; optimism `0xc52bd1bdfa0135147d3f01a0b6d6cd0a831dfe77`; bsc `0xc52bd1bdfa0135147d3f01a0b6d6cd0a831dfe77`; hyperliquid `0xc52bd1bdfa0135147d3f01a0b6d6cd0a831dfe77`; base `0xc52bd1bdfa0135147d3f01a0b6d6cd0a831dfe77`; arbitrum `0xc52bd1bdfa0135147d3f01a0b6d6cd0a831dfe77` | ⚠️ Unaudited |
| CentrifugeRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x2f445ba946044c5f508a63eeaf7eab673c69a1f4`; ethereum `0x32043a41f4be198c4f6590312f7a7b91624cab57`; ethereum `0xb1a07d21fc8ed1ef2208395bb3b262c66d3d3281`; base `0x54836e16ab6ba542a1eea2e64e05b3eb6a2fca7b`; base `0x5b82ffdac6d77fbd21a4eeb9b8c540f77eed1231`; base `0xf35501e7fc4a076e744dbafa883ced74ccf5009d`; arbitrum `0x2f445ba946044c5f508a63eeaf7eab673c69a1f4`; arbitrum `0xa3ce97352c1469884eef3547ec9362329fe78cf0`; arbitrum `0xf35501e7fc4a076e744dbafa883ced74ccf5009d` | ⚠️ Unaudited |
| CFG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0xcccccccccc33d538dbc2ee4feab0a7a1ff4e8a94`; bsc `0xcccccccccc33d538dbc2ee4feab0a7a1ff4e8a94`; base `0xcccccccccc33d538dbc2ee4feab0a7a1ff4e8a94`; arbitrum `0xcccccccccc33d538dbc2ee4feab0a7a1ff4e8a94`; avalanche `0xcccccccccc33d538dbc2ee4feab0a7a1ff4e8a94` | ⚠️ Unaudited |
| ChainlinkAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-232217 | `0x39cf679eb0ac9075cfb5f94930a367ba1557d955` | ⚠️ Unaudited |
| ChainlinkAdapter | adapter | project_anchor | own_supporting | 0 | optimism | unit-232273 | `0x39cf679eb0ac9075cfb5f94930a367ba1557d955` | ⚠️ Unaudited |
| ChainlinkAdapter | adapter | project_anchor | own_supporting | 0 | bsc | unit-232476 | `0x39cf679eb0ac9075cfb5f94930a367ba1557d955` | ⚠️ Unaudited |
| ChainlinkAdapter | adapter | project_anchor | own_supporting | 0 | hyperliquid | unit-232587 | `0x39cf679eb0ac9075cfb5f94930a367ba1557d955` | ⚠️ Unaudited |
| ChainlinkAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-232532 | `0x39cf679eb0ac9075cfb5f94930a367ba1557d955` | ⚠️ Unaudited |
| ChainlinkAdapter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-232417 | `0x39cf679eb0ac9075cfb5f94930a367ba1557d955` | ⚠️ Unaudited |
| CircleDecoder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232248 | 6 deployments: ethereum `0xd40871a6336fd19a25a7bd96c0c0dd66ed60931d`; optimism `0xd40871a6336fd19a25a7bd96c0c0dd66ed60931d`; bsc `0xd40871a6336fd19a25a7bd96c0c0dd66ed60931d`; hyperliquid `0xd40871a6336fd19a25a7bd96c0c0dd66ed60931d`; base `0xd40871a6336fd19a25a7bd96c0c0dd66ed60931d`; arbitrum `0xd40871a6336fd19a25a7bd96c0c0dd66ed60931d` | ⚠️ Unaudited |
| ContractUpdater | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232218 | 6 deployments: ethereum `0x3b150b19245d2c366bc8f18c775b725dfb298f71`; optimism `0x3b150b19245d2c366bc8f18c775b725dfb298f71`; bsc `0x3b150b19245d2c366bc8f18c775b725dfb298f71`; hyperliquid `0x3b150b19245d2c366bc8f18c775b725dfb298f71`; base `0x3b150b19245d2c366bc8f18c775b725dfb298f71`; arbitrum `0x3b150b19245d2c366bc8f18c775b725dfb298f71` | ⚠️ Unaudited |
| DelayedAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2559998026796ca6fd057f3aa66f2d6ecded9028`; base `0x2559998026796ca6fd057f3aa66f2d6ecded9028`; arbitrum `0xfe364bedef1707dd4f2df358da2c1908824cc4ac` | ⚠️ Unaudited |
| ERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x2b51e2ec9551f9b87b321f63b805871f1c81ba97`; base `0x9abb034e34e72e72de6e95b4b6069ce1c3370166`; base `0xf949df73c002bf694b1b6f69c623fdef2f1e68c1` | ⚠️ Unaudited |
| ERC7540VaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: ethereum `0x6f9dba3d3a3ab083bca60ef82784cf12a6ec24b8`; ethereum `0x7f192f34499ddb2be06c4754cff2a21c4b056994`; ethereum `0xed590de3b8affb2f10bafdcd643595b1b61e47c2`; base `0x6215b227c64262f7487e7881fba39a68fbf5ab35`; base `0xcad01f5a7ee9ba09a1afdb9dcaa58ce024e4462c`; base `0xe79f06573d6af1b66166a926483ba00924285d20`; arbitrum `0x32043a41f4be198c4f6590312f7a7b91624cab57`; arbitrum `0x6f9dba3d3a3ab083bca60ef82784cf12a6ec24b8`; arbitrum `0xaffc66ed2964d80b2568e8e1b8c0e25449325fc7` | ⚠️ Unaudited |
| FreelyTransferable | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232213 | 4 deployments: ethereum `0x2a9b9c14851baf7ad19f26607c9171ca1e7a1a61`; bsc `0x2a9b9c14851baf7ad19f26607c9171ca1e7a1a61`; base `0x2a9b9c14851baf7ad19f26607c9171ca1e7a1a61`; arbitrum `0x2a9b9c14851baf7ad19f26607c9171ca1e7a1a61` | ⚠️ Unaudited |
| FreelyTransferable | unknown | project_anchor | own_supporting | 0 | optimism | unit-232270 | 2 deployments: optimism `0x2a9b9c14851baf7ad19f26607c9171ca1e7a1a61`; hyperliquid `0x2a9b9c14851baf7ad19f26607c9171ca1e7a1a61` | ⚠️ Unaudited |
| FreezeOnly | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232250 | 4 deployments: ethereum `0xd5b243f05b2906f1f6c80c6096945faada0731c1`; bsc `0xd5b243f05b2906f1f6c80c6096945faada0731c1`; base `0xd5b243f05b2906f1f6c80c6096945faada0731c1`; arbitrum `0xd5b243f05b2906f1f6c80c6096945faada0731c1` | ⚠️ Unaudited |
| FreezeOnly | unknown | project_anchor | own_supporting | 0 | optimism | unit-232297 | 2 deployments: optimism `0xd5b243f05b2906f1f6c80c6096945faada0731c1`; hyperliquid `0xd5b243f05b2906f1f6c80c6096945faada0731c1` | ⚠️ Unaudited |
| FullRestrictions | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232232 | 4 deployments: ethereum `0x8e680873b4c77e6088b4ba0abd59d100c3d224a4`; bsc `0x8e680873b4c77e6088b4ba0abd59d100c3d224a4`; base `0x8e680873b4c77e6088b4ba0abd59d100c3d224a4`; arbitrum `0x8e680873b4c77e6088b4ba0abd59d100c3d224a4` | ⚠️ Unaudited |
| FullRestrictions | unknown | project_anchor | own_supporting | 0 | optimism | unit-232281 | 2 deployments: optimism `0x8e680873b4c77e6088b4ba0abd59d100c3d224a4`; hyperliquid `0x8e680873b4c77e6088b4ba0abd59d100c3d224a4` | ⚠️ Unaudited |
| GasService | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232240 | `0xbebef21d686a957dececce6a58455fa0f16754be` | ⚠️ Unaudited |
| GasService | unknown | project_anchor | own_supporting | 0 | optimism | unit-232287 | `0xbebef21d686a957dececce6a58455fa0f16754be` | ⚠️ Unaudited |
| GasService | unknown | project_anchor | own_supporting | 0 | bsc | unit-232495 | `0xbebef21d686a957dececce6a58455fa0f16754be` | ⚠️ Unaudited |
| GasService | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-232599 | `0xbebef21d686a957dececce6a58455fa0f16754be` | ⚠️ Unaudited |
| GasService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0x3c9c09c4cfda9d2c35142aaea706e9fc9ea28f27`; base `0x09ab10a9c3e6eac1d18270a2322b6113f4c7f5e8`; base `0x32043a41f4be198c4f6590312f7a7b91624cab57`; arbitrum `0x3c9c09c4cfda9d2c35142aaea706e9fc9ea28f27` | ⚠️ Unaudited |
| GasService | unknown | project_anchor | own_supporting | 0 | base | unit-232555 | `0xbebef21d686a957dececce6a58455fa0f16754be` | ⚠️ Unaudited |
| GasService | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232434 | `0xbebef21d686a957dececce6a58455fa0f16754be` | ⚠️ Unaudited |
| Gateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232207 | `0x19a524d03aa94ecee41a80341537bcfcb47d3172` | ⚠️ Unaudited |
| Gateway | unknown | project_anchor | own_supporting | 0 | optimism | unit-232265 | `0x19a524d03aa94ecee41a80341537bcfcb47d3172` | ⚠️ Unaudited |
| Gateway | unknown | project_anchor | own_supporting | 0 | bsc | unit-232468 | `0x19a524d03aa94ecee41a80341537bcfcb47d3172` | ⚠️ Unaudited |
| Gateway | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-232579 | `0x19a524d03aa94ecee41a80341537bcfcb47d3172` | ⚠️ Unaudited |
| Gateway | unknown | project_anchor | own_supporting | 0 | base | unit-232522 | `0x19a524d03aa94ecee41a80341537bcfcb47d3172` | ⚠️ Unaudited |
| Gateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0x634f036fe66579e901c7ba34e33df422e37a0037`; ethereum `0x7829e5ca4286df66e9f58160544097db517a3b8c`; base `0x3423d288f2c04eb072ebb973f8c8b9b73caa4361`; base `0x634f036fe66579e901c7ba34e33df422e37a0037`; base `0xbbaf0e2be11e90b92ea0929e7bda28f5bdb22d29`; arbitrum `0x7829e5ca4286df66e9f58160544097db517a3b8c` | ⚠️ Unaudited |
| Gateway | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232409 | `0x19a524d03aa94ecee41a80341537bcfcb47d3172` | ⚠️ Unaudited |
| Guardian | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x09ab10a9c3e6eac1d18270a2322b6113f4c7f5e8`; base `0x427a1ce127b1775e4cbd4f58ad468b9f832ea7e9`; base `0xa0e3a5709995ef9900ab0f7fa070567fe89d9e18`; arbitrum `0x09ab10a9c3e6eac1d18270a2322b6113f4c7f5e8` | ⚠️ Unaudited |
| Holdings | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232219 | 6 deployments: ethereum `0x3f0c8d8d2637881c3f6d8531f51a47c2094c918d`; optimism `0x3f0c8d8d2637881c3f6d8531f51a47c2094c918d`; bsc `0x3f0c8d8d2637881c3f6d8531f51a47c2094c918d`; hyperliquid `0x3f0c8d8d2637881c3f6d8531f51a47c2094c918d`; base `0x3f0c8d8d2637881c3f6d8531f51a47c2094c918d`; arbitrum `0x3f0c8d8d2637881c3f6d8531f51a47c2094c918d` | ⚠️ Unaudited |
| Hub | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232236 | 6 deployments: ethereum `0xa4a7bb3831958463b3fe3e27a6a160f764341953`; optimism `0xa4a7bb3831958463b3fe3e27a6a160f764341953`; bsc `0xa4a7bb3831958463b3fe3e27a6a160f764341953`; hyperliquid `0xa4a7bb3831958463b3fe3e27a6a160f764341953`; base `0xa4a7bb3831958463b3fe3e27a6a160f764341953`; arbitrum `0xa4a7bb3831958463b3fe3e27a6a160f764341953` | ⚠️ Unaudited |
| HubHandler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232204 | 6 deployments: ethereum `0x0defb429b1663698da4bae3278393f6844c3392c`; optimism `0x0defb429b1663698da4bae3278393f6844c3392c`; bsc `0x0defb429b1663698da4bae3278393f6844c3392c`; hyperliquid `0x0defb429b1663698da4bae3278393f6844c3392c`; base `0x0defb429b1663698da4bae3278393f6844c3392c`; arbitrum `0x0defb429b1663698da4bae3278393f6844c3392c` | ⚠️ Unaudited |
| HubRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-232208 | 6 deployments: ethereum `0x19f46d8130e610c6c0f0116ea40fb781defade93`; optimism `0x19f46d8130e610c6c0f0116ea40fb781defade93`; bsc `0x19f46d8130e610c6c0f0116ea40fb781defade93`; hyperliquid `0x19f46d8130e610c6c0f0116ea40fb781defade93`; base `0x19f46d8130e610c6c0f0116ea40fb781defade93`; arbitrum `0x19f46d8130e610c6c0f0116ea40fb781defade93` | ⚠️ Unaudited |
| IdentityValuation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232203 | 6 deployments: ethereum `0x05e22c20b21c1314a0c93d34855358b9b96133cf`; optimism `0x05e22c20b21c1314a0c93d34855358b9b96133cf`; bsc `0x05e22c20b21c1314a0c93d34855358b9b96133cf`; hyperliquid `0x05e22c20b21c1314a0c93d34855358b9b96133cf`; base `0x05e22c20b21c1314a0c93d34855358b9b96133cf`; arbitrum `0x05e22c20b21c1314a0c93d34855358b9b96133cf` | ⚠️ Unaudited |
| InvestmentManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x1bfa7ec3e9d564e540801085283fcf39dc103164`; ethereum `0x427a1ce127b1775e4cbd4f58ad468b9f832ea7e9`; ethereum `0xbbf0ab988691db1892adaf7f0ef560ca4c6dd73a`; ethereum `0xe79f06573d6af1b66166a926483ba00924285d20`; base `0x36b87b860857e6a6d4c2d24be11dc9b230f00f03`; base `0x3c9c09c4cfda9d2c35142aaea706e9fc9ea28f27`; base `0xbbf0ab988691db1892adaf7f0ef560ca4c6dd73a`; base `0xc437514fd99d46505757bca95261430a57f752d4`; arbitrum `0x6b8d011ecab5e84aac2686eb103b33977c52fd64`; arbitrum `0x7f192f34499ddb2be06c4754cff2a21c4b056994`; arbitrum `0xa85cb660d5dc25b6d9e5fd291ad5e5034b1aaed7`; arbitrum `0xe79f06573d6af1b66166a926483ba00924285d20` | ⚠️ Unaudited |
| IouCfg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacf3c07bebd65d5f7d86bc0bc716026a0c523069` | ⚠️ Unaudited |
| LayerZeroAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-232249 | 5 deployments: ethereum `0xd517bc7ba17271a8d87be7355b2523bf5c750295`; optimism `0xd517bc7ba17271a8d87be7355b2523bf5c750295`; bsc `0xd517bc7ba17271a8d87be7355b2523bf5c750295`; base `0xd517bc7ba17271a8d87be7355b2523bf5c750295`; arbitrum `0xd517bc7ba17271a8d87be7355b2523bf5c750295` | ⚠️ Unaudited |
| LayerZeroAdapter | adapter | project_anchor | own_supporting | 0 | hyperliquid | unit-232608 | `0xd517bc7ba17271a8d87be7355b2523bf5c750295` | ⚠️ Unaudited |
| LiquidityPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x77f48b2c942e6f3ac2232568d560e423c441386a`; ethereum `0x7f93edb11d5dc23f04c4e9382aa0d3f31e95bf2c`; ethereum `0x8273e36eecf7a8604bedee68fc24af121b64f165`; base `0x77f48b2c942e6f3ac2232568d560e423c441386a`; arbitrum `0x77f48b2c942e6f3ac2232568d560e423c441386a` | ⚠️ Unaudited |
| MerkleProofManagerFactory | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232243 | 6 deployments: ethereum `0xc5243bdea2d86ea7541ac69084df3eddc137a18b`; optimism `0xc5243bdea2d86ea7541ac69084df3eddc137a18b`; bsc `0xc5243bdea2d86ea7541ac69084df3eddc137a18b`; hyperliquid `0xc5243bdea2d86ea7541ac69084df3eddc137a18b`; base `0xc5243bdea2d86ea7541ac69084df3eddc137a18b`; arbitrum `0xc5243bdea2d86ea7541ac69084df3eddc137a18b` | ⚠️ Unaudited |
| MessageDispatcher | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232257 | `0xf837a22883e004f705e0d7e1dee08e295df30b27` | ⚠️ Unaudited |
| MessageDispatcher | unknown | project_anchor | own_supporting | 0 | optimism | unit-232305 | `0xf837a22883e004f705e0d7e1dee08e295df30b27` | ⚠️ Unaudited |
| MessageDispatcher | unknown | project_anchor | own_supporting | 0 | bsc | unit-232513 | `0xf837a22883e004f705e0d7e1dee08e295df30b27` | ⚠️ Unaudited |
| MessageDispatcher | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-232617 | `0xf837a22883e004f705e0d7e1dee08e295df30b27` | ⚠️ Unaudited |
| MessageDispatcher | unknown | project_anchor | own_supporting | 0 | base | unit-232572 | `0xf837a22883e004f705e0d7e1dee08e295df30b27` | ⚠️ Unaudited |
| MessageDispatcher | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232452 | `0xf837a22883e004f705e0d7e1dee08e295df30b27` | ⚠️ Unaudited |
| MessageProcessor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232235 | 4 deployments: ethereum `0x97cc7e9dafdd725cc23b25eebc93c4384b4fe30a`; bsc `0x97cc7e9dafdd725cc23b25eebc93c4384b4fe30a`; base `0x97cc7e9dafdd725cc23b25eebc93c4384b4fe30a`; arbitrum `0x97cc7e9dafdd725cc23b25eebc93c4384b4fe30a` | ⚠️ Unaudited |
| MessageProcessor | unknown | project_anchor | own_supporting | 0 | optimism | unit-232283 | 2 deployments: optimism `0x97cc7e9dafdd725cc23b25eebc93c4384b4fe30a`; hyperliquid `0x97cc7e9dafdd725cc23b25eebc93c4384b4fe30a` | ⚠️ Unaudited |
| MultiAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-232215 | `0x35c837f0a54b715a23d193e1476bfc9bc30073be` | ⚠️ Unaudited |
| MultiAdapter | adapter | project_anchor | own_supporting | 0 | optimism | unit-232272 | `0x35c837f0a54b715a23d193e1476bfc9bc30073be` | ⚠️ Unaudited |
| MultiAdapter | adapter | project_anchor | own_supporting | 0 | bsc | unit-232475 | `0x35c837f0a54b715a23d193e1476bfc9bc30073be` | ⚠️ Unaudited |
| MultiAdapter | adapter | project_anchor | own_supporting | 0 | hyperliquid | unit-232586 | `0x35c837f0a54b715a23d193e1476bfc9bc30073be` | ⚠️ Unaudited |
| MultiAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-232531 | `0x35c837f0a54b715a23d193e1476bfc9bc30073be` | ⚠️ Unaudited |
| MultiAdapter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-232416 | `0x35c837f0a54b715a23d193e1476bfc9bc30073be` | ⚠️ Unaudited |
| NAVManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-232222 | 6 deployments: ethereum `0x493b6c8ccc7bfd43c5a20c4f2c648701f74e9130`; optimism `0x493b6c8ccc7bfd43c5a20c4f2c648701f74e9130`; bsc `0x493b6c8ccc7bfd43c5a20c4f2c648701f74e9130`; hyperliquid `0x493b6c8ccc7bfd43c5a20c4f2c648701f74e9130`; base `0x493b6c8ccc7bfd43c5a20c4f2c648701f74e9130`; arbitrum `0x493b6c8ccc7bfd43c5a20c4f2c648701f74e9130` | ⚠️ Unaudited |
| OnOfframpManagerFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-232211 | 6 deployments: ethereum `0x2539e60b0b50d7bd004a09e9d2b7e8c86eb0aaf6`; optimism `0x2539e60b0b50d7bd004a09e9d2b7e8c86eb0aaf6`; bsc `0x2539e60b0b50d7bd004a09e9d2b7e8c86eb0aaf6`; hyperliquid `0x2539e60b0b50d7bd004a09e9d2b7e8c86eb0aaf6`; base `0x2539e60b0b50d7bd004a09e9d2b7e8c86eb0aaf6`; arbitrum `0x2539e60b0b50d7bd004a09e9d2b7e8c86eb0aaf6` | ⚠️ Unaudited |
| OpsGuardian | governance | project_anchor | own_supporting | 0 | ethereum | unit-232202 | 6 deployments: ethereum `0x055589229506ee89645ef08ebe9b9a863486d0de`; optimism `0x055589229506ee89645ef08ebe9b9a863486d0de`; bsc `0x055589229506ee89645ef08ebe9b9a863486d0de`; hyperliquid `0x055589229506ee89645ef08ebe9b9a863486d0de`; base `0x055589229506ee89645ef08ebe9b9a863486d0de`; arbitrum `0x055589229506ee89645ef08ebe9b9a863486d0de` | ⚠️ Unaudited |
| OracleValuation | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232245 | 6 deployments: ethereum `0xcbdb6effc9b954d05df89c747ecaa8a143c26e6d`; optimism `0xcbdb6effc9b954d05df89c747ecaa8a143c26e6d`; bsc `0xcbdb6effc9b954d05df89c747ecaa8a143c26e6d`; hyperliquid `0xcbdb6effc9b954d05df89c747ecaa8a143c26e6d`; base `0xcbdb6effc9b954d05df89c747ecaa8a143c26e6d`; arbitrum `0xcbdb6effc9b954d05df89c747ecaa8a143c26e6d` | ⚠️ Unaudited |
| PauseAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0xce86472007ea37a5d0208f8c1559a37530c8067c`; base `0xce86472007ea37a5d0208f8c1559a37530c8067c`; arbitrum `0x634f036fe66579e901c7ba34e33df422e37a0037` | ⚠️ Unaudited |
| PoolEscrowFactory | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232224 | 4 deployments: ethereum `0x5187a505c485e22f0b8a5fbdf69ef1c29c478ce3`; bsc `0x5187a505c485e22f0b8a5fbdf69ef1c29c478ce3`; base `0x5187a505c485e22f0b8a5fbdf69ef1c29c478ce3`; arbitrum `0x5187a505c485e22f0b8a5fbdf69ef1c29c478ce3` | ⚠️ Unaudited |
| PoolEscrowFactory | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-232277 | 2 deployments: optimism `0x5187a505c485e22f0b8a5fbdf69ef1c29c478ce3`; hyperliquid `0x5187a505c485e22f0b8a5fbdf69ef1c29c478ce3` | ⚠️ Unaudited |
| PoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: ethereum `0x78e9e622a57f70f1e0ec652a4931e4e278e58142`; ethereum `0x91808b5e2f6d7483d41a681034d7c9dbb64b9e29`; base `0x7829e5ca4286df66e9f58160544097db517a3b8c`; base `0x78e9e622a57f70f1e0ec652a4931e4e278e58142`; base `0x7f192f34499ddb2be06c4754cff2a21c4b056994`; arbitrum `0x8841717f4a0552505375a478e25b18ea35976067`; arbitrum `0x91808b5e2f6d7483d41a681034d7c9dbb64b9e29` | ⚠️ Unaudited |
| ProtocolGuardian | governance | project_anchor | own_supporting | 0 | ethereum | unit-232247 | 4 deployments: ethereum `0xceb7ed5d5b3bad3088f6a1697738b60d829635c6`; bsc `0xceb7ed5d5b3bad3088f6a1697738b60d829635c6`; base `0xceb7ed5d5b3bad3088f6a1697738b60d829635c6`; arbitrum `0xceb7ed5d5b3bad3088f6a1697738b60d829635c6` | ⚠️ Unaudited |
| ProtocolGuardian | governance | project_anchor | own_supporting | 0 | optimism | unit-232294 | 2 deployments: optimism `0xceb7ed5d5b3bad3088f6a1697738b60d829635c6`; hyperliquid `0xceb7ed5d5b3bad3088f6a1697738b60d829635c6` | ⚠️ Unaudited |
| QueueManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-232234 | 6 deployments: ethereum `0x971aca9b4ab4895f400ba042fd10a31c7918d220`; optimism `0x971aca9b4ab4895f400ba042fd10a31c7918d220`; bsc `0x971aca9b4ab4895f400ba042fd10a31c7918d220`; hyperliquid `0x971aca9b4ab4895f400ba042fd10a31c7918d220`; base `0x971aca9b4ab4895f400ba042fd10a31c7918d220`; arbitrum `0x971aca9b4ab4895f400ba042fd10a31c7918d220` | ⚠️ Unaudited |
| RedemptionRestrictions | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232253 | 4 deployments: ethereum `0xe5423ed8602fa0f263e17b6212d88efe42317f06`; bsc `0xe5423ed8602fa0f263e17b6212d88efe42317f06`; base `0xe5423ed8602fa0f263e17b6212d88efe42317f06`; arbitrum `0xe5423ed8602fa0f263e17b6212d88efe42317f06` | ⚠️ Unaudited |
| RedemptionRestrictions | unknown | project_anchor | own_supporting | 0 | optimism | unit-232301 | 2 deployments: optimism `0xe5423ed8602fa0f263e17b6212d88efe42317f06`; hyperliquid `0xe5423ed8602fa0f263e17b6212d88efe42317f06` | ⚠️ Unaudited |
| RefundEscrowFactory | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232242 | 6 deployments: ethereum `0xc4f9a1dcf2e05eb55abb30baa7070838d3fd3d5b`; optimism `0xc4f9a1dcf2e05eb55abb30baa7070838d3fd3d5b`; bsc `0xc4f9a1dcf2e05eb55abb30baa7070838d3fd3d5b`; hyperliquid `0xc4f9a1dcf2e05eb55abb30baa7070838d3fd3d5b`; base `0xc4f9a1dcf2e05eb55abb30baa7070838d3fd3d5b`; arbitrum `0xc4f9a1dcf2e05eb55abb30baa7070838d3fd3d5b` | ⚠️ Unaudited |
| RelinkV2Eth | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a110bc4fdd01b193fdadddd38231dd098274a06` | ⚠️ Unaudited |
| RestrictionManagerFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xf4d7f6919ef0b495a2551f7299324961f29ae7ac`; base `0xf4d7f6919ef0b495a2551f7299324961f29ae7ac`; arbitrum `0xf4d7f6919ef0b495a2551f7299324961f29ae7ac` | ⚠️ Unaudited |
| Root | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232229 | 4 deployments: ethereum `0x7ed48c31f2fdc40d37407cbabf0870b2b688368f`; bsc `0x7ed48c31f2fdc40d37407cbabf0870b2b688368f`; base `0x7ed48c31f2fdc40d37407cbabf0870b2b688368f`; arbitrum `0x7ed48c31f2fdc40d37407cbabf0870b2b688368f` | ⚠️ Unaudited |
| Root | unknown | project_anchor | own_supporting | 0 | optimism | unit-232300 | 2 deployments: optimism `0xdc9456e7e20f15029c8231ec433a20f404b7235e`; hyperliquid `0xdc9456e7e20f15029c8231ec433a20f404b7235e` | ⚠️ Unaudited |
| ShareClassManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-232239 | 6 deployments: ethereum `0xaffc269c8fe18ee9c7ddb22301ac2c2507d69bef`; optimism `0xaffc269c8fe18ee9c7ddb22301ac2c2507d69bef`; bsc `0xaffc269c8fe18ee9c7ddb22301ac2c2507d69bef`; hyperliquid `0xaffc269c8fe18ee9c7ddb22301ac2c2507d69bef`; base `0xaffc269c8fe18ee9c7ddb22301ac2c2507d69bef`; arbitrum `0xaffc269c8fe18ee9c7ddb22301ac2c2507d69bef` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | ethereum | unit-232237 | `0xa6233014b9b7aaa74f38fa1977ffc7a89642dc72` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | base | unit-232519 | `0x09b61343097c1f9b159a3ae7151298efd10f0db2` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | base | unit-232546 | `0x9477724bb54ad5417de8baff29e59df3fb4da74f` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | base | unit-232552 | `0xa6233014b9b7aaa74f38fa1977ffc7a89642dc72` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | arbitrum | unit-232431 | `0xa6233014b9b7aaa74f38fa1977ffc7a89642dc72` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | avalanche | unit-232458 | `0xa5d465251fbcc907f5dd6bb2145488dfc6a2627b` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | avalanche | unit-232459 | `0xa6233014b9b7aaa74f38fa1977ffc7a89642dc72` | ⚠️ Unaudited |
| SimplePriceManager | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232212 | 6 deployments: ethereum `0x280c94eb440a8a75c2f8f6ca8c6faff907000823`; optimism `0x280c94eb440a8a75c2f8f6ca8c6faff907000823`; bsc `0x280c94eb440a8a75c2f8f6ca8c6faff907000823`; hyperliquid `0x280c94eb440a8a75c2f8f6ca8c6faff907000823`; base `0x280c94eb440a8a75c2f8f6ca8c6faff907000823`; arbitrum `0x280c94eb440a8a75c2f8f6ca8c6faff907000823` | ⚠️ Unaudited |
| Spell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x464d301854ac5082a356ee5814e57168fa1e44e0`; ethereum `0x48c134d859adfc87753f6882b3a9d2b0081963fd`; ethereum `0x7b2004f6028c35ef69ba84bd055074c18bab602f`; ethereum `0xa3ce97352c1469884eef3547ec9362329fe78cf0`; ethereum `0xcfbd142ec8f00bbf5f1aa22f66abf2eb476948a7` | ⚠️ Unaudited |
| SpellArbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f0828789bd7c0c6ad779056db47db706c32f22f` | ⚠️ Unaudited |
| SpellBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x4035fc21ffe4091a5dae280f6d9b79677f07f4fa`; base `0x4a9731c94627591b9f4fa77fd54bc0f1fb8ce880` | ⚠️ Unaudited |
| SpellEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x200116c55b4a97f59da94ca8dd6e91337ebe0420`; ethereum `0xf35501e7fc4a076e744dbafa883ced74ccf5009d`; arbitrum `0x36b87b860857e6a6d4c2d24be11dc9b230f00f03` | ⚠️ Unaudited |
| Spoke | unknown | project_anchor | own_supporting | 0 | ethereum | n/a | 12 deployments: ethereum `0xd30da1d7f964e5f6c2d9fe2aaa97517f6b23fa2b`; ethereum `0xec3582fcdc34078a4b7a8c75a5a3ae46f48525ab`; optimism `0xec3582fcdc34078a4b7a8c75a5a3ae46f48525ab`; bsc `0xd30da1d7f964e5f6c2d9fe2aaa97517f6b23fa2b`; bsc `0xec3582fcdc34078a4b7a8c75a5a3ae46f48525ab`; hyperliquid `0xec3582fcdc34078a4b7a8c75a5a3ae46f48525ab`; base `0xd30da1d7f964e5f6c2d9fe2aaa97517f6b23fa2b`; base `0xec3582fcdc34078a4b7a8c75a5a3ae46f48525ab`; arbitrum `0xd30da1d7f964e5f6c2d9fe2aaa97517f6b23fa2b`; arbitrum `0xec3582fcdc34078a4b7a8c75a5a3ae46f48525ab`; avalanche `0xd30da1d7f964e5f6c2d9fe2aaa97517f6b23fa2b`; avalanche `0xec3582fcdc34078a4b7a8c75a5a3ae46f48525ab` | ⚠️ Unaudited |
| SubsidyManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-232241 | 6 deployments: ethereum `0xbfc7b60684880457030c08acee2e675cbcb9d646`; optimism `0xbfc7b60684880457030c08acee2e675cbcb9d646`; bsc `0xbfc7b60684880457030c08acee2e675cbcb9d646`; hyperliquid `0xbfc7b60684880457030c08acee2e675cbcb9d646`; base `0xbfc7b60684880457030c08acee2e675cbcb9d646`; arbitrum `0xbfc7b60684880457030c08acee2e675cbcb9d646` | ⚠️ Unaudited |
| SyncDepositVaultFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-232252 | 4 deployments: ethereum `0xdb9c27762045addd713182521c0580c68bdf700a`; bsc `0xdb9c27762045addd713182521c0580c68bdf700a`; base `0xdb9c27762045addd713182521c0580c68bdf700a`; arbitrum `0xdb9c27762045addd713182521c0580c68bdf700a` | ⚠️ Unaudited |
| SyncDepositVaultFactory | registry | project_anchor | own_supporting | 0 | optimism | unit-232299 | 2 deployments: optimism `0xdb9c27762045addd713182521c0580c68bdf700a`; hyperliquid `0xdb9c27762045addd713182521c0580c68bdf700a` | ⚠️ Unaudited |
| SyncManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-232259 | 6 deployments: ethereum `0xff8ed1862f6ac3a8e89b81c75507c225e36e273d`; optimism `0xff8ed1862f6ac3a8e89b81c75507c225e36e273d`; bsc `0xff8ed1862f6ac3a8e89b81c75507c225e36e273d`; hyperliquid `0xff8ed1862f6ac3a8e89b81c75507c225e36e273d`; base `0xff8ed1862f6ac3a8e89b81c75507c225e36e273d`; arbitrum `0xff8ed1862f6ac3a8e89b81c75507c225e36e273d` | ⚠️ Unaudited |
| TokenFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-232246 | 4 deployments: ethereum `0xce1616505f93215751fbb41efac618b631997c38`; bsc `0xce1616505f93215751fbb41efac618b631997c38`; base `0xce1616505f93215751fbb41efac618b631997c38`; arbitrum `0xce1616505f93215751fbb41efac618b631997c38` | ⚠️ Unaudited |
| TokenFactory | registry | project_anchor | own_supporting | 0 | optimism | unit-232293 | 2 deployments: optimism `0xce1616505f93215751fbb41efac618b631997c38`; hyperliquid `0xce1616505f93215751fbb41efac618b631997c38` | ⚠️ Unaudited |
| TokenRecoverer | token | project_anchor | own_supporting | 0 | ethereum | unit-232210 | 4 deployments: ethereum `0x1e70530e9555711f8df4838ab940b97c039b4037`; bsc `0x1e70530e9555711f8df4838ab940b97c039b4037`; base `0x1e70530e9555711f8df4838ab940b97c039b4037`; arbitrum `0x1e70530e9555711f8df4838ab940b97c039b4037` | ⚠️ Unaudited |
| TokenRecoverer | token | project_anchor | own_supporting | 0 | optimism | unit-232267 | 2 deployments: optimism `0x1e70530e9555711f8df4838ab940b97c039b4037`; hyperliquid `0x1e70530e9555711f8df4838ab940b97c039b4037` | ⚠️ Unaudited |
| Tranche | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232227 | `0x5a0f93d040de44e78f251b03c43be9cf317dcf64` | ⚠️ Unaudited |
| Tranche | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232230 | `0x8c213ee79581ff4984583c6a801e5263418c4b86` | ⚠️ Unaudited |
| Tranche | core_logic | project_anchor | own_supporting | 0 | base | unit-232540 | `0x5a0f93d040de44e78f251b03c43be9cf317dcf64` | ⚠️ Unaudited |
| Tranche | core_logic | project_anchor | own_supporting | 0 | base | unit-232542 | `0x8c213ee79581ff4984583c6a801e5263418c4b86` | ⚠️ Unaudited |
| Tranche | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-232425 | `0x8c213ee79581ff4984583c6a801e5263418c4b86` | ⚠️ Unaudited |
| TrancheTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2712fe754119eab4499495494919f97b2df18dca` | ⚠️ Unaudited |
| UserEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9fc3a3bcedc1cab14efc1b7ef45dfbdd3d17c9d7`; base `0x9fc3a3bcedc1cab14efc1b7ef45dfbdd3d17c9d7`; arbitrum `0x9fc3a3bcedc1cab14efc1b7ef45dfbdd3d17c9d7` | ⚠️ Unaudited |
| VaultDecoder | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232231 | 6 deployments: ethereum `0x8ca5372a5613a6df75fd5fbc43216e68c1be6d38`; optimism `0x8ca5372a5613a6df75fd5fbc43216e68c1be6d38`; bsc `0x8ca5372a5613a6df75fd5fbc43216e68c1be6d38`; hyperliquid `0x8ca5372a5613a6df75fd5fbc43216e68c1be6d38`; base `0x8ca5372a5613a6df75fd5fbc43216e68c1be6d38`; arbitrum `0x8ca5372a5613a6df75fd5fbc43216e68c1be6d38` | ⚠️ Unaudited |
| VaultOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdf515ba34594b47dcfc809b82550b7aff03a30d8` | ⚠️ Unaudited |
| VaultRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-232251 | 6 deployments: ethereum `0xd9531ac47928c3386346f82d9a2478960bf2ca7b`; optimism `0xd9531ac47928c3386346f82d9a2478960bf2ca7b`; bsc `0xd9531ac47928c3386346f82d9a2478960bf2ca7b`; hyperliquid `0xd9531ac47928c3386346f82d9a2478960bf2ca7b`; base `0xd9531ac47928c3386346f82d9a2478960bf2ca7b`; arbitrum `0xd9531ac47928c3386346f82d9a2478960bf2ca7b` | ⚠️ Unaudited |
| VaultRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-232256 | 6 deployments: ethereum `0xf684014771c01e50b8b526968b3a1e33acda63f6`; optimism `0xf684014771c01e50b8b526968b3a1e33acda63f6`; bsc `0xf684014771c01e50b8b526968b3a1e33acda63f6`; hyperliquid `0xf684014771c01e50b8b526968b3a1e33acda63f6`; base `0xf684014771c01e50b8b526968b3a1e33acda63f6`; arbitrum `0xf684014771c01e50b8b526968b3a1e33acda63f6` | ⚠️ Unaudited |
| WormholeAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-232223 | `0x4be430401760075315e931dd34b892dfdfc706a7` | ⚠️ Unaudited |
| WormholeAdapter | adapter | project_anchor | own_supporting | 0 | bsc | unit-232480 | `0x4be430401760075315e931dd34b892dfdfc706a7` | ⚠️ Unaudited |
| WormholeAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-232537 | `0x4be430401760075315e931dd34b892dfdfc706a7` | ⚠️ Unaudited |
| WormholeAdapter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-232421 | `0x4be430401760075315e931dd34b892dfdfc706a7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Messages | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: ethereum `0xaf9f6ac63c057eb7f59b6fae2c3d447191b58ea5`; base `0xaf9f6ac63c057eb7f59b6fae2c3d447191b58ea5`; arbitrum `0x811f7bd79d9cf392f6a60c8e8f570c96769d92c3`; arbitrum `0xaf9f6ac63c057eb7f59b6fae2c3d447191b58ea5` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (101)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2712fe754119eab4499495494919f97b2df18dca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb31234b73fece49fc88576d7d187919ab114595d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232307 | `0x050206c38f06e4710c4a37d39f75ddc5c16a7396` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232308 | `0x055589229506ee89645ef08ebe9b9a863486d0de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232309 | `0x05e22c20b21c1314a0c93d34855358b9b96133cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232310 | `0x082c62088669facc1fa9f056c5efc8cbccda39b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232311 | `0x0defb429b1663698da4bae3278393f6844c3392c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232312 | `0x12a110ce5f0fc871cc72bc7ecaf35cf39dd0f43e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232313 | `0x19a524d03aa94ecee41a80341537bcfcb47d3172` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232314 | `0x19f46d8130e610c6c0f0116ea40fb781defade93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232315 | `0x1e70530e9555711f8df4838ab940b97c039b4037` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232316 | `0x2539e60b0b50d7bd004a09e9d2b7e8c86eb0aaf6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232317 | `0x280c94eb440a8a75c2f8f6ca8c6faff907000823` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232318 | `0x2a9b9c14851baf7ad19f26607c9171ca1e7a1a61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232319 | `0x2fabf1c784b8583d63c00c5c9c0377d8cf1a3245` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232320 | `0x34e904237341c3de02d4447c3ff0ca8880ca6484` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232321 | `0x35c837f0a54b715a23d193e1476bfc9bc30073be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232322 | `0x39cf679eb0ac9075cfb5f94930a367ba1557d955` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232323 | `0x3b150b19245d2c366bc8f18c775b725dfb298f71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232324 | `0x3f0c8d8d2637881c3f6d8531f51a47c2094c918d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232325 | `0x493b6c8ccc7bfd43c5a20c4f2c648701f74e9130` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232326 | `0x5187a505c485e22f0b8a5fbdf69ef1c29c478ce3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232327 | `0x55cde53b7dbc24336e34ffe233af8df10f72f0be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232328 | `0x796ba8a2f2d80340ddb6ca8e43e7883812f13cd5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232329 | `0x8ca5372a5613a6df75fd5fbc43216e68c1be6d38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232330 | `0x8e680873b4c77e6088b4ba0abd59d100c3d224a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232331 | `0x926030b9912bd42b092151cfb2396499b967df3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232332 | `0x971aca9b4ab4895f400ba042fd10a31c7918d220` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232333 | `0x97cc7e9dafdd725cc23b25eebc93c4384b4fe30a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232334 | `0xa4a7bb3831958463b3fe3e27a6a160f764341953` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232335 | `0xad48f183e586e92a591a610397ebf534609df797` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232336 | `0xaffc269c8fe18ee9c7ddb22301ac2c2507d69bef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232337 | `0xbebef21d686a957dececce6a58455fa0f16754be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232338 | `0xbfc7b60684880457030c08acee2e675cbcb9d646` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232339 | `0xc18e6f730896971a79d748e8dea61067a9bc6040` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232340 | `0xc4f9a1dcf2e05eb55abb30baa7070838d3fd3d5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232341 | `0xc5243bdea2d86ea7541ac69084df3eddc137a18b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232342 | `0xc52bd1bdfa0135147d3f01a0b6d6cd0a831dfe77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232343 | `0xcbdb6effc9b954d05df89c747ecaa8a143c26e6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232344 | `0xce1616505f93215751fbb41efac618b631997c38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232345 | `0xceb7ed5d5b3bad3088f6a1697738b60d829635c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232346 | `0xd40871a6336fd19a25a7bd96c0c0dd66ed60931d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232347 | `0xd517bc7ba17271a8d87be7355b2523bf5c750295` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232348 | `0xd5b243f05b2906f1f6c80c6096945faada0731c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232349 | `0xd9531ac47928c3386346f82d9a2478960bf2ca7b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232350 | `0xdb9c27762045addd713182521c0580c68bdf700a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232351 | `0xdc9456e7e20f15029c8231ec433a20f404b7235e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232352 | `0xe5423ed8602fa0f263e17b6212d88efe42317f06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232353 | `0xec3582fcdc34078a4b7a8c75a5a3ae46f48525ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232354 | `0xf48256abddf96ecddc4b3dbd23e8c1921f9761ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232355 | `0xf684014771c01e50b8b526968b3a1e33acda63f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232356 | `0xf837a22883e004f705e0d7e1dee08e295df30b27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232357 | `0xff8ed1862f6ac3a8e89b81c75507c225e36e273d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232358 | `0x050206c38f06e4710c4a37d39f75ddc5c16a7396` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232359 | `0x055589229506ee89645ef08ebe9b9a863486d0de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232360 | `0x05e22c20b21c1314a0c93d34855358b9b96133cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232361 | `0x0defb429b1663698da4bae3278393f6844c3392c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232362 | `0x12a110ce5f0fc871cc72bc7ecaf35cf39dd0f43e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232363 | `0x19a524d03aa94ecee41a80341537bcfcb47d3172` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232364 | `0x19f46d8130e610c6c0f0116ea40fb781defade93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232365 | `0x1e70530e9555711f8df4838ab940b97c039b4037` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232366 | `0x2539e60b0b50d7bd004a09e9d2b7e8c86eb0aaf6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232367 | `0x280c94eb440a8a75c2f8f6ca8c6faff907000823` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232368 | `0x2a9b9c14851baf7ad19f26607c9171ca1e7a1a61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232370 | `0x35c837f0a54b715a23d193e1476bfc9bc30073be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232371 | `0x39cf679eb0ac9075cfb5f94930a367ba1557d955` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232372 | `0x3b150b19245d2c366bc8f18c775b725dfb298f71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232373 | `0x3f0c8d8d2637881c3f6d8531f51a47c2094c918d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232374 | `0x493b6c8ccc7bfd43c5a20c4f2c648701f74e9130` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232375 | `0x5187a505c485e22f0b8a5fbdf69ef1c29c478ce3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232376 | `0x55cde53b7dbc24336e34ffe233af8df10f72f0be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232377 | `0x8ca5372a5613a6df75fd5fbc43216e68c1be6d38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232378 | `0x8e680873b4c77e6088b4ba0abd59d100c3d224a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232379 | `0x971aca9b4ab4895f400ba042fd10a31c7918d220` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232380 | `0x97cc7e9dafdd725cc23b25eebc93c4384b4fe30a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232381 | `0xa4a7bb3831958463b3fe3e27a6a160f764341953` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232382 | `0xaffc269c8fe18ee9c7ddb22301ac2c2507d69bef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232383 | `0xbebef21d686a957dececce6a58455fa0f16754be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232384 | `0xbfc7b60684880457030c08acee2e675cbcb9d646` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232385 | `0xc4f9a1dcf2e05eb55abb30baa7070838d3fd3d5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232386 | `0xc5243bdea2d86ea7541ac69084df3eddc137a18b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232387 | `0xc52bd1bdfa0135147d3f01a0b6d6cd0a831dfe77` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | pharos | unit-232388 | `0xcbdb6effc9b954d05df89c747ecaa8a143c26e6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232389 | `0xce1616505f93215751fbb41efac618b631997c38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232390 | `0xceb7ed5d5b3bad3088f6a1697738b60d829635c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232391 | `0xd40871a6336fd19a25a7bd96c0c0dd66ed60931d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232392 | `0xd517bc7ba17271a8d87be7355b2523bf5c750295` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232393 | `0xd5b243f05b2906f1f6c80c6096945faada0731c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232394 | `0xd9531ac47928c3386346f82d9a2478960bf2ca7b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232395 | `0xdb9c27762045addd713182521c0580c68bdf700a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232396 | `0xdc9456e7e20f15029c8231ec433a20f404b7235e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232397 | `0xe5423ed8602fa0f263e17b6212d88efe42317f06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232398 | `0xec3582fcdc34078a4b7a8c75a5a3ae46f48525ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232399 | `0xf48256abddf96ecddc4b3dbd23e8c1921f9761ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232400 | `0xf684014771c01e50b8b526968b3a1e33acda63f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232401 | `0xf837a22883e004f705e0d7e1dee08e295df30b27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232402 | `0xff8ed1862f6ac3a8e89b81c75507c225e36e273d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78e9e622a57f70f1e0ec652a4931e4e278e58142` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfd3791491999fb58f002eb2fa16e30290806d0da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-232454 | `0x1121f4e21ed8b9bc1bb9a2952cdd8639ac897784` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-232462 | `0xfe6920eb6c421f1179ca8c8d4170530cdbdfd77a` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 86
- Live contracts: 0
- Unknown liveness contracts: 86
- Source-verified contracts: 81
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=34, contamination review=10, source verified unclassified=37, unverified unclassified=5

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | candidate review | DelayedAdmin<br>`0xfe364bedef1707dd4f2df358da2c1908824cc4ac` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| arbitrum | candidate review | ERC7540VaultFactory<br>`0x32043a41f4be198c4f6590312f7a7b91624cab57` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| arbitrum | candidate review | ERC7540VaultFactory<br>`0x6f9dba3d3a3ab083bca60ef82784cf12a6ec24b8` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| arbitrum | candidate review | ERC7540VaultFactory<br>`0xaffc66ed2964d80b2568e8e1b8c0e25449325fc7` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| arbitrum | candidate review | Guardian<br>`0x09ab10a9c3e6eac1d18270a2322b6113f4c7f5e8` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| arbitrum | candidate review | LiquidityPoolFactory<br>`0x77f48b2c942e6f3ac2232568d560e423c441386a` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| arbitrum | candidate review | PauseAdmin<br>`0x634f036fe66579e901c7ba34e33df422e37a0037` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| arbitrum | candidate review | PoolManager<br>`0x8841717f4a0552505375a478e25b18ea35976067` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| arbitrum | candidate review | RestrictionManagerFactory<br>`0xf4d7f6919ef0b495a2551f7299324961f29ae7ac` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| arbitrum | contamination review | SpellArbitrum<br>`0x9f0828789bd7c0c6ad779056db47db706c32f22f` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| arbitrum | source verified unclassified | CentrifugeRouter<br>`0x2f445ba946044c5f508a63eeaf7eab673c69a1f4` | non_address_book | adapter | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| arbitrum | source verified unclassified | CentrifugeRouter<br>`0xa3ce97352c1469884eef3547ec9362329fe78cf0` | non_address_book | adapter | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| arbitrum | source verified unclassified | GasService<br>`0x3c9c09c4cfda9d2c35142aaea706e9fc9ea28f27` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| arbitrum | source verified unclassified | Gateway<br>`0x7829e5ca4286df66e9f58160544097db517a3b8c` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| arbitrum | source verified unclassified | InvestmentManager<br>`0x6b8d011ecab5e84aac2686eb103b33977c52fd64` | non_address_book | operational_periphery | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| arbitrum | source verified unclassified | InvestmentManager<br>`0x7f192f34499ddb2be06c4754cff2a21c4b056994` | non_address_book | operational_periphery | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| arbitrum | source verified unclassified | InvestmentManager<br>`0xa85cb660d5dc25b6d9e5fd291ad5e5034b1aaed7` | non_address_book | operational_periphery | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| arbitrum | source verified unclassified | InvestmentManager<br>`0xe79f06573d6af1b66166a926483ba00924285d20` | non_address_book | operational_periphery | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| arbitrum | source verified unclassified | Messages<br>`0x811f7bd79d9cf392f6a60c8e8f570c96769d92c3` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| arbitrum | source verified unclassified | SpellEthereum<br>`0x36b87b860857e6a6d4c2d24be11dc9b230f00f03` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| arbitrum | source verified unclassified | UserEscrow<br>`0x9fc3a3bcedc1cab14efc1b7ef45dfbdd3d17c9d7` | non_address_book | operational_periphery | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x78e9e622a57f70f1e0ec652a4931e4e278e58142` | non_address_book | unknown | unknown | unverified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaf9f6ac63c057eb7f59b6fae2c3d447191b58ea5` | non_address_book | unknown | unknown | unverified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfd3791491999fb58f002eb2fa16e30290806d0da` | non_address_book | unknown | unknown | unverified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | candidate review | DelayedAdmin<br>`0x2559998026796ca6fd057f3aa66f2d6ecded9028` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | candidate review | ERC20<br>`0x9abb034e34e72e72de6e95b4b6069ce1c3370166` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | candidate review | ERC20<br>`0xf949df73c002bf694b1b6f69c623fdef2f1e68c1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | candidate review | ERC7540VaultFactory<br>`0x6215b227c64262f7487e7881fba39a68fbf5ab35` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | candidate review | ERC7540VaultFactory<br>`0xcad01f5a7ee9ba09a1afdb9dcaa58ce024e4462c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | candidate review | ERC7540VaultFactory<br>`0xe79f06573d6af1b66166a926483ba00924285d20` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | candidate review | Guardian<br>`0x427a1ce127b1775e4cbd4f58ad468b9f832ea7e9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | candidate review | Guardian<br>`0xa0e3a5709995ef9900ab0f7fa070567fe89d9e18` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | candidate review | LiquidityPoolFactory<br>`0x77f48b2c942e6f3ac2232568d560e423c441386a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | candidate review | PauseAdmin<br>`0xce86472007ea37a5d0208f8c1559a37530c8067c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | candidate review | PoolManager<br>`0x7829e5ca4286df66e9f58160544097db517a3b8c` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | candidate review | PoolManager<br>`0x78e9e622a57f70f1e0ec652a4931e4e278e58142` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | candidate review | RestrictionManagerFactory<br>`0xf4d7f6919ef0b495a2551f7299324961f29ae7ac` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | candidate review | TrancheTokenFactory<br>`0x2712fe754119eab4499495494919f97b2df18dca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | contamination review | GasService<br>`0x09ab10a9c3e6eac1d18270a2322b6113f4c7f5e8` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | contamination review | SpellBase<br>`0x4035fc21ffe4091a5dae280f6d9b79677f07f4fa` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | contamination review | VaultOracle<br>`0xdf515ba34594b47dcfc809b82550b7aff03a30d8` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | source verified unclassified | CentrifugeRouter<br>`0x54836e16ab6ba542a1eea2e64e05b3eb6a2fca7b` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | source verified unclassified | CentrifugeRouter<br>`0xf35501e7fc4a076e744dbafa883ced74ccf5009d` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | source verified unclassified | GasService<br>`0x32043a41f4be198c4f6590312f7a7b91624cab57` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | source verified unclassified | Gateway<br>`0x3423d288f2c04eb072ebb973f8c8b9b73caa4361` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | source verified unclassified | Gateway<br>`0x634f036fe66579e901c7ba34e33df422e37a0037` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | source verified unclassified | Gateway<br>`0xbbaf0e2be11e90b92ea0929e7bda28f5bdb22d29` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | source verified unclassified | InvestmentManager<br>`0x36b87b860857e6a6d4c2d24be11dc9b230f00f03` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | source verified unclassified | InvestmentManager<br>`0x3c9c09c4cfda9d2c35142aaea706e9fc9ea28f27` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | source verified unclassified | InvestmentManager<br>`0xbbf0ab988691db1892adaf7f0ef560ca4c6dd73a` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | source verified unclassified | InvestmentManager<br>`0xc437514fd99d46505757bca95261430a57f752d4` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | source verified unclassified | Messages<br>`0xaf9f6ac63c057eb7f59b6fae2c3d447191b58ea5` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | source verified unclassified | SpellBase<br>`0x4a9731c94627591b9f4fa77fd54bc0f1fb8ce880` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| base | source verified unclassified | UserEscrow<br>`0x9fc3a3bcedc1cab14efc1b7ef45dfbdd3d17c9d7` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | candidate review | DelayedAdmin<br>`0x2559998026796ca6fd057f3aa66f2d6ecded9028` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | candidate review | ERC7540VaultFactory<br>`0x6f9dba3d3a3ab083bca60ef82784cf12a6ec24b8` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | candidate review | ERC7540VaultFactory<br>`0x7f192f34499ddb2be06c4754cff2a21c4b056994` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | candidate review | ERC7540VaultFactory<br>`0xed590de3b8affb2f10bafdcd643595b1b61e47c2` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | candidate review | Guardian<br>`0x09ab10a9c3e6eac1d18270a2322b6113f4c7f5e8` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | candidate review | LiquidityPoolFactory<br>`0x77f48b2c942e6f3ac2232568d560e423c441386a` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | candidate review | LiquidityPoolFactory<br>`0x7f93edb11d5dc23f04c4e9382aa0d3f31e95bf2c` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | candidate review | LiquidityPoolFactory<br>`0x8273e36eecf7a8604bedee68fc24af121b64f165` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | candidate review | PauseAdmin<br>`0xce86472007ea37a5d0208f8c1559a37530c8067c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | candidate review | PoolManager<br>`0x78e9e622a57f70f1e0ec652a4931e4e278e58142` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | candidate review | RestrictionManagerFactory<br>`0xf4d7f6919ef0b495a2551f7299324961f29ae7ac` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | contamination review | GasService<br>`0x3c9c09c4cfda9d2c35142aaea706e9fc9ea28f27` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | contamination review | InvestmentManager<br>`0x1bfa7ec3e9d564e540801085283fcf39dc103164` | non_address_book | operational_periphery | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | contamination review | RelinkV2Eth<br>`0x5a110bc4fdd01b193fdadddd38231dd098274a06` | non_address_book | token | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | contamination review | Spell<br>`0x464d301854ac5082a356ee5814e57168fa1e44e0` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | contamination review | SpellEthereum<br>`0x200116c55b4a97f59da94ca8dd6e91337ebe0420` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | contamination review | UserEscrow<br>`0x9fc3a3bcedc1cab14efc1b7ef45dfbdd3d17c9d7` | non_address_book | operational_periphery | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | source verified unclassified | CentrifugeRouter<br>`0x2f445ba946044c5f508a63eeaf7eab673c69a1f4` | non_address_book | adapter | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | source verified unclassified | CentrifugeRouter<br>`0x32043a41f4be198c4f6590312f7a7b91624cab57` | non_address_book | adapter | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | source verified unclassified | Gateway<br>`0x634f036fe66579e901c7ba34e33df422e37a0037` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | source verified unclassified | Gateway<br>`0x7829e5ca4286df66e9f58160544097db517a3b8c` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | source verified unclassified | InvestmentManager<br>`0x427a1ce127b1775e4cbd4f58ad468b9f832ea7e9` | non_address_book | operational_periphery | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | source verified unclassified | InvestmentManager<br>`0xbbf0ab988691db1892adaf7f0ef560ca4c6dd73a` | non_address_book | operational_periphery | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | source verified unclassified | InvestmentManager<br>`0xe79f06573d6af1b66166a926483ba00924285d20` | non_address_book | operational_periphery | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | source verified unclassified | Messages<br>`0xaf9f6ac63c057eb7f59b6fae2c3d447191b58ea5` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | source verified unclassified | Spell<br>`0x48c134d859adfc87753f6882b3a9d2b0081963fd` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | source verified unclassified | Spell<br>`0x7b2004f6028c35ef69ba84bd055074c18bab602f` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | source verified unclassified | Spell<br>`0xa3ce97352c1469884eef3547ec9362329fe78cf0` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | source verified unclassified | Spell<br>`0xcfbd142ec8f00bbf5f1aa22f66abf2eb476948a7` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | source verified unclassified | SpellEthereum<br>`0xf35501e7fc4a076e744dbafa883ced74ccf5009d` | non_address_book | unknown | unknown | verified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2712fe754119eab4499495494919f97b2df18dca` | non_address_book | unknown | unknown | unverified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb31234b73fece49fc88576d7d187919ab114595d` | non_address_book | unknown | unknown | unverified | n/a | `0x7270b20603fbb3df0921381670fbd62b9991ada4` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [cantina.xyz/bounties/6cc9d51a-ac1e-4385-a88a-a3924e40c00e](https://cantina.xyz/bounties/6cc9d51a-ac1e-4385-a88a-a3924e40c00e) | Spearbit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [LA-Tinlake-Audit-v0.3.0.pdf](https://github.com/centrifuge/security/blob/main/audits/tinlake/LA-Tinlake-Audit-v0.3.0.pdf) | unknown | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12896] cantina.xyz/bounties/6cc9d51a-ac1e-4385-a88a-a3924e40c00e — no match: The document is a bounty program description, not an audit report. It does not list specific contracts in scope, only mentions 'Centrifuge V3.1' as a protocol. No contract names, file paths, or audit date are provided.
- [12897] LA-Tinlake-Audit-v0.3.0.pdf — no match: Extracted 4 contracts from scope section. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| LA-Tinlake-Audit-v0.3.0.pdf | NFT Feed Contract | unmatched — not counted | — | listed in scope section: 'Tinlake NAV Feed: NFT Feed Contract' | no |
| LA-Tinlake-Audit-v0.3.0.pdf | Tranche Contract | unmatched — not counted | — | listed in scope section: 'Revolving Pool Contracts (Tranche Contract, Epoch Coordinator Contract, and Reserve Contract)' | no |
| LA-Tinlake-Audit-v0.3.0.pdf | Epoch Coordinator Contract | unmatched — not counted | — | listed in scope section: 'Revolving Pool Contracts (Tranche Contract, Epoch Coordinator Contract, and Reserve Contract)' | no |
| LA-Tinlake-Audit-v0.3.0.pdf | Reserve Contract | unmatched — not counted | — | listed in scope section: 'Revolving Pool Contracts (Tranche Contract, Epoch Coordinator Contract, and Reserve Contract)' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x4880799ee5200fc58da299e965df644fbf46780b` | AsyncVault | core_logic | $370,993,580.26 | Verified native implementation with $370,993,580.26 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x58f93d6b1ef2f44ec379cb975657c132cbed3b6b` | ShareToken | token | $259,827,751.04 | Verified native implementation with $259,827,751.04 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2aef271f00a9d1b0da8065d396f4e601dbd0ef0b` | AsyncVault | core_logic | $50,102,502.93 | Verified native implementation with $50,102,502.93 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x559907981ed375b2d7eea6108273d181216a10cc` | AsyncVault | core_logic | $6,096,905.14 | Verified native implementation with $6,096,905.14 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4865bc9701fbd1207a7b50e2af442c7daf154c9c` | AsyncVault | core_logic | $5,866,295.21 | Verified native implementation with $5,866,295.21 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaaa0008c8cf3a7dca931adaf04336a5d808c82cc` | ShareToken | token | $5,866,289.93 | Verified native implementation with $5,866,289.93 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1ad3644a0834e7c9ed4aec2660b0ee2ea18a1f36` | AsyncVault | core_logic | $5,703,304.40 | Verified native implementation with $5,703,304.40 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x18ab9fc0b2e4fef9e0e03c8ec63ba287a3238257` | AsyncVault | core_logic | $5,149,326.11 | Verified native implementation with $5,149,326.11 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x99e9092bae6d4394e54034ecb1e45441678323b9` | AsyncVault | core_logic | $3,281,354.93 | Verified native implementation with $3,281,354.93 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9c5c365e764829876243d0b289733b9d2b729685` | ShareToken | token | $3,177,102.32 | Verified native implementation with $3,177,102.32 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2da40f061536c2f3a8f95f23a5f4c133d07d393a` | AsyncVault | core_logic | $3,164,253.50 | Verified native implementation with $3,164,253.50 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9183dbe074a61cebf82525c907458cabb984f9da` | AsyncVault | core_logic | $2,221,441.94 | Verified native implementation with $2,221,441.94 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xaaa0008c8cf3a7dca931adaf04336a5d808c82cc` | ShareToken | token | $2,221,439.95 | Verified native implementation with $2,221,439.95 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x9effaa5614c689fa12892379e097b3acad239961` | AsyncVault | core_logic | $508,824.45 | Verified native implementation with $508,824.45 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xcbafe61d84c6fb88252a6adf1c9cb0b9d029cb99` | AsyncVault | core_logic | $508,824.45 | Verified native implementation with $508,824.45 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x58f93d6b1ef2f44ec379cb975657c132cbed3b6b` | ShareToken | token | $508,824.42 | Verified native implementation with $508,824.42 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5aa84705a2cb2054ed303565336f188e6bffbaf5` | AsyncVault | core_logic | $507,864.21 | Verified native implementation with $507,864.21 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6e6b8498415083a4386be83dd59edd4366402ffa` | AsyncVault | core_logic | $507,864.21 | Verified native implementation with $507,864.21 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa5d465251fbcc907f5dd6bb2145488dfc6a2627b` | ShareToken | token | $507,675.11 | Verified native implementation with $507,675.11 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x74a739ea1dc67c5a0179ebad665d1d3c4b80b712` | AsyncVault | core_logic | $386,038.45 | Verified native implementation with $386,038.45 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9477724bb54ad5417de8baff29e59df3fb4da74f` | ShareToken | token | $386,038.08 | Verified native implementation with $386,038.08 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x67fda49952cd0b059d019e51b58e742f9592bb8f` | SyncDepositVault | core_logic | $99,893.06 | Verified native implementation with $99,893.06 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x9e2679eabff131b8b1b48ff7566140794e0eedc4` | ShareToken | token | $99,855.84 | Verified native implementation with $99,855.84 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe897e7f16e8f4ed568a62955b17744bcb3207d6e` | AsyncVault | core_logic | $5,425.99 | Verified native implementation with $5,425.99 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xaaa0008c8cf3a7dca931adaf04336a5d808c82cc` | ShareToken | token | $5,425.99 | Verified native implementation with $5,425.99 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x04ffdbd63626942d5cabf12120805465b7a17547` | AsyncVault | core_logic | $5,227.52 | Verified native implementation with $5,227.52 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xaaa0008c8cf3a7dca931adaf04336a5d808c82cc` | ShareToken | token | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x498b6394b778a75ed9b0148e379778070b4621d2` | AsyncVault | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x050206c38f06e4710c4a37d39f75ddc5c16a7396` | Accounting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf48256abddf96ecddc4b3dbd23e8c1921f9761ae` | AsyncRequestManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x381f4f3b43c30b78c1f7777553236e57bb8ae9ff` | AsyncVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfe6920eb6c421f1179ca8c8d4170530cdbdfd77a` | AsyncVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x096dc8ce2fb630b2728c9a088a04b13bbbb5b4f4` | AsyncVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x5b9b6070c517be849ad79fc49d95e02084826f77` | AsyncVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x55cde53b7dbc24336e34ffe233af8df10f72f0be` | AsyncVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x55cde53b7dbc24336e34ffe233af8df10f72f0be` | AsyncVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x34e904237341c3de02d4447c3ff0ca8880ca6484` | AxelarAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x34e904237341c3de02d4447c3ff0ca8880ca6484` | AxelarAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x34e904237341c3de02d4447c3ff0ca8880ca6484` | AxelarAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x12a110ce5f0fc871cc72bc7ecaf35cf39dd0f43e` | BalanceSheet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x12a110ce5f0fc871cc72bc7ecaf35cf39dd0f43e` | BalanceSheet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc52bd1bdfa0135147d3f01a0b6d6cd0a831dfe77` | BatchRequestManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x39cf679eb0ac9075cfb5f94930a367ba1557d955` | ChainlinkAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x39cf679eb0ac9075cfb5f94930a367ba1557d955` | ChainlinkAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x39cf679eb0ac9075cfb5f94930a367ba1557d955` | ChainlinkAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x39cf679eb0ac9075cfb5f94930a367ba1557d955` | ChainlinkAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x39cf679eb0ac9075cfb5f94930a367ba1557d955` | ChainlinkAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x39cf679eb0ac9075cfb5f94930a367ba1557d955` | ChainlinkAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd40871a6336fd19a25a7bd96c0c0dd66ed60931d` | CircleDecoder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3b150b19245d2c366bc8f18c775b725dfb298f71` | ContractUpdater | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2a9b9c14851baf7ad19f26607c9171ca1e7a1a61` | FreelyTransferable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x2a9b9c14851baf7ad19f26607c9171ca1e7a1a61` | FreelyTransferable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd5b243f05b2906f1f6c80c6096945faada0731c1` | FreezeOnly | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd5b243f05b2906f1f6c80c6096945faada0731c1` | FreezeOnly | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8e680873b4c77e6088b4ba0abd59d100c3d224a4` | FullRestrictions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x8e680873b4c77e6088b4ba0abd59d100c3d224a4` | FullRestrictions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbebef21d686a957dececce6a58455fa0f16754be` | GasService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xbebef21d686a957dececce6a58455fa0f16754be` | GasService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xbebef21d686a957dececce6a58455fa0f16754be` | GasService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xbebef21d686a957dececce6a58455fa0f16754be` | GasService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xbebef21d686a957dececce6a58455fa0f16754be` | GasService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbebef21d686a957dececce6a58455fa0f16754be` | GasService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x19a524d03aa94ecee41a80341537bcfcb47d3172` | Gateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x19a524d03aa94ecee41a80341537bcfcb47d3172` | Gateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x19a524d03aa94ecee41a80341537bcfcb47d3172` | Gateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x19a524d03aa94ecee41a80341537bcfcb47d3172` | Gateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x19a524d03aa94ecee41a80341537bcfcb47d3172` | Gateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x19a524d03aa94ecee41a80341537bcfcb47d3172` | Gateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3f0c8d8d2637881c3f6d8531f51a47c2094c918d` | Holdings | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa4a7bb3831958463b3fe3e27a6a160f764341953` | Hub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0defb429b1663698da4bae3278393f6844c3392c` | HubHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x19f46d8130e610c6c0f0116ea40fb781defade93` | HubRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x05e22c20b21c1314a0c93d34855358b9b96133cf` | IdentityValuation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd517bc7ba17271a8d87be7355b2523bf5c750295` | LayerZeroAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xd517bc7ba17271a8d87be7355b2523bf5c750295` | LayerZeroAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc5243bdea2d86ea7541ac69084df3eddc137a18b` | MerkleProofManagerFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf837a22883e004f705e0d7e1dee08e295df30b27` | MessageDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xf837a22883e004f705e0d7e1dee08e295df30b27` | MessageDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf837a22883e004f705e0d7e1dee08e295df30b27` | MessageDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xf837a22883e004f705e0d7e1dee08e295df30b27` | MessageDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf837a22883e004f705e0d7e1dee08e295df30b27` | MessageDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf837a22883e004f705e0d7e1dee08e295df30b27` | MessageDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x97cc7e9dafdd725cc23b25eebc93c4384b4fe30a` | MessageProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x97cc7e9dafdd725cc23b25eebc93c4384b4fe30a` | MessageProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x35c837f0a54b715a23d193e1476bfc9bc30073be` | MultiAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x35c837f0a54b715a23d193e1476bfc9bc30073be` | MultiAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x35c837f0a54b715a23d193e1476bfc9bc30073be` | MultiAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x35c837f0a54b715a23d193e1476bfc9bc30073be` | MultiAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x35c837f0a54b715a23d193e1476bfc9bc30073be` | MultiAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x35c837f0a54b715a23d193e1476bfc9bc30073be` | MultiAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x493b6c8ccc7bfd43c5a20c4f2c648701f74e9130` | NAVManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2539e60b0b50d7bd004a09e9d2b7e8c86eb0aaf6` | OnOfframpManagerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x055589229506ee89645ef08ebe9b9a863486d0de` | OpsGuardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcbdb6effc9b954d05df89c747ecaa8a143c26e6d` | OracleValuation | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5187a505c485e22f0b8a5fbdf69ef1c29c478ce3` | PoolEscrowFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x5187a505c485e22f0b8a5fbdf69ef1c29c478ce3` | PoolEscrowFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xceb7ed5d5b3bad3088f6a1697738b60d829635c6` | ProtocolGuardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xceb7ed5d5b3bad3088f6a1697738b60d829635c6` | ProtocolGuardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x971aca9b4ab4895f400ba042fd10a31c7918d220` | QueueManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe5423ed8602fa0f263e17b6212d88efe42317f06` | RedemptionRestrictions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xe5423ed8602fa0f263e17b6212d88efe42317f06` | RedemptionRestrictions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc4f9a1dcf2e05eb55abb30baa7070838d3fd3d5b` | RefundEscrowFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7ed48c31f2fdc40d37407cbabf0870b2b688368f` | Root | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xdc9456e7e20f15029c8231ec433a20f404b7235e` | Root | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaffc269c8fe18ee9c7ddb22301ac2c2507d69bef` | ShareClassManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa6233014b9b7aaa74f38fa1977ffc7a89642dc72` | ShareToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x09b61343097c1f9b159a3ae7151298efd10f0db2` | ShareToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9477724bb54ad5417de8baff29e59df3fb4da74f` | ShareToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa6233014b9b7aaa74f38fa1977ffc7a89642dc72` | ShareToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa6233014b9b7aaa74f38fa1977ffc7a89642dc72` | ShareToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xa5d465251fbcc907f5dd6bb2145488dfc6a2627b` | ShareToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xa6233014b9b7aaa74f38fa1977ffc7a89642dc72` | ShareToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x280c94eb440a8a75c2f8f6ca8c6faff907000823` | SimplePriceManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd30da1d7f964e5f6c2d9fe2aaa97517f6b23fa2b` | Spoke | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbfc7b60684880457030c08acee2e675cbcb9d646` | SubsidyManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdb9c27762045addd713182521c0580c68bdf700a` | SyncDepositVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xdb9c27762045addd713182521c0580c68bdf700a` | SyncDepositVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xff8ed1862f6ac3a8e89b81c75507c225e36e273d` | SyncManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xce1616505f93215751fbb41efac618b631997c38` | TokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xce1616505f93215751fbb41efac618b631997c38` | TokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1e70530e9555711f8df4838ab940b97c039b4037` | TokenRecoverer | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x1e70530e9555711f8df4838ab940b97c039b4037` | TokenRecoverer | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5a0f93d040de44e78f251b03c43be9cf317dcf64` | Tranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8c213ee79581ff4984583c6a801e5263418c4b86` | Tranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5a0f93d040de44e78f251b03c43be9cf317dcf64` | Tranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8c213ee79581ff4984583c6a801e5263418c4b86` | Tranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8c213ee79581ff4984583c6a801e5263418c4b86` | Tranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8ca5372a5613a6df75fd5fbc43216e68c1be6d38` | VaultDecoder | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd9531ac47928c3386346f82d9a2478960bf2ca7b` | VaultRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf684014771c01e50b8b526968b3a1e33acda63f6` | VaultRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4be430401760075315e931dd34b892dfdfc706a7` | WormholeAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x4be430401760075315e931dd34b892dfdfc706a7` | WormholeAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4be430401760075315e931dd34b892dfdfc706a7` | WormholeAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4be430401760075315e931dd34b892dfdfc706a7` | WormholeAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 157 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 101 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [12896] cantina.xyz/bounties/6cc9d51a-ac1e-4385-a88a-a3924e40c00e
- [12897] LA-Tinlake-Audit-v0.3.0.pdf

Fork inheritance lineage and inherited audits are included when available.
