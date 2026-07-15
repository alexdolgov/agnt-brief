# Agentic Audit Brief: Centrifuge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Centrifuge (`centrifuge`)
- Website: [https://centrifuge.io/](https://centrifuge.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
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

**AsyncVault** (`0x18ab9f...238257`, chain 1)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x1ad364...8a1f36`, chain 1)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x381f4f...8ae9ff`, chain 1)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x4865bc...154c9c`, chain 1)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x488079...46780b`, chain 1)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x559907...6a10cc`, chain 1)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x74a739...80b712`, chain 1)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0xfe6920...dfd77a`, chain 1)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x5aa847...ffbaf5`, chain 56)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x6e6b84...402ffa`, chain 56)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x9effaa...239961`, chain 56)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0xcbafe6...29cb99`, chain 56)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x096dc8...b5b4f4`, chain 8453)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x2aef27...d0ef0b`, chain 8453)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x2da40f...7d393a`, chain 8453)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x9183db...84f9da`, chain 8453)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x99e909...8323b9`, chain 8453)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x04ffdb...a17547`, chain 42161)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0xe897e7...207d6e`, chain 42161)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x498b63...4621d2`, chain 43114)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AsyncVault** (`0x5b9b60...826f77`, chain 43114)
Origin: 3f (`0x488079...46780b`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**SyncDepositVault** (`0x67fda4...92bb8f`, chain 10)
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

- UnnamedContract (`0x050206...6a7396`, chain 143)
- UnnamedContract (`0x055589...86d0de`, chain 143)
- UnnamedContract (`0x05e22c...6133cf`, chain 143)
- UnnamedContract (`0x082c62...da39b2`, chain 143)
- UnnamedContract (`0x0defb4...c3392c`, chain 143)
- UnnamedContract (`0x12a110...d0f43e`, chain 143)
- UnnamedContract (`0x19a524...7d3172`, chain 143)
- UnnamedContract (`0x19f46d...fade93`, chain 143)
- UnnamedContract (`0x1e7053...9b4037`, chain 143)
- UnnamedContract (`0x2539e6...b0aaf6`, chain 143)
- UnnamedContract (`0x280c94...000823`, chain 143)
- UnnamedContract (`0x2a9b9c...7a1a61`, chain 143)
- UnnamedContract (`0x2fabf1...1a3245`, chain 143)
- UnnamedContract (`0x34e904...ca6484`, chain 143)
- UnnamedContract (`0x35c837...0073be`, chain 143)
- UnnamedContract (`0x39cf67...57d955`, chain 143)
- UnnamedContract (`0x3b150b...298f71`, chain 143)
- UnnamedContract (`0x3f0c8d...4c918d`, chain 143)
- UnnamedContract (`0x493b6c...4e9130`, chain 143)
- UnnamedContract (`0x5187a5...478ce3`, chain 143)
- UnnamedContract (`0x55cde5...72f0be`, chain 143)
- UnnamedContract (`0x796ba8...f13cd5`, chain 143)
- UnnamedContract (`0x8ca537...be6d38`, chain 143)
- UnnamedContract (`0x8e6808...d224a4`, chain 143)
- UnnamedContract (`0x926030...67df3a`, chain 143)
- UnnamedContract (`0x971aca...18d220`, chain 143)
- UnnamedContract (`0x97cc7e...4fe30a`, chain 143)
- UnnamedContract (`0xa4a7bb...341953`, chain 143)
- UnnamedContract (`0xad48f1...9df797`, chain 143)
- UnnamedContract (`0xaffc26...d69bef`, chain 143)
- UnnamedContract (`0xbebef2...6754be`, chain 143)
- UnnamedContract (`0xbfc7b6...b9d646`, chain 143)
- UnnamedContract (`0xc18e6f...bc6040`, chain 143)
- UnnamedContract (`0xc4f9a1...fd3d5b`, chain 143)
- UnnamedContract (`0xc5243b...37a18b`, chain 143)
- UnnamedContract (`0xc52bd1...1dfe77`, chain 143)
- UnnamedContract (`0xcbdb6e...c26e6d`, chain 143)
- UnnamedContract (`0xce1616...997c38`, chain 143)
- UnnamedContract (`0xceb7ed...9635c6`, chain 143)
- UnnamedContract (`0xd40871...60931d`, chain 143)
- UnnamedContract (`0xd517bc...750295`, chain 143)
- UnnamedContract (`0xd5b243...0731c1`, chain 143)
- UnnamedContract (`0xd9531a...f2ca7b`, chain 143)
- UnnamedContract (`0xdb9c27...df700a`, chain 143)
- UnnamedContract (`0xdc9456...b7235e`, chain 143)
- UnnamedContract (`0xe5423e...317f06`, chain 143)
- UnnamedContract (`0xec3582...8525ab`, chain 143)
- UnnamedContract (`0xf48256...9761ae`, chain 143)
- UnnamedContract (`0xf68401...da63f6`, chain 143)
- UnnamedContract (`0xf837a2...f30b27`, chain 143)
- UnnamedContract (`0xff8ed1...6e273d`, chain 143)
- UnnamedContract (`0x050206...6a7396`, chain 1672)
- UnnamedContract (`0x055589...86d0de`, chain 1672)
- UnnamedContract (`0x05e22c...6133cf`, chain 1672)
- UnnamedContract (`0x0defb4...c3392c`, chain 1672)
- UnnamedContract (`0x12a110...d0f43e`, chain 1672)
- UnnamedContract (`0x19a524...7d3172`, chain 1672)
- UnnamedContract (`0x19f46d...fade93`, chain 1672)
- UnnamedContract (`0x1e7053...9b4037`, chain 1672)
- UnnamedContract (`0x2539e6...b0aaf6`, chain 1672)
- UnnamedContract (`0x280c94...000823`, chain 1672)
- UnnamedContract (`0x2a9b9c...7a1a61`, chain 1672)
- UnnamedContract (`0x35c837...0073be`, chain 1672)
- UnnamedContract (`0x39cf67...57d955`, chain 1672)
- UnnamedContract (`0x3b150b...298f71`, chain 1672)
- UnnamedContract (`0x3f0c8d...4c918d`, chain 1672)
- UnnamedContract (`0x493b6c...4e9130`, chain 1672)
- UnnamedContract (`0x5187a5...478ce3`, chain 1672)
- UnnamedContract (`0x55cde5...72f0be`, chain 1672)
- UnnamedContract (`0x8ca537...be6d38`, chain 1672)
- UnnamedContract (`0x8e6808...d224a4`, chain 1672)
- UnnamedContract (`0x971aca...18d220`, chain 1672)
- UnnamedContract (`0x97cc7e...4fe30a`, chain 1672)
- UnnamedContract (`0xa4a7bb...341953`, chain 1672)
- UnnamedContract (`0xaffc26...d69bef`, chain 1672)
- UnnamedContract (`0xbebef2...6754be`, chain 1672)
- UnnamedContract (`0xbfc7b6...b9d646`, chain 1672)
- UnnamedContract (`0xc4f9a1...fd3d5b`, chain 1672)
- UnnamedContract (`0xc5243b...37a18b`, chain 1672)
- UnnamedContract (`0xc52bd1...1dfe77`, chain 1672)
- UnnamedContract (`0xce1616...997c38`, chain 1672)
- UnnamedContract (`0xceb7ed...9635c6`, chain 1672)
- UnnamedContract (`0xd40871...60931d`, chain 1672)
- UnnamedContract (`0xd517bc...750295`, chain 1672)
- UnnamedContract (`0xd5b243...0731c1`, chain 1672)
- UnnamedContract (`0xd9531a...f2ca7b`, chain 1672)
- UnnamedContract (`0xdb9c27...df700a`, chain 1672)
- UnnamedContract (`0xdc9456...b7235e`, chain 1672)
- UnnamedContract (`0xe5423e...317f06`, chain 1672)
- UnnamedContract (`0xec3582...8525ab`, chain 1672)
- UnnamedContract (`0xf48256...9761ae`, chain 1672)
- UnnamedContract (`0xf68401...da63f6`, chain 1672)
- UnnamedContract (`0xf837a2...f30b27`, chain 1672)
- UnnamedContract (`0xff8ed1...6e273d`, chain 1672)
- UnnamedContract (`0x1121f4...897784`, chain 43114)
- UnnamedContract (`0xfe6920...dfd77a`, chain 43114)
- Accounting (`0x050206...6a7396`, chain 1)
- Accounting (`0x050206...6a7396`, chain 10)
- Accounting (`0x050206...6a7396`, chain 56)
- Accounting (`0x050206...6a7396`, chain 999)
- Accounting (`0x050206...6a7396`, chain 8453)
- Accounting (`0x050206...6a7396`, chain 42161)
- AsyncRequestManager (`0xf48256...9761ae`, chain 1)
- AsyncRequestManager (`0xf48256...9761ae`, chain 10)
- AsyncRequestManager (`0xf48256...9761ae`, chain 56)
- AsyncRequestManager (`0xf48256...9761ae`, chain 999)
- AsyncRequestManager (`0xf48256...9761ae`, chain 8453)
- AsyncRequestManager (`0xf48256...9761ae`, chain 42161)
- AsyncVaultFactory (`0x55cde5...72f0be`, chain 1)
- AsyncVaultFactory (`0x55cde5...72f0be`, chain 10)
- AsyncVaultFactory (`0x55cde5...72f0be`, chain 56)
- AsyncVaultFactory (`0x55cde5...72f0be`, chain 999)
- AsyncVaultFactory (`0x55cde5...72f0be`, chain 8453)
- AsyncVaultFactory (`0x55cde5...72f0be`, chain 42161)
- AxelarAdapter (`0x34e904...ca6484`, chain 1)
- AxelarAdapter (`0x34e904...ca6484`, chain 10)
- AxelarAdapter (`0x34e904...ca6484`, chain 56)
- AxelarAdapter (`0x34e904...ca6484`, chain 999)
- AxelarAdapter (`0x34e904...ca6484`, chain 8453)
- AxelarAdapter (`0x34e904...ca6484`, chain 42161)
- BalanceSheet (`0x12a110...d0f43e`, chain 1)
- BalanceSheet (`0x12a110...d0f43e`, chain 10)
- BalanceSheet (`0x12a110...d0f43e`, chain 56)
- BalanceSheet (`0x12a110...d0f43e`, chain 999)
- BalanceSheet (`0x12a110...d0f43e`, chain 8453)
- BalanceSheet (`0x12a110...d0f43e`, chain 42161)
- BatchRequestManager (`0xc52bd1...1dfe77`, chain 1)
- BatchRequestManager (`0xc52bd1...1dfe77`, chain 10)
- BatchRequestManager (`0xc52bd1...1dfe77`, chain 56)
- BatchRequestManager (`0xc52bd1...1dfe77`, chain 999)
- BatchRequestManager (`0xc52bd1...1dfe77`, chain 8453)
- BatchRequestManager (`0xc52bd1...1dfe77`, chain 42161)
- ChainlinkAdapter (`0x39cf67...57d955`, chain 1)
- ChainlinkAdapter (`0x39cf67...57d955`, chain 10)
- ChainlinkAdapter (`0x39cf67...57d955`, chain 56)
- ChainlinkAdapter (`0x39cf67...57d955`, chain 999)
- ChainlinkAdapter (`0x39cf67...57d955`, chain 8453)
- ChainlinkAdapter (`0x39cf67...57d955`, chain 42161)
- CircleDecoder (`0xd40871...60931d`, chain 1)
- CircleDecoder (`0xd40871...60931d`, chain 10)
- CircleDecoder (`0xd40871...60931d`, chain 56)
- CircleDecoder (`0xd40871...60931d`, chain 999)
- CircleDecoder (`0xd40871...60931d`, chain 8453)
- CircleDecoder (`0xd40871...60931d`, chain 42161)
- ContractUpdater (`0x3b150b...298f71`, chain 1)
- ContractUpdater (`0x3b150b...298f71`, chain 10)
- ContractUpdater (`0x3b150b...298f71`, chain 56)
- ContractUpdater (`0x3b150b...298f71`, chain 999)
- ContractUpdater (`0x3b150b...298f71`, chain 8453)
- ContractUpdater (`0x3b150b...298f71`, chain 42161)
- FreelyTransferable (`0x2a9b9c...7a1a61`, chain 1)
- FreelyTransferable (`0x2a9b9c...7a1a61`, chain 10)
- FreelyTransferable (`0x2a9b9c...7a1a61`, chain 56)
- FreelyTransferable (`0x2a9b9c...7a1a61`, chain 999)
- FreelyTransferable (`0x2a9b9c...7a1a61`, chain 8453)
- FreelyTransferable (`0x2a9b9c...7a1a61`, chain 42161)
- FreezeOnly (`0xd5b243...0731c1`, chain 1)
- FreezeOnly (`0xd5b243...0731c1`, chain 10)
- FreezeOnly (`0xd5b243...0731c1`, chain 56)
- FreezeOnly (`0xd5b243...0731c1`, chain 999)
- FreezeOnly (`0xd5b243...0731c1`, chain 8453)
- FreezeOnly (`0xd5b243...0731c1`, chain 42161)
- FullRestrictions (`0x8e6808...d224a4`, chain 1)
- FullRestrictions (`0x8e6808...d224a4`, chain 10)
- FullRestrictions (`0x8e6808...d224a4`, chain 56)
- FullRestrictions (`0x8e6808...d224a4`, chain 999)
- FullRestrictions (`0x8e6808...d224a4`, chain 8453)
- FullRestrictions (`0x8e6808...d224a4`, chain 42161)
- GasService (`0xbebef2...6754be`, chain 1)
- GasService (`0xbebef2...6754be`, chain 10)
- GasService (`0xbebef2...6754be`, chain 56)
- GasService (`0xbebef2...6754be`, chain 999)
- GasService (`0xbebef2...6754be`, chain 8453)
- GasService (`0xbebef2...6754be`, chain 42161)
- Gateway (`0x19a524...7d3172`, chain 1)
- Gateway (`0x19a524...7d3172`, chain 10)
- Gateway (`0x19a524...7d3172`, chain 56)
- Gateway (`0x19a524...7d3172`, chain 999)
- Gateway (`0x19a524...7d3172`, chain 8453)
- Gateway (`0x19a524...7d3172`, chain 42161)
- Holdings (`0x3f0c8d...4c918d`, chain 1)
- Holdings (`0x3f0c8d...4c918d`, chain 10)
- Holdings (`0x3f0c8d...4c918d`, chain 56)
- Holdings (`0x3f0c8d...4c918d`, chain 999)
- Holdings (`0x3f0c8d...4c918d`, chain 8453)
- Holdings (`0x3f0c8d...4c918d`, chain 42161)
- Hub (`0xa4a7bb...341953`, chain 1)
- Hub (`0xa4a7bb...341953`, chain 10)
- Hub (`0xa4a7bb...341953`, chain 56)
- Hub (`0xa4a7bb...341953`, chain 999)
- Hub (`0xa4a7bb...341953`, chain 8453)
- Hub (`0xa4a7bb...341953`, chain 42161)
- HubHandler (`0x0defb4...c3392c`, chain 1)
- HubHandler (`0x0defb4...c3392c`, chain 10)
- HubHandler (`0x0defb4...c3392c`, chain 56)
- HubHandler (`0x0defb4...c3392c`, chain 999)
- HubHandler (`0x0defb4...c3392c`, chain 8453)
- HubHandler (`0x0defb4...c3392c`, chain 42161)
- HubRegistry (`0x19f46d...fade93`, chain 1)
- HubRegistry (`0x19f46d...fade93`, chain 10)
- HubRegistry (`0x19f46d...fade93`, chain 56)
- HubRegistry (`0x19f46d...fade93`, chain 999)
- HubRegistry (`0x19f46d...fade93`, chain 8453)
- HubRegistry (`0x19f46d...fade93`, chain 42161)
- IdentityValuation (`0x05e22c...6133cf`, chain 1)
- IdentityValuation (`0x05e22c...6133cf`, chain 10)
- IdentityValuation (`0x05e22c...6133cf`, chain 56)
- IdentityValuation (`0x05e22c...6133cf`, chain 999)
- IdentityValuation (`0x05e22c...6133cf`, chain 8453)
- IdentityValuation (`0x05e22c...6133cf`, chain 42161)
- LayerZeroAdapter (`0xd517bc...750295`, chain 1)
- LayerZeroAdapter (`0xd517bc...750295`, chain 10)
- LayerZeroAdapter (`0xd517bc...750295`, chain 56)
- LayerZeroAdapter (`0xd517bc...750295`, chain 999)
- LayerZeroAdapter (`0xd517bc...750295`, chain 8453)
- LayerZeroAdapter (`0xd517bc...750295`, chain 42161)
- MerkleProofManagerFactory (`0xc5243b...37a18b`, chain 1)
- MerkleProofManagerFactory (`0xc5243b...37a18b`, chain 10)
- MerkleProofManagerFactory (`0xc5243b...37a18b`, chain 56)
- MerkleProofManagerFactory (`0xc5243b...37a18b`, chain 999)
- MerkleProofManagerFactory (`0xc5243b...37a18b`, chain 8453)
- MerkleProofManagerFactory (`0xc5243b...37a18b`, chain 42161)
- MessageDispatcher (`0xf837a2...f30b27`, chain 1)
- MessageDispatcher (`0xf837a2...f30b27`, chain 10)
- MessageDispatcher (`0xf837a2...f30b27`, chain 56)
- MessageDispatcher (`0xf837a2...f30b27`, chain 999)
- MessageDispatcher (`0xf837a2...f30b27`, chain 8453)
- MessageDispatcher (`0xf837a2...f30b27`, chain 42161)
- MessageProcessor (`0x97cc7e...4fe30a`, chain 1)
- MessageProcessor (`0x97cc7e...4fe30a`, chain 10)
- MessageProcessor (`0x97cc7e...4fe30a`, chain 56)
- MessageProcessor (`0x97cc7e...4fe30a`, chain 999)
- MessageProcessor (`0x97cc7e...4fe30a`, chain 8453)
- MessageProcessor (`0x97cc7e...4fe30a`, chain 42161)
- MultiAdapter (`0x35c837...0073be`, chain 1)
- MultiAdapter (`0x35c837...0073be`, chain 10)
- MultiAdapter (`0x35c837...0073be`, chain 56)
- MultiAdapter (`0x35c837...0073be`, chain 999)
- MultiAdapter (`0x35c837...0073be`, chain 8453)
- MultiAdapter (`0x35c837...0073be`, chain 42161)
- NAVManager (`0x493b6c...4e9130`, chain 1)
- NAVManager (`0x493b6c...4e9130`, chain 10)
- NAVManager (`0x493b6c...4e9130`, chain 56)
- NAVManager (`0x493b6c...4e9130`, chain 999)
- NAVManager (`0x493b6c...4e9130`, chain 8453)
- NAVManager (`0x493b6c...4e9130`, chain 42161)
- OnOfframpManagerFactory (`0x2539e6...b0aaf6`, chain 1)
- OnOfframpManagerFactory (`0x2539e6...b0aaf6`, chain 10)
- OnOfframpManagerFactory (`0x2539e6...b0aaf6`, chain 56)
- OnOfframpManagerFactory (`0x2539e6...b0aaf6`, chain 999)
- OnOfframpManagerFactory (`0x2539e6...b0aaf6`, chain 8453)
- OnOfframpManagerFactory (`0x2539e6...b0aaf6`, chain 42161)
- OpsGuardian (`0x055589...86d0de`, chain 1)
- OpsGuardian (`0x055589...86d0de`, chain 10)
- OpsGuardian (`0x055589...86d0de`, chain 56)
- OpsGuardian (`0x055589...86d0de`, chain 999)
- OpsGuardian (`0x055589...86d0de`, chain 8453)
- OpsGuardian (`0x055589...86d0de`, chain 42161)
- OracleValuation (`0xcbdb6e...c26e6d`, chain 1)
- OracleValuation (`0xcbdb6e...c26e6d`, chain 10)
- OracleValuation (`0xcbdb6e...c26e6d`, chain 56)
- OracleValuation (`0xcbdb6e...c26e6d`, chain 999)
- OracleValuation (`0xcbdb6e...c26e6d`, chain 8453)
- OracleValuation (`0xcbdb6e...c26e6d`, chain 42161)
- PoolEscrowFactory (`0x5187a5...478ce3`, chain 1)
- PoolEscrowFactory (`0x5187a5...478ce3`, chain 10)
- PoolEscrowFactory (`0x5187a5...478ce3`, chain 56)
- PoolEscrowFactory (`0x5187a5...478ce3`, chain 999)
- PoolEscrowFactory (`0x5187a5...478ce3`, chain 8453)
- PoolEscrowFactory (`0x5187a5...478ce3`, chain 42161)
- ProtocolGuardian (`0xceb7ed...9635c6`, chain 1)
- ProtocolGuardian (`0xceb7ed...9635c6`, chain 10)
- ProtocolGuardian (`0xceb7ed...9635c6`, chain 56)
- ProtocolGuardian (`0xceb7ed...9635c6`, chain 999)
- ProtocolGuardian (`0xceb7ed...9635c6`, chain 8453)
- ProtocolGuardian (`0xceb7ed...9635c6`, chain 42161)
- QueueManager (`0x971aca...18d220`, chain 1)
- QueueManager (`0x971aca...18d220`, chain 10)
- QueueManager (`0x971aca...18d220`, chain 56)
- QueueManager (`0x971aca...18d220`, chain 999)
- QueueManager (`0x971aca...18d220`, chain 8453)
- QueueManager (`0x971aca...18d220`, chain 42161)
- RedemptionRestrictions (`0xe5423e...317f06`, chain 1)
- RedemptionRestrictions (`0xe5423e...317f06`, chain 10)
- RedemptionRestrictions (`0xe5423e...317f06`, chain 56)
- RedemptionRestrictions (`0xe5423e...317f06`, chain 999)
- RedemptionRestrictions (`0xe5423e...317f06`, chain 8453)
- RedemptionRestrictions (`0xe5423e...317f06`, chain 42161)
- RefundEscrowFactory (`0xc4f9a1...fd3d5b`, chain 1)
- RefundEscrowFactory (`0xc4f9a1...fd3d5b`, chain 10)
- RefundEscrowFactory (`0xc4f9a1...fd3d5b`, chain 56)
- RefundEscrowFactory (`0xc4f9a1...fd3d5b`, chain 999)
- RefundEscrowFactory (`0xc4f9a1...fd3d5b`, chain 8453)
- RefundEscrowFactory (`0xc4f9a1...fd3d5b`, chain 42161)
- Root (`0x7ed48c...88368f`, chain 1)
- Root (`0xdc9456...b7235e`, chain 10)
- Root (`0x7ed48c...88368f`, chain 56)
- Root (`0xdc9456...b7235e`, chain 999)
- Root (`0x7ed48c...88368f`, chain 8453)
- Root (`0x7ed48c...88368f`, chain 42161)
- ShareClassManager (`0xaffc26...d69bef`, chain 1)
- ShareClassManager (`0xaffc26...d69bef`, chain 10)
- ShareClassManager (`0xaffc26...d69bef`, chain 56)
- ShareClassManager (`0xaffc26...d69bef`, chain 999)
- ShareClassManager (`0xaffc26...d69bef`, chain 8453)
- ShareClassManager (`0xaffc26...d69bef`, chain 42161)
- ShareToken (`0x947772...4da74f`, chain 1)
- ShareToken (`0xa62330...42dc72`, chain 1)
- ShareToken (`0xaaa000...8c82cc`, chain 1)
- ShareToken (`0x9e2679...0eedc4`, chain 10)
- ShareToken (`0x58f93d...ed3b6b`, chain 56)
- ShareToken (`0xa5d465...a2627b`, chain 56)
- ShareToken (`0x09b613...0f0db2`, chain 8453)
- ShareToken (`0x947772...4da74f`, chain 8453)
- ShareToken (`0x9c5c36...729685`, chain 8453)
- ShareToken (`0xa62330...42dc72`, chain 8453)
- ShareToken (`0xaaa000...8c82cc`, chain 8453)
- ShareToken (`0xa62330...42dc72`, chain 42161)
- ShareToken (`0xaaa000...8c82cc`, chain 42161)
- ShareToken (`0x58f93d...ed3b6b`, chain 43114)
- ShareToken (`0xa5d465...a2627b`, chain 43114)
- ShareToken (`0xa62330...42dc72`, chain 43114)
- ShareToken (`0xaaa000...8c82cc`, chain 43114)
- SimplePriceManager (`0x280c94...000823`, chain 1)
- SimplePriceManager (`0x280c94...000823`, chain 10)
- SimplePriceManager (`0x280c94...000823`, chain 56)
- SimplePriceManager (`0x280c94...000823`, chain 999)
- SimplePriceManager (`0x280c94...000823`, chain 8453)
- SimplePriceManager (`0x280c94...000823`, chain 42161)
- Spoke (`0xec3582...8525ab`, chain 1)
- Spoke (`0xec3582...8525ab`, chain 10)
- Spoke (`0xec3582...8525ab`, chain 56)
- Spoke (`0xec3582...8525ab`, chain 999)
- Spoke (`0xec3582...8525ab`, chain 8453)
- Spoke (`0xec3582...8525ab`, chain 42161)
- SubsidyManager (`0xbfc7b6...b9d646`, chain 1)
- SubsidyManager (`0xbfc7b6...b9d646`, chain 10)
- SubsidyManager (`0xbfc7b6...b9d646`, chain 56)
- SubsidyManager (`0xbfc7b6...b9d646`, chain 999)
- SubsidyManager (`0xbfc7b6...b9d646`, chain 8453)
- SubsidyManager (`0xbfc7b6...b9d646`, chain 42161)
- SyncDepositVaultFactory (`0xdb9c27...df700a`, chain 1)
- SyncDepositVaultFactory (`0xdb9c27...df700a`, chain 10)
- SyncDepositVaultFactory (`0xdb9c27...df700a`, chain 56)
- SyncDepositVaultFactory (`0xdb9c27...df700a`, chain 999)
- SyncDepositVaultFactory (`0xdb9c27...df700a`, chain 8453)
- SyncDepositVaultFactory (`0xdb9c27...df700a`, chain 42161)
- SyncManager (`0xff8ed1...6e273d`, chain 1)
- SyncManager (`0xff8ed1...6e273d`, chain 10)
- SyncManager (`0xff8ed1...6e273d`, chain 56)
- SyncManager (`0xff8ed1...6e273d`, chain 999)
- SyncManager (`0xff8ed1...6e273d`, chain 8453)
- SyncManager (`0xff8ed1...6e273d`, chain 42161)
- TokenFactory (`0xce1616...997c38`, chain 1)
- TokenFactory (`0xce1616...997c38`, chain 10)
- TokenFactory (`0xce1616...997c38`, chain 56)
- TokenFactory (`0xce1616...997c38`, chain 999)
- TokenFactory (`0xce1616...997c38`, chain 8453)
- TokenFactory (`0xce1616...997c38`, chain 42161)
- TokenRecoverer (`0x1e7053...9b4037`, chain 1)
- TokenRecoverer (`0x1e7053...9b4037`, chain 10)
- TokenRecoverer (`0x1e7053...9b4037`, chain 56)
- TokenRecoverer (`0x1e7053...9b4037`, chain 999)
- TokenRecoverer (`0x1e7053...9b4037`, chain 8453)
- TokenRecoverer (`0x1e7053...9b4037`, chain 42161)
- Tranche (`0x5a0f93...7dcf64`, chain 1)
- Tranche (`0x8c213e...8c4b86`, chain 1)
- Tranche (`0x5a0f93...7dcf64`, chain 8453)
- Tranche (`0x8c213e...8c4b86`, chain 8453)
- Tranche (`0x8c213e...8c4b86`, chain 42161)
- VaultDecoder (`0x8ca537...be6d38`, chain 1)
- VaultDecoder (`0x8ca537...be6d38`, chain 10)
- VaultDecoder (`0x8ca537...be6d38`, chain 56)
- VaultDecoder (`0x8ca537...be6d38`, chain 999)
- VaultDecoder (`0x8ca537...be6d38`, chain 8453)
- VaultDecoder (`0x8ca537...be6d38`, chain 42161)
- VaultRegistry (`0xd9531a...f2ca7b`, chain 1)
- VaultRegistry (`0xd9531a...f2ca7b`, chain 10)
- VaultRegistry (`0xd9531a...f2ca7b`, chain 56)
- VaultRegistry (`0xd9531a...f2ca7b`, chain 999)
- VaultRegistry (`0xd9531a...f2ca7b`, chain 8453)
- VaultRegistry (`0xd9531a...f2ca7b`, chain 42161)
- VaultRouter (`0xf68401...da63f6`, chain 1)
- VaultRouter (`0xf68401...da63f6`, chain 10)
- VaultRouter (`0xf68401...da63f6`, chain 56)
- VaultRouter (`0xf68401...da63f6`, chain 999)
- VaultRouter (`0xf68401...da63f6`, chain 8453)
- VaultRouter (`0xf68401...da63f6`, chain 42161)
- WormholeAdapter (`0x4be430...c706a7`, chain 1)
- WormholeAdapter (`0x4be430...c706a7`, chain 56)
- WormholeAdapter (`0x4be430...c706a7`, chain 8453)
- WormholeAdapter (`0x4be430...c706a7`, chain 42161)

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
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232221 | `0x488079...46780b` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | avalanche | unit-232456 | `0x58f93d...ed3b6b` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | base | unit-232528 | `0x2aef27...d0ef0b` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232225 | `0x559907...6a10cc` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232220 | `0x4865bc...154c9c` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | ethereum | unit-232238 | `0xaaa000...8c82cc` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232209 | `0x1ad364...8a1f36` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232206 | `0x18ab9f...238257` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | base | unit-232549 | `0x99e909...8323b9` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | base | unit-232550 | `0x9c5c36...729685` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | base | unit-232529 | `0x2da40f...7d393a` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | base | unit-232545 | `0x9183db...84f9da` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | base | unit-232553 | `0xaaa000...8c82cc` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | bsc | unit-232491 | `0x9effaa...239961` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | bsc | unit-232500 | `0xcbafe6...29cb99` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | bsc | unit-232483 | `0x58f93d...ed3b6b` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | bsc | unit-232484 | `0x5aa847...ffbaf5` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | bsc | unit-232485 | `0x6e6b84...402ffa` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | bsc | unit-232493 | `0xa5d465...a2627b` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232228 | `0x74a739...80b712` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | ethereum | unit-232233 | `0x947772...4da74f` | ⚠️ Unaudited |
| SyncDepositVault | core_logic | project_anchor | own_supporting | 0 | optimism | unit-232279 | `0x67fda4...92bb8f` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | optimism | unit-232284 | `0x9e2679...0eedc4` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-232448 | `0xe897e7...207d6e` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | arbitrum | unit-232432 | `0xaaa000...8c82cc` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-232403 | `0x04ffdb...a17547` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | avalanche | unit-232460 | `0xaaa000...8c82cc` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-232455 | `0x498b63...4621d2` | ⚠️ Unaudited |
| Accounting | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232201 | 6 deployments: ethereum `0x050206...6a7396`; optimism `0x050206...6a7396`; bsc `0x050206...6a7396`; hyperliquid `0x050206...6a7396`; base `0x050206...6a7396`; arbitrum `0x050206...6a7396` | ⚠️ Unaudited |
| AsyncRequestManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-232255 | 6 deployments: ethereum `0xf48256...9761ae`; optimism `0xf48256...9761ae`; bsc `0xf48256...9761ae`; hyperliquid `0xf48256...9761ae`; base `0xf48256...9761ae`; arbitrum `0xf48256...9761ae` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232216 | `0x381f4f...8ae9ff` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232258 | `0xfe6920...dfd77a` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | base | unit-232518 | `0x096dc8...b5b4f4` | ⚠️ Unaudited |
| AsyncVault | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-232457 | `0x5b9b60...826f77` | ⚠️ Unaudited |
| AsyncVaultFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-232226 | 4 deployments: ethereum `0x55cde5...72f0be`; bsc `0x55cde5...72f0be`; base `0x55cde5...72f0be`; arbitrum `0x55cde5...72f0be` | ⚠️ Unaudited |
| AsyncVaultFactory | registry | project_anchor | own_supporting | 0 | optimism | unit-232278 | 2 deployments: optimism `0x55cde5...72f0be`; hyperliquid `0x55cde5...72f0be` | ⚠️ Unaudited |
| AxelarAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-232214 | `0x34e904...ca6484` | ⚠️ Unaudited |
| AxelarAdapter | adapter | project_anchor | own_supporting | 0 | optimism | unit-232271 | 4 deployments: optimism `0x34e904...ca6484`; hyperliquid `0x34e904...ca6484`; base `0x34e904...ca6484`; arbitrum `0x34e904...ca6484` | ⚠️ Unaudited |
| AxelarAdapter | adapter | project_anchor | own_supporting | 0 | bsc | unit-232474 | `0x34e904...ca6484` | ⚠️ Unaudited |
| BalanceSheet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232205 | 4 deployments: ethereum `0x12a110...d0f43e`; bsc `0x12a110...d0f43e`; base `0x12a110...d0f43e`; arbitrum `0x12a110...d0f43e` | ⚠️ Unaudited |
| BalanceSheet | unknown | project_anchor | own_supporting | 0 | optimism | unit-232264 | 2 deployments: optimism `0x12a110...d0f43e`; hyperliquid `0x12a110...d0f43e` | ⚠️ Unaudited |
| BatchRequestManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-232244 | 6 deployments: ethereum `0xc52bd1...1dfe77`; optimism `0xc52bd1...1dfe77`; bsc `0xc52bd1...1dfe77`; hyperliquid `0xc52bd1...1dfe77`; base `0xc52bd1...1dfe77`; arbitrum `0xc52bd1...1dfe77` | ⚠️ Unaudited |
| CentrifugeRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x2f445b...69a1f4`; ethereum `0x32043a...4cab57`; ethereum `0xb1a07d...3d3281`; base `0x54836e...2fca7b`; base `0x5b82ff...ed1231`; base `0xf35501...f5009d`; arbitrum `0x2f445b...69a1f4`; arbitrum `0xa3ce97...e78cf0`; arbitrum `0xf35501...f5009d` | ⚠️ Unaudited |
| CFG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0xcccccc...4e8a94`; bsc `0xcccccc...4e8a94`; base `0xcccccc...4e8a94`; arbitrum `0xcccccc...4e8a94`; avalanche `0xcccccc...4e8a94` | ⚠️ Unaudited |
| ChainlinkAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-232217 | `0x39cf67...57d955` | ⚠️ Unaudited |
| ChainlinkAdapter | adapter | project_anchor | own_supporting | 0 | optimism | unit-232273 | `0x39cf67...57d955` | ⚠️ Unaudited |
| ChainlinkAdapter | adapter | project_anchor | own_supporting | 0 | bsc | unit-232476 | `0x39cf67...57d955` | ⚠️ Unaudited |
| ChainlinkAdapter | adapter | project_anchor | own_supporting | 0 | hyperliquid | unit-232587 | `0x39cf67...57d955` | ⚠️ Unaudited |
| ChainlinkAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-232532 | `0x39cf67...57d955` | ⚠️ Unaudited |
| ChainlinkAdapter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-232417 | `0x39cf67...57d955` | ⚠️ Unaudited |
| CircleDecoder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232248 | 6 deployments: ethereum `0xd40871...60931d`; optimism `0xd40871...60931d`; bsc `0xd40871...60931d`; hyperliquid `0xd40871...60931d`; base `0xd40871...60931d`; arbitrum `0xd40871...60931d` | ⚠️ Unaudited |
| ContractUpdater | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232218 | 6 deployments: ethereum `0x3b150b...298f71`; optimism `0x3b150b...298f71`; bsc `0x3b150b...298f71`; hyperliquid `0x3b150b...298f71`; base `0x3b150b...298f71`; arbitrum `0x3b150b...298f71` | ⚠️ Unaudited |
| DelayedAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x255999...ed9028`; base `0x255999...ed9028`; arbitrum `0xfe364b...4cc4ac` | ⚠️ Unaudited |
| ERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x2b51e2...81ba97`; base `0x9abb03...370166`; base `0xf949df...1e68c1` | ⚠️ Unaudited |
| ERC7540VaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: ethereum `0x6f9dba...ec24b8`; ethereum `0x7f192f...056994`; ethereum `0xed590d...1e47c2`; base `0x6215b2...f5ab35`; base `0xcad01f...e4462c`; base `0xe79f06...285d20`; arbitrum `0x32043a...4cab57`; arbitrum `0x6f9dba...ec24b8`; arbitrum `0xaffc66...325fc7` | ⚠️ Unaudited |
| FreelyTransferable | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232213 | 4 deployments: ethereum `0x2a9b9c...7a1a61`; bsc `0x2a9b9c...7a1a61`; base `0x2a9b9c...7a1a61`; arbitrum `0x2a9b9c...7a1a61` | ⚠️ Unaudited |
| FreelyTransferable | unknown | project_anchor | own_supporting | 0 | optimism | unit-232270 | 2 deployments: optimism `0x2a9b9c...7a1a61`; hyperliquid `0x2a9b9c...7a1a61` | ⚠️ Unaudited |
| FreezeOnly | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232250 | 4 deployments: ethereum `0xd5b243...0731c1`; bsc `0xd5b243...0731c1`; base `0xd5b243...0731c1`; arbitrum `0xd5b243...0731c1` | ⚠️ Unaudited |
| FreezeOnly | unknown | project_anchor | own_supporting | 0 | optimism | unit-232297 | 2 deployments: optimism `0xd5b243...0731c1`; hyperliquid `0xd5b243...0731c1` | ⚠️ Unaudited |
| FullRestrictions | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232232 | 4 deployments: ethereum `0x8e6808...d224a4`; bsc `0x8e6808...d224a4`; base `0x8e6808...d224a4`; arbitrum `0x8e6808...d224a4` | ⚠️ Unaudited |
| FullRestrictions | unknown | project_anchor | own_supporting | 0 | optimism | unit-232281 | 2 deployments: optimism `0x8e6808...d224a4`; hyperliquid `0x8e6808...d224a4` | ⚠️ Unaudited |
| GasService | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232240 | `0xbebef2...6754be` | ⚠️ Unaudited |
| GasService | unknown | project_anchor | own_supporting | 0 | optimism | unit-232287 | `0xbebef2...6754be` | ⚠️ Unaudited |
| GasService | unknown | project_anchor | own_supporting | 0 | bsc | unit-232495 | `0xbebef2...6754be` | ⚠️ Unaudited |
| GasService | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-232599 | `0xbebef2...6754be` | ⚠️ Unaudited |
| GasService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0x3c9c09...a28f27`; base `0x09ab10...c7f5e8`; base `0x32043a...4cab57`; arbitrum `0x3c9c09...a28f27` | ⚠️ Unaudited |
| GasService | unknown | project_anchor | own_supporting | 0 | base | unit-232555 | `0xbebef2...6754be` | ⚠️ Unaudited |
| GasService | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232434 | `0xbebef2...6754be` | ⚠️ Unaudited |
| Gateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232207 | `0x19a524...7d3172` | ⚠️ Unaudited |
| Gateway | unknown | project_anchor | own_supporting | 0 | optimism | unit-232265 | `0x19a524...7d3172` | ⚠️ Unaudited |
| Gateway | unknown | project_anchor | own_supporting | 0 | bsc | unit-232468 | `0x19a524...7d3172` | ⚠️ Unaudited |
| Gateway | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-232579 | `0x19a524...7d3172` | ⚠️ Unaudited |
| Gateway | unknown | project_anchor | own_supporting | 0 | base | unit-232522 | `0x19a524...7d3172` | ⚠️ Unaudited |
| Gateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0x634f03...7a0037`; ethereum `0x7829e5...7a3b8c`; base `0x3423d2...aa4361`; base `0x634f03...7a0037`; base `0xbbaf0e...b22d29`; arbitrum `0x7829e5...7a3b8c` | ⚠️ Unaudited |
| Gateway | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232409 | `0x19a524...7d3172` | ⚠️ Unaudited |
| Guardian | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x09ab10...c7f5e8`; base `0x427a1c...2ea7e9`; base `0xa0e3a5...9d9e18`; arbitrum `0x09ab10...c7f5e8` | ⚠️ Unaudited |
| Holdings | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232219 | 6 deployments: ethereum `0x3f0c8d...4c918d`; optimism `0x3f0c8d...4c918d`; bsc `0x3f0c8d...4c918d`; hyperliquid `0x3f0c8d...4c918d`; base `0x3f0c8d...4c918d`; arbitrum `0x3f0c8d...4c918d` | ⚠️ Unaudited |
| Hub | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232236 | 6 deployments: ethereum `0xa4a7bb...341953`; optimism `0xa4a7bb...341953`; bsc `0xa4a7bb...341953`; hyperliquid `0xa4a7bb...341953`; base `0xa4a7bb...341953`; arbitrum `0xa4a7bb...341953` | ⚠️ Unaudited |
| HubHandler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232204 | 6 deployments: ethereum `0x0defb4...c3392c`; optimism `0x0defb4...c3392c`; bsc `0x0defb4...c3392c`; hyperliquid `0x0defb4...c3392c`; base `0x0defb4...c3392c`; arbitrum `0x0defb4...c3392c` | ⚠️ Unaudited |
| HubRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-232208 | 6 deployments: ethereum `0x19f46d...fade93`; optimism `0x19f46d...fade93`; bsc `0x19f46d...fade93`; hyperliquid `0x19f46d...fade93`; base `0x19f46d...fade93`; arbitrum `0x19f46d...fade93` | ⚠️ Unaudited |
| IdentityValuation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232203 | 6 deployments: ethereum `0x05e22c...6133cf`; optimism `0x05e22c...6133cf`; bsc `0x05e22c...6133cf`; hyperliquid `0x05e22c...6133cf`; base `0x05e22c...6133cf`; arbitrum `0x05e22c...6133cf` | ⚠️ Unaudited |
| InvestmentManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x1bfa7e...103164`; ethereum `0x427a1c...2ea7e9`; ethereum `0xbbf0ab...6dd73a`; ethereum `0xe79f06...285d20`; base `0x36b87b...f00f03`; base `0x3c9c09...a28f27`; base `0xbbf0ab...6dd73a`; base `0xc43751...f752d4`; arbitrum `0x6b8d01...52fd64`; arbitrum `0x7f192f...056994`; arbitrum `0xa85cb6...1aaed7`; arbitrum `0xe79f06...285d20` | ⚠️ Unaudited |
| IouCfg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacf3c0...523069` | ⚠️ Unaudited |
| LayerZeroAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-232249 | 5 deployments: ethereum `0xd517bc...750295`; optimism `0xd517bc...750295`; bsc `0xd517bc...750295`; base `0xd517bc...750295`; arbitrum `0xd517bc...750295` | ⚠️ Unaudited |
| LayerZeroAdapter | adapter | project_anchor | own_supporting | 0 | hyperliquid | unit-232608 | `0xd517bc...750295` | ⚠️ Unaudited |
| LiquidityPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x77f48b...41386a`; ethereum `0x7f93ed...95bf2c`; ethereum `0x8273e3...64f165`; base `0x77f48b...41386a`; arbitrum `0x77f48b...41386a` | ⚠️ Unaudited |
| MerkleProofManagerFactory | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232243 | 6 deployments: ethereum `0xc5243b...37a18b`; optimism `0xc5243b...37a18b`; bsc `0xc5243b...37a18b`; hyperliquid `0xc5243b...37a18b`; base `0xc5243b...37a18b`; arbitrum `0xc5243b...37a18b` | ⚠️ Unaudited |
| MessageDispatcher | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232257 | `0xf837a2...f30b27` | ⚠️ Unaudited |
| MessageDispatcher | unknown | project_anchor | own_supporting | 0 | optimism | unit-232305 | `0xf837a2...f30b27` | ⚠️ Unaudited |
| MessageDispatcher | unknown | project_anchor | own_supporting | 0 | bsc | unit-232513 | `0xf837a2...f30b27` | ⚠️ Unaudited |
| MessageDispatcher | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-232617 | `0xf837a2...f30b27` | ⚠️ Unaudited |
| MessageDispatcher | unknown | project_anchor | own_supporting | 0 | base | unit-232572 | `0xf837a2...f30b27` | ⚠️ Unaudited |
| MessageDispatcher | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232452 | `0xf837a2...f30b27` | ⚠️ Unaudited |
| MessageProcessor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232235 | 4 deployments: ethereum `0x97cc7e...4fe30a`; bsc `0x97cc7e...4fe30a`; base `0x97cc7e...4fe30a`; arbitrum `0x97cc7e...4fe30a` | ⚠️ Unaudited |
| MessageProcessor | unknown | project_anchor | own_supporting | 0 | optimism | unit-232283 | 2 deployments: optimism `0x97cc7e...4fe30a`; hyperliquid `0x97cc7e...4fe30a` | ⚠️ Unaudited |
| MultiAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-232215 | `0x35c837...0073be` | ⚠️ Unaudited |
| MultiAdapter | adapter | project_anchor | own_supporting | 0 | optimism | unit-232272 | `0x35c837...0073be` | ⚠️ Unaudited |
| MultiAdapter | adapter | project_anchor | own_supporting | 0 | bsc | unit-232475 | `0x35c837...0073be` | ⚠️ Unaudited |
| MultiAdapter | adapter | project_anchor | own_supporting | 0 | hyperliquid | unit-232586 | `0x35c837...0073be` | ⚠️ Unaudited |
| MultiAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-232531 | `0x35c837...0073be` | ⚠️ Unaudited |
| MultiAdapter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-232416 | `0x35c837...0073be` | ⚠️ Unaudited |
| NAVManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-232222 | 6 deployments: ethereum `0x493b6c...4e9130`; optimism `0x493b6c...4e9130`; bsc `0x493b6c...4e9130`; hyperliquid `0x493b6c...4e9130`; base `0x493b6c...4e9130`; arbitrum `0x493b6c...4e9130` | ⚠️ Unaudited |
| OnOfframpManagerFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-232211 | 6 deployments: ethereum `0x2539e6...b0aaf6`; optimism `0x2539e6...b0aaf6`; bsc `0x2539e6...b0aaf6`; hyperliquid `0x2539e6...b0aaf6`; base `0x2539e6...b0aaf6`; arbitrum `0x2539e6...b0aaf6` | ⚠️ Unaudited |
| OpsGuardian | governance | project_anchor | own_supporting | 0 | ethereum | unit-232202 | 6 deployments: ethereum `0x055589...86d0de`; optimism `0x055589...86d0de`; bsc `0x055589...86d0de`; hyperliquid `0x055589...86d0de`; base `0x055589...86d0de`; arbitrum `0x055589...86d0de` | ⚠️ Unaudited |
| OracleValuation | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232245 | 6 deployments: ethereum `0xcbdb6e...c26e6d`; optimism `0xcbdb6e...c26e6d`; bsc `0xcbdb6e...c26e6d`; hyperliquid `0xcbdb6e...c26e6d`; base `0xcbdb6e...c26e6d`; arbitrum `0xcbdb6e...c26e6d` | ⚠️ Unaudited |
| PauseAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0xce8647...c8067c`; base `0xce8647...c8067c`; arbitrum `0x634f03...7a0037` | ⚠️ Unaudited |
| PoolEscrowFactory | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232224 | 4 deployments: ethereum `0x5187a5...478ce3`; bsc `0x5187a5...478ce3`; base `0x5187a5...478ce3`; arbitrum `0x5187a5...478ce3` | ⚠️ Unaudited |
| PoolEscrowFactory | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-232277 | 2 deployments: optimism `0x5187a5...478ce3`; hyperliquid `0x5187a5...478ce3` | ⚠️ Unaudited |
| PoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: ethereum `0x78e9e6...e58142`; ethereum `0x91808b...4b9e29`; base `0x7829e5...7a3b8c`; base `0x78e9e6...e58142`; base `0x7f192f...056994`; arbitrum `0x884171...976067`; arbitrum `0x91808b...4b9e29` | ⚠️ Unaudited |
| ProtocolGuardian | governance | project_anchor | own_supporting | 0 | ethereum | unit-232247 | 4 deployments: ethereum `0xceb7ed...9635c6`; bsc `0xceb7ed...9635c6`; base `0xceb7ed...9635c6`; arbitrum `0xceb7ed...9635c6` | ⚠️ Unaudited |
| ProtocolGuardian | governance | project_anchor | own_supporting | 0 | optimism | unit-232294 | 2 deployments: optimism `0xceb7ed...9635c6`; hyperliquid `0xceb7ed...9635c6` | ⚠️ Unaudited |
| QueueManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-232234 | 6 deployments: ethereum `0x971aca...18d220`; optimism `0x971aca...18d220`; bsc `0x971aca...18d220`; hyperliquid `0x971aca...18d220`; base `0x971aca...18d220`; arbitrum `0x971aca...18d220` | ⚠️ Unaudited |
| RedemptionRestrictions | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232253 | 4 deployments: ethereum `0xe5423e...317f06`; bsc `0xe5423e...317f06`; base `0xe5423e...317f06`; arbitrum `0xe5423e...317f06` | ⚠️ Unaudited |
| RedemptionRestrictions | unknown | project_anchor | own_supporting | 0 | optimism | unit-232301 | 2 deployments: optimism `0xe5423e...317f06`; hyperliquid `0xe5423e...317f06` | ⚠️ Unaudited |
| RefundEscrowFactory | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232242 | 6 deployments: ethereum `0xc4f9a1...fd3d5b`; optimism `0xc4f9a1...fd3d5b`; bsc `0xc4f9a1...fd3d5b`; hyperliquid `0xc4f9a1...fd3d5b`; base `0xc4f9a1...fd3d5b`; arbitrum `0xc4f9a1...fd3d5b` | ⚠️ Unaudited |
| RelinkV2Eth | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a110b...274a06` | ⚠️ Unaudited |
| RestrictionManagerFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xf4d7f6...9ae7ac`; base `0xf4d7f6...9ae7ac`; arbitrum `0xf4d7f6...9ae7ac` | ⚠️ Unaudited |
| Root | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232229 | 4 deployments: ethereum `0x7ed48c...88368f`; bsc `0x7ed48c...88368f`; base `0x7ed48c...88368f`; arbitrum `0x7ed48c...88368f` | ⚠️ Unaudited |
| Root | unknown | project_anchor | own_supporting | 0 | optimism | unit-232300 | 2 deployments: optimism `0xdc9456...b7235e`; hyperliquid `0xdc9456...b7235e` | ⚠️ Unaudited |
| ShareClassManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-232239 | 6 deployments: ethereum `0xaffc26...d69bef`; optimism `0xaffc26...d69bef`; bsc `0xaffc26...d69bef`; hyperliquid `0xaffc26...d69bef`; base `0xaffc26...d69bef`; arbitrum `0xaffc26...d69bef` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | ethereum | unit-232237 | `0xa62330...42dc72` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | base | unit-232519 | `0x09b613...0f0db2` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | base | unit-232546 | `0x947772...4da74f` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | base | unit-232552 | `0xa62330...42dc72` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | arbitrum | unit-232431 | `0xa62330...42dc72` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | avalanche | unit-232458 | `0xa5d465...a2627b` | ⚠️ Unaudited |
| ShareToken | token | project_anchor | own_supporting | 0 | avalanche | unit-232459 | `0xa62330...42dc72` | ⚠️ Unaudited |
| SimplePriceManager | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232212 | 6 deployments: ethereum `0x280c94...000823`; optimism `0x280c94...000823`; bsc `0x280c94...000823`; hyperliquid `0x280c94...000823`; base `0x280c94...000823`; arbitrum `0x280c94...000823` | ⚠️ Unaudited |
| Spell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x464d30...1e44e0`; ethereum `0x48c134...1963fd`; ethereum `0x7b2004...ab602f`; ethereum `0xa3ce97...e78cf0`; ethereum `0xcfbd14...6948a7` | ⚠️ Unaudited |
| SpellArbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f0828...32f22f` | ⚠️ Unaudited |
| SpellBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x4035fc...07f4fa`; base `0x4a9731...8ce880` | ⚠️ Unaudited |
| SpellEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x200116...be0420`; ethereum `0xf35501...f5009d`; arbitrum `0x36b87b...f00f03` | ⚠️ Unaudited |
| Spoke | unknown | project_anchor | own_supporting | 0 | ethereum | n/a | 12 deployments: ethereum `0xd30da1...23fa2b`; ethereum `0xec3582...8525ab`; optimism `0xec3582...8525ab`; bsc `0xd30da1...23fa2b`; bsc `0xec3582...8525ab`; hyperliquid `0xec3582...8525ab`; base `0xd30da1...23fa2b`; base `0xec3582...8525ab`; arbitrum `0xd30da1...23fa2b`; arbitrum `0xec3582...8525ab`; avalanche `0xd30da1...23fa2b`; avalanche `0xec3582...8525ab` | ⚠️ Unaudited |
| SubsidyManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-232241 | 6 deployments: ethereum `0xbfc7b6...b9d646`; optimism `0xbfc7b6...b9d646`; bsc `0xbfc7b6...b9d646`; hyperliquid `0xbfc7b6...b9d646`; base `0xbfc7b6...b9d646`; arbitrum `0xbfc7b6...b9d646` | ⚠️ Unaudited |
| SyncDepositVaultFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-232252 | 4 deployments: ethereum `0xdb9c27...df700a`; bsc `0xdb9c27...df700a`; base `0xdb9c27...df700a`; arbitrum `0xdb9c27...df700a` | ⚠️ Unaudited |
| SyncDepositVaultFactory | registry | project_anchor | own_supporting | 0 | optimism | unit-232299 | 2 deployments: optimism `0xdb9c27...df700a`; hyperliquid `0xdb9c27...df700a` | ⚠️ Unaudited |
| SyncManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-232259 | 6 deployments: ethereum `0xff8ed1...6e273d`; optimism `0xff8ed1...6e273d`; bsc `0xff8ed1...6e273d`; hyperliquid `0xff8ed1...6e273d`; base `0xff8ed1...6e273d`; arbitrum `0xff8ed1...6e273d` | ⚠️ Unaudited |
| TokenFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-232246 | 4 deployments: ethereum `0xce1616...997c38`; bsc `0xce1616...997c38`; base `0xce1616...997c38`; arbitrum `0xce1616...997c38` | ⚠️ Unaudited |
| TokenFactory | registry | project_anchor | own_supporting | 0 | optimism | unit-232293 | 2 deployments: optimism `0xce1616...997c38`; hyperliquid `0xce1616...997c38` | ⚠️ Unaudited |
| TokenRecoverer | token | project_anchor | own_supporting | 0 | ethereum | unit-232210 | 4 deployments: ethereum `0x1e7053...9b4037`; bsc `0x1e7053...9b4037`; base `0x1e7053...9b4037`; arbitrum `0x1e7053...9b4037` | ⚠️ Unaudited |
| TokenRecoverer | token | project_anchor | own_supporting | 0 | optimism | unit-232267 | 2 deployments: optimism `0x1e7053...9b4037`; hyperliquid `0x1e7053...9b4037` | ⚠️ Unaudited |
| Tranche | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232227 | `0x5a0f93...7dcf64` | ⚠️ Unaudited |
| Tranche | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232230 | `0x8c213e...8c4b86` | ⚠️ Unaudited |
| Tranche | core_logic | project_anchor | own_supporting | 0 | base | unit-232540 | `0x5a0f93...7dcf64` | ⚠️ Unaudited |
| Tranche | core_logic | project_anchor | own_supporting | 0 | base | unit-232542 | `0x8c213e...8c4b86` | ⚠️ Unaudited |
| Tranche | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-232425 | `0x8c213e...8c4b86` | ⚠️ Unaudited |
| TrancheTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2712fe...f18dca` | ⚠️ Unaudited |
| UserEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9fc3a3...17c9d7`; base `0x9fc3a3...17c9d7`; arbitrum `0x9fc3a3...17c9d7` | ⚠️ Unaudited |
| VaultDecoder | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232231 | 6 deployments: ethereum `0x8ca537...be6d38`; optimism `0x8ca537...be6d38`; bsc `0x8ca537...be6d38`; hyperliquid `0x8ca537...be6d38`; base `0x8ca537...be6d38`; arbitrum `0x8ca537...be6d38` | ⚠️ Unaudited |
| VaultOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdf515b...3a30d8` | ⚠️ Unaudited |
| VaultRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-232251 | 6 deployments: ethereum `0xd9531a...f2ca7b`; optimism `0xd9531a...f2ca7b`; bsc `0xd9531a...f2ca7b`; hyperliquid `0xd9531a...f2ca7b`; base `0xd9531a...f2ca7b`; arbitrum `0xd9531a...f2ca7b` | ⚠️ Unaudited |
| VaultRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-232256 | 6 deployments: ethereum `0xf68401...da63f6`; optimism `0xf68401...da63f6`; bsc `0xf68401...da63f6`; hyperliquid `0xf68401...da63f6`; base `0xf68401...da63f6`; arbitrum `0xf68401...da63f6` | ⚠️ Unaudited |
| WormholeAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-232223 | `0x4be430...c706a7` | ⚠️ Unaudited |
| WormholeAdapter | adapter | project_anchor | own_supporting | 0 | bsc | unit-232480 | `0x4be430...c706a7` | ⚠️ Unaudited |
| WormholeAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-232537 | `0x4be430...c706a7` | ⚠️ Unaudited |
| WormholeAdapter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-232421 | `0x4be430...c706a7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Messages | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: ethereum `0xaf9f6a...b58ea5`; base `0xaf9f6a...b58ea5`; arbitrum `0x811f7b...9d92c3`; arbitrum `0xaf9f6a...b58ea5` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (101)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2712fe...f18dca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb31234...14595d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232307 | `0x050206...6a7396` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232308 | `0x055589...86d0de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232309 | `0x05e22c...6133cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232310 | `0x082c62...da39b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232311 | `0x0defb4...c3392c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232312 | `0x12a110...d0f43e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232313 | `0x19a524...7d3172` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232314 | `0x19f46d...fade93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232315 | `0x1e7053...9b4037` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232316 | `0x2539e6...b0aaf6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232317 | `0x280c94...000823` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232318 | `0x2a9b9c...7a1a61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232319 | `0x2fabf1...1a3245` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232320 | `0x34e904...ca6484` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232321 | `0x35c837...0073be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232322 | `0x39cf67...57d955` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232323 | `0x3b150b...298f71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232324 | `0x3f0c8d...4c918d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232325 | `0x493b6c...4e9130` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232326 | `0x5187a5...478ce3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232327 | `0x55cde5...72f0be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232328 | `0x796ba8...f13cd5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232329 | `0x8ca537...be6d38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232330 | `0x8e6808...d224a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232331 | `0x926030...67df3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232332 | `0x971aca...18d220` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232333 | `0x97cc7e...4fe30a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232334 | `0xa4a7bb...341953` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232335 | `0xad48f1...9df797` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232336 | `0xaffc26...d69bef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232337 | `0xbebef2...6754be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232338 | `0xbfc7b6...b9d646` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232339 | `0xc18e6f...bc6040` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232340 | `0xc4f9a1...fd3d5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232341 | `0xc5243b...37a18b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232342 | `0xc52bd1...1dfe77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232343 | `0xcbdb6e...c26e6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232344 | `0xce1616...997c38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232345 | `0xceb7ed...9635c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232346 | `0xd40871...60931d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232347 | `0xd517bc...750295` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232348 | `0xd5b243...0731c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232349 | `0xd9531a...f2ca7b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232350 | `0xdb9c27...df700a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232351 | `0xdc9456...b7235e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232352 | `0xe5423e...317f06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232353 | `0xec3582...8525ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232354 | `0xf48256...9761ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232355 | `0xf68401...da63f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232356 | `0xf837a2...f30b27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232357 | `0xff8ed1...6e273d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232358 | `0x050206...6a7396` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232359 | `0x055589...86d0de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232360 | `0x05e22c...6133cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232361 | `0x0defb4...c3392c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232362 | `0x12a110...d0f43e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232363 | `0x19a524...7d3172` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232364 | `0x19f46d...fade93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232365 | `0x1e7053...9b4037` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232366 | `0x2539e6...b0aaf6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232367 | `0x280c94...000823` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232368 | `0x2a9b9c...7a1a61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232370 | `0x35c837...0073be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232371 | `0x39cf67...57d955` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232372 | `0x3b150b...298f71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232373 | `0x3f0c8d...4c918d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232374 | `0x493b6c...4e9130` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232375 | `0x5187a5...478ce3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232376 | `0x55cde5...72f0be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232377 | `0x8ca537...be6d38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232378 | `0x8e6808...d224a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232379 | `0x971aca...18d220` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232380 | `0x97cc7e...4fe30a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232381 | `0xa4a7bb...341953` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232382 | `0xaffc26...d69bef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232383 | `0xbebef2...6754be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232384 | `0xbfc7b6...b9d646` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232385 | `0xc4f9a1...fd3d5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232386 | `0xc5243b...37a18b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232387 | `0xc52bd1...1dfe77` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | pharos | unit-232388 | `0xcbdb6e...c26e6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232389 | `0xce1616...997c38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232390 | `0xceb7ed...9635c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232391 | `0xd40871...60931d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232392 | `0xd517bc...750295` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232393 | `0xd5b243...0731c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232394 | `0xd9531a...f2ca7b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232395 | `0xdb9c27...df700a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232396 | `0xdc9456...b7235e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232397 | `0xe5423e...317f06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232398 | `0xec3582...8525ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232399 | `0xf48256...9761ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232400 | `0xf68401...da63f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232401 | `0xf837a2...f30b27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232402 | `0xff8ed1...6e273d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78e9e6...e58142` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfd3791...06d0da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-232454 | `0x1121f4...897784` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-232462 | `0xfe6920...dfd77a` | ❓ Unverified |

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
| ethereum | `0x488079...46780b` | AsyncVault | core_logic | $370,993,580.26 | Verified native implementation with $370,993,580.26 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x58f93d...ed3b6b` | ShareToken | token | $259,827,751.04 | Verified native implementation with $259,827,751.04 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2aef27...d0ef0b` | AsyncVault | core_logic | $50,102,502.93 | Verified native implementation with $50,102,502.93 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x559907...6a10cc` | AsyncVault | core_logic | $6,096,905.14 | Verified native implementation with $6,096,905.14 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4865bc...154c9c` | AsyncVault | core_logic | $5,866,295.21 | Verified native implementation with $5,866,295.21 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaaa000...8c82cc` | ShareToken | token | $5,866,289.93 | Verified native implementation with $5,866,289.93 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1ad364...8a1f36` | AsyncVault | core_logic | $5,703,304.40 | Verified native implementation with $5,703,304.40 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x18ab9f...238257` | AsyncVault | core_logic | $5,149,326.11 | Verified native implementation with $5,149,326.11 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x99e909...8323b9` | AsyncVault | core_logic | $3,281,354.93 | Verified native implementation with $3,281,354.93 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9c5c36...729685` | ShareToken | token | $3,177,102.32 | Verified native implementation with $3,177,102.32 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2da40f...7d393a` | AsyncVault | core_logic | $3,164,253.50 | Verified native implementation with $3,164,253.50 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9183db...84f9da` | AsyncVault | core_logic | $2,221,441.94 | Verified native implementation with $2,221,441.94 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xaaa000...8c82cc` | ShareToken | token | $2,221,439.95 | Verified native implementation with $2,221,439.95 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x9effaa...239961` | AsyncVault | core_logic | $508,824.45 | Verified native implementation with $508,824.45 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xcbafe6...29cb99` | AsyncVault | core_logic | $508,824.45 | Verified native implementation with $508,824.45 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x58f93d...ed3b6b` | ShareToken | token | $508,824.42 | Verified native implementation with $508,824.42 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5aa847...ffbaf5` | AsyncVault | core_logic | $507,864.21 | Verified native implementation with $507,864.21 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6e6b84...402ffa` | AsyncVault | core_logic | $507,864.21 | Verified native implementation with $507,864.21 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa5d465...a2627b` | ShareToken | token | $507,675.11 | Verified native implementation with $507,675.11 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x74a739...80b712` | AsyncVault | core_logic | $386,038.45 | Verified native implementation with $386,038.45 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x947772...4da74f` | ShareToken | token | $386,038.08 | Verified native implementation with $386,038.08 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x67fda4...92bb8f` | SyncDepositVault | core_logic | $99,893.06 | Verified native implementation with $99,893.06 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x9e2679...0eedc4` | ShareToken | token | $99,855.84 | Verified native implementation with $99,855.84 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe897e7...207d6e` | AsyncVault | core_logic | $5,425.99 | Verified native implementation with $5,425.99 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xaaa000...8c82cc` | ShareToken | token | $5,425.99 | Verified native implementation with $5,425.99 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x04ffdb...a17547` | AsyncVault | core_logic | $5,227.52 | Verified native implementation with $5,227.52 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xaaa000...8c82cc` | ShareToken | token | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x498b63...4621d2` | AsyncVault | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x050206...6a7396` | Accounting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf48256...9761ae` | AsyncRequestManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x381f4f...8ae9ff` | AsyncVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfe6920...dfd77a` | AsyncVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x096dc8...b5b4f4` | AsyncVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x5b9b60...826f77` | AsyncVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x55cde5...72f0be` | AsyncVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x55cde5...72f0be` | AsyncVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x34e904...ca6484` | AxelarAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x34e904...ca6484` | AxelarAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x34e904...ca6484` | AxelarAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x12a110...d0f43e` | BalanceSheet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x12a110...d0f43e` | BalanceSheet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc52bd1...1dfe77` | BatchRequestManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x39cf67...57d955` | ChainlinkAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x39cf67...57d955` | ChainlinkAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x39cf67...57d955` | ChainlinkAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x39cf67...57d955` | ChainlinkAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x39cf67...57d955` | ChainlinkAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x39cf67...57d955` | ChainlinkAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd40871...60931d` | CircleDecoder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3b150b...298f71` | ContractUpdater | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2a9b9c...7a1a61` | FreelyTransferable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x2a9b9c...7a1a61` | FreelyTransferable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd5b243...0731c1` | FreezeOnly | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd5b243...0731c1` | FreezeOnly | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8e6808...d224a4` | FullRestrictions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x8e6808...d224a4` | FullRestrictions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbebef2...6754be` | GasService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xbebef2...6754be` | GasService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xbebef2...6754be` | GasService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xbebef2...6754be` | GasService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xbebef2...6754be` | GasService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbebef2...6754be` | GasService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x19a524...7d3172` | Gateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x19a524...7d3172` | Gateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x19a524...7d3172` | Gateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x19a524...7d3172` | Gateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x19a524...7d3172` | Gateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x19a524...7d3172` | Gateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3f0c8d...4c918d` | Holdings | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa4a7bb...341953` | Hub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0defb4...c3392c` | HubHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x19f46d...fade93` | HubRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x05e22c...6133cf` | IdentityValuation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd517bc...750295` | LayerZeroAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xd517bc...750295` | LayerZeroAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc5243b...37a18b` | MerkleProofManagerFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf837a2...f30b27` | MessageDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xf837a2...f30b27` | MessageDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf837a2...f30b27` | MessageDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xf837a2...f30b27` | MessageDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf837a2...f30b27` | MessageDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf837a2...f30b27` | MessageDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x97cc7e...4fe30a` | MessageProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x97cc7e...4fe30a` | MessageProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x35c837...0073be` | MultiAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x35c837...0073be` | MultiAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x35c837...0073be` | MultiAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x35c837...0073be` | MultiAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x35c837...0073be` | MultiAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x35c837...0073be` | MultiAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x493b6c...4e9130` | NAVManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2539e6...b0aaf6` | OnOfframpManagerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x055589...86d0de` | OpsGuardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcbdb6e...c26e6d` | OracleValuation | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5187a5...478ce3` | PoolEscrowFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x5187a5...478ce3` | PoolEscrowFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xceb7ed...9635c6` | ProtocolGuardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xceb7ed...9635c6` | ProtocolGuardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x971aca...18d220` | QueueManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe5423e...317f06` | RedemptionRestrictions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xe5423e...317f06` | RedemptionRestrictions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc4f9a1...fd3d5b` | RefundEscrowFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7ed48c...88368f` | Root | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xdc9456...b7235e` | Root | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaffc26...d69bef` | ShareClassManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa62330...42dc72` | ShareToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x09b613...0f0db2` | ShareToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x947772...4da74f` | ShareToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa62330...42dc72` | ShareToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa62330...42dc72` | ShareToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xa5d465...a2627b` | ShareToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xa62330...42dc72` | ShareToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x280c94...000823` | SimplePriceManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd30da1...23fa2b` | Spoke | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbfc7b6...b9d646` | SubsidyManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdb9c27...df700a` | SyncDepositVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xdb9c27...df700a` | SyncDepositVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xff8ed1...6e273d` | SyncManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xce1616...997c38` | TokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xce1616...997c38` | TokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1e7053...9b4037` | TokenRecoverer | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x1e7053...9b4037` | TokenRecoverer | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5a0f93...7dcf64` | Tranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8c213e...8c4b86` | Tranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5a0f93...7dcf64` | Tranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8c213e...8c4b86` | Tranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8c213e...8c4b86` | Tranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8ca537...be6d38` | VaultDecoder | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd9531a...f2ca7b` | VaultRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf68401...da63f6` | VaultRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4be430...c706a7` | WormholeAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x4be430...c706a7` | WormholeAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4be430...c706a7` | WormholeAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4be430...c706a7` | WormholeAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
