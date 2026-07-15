# Agentic Audit Brief: Asymmetry

## Export Authority

- Production state: **published scope**
- Raw selected rows: 8 across 5 audit(s)
- Eligible audit results: 15 (5 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 61.8% over 90 days

## Project Overview

- Project: Asymmetry (`asymmetry`)
- Website: [https://asymmetry.fi](https://asymmetry.fi)
- Lifecycle: declining (Tier 0, 93.3% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum
- Contract surface: 659 unique implementations (746 raw deployments)
- Coverage basis: 5/51 confirmed own live verified implementations (9.8%); conservative 9.8% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,108,098.00
- On-chain TVL (included contracts): $27,642,835.48
- TVL by chain: Ethereum $25,252,221.65 | Base $2,390,613.83

## Project Description

This brief describes the observed EVM deployment and audit surface for Asymmetry. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 69 contract row(s) across base, ethereum. Structural roles: 41 supporting, 25 core, 2 unclassified, 1 infra. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 69
- Structural roles: supporting (41), core (25), unclassified (2), infra (1)
- Contract kinds: contract (67), abstract (2)
- Detected standards: erc20 (5), ownable (3), erc165 (1), erc1967proxy (1), ownable2step (1)
- Frameworks: openzeppelin (55), solady (52), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 4

## Fork Analysis

45 of 215 contracts are derived from known codebases. 170 contracts have no detected origin.

### Forked Contracts

**ActivePool** (`0x08eaaf...0c232d`, chain 1)
Origin: liquity (`0xeb5a8c...b16afe`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**ActivePool** (`0x20f295...a93774`, chain 1)
Origin: liquity (`0xeb5a8c...b16afe`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**ActivePool** (`0x244c42...7d046e`, chain 1)
Origin: liquity (`0xeb5a8c...b16afe`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**ActivePool** (`0xb00d1d...9a7f44`, chain 1)
Origin: liquity (`0xeb5a8c...b16afe`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**ActivePool** (`0xb87e1e...77fb63`, chain 1)
Origin: liquity (`0xeb5a8c...b16afe`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**ActivePool** (`0xf507e2...8fc48a`, chain 1)
Origin: liquity (`0xeb5a8c...b16afe`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AddressesRegistry** (`0x0ad1c3...82377c`, chain 1)
Origin: liquity (`0x8d733f...3aac54`)
Containment: 100.0% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AddressesRegistry** (`0x0c7b6c...719c82`, chain 1)
Origin: liquity (`0x8d733f...3aac54`)
Containment: 100.0% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AddressesRegistry** (`0x2c5a85...0ead6d`, chain 1)
Origin: liquity (`0x8d733f...3aac54`)
Containment: 100.0% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AddressesRegistry** (`0x330a0f...6dc6d1`, chain 1)
Origin: liquity (`0x8d733f...3aac54`)
Containment: 100.0% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AddressesRegistry** (`0x3414bd...8fa1ce`, chain 1)
Origin: liquity (`0x8d733f...3aac54`)
Containment: 100.0% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AddressesRegistry** (`0xbd9f75...85e999`, chain 1)
Origin: liquity (`0x8d733f...3aac54`)
Containment: 100.0% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BorrowerOperations** (`0x2538cd...e4554e`, chain 1)
Origin: liquity (`0x372abd...46bc65`)
Containment: 100.0% - 40 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BorrowerOperations** (`0x336d9c...69b41d`, chain 1)
Origin: liquity (`0x372abd...46bc65`)
Containment: 100.0% - 40 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BorrowerOperations** (`0x57bd20...b48469`, chain 1)
Origin: liquity (`0x372abd...46bc65`)
Containment: 100.0% - 40 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BorrowerOperations** (`0x664507...71f411`, chain 1)
Origin: liquity (`0x372abd...46bc65`)
Containment: 100.0% - 40 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BorrowerOperations** (`0x9e6010...c13830`, chain 1)
Origin: liquity (`0x372abd...46bc65`)
Containment: 100.0% - 40 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BorrowerOperations** (`0xda9af1...2556e0`, chain 1)
Origin: liquity (`0x372abd...46bc65`)
Containment: 100.0% - 40 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CbbtcZapper** (`0x1666ee...d9b1e5`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

**StabilityPool** (`0x446f35...4e18f0`, chain 1)
Origin: liquity (`0x5721cb...4cf9bf`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**StabilityPool** (`0x545a7d...85f75e`, chain 1)
Origin: liquity (`0x5721cb...4cf9bf`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**StabilityPool** (`0x83e5bd...675536`, chain 1)
Origin: liquity (`0x5721cb...4cf9bf`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**StabilityPool** (`0x922faa...32ad5c`, chain 1)
Origin: liquity (`0x5721cb...4cf9bf`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**StabilityPool** (`0xb57178...0ded97`, chain 1)
Origin: liquity (`0x5721cb...4cf9bf`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**StabilityPool** (`0xd48dc7...d4ea87`, chain 1)
Origin: liquity (`0x5721cb...4cf9bf`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenLocker** (`0xf119b5...329034`, chain 1)
Origin: mellow-protocol (`0x09a028...f75bf7`)
Containment: 59.4% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- setFeeReceiver(address)
- unfreeze()

Removals (removed from original):
- BIMA_CORE()
- bimaCore()
- getAccountBalancesRaw(address)
- getAccountWeeklyUnlocks(address,uint256)
- getTotalWeeklyUnlocks(uint256)
- incentiveVoter()
- lockToken()
- lockToTokenRatio()
- MAX_LOCK_WEEKS()
- penaltyWithdrawalsEnabled()
- totalDecayRate()
- totalUpdatedWeek()
- unfreeze(bool)

**TroveManager** (`0x478e7c...7630b0`, chain 1)
Origin: liquity (`0x7bcb64...76cf5a`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TroveManager** (`0x53ce82...33d505`, chain 1)
Origin: liquity (`0x7bcb64...76cf5a`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TroveManager** (`0x7aff01...68220d`, chain 1)
Origin: liquity (`0x7bcb64...76cf5a`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TroveManager** (`0x7bd47e...9320a3`, chain 1)
Origin: liquity (`0x7bcb64...76cf5a`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TroveManager** (`0xf8a25a...f11718`, chain 1)
Origin: liquity (`0x7bcb64...76cf5a`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TroveManager** (`0xfb17d0...b63bce`, chain 1)
Origin: liquity (`0x7bcb64...76cf5a`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**WbtcZapper** (`0x2ae509...46ba65`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

**WbtcZapper** (`0xf8853a...c2aa1c`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

**ZapperAsFuck** (`0x07011c...ca598a`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

**ZapperAsFuck** (`0x14300f...f90374`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

**ZapperAsFuck** (`0x1f18af...f0bba4`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

**ZapperAsFuck** (`0x1f4f32...cc2949`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

**ZapperAsFuck** (`0x547d14...5d0920`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

**ZapperAsFuck** (`0x54867d...33f010`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

**ZapperAsFuck** (`0x58d1a6...78f961`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

**ZapperAsFuck** (`0x9f6996...6642d2`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

**ZapperAsFuck** (`0xb6e58f...b32dae`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

**ZapperAsFuck** (`0xe1dde1...43d68d`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

**ZapperAsFuck** (`0xff2736...a0e5ae`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x000000...fdb7da`, chain 1)
- UnnamedContract (`0x001fdd...f6cb70`, chain 1)
- UnnamedContract (`0x019d8f...706ca7`, chain 1)
- UnnamedContract (`0x01e111...4282e4`, chain 1)
- UnnamedContract (`0x01e376...51ef2d`, chain 1)
- UnnamedContract (`0x0291c8...e1efa4`, chain 1)
- UnnamedContract (`0x03ed04...18a124`, chain 1)
- UnnamedContract (`0x05d1b7...2e5b31`, chain 1)
- UnnamedContract (`0x065597...b84367`, chain 1)
- UnnamedContract (`0x069f91...81bdb4`, chain 1)
- UnnamedContract (`0x078eae...11f05e`, chain 1)
- UnnamedContract (`0x07ac2b...8a979e`, chain 1)
- UnnamedContract (`0x085abe...3a0904`, chain 1)
- UnnamedContract (`0x08fed3...120025`, chain 1)
- UnnamedContract (`0x0a3622...241d6a`, chain 1)
- UnnamedContract (`0x0b656b...27fecc`, chain 1)
- UnnamedContract (`0x0bdc2d...60581f`, chain 1)
- UnnamedContract (`0x0e493f...d25bc2`, chain 1)
- UnnamedContract (`0x0f4629...929b55`, chain 1)
- UnnamedContract (`0x0f7e26...b93802`, chain 1)
- UnnamedContract (`0x0f7eb9...a8ec6a`, chain 1)
- UnnamedContract (`0x16b811...9837dd`, chain 1)
- UnnamedContract (`0x18084f...d93a88`, chain 1)
- UnnamedContract (`0x1d9cc5...84b058`, chain 1)
- UnnamedContract (`0x1e61cc...93ad9b`, chain 1)
- UnnamedContract (`0x1fdb7a...4d63e2`, chain 1)
- UnnamedContract (`0x20e363...4709df`, chain 1)
- UnnamedContract (`0x22d75a...1d0f75`, chain 1)
- UnnamedContract (`0x23346b...3491cd`, chain 1)
- UnnamedContract (`0x233817...a87a70`, chain 1)
- UnnamedContract (`0x254a6a...264a07`, chain 1)
- UnnamedContract (`0x26e630...14ed77`, chain 1)
- UnnamedContract (`0x274d12...3d26a5`, chain 1)
- UnnamedContract (`0x27f539...1bb212`, chain 1)
- UnnamedContract (`0x2aff30...b80561`, chain 1)
- UnnamedContract (`0x2ba8e3...a803a8`, chain 1)
- UnnamedContract (`0x2bd5a1...a96930`, chain 1)
- UnnamedContract (`0x2c56dd...0274a6`, chain 1)
- UnnamedContract (`0x2c6595...393929`, chain 1)
- UnnamedContract (`0x2cef51...e0ffb1`, chain 1)
- UnnamedContract (`0x2e937b...edd3b7`, chain 1)
- UnnamedContract (`0x31ef8a...73ca3e`, chain 1)
- UnnamedContract (`0x3535a5...7058cb`, chain 1)
- UnnamedContract (`0x38b5c7...cd9b73`, chain 1)
- UnnamedContract (`0x3bca13...1c3ae2`, chain 1)
- UnnamedContract (`0x3e40bb...15c43b`, chain 1)
- UnnamedContract (`0x3ecce7...5605a9`, chain 1)
- UnnamedContract (`0x407851...3932ef`, chain 1)
- UnnamedContract (`0x46b718...ebcc03`, chain 1)
- UnnamedContract (`0x4b3eb2...9481cd`, chain 1)
- UnnamedContract (`0x4b677b...19ea7b`, chain 1)
- UnnamedContract (`0x4c4d2f...fb5d49`, chain 1)
- UnnamedContract (`0x4d3499...aaba49`, chain 1)
- UnnamedContract (`0x4f3d77...ff5526`, chain 1)
- UnnamedContract (`0x53a5de...74bf71`, chain 1)
- UnnamedContract (`0x56664f...e1f799`, chain 1)
- UnnamedContract (`0x576eba...b5e1fe`, chain 1)
- UnnamedContract (`0x5aad68...424d85`, chain 1)
- UnnamedContract (`0x5c1db6...bd3177`, chain 1)
- UnnamedContract (`0x60eef5...61ca38`, chain 1)
- UnnamedContract (`0x6223d9...fb5431`, chain 1)
- UnnamedContract (`0x6296d1...175444`, chain 1)
- UnnamedContract (`0x62b9eb...4cb2f2`, chain 1)
- UnnamedContract (`0x63321e...6a72fe`, chain 1)
- UnnamedContract (`0x64454c...c9cd36`, chain 1)
- UnnamedContract (`0x656320...ddc89f`, chain 1)
- UnnamedContract (`0x65799d...7ca1ba`, chain 1)
- UnnamedContract (`0x67453e...74d096`, chain 1)
- UnnamedContract (`0x6d013f...a3da2f`, chain 1)
- UnnamedContract (`0x6f35f3...ea86e0`, chain 1)
- UnnamedContract (`0x70896a...1d7105`, chain 1)
- UnnamedContract (`0x743ee6...290ee6`, chain 1)
- UnnamedContract (`0x76365e...a9e243`, chain 1)
- UnnamedContract (`0x783da9...ef0019`, chain 1)
- UnnamedContract (`0x7c0eaa...866e1e`, chain 1)
- UnnamedContract (`0x7c1765...5a5572`, chain 1)
- UnnamedContract (`0x7ed60c...b4f684`, chain 1)
- UnnamedContract (`0x7f1171...4b6343`, chain 1)
- UnnamedContract (`0x7f3232...72d568`, chain 1)
- UnnamedContract (`0x7f5d15...53c65c`, chain 1)
- UnnamedContract (`0x7ff33e...288e6b`, chain 1)
- UnnamedContract (`0x806b29...c882c5`, chain 1)
- UnnamedContract (`0x822a91...8b6049`, chain 1)
- UnnamedContract (`0x83f20f...42beea`, chain 1)
- UnnamedContract (`0x8450fb...ad969e`, chain 1)
- UnnamedContract (`0x87e670...d82c03`, chain 1)
- UnnamedContract (`0x8a99be...d86741`, chain 1)
- UnnamedContract (`0x8bbed5...3204f7`, chain 1)
- UnnamedContract (`0x8bf825...b0d425`, chain 1)
- UnnamedContract (`0x8f409d...7c7c9a`, chain 1)
- UnnamedContract (`0x8f59b5...d76c43`, chain 1)
- UnnamedContract (`0x98d9b0...5bc166`, chain 1)
- UnnamedContract (`0x98f3f4...8cff02`, chain 1)
- UnnamedContract (`0x994927...2ef225`, chain 1)
- UnnamedContract (`0x9cf12c...eb91f8`, chain 1)
- UnnamedContract (`0x9d39a5...7a3497`, chain 1)
- UnnamedContract (`0x9dc845...a1d02a`, chain 1)
- UnnamedContract (`0x9de674...e865dd`, chain 1)
- UnnamedContract (`0xa02116...128ee0`, chain 1)
- UnnamedContract (`0xa0290a...8b60cb`, chain 1)
- UnnamedContract (`0xa3931d...c27fbd`, chain 1)
- UnnamedContract (`0xa46d2d...e2cdd6`, chain 1)
- UnnamedContract (`0xada317...669fd0`, chain 1)
- UnnamedContract (`0xaf99e6...f2953f`, chain 1)
- UnnamedContract (`0xb1866e...de1624`, chain 1)
- UnnamedContract (`0xb456f5...89ca1f`, chain 1)
- UnnamedContract (`0xb585c4...c16096`, chain 1)
- UnnamedContract (`0xb628b1...84e8d3`, chain 1)
- UnnamedContract (`0xb81cb6...d403d1`, chain 1)
- UnnamedContract (`0xb828a3...e4fd2a`, chain 1)
- UnnamedContract (`0xbd87cd...973062`, chain 1)
- UnnamedContract (`0xc18e18...88602f`, chain 1)
- UnnamedContract (`0xc20a51...0c0369`, chain 1)
- UnnamedContract (`0xc470a1...c14dc9`, chain 1)
- UnnamedContract (`0xc54543...4fd577`, chain 1)
- UnnamedContract (`0xc67b18...04a00e`, chain 1)
- UnnamedContract (`0xc693c9...2f0f98`, chain 1)
- UnnamedContract (`0xc89c16...f969a2`, chain 1)
- UnnamedContract (`0xc9e524...e353f3`, chain 1)
- UnnamedContract (`0xcbb43a...cfe3fd`, chain 1)
- UnnamedContract (`0xcc47da...314d23`, chain 1)
- UnnamedContract (`0xcd3579...1175c5`, chain 1)
- UnnamedContract (`0xcda8cc...f7b387`, chain 1)
- UnnamedContract (`0xce1ca2...c0517e`, chain 1)
- UnnamedContract (`0xcf62f9...c9c5b6`, chain 1)
- UnnamedContract (`0xcf64a6...d8a10c`, chain 1)
- UnnamedContract (`0xd00182...d80aa5`, chain 1)
- UnnamedContract (`0xd34462...10a44a`, chain 1)
- UnnamedContract (`0xd369aa...56cbf2`, chain 1)
- UnnamedContract (`0xd55cb3...307780`, chain 1)
- UnnamedContract (`0xd7954a...5d73f7`, chain 1)
- UnnamedContract (`0xd7a4d0...a4e0d0`, chain 1)
- UnnamedContract (`0xd85a27...196c0b`, chain 1)
- UnnamedContract (`0xd8c2a4...ed8c80`, chain 1)
- UnnamedContract (`0xd95692...415f8a`, chain 1)
- UnnamedContract (`0xdee8a9...04805a`, chain 1)
- UnnamedContract (`0xdf124a...c832c6`, chain 1)
- UnnamedContract (`0xe8e092...98fc62`, chain 1)
- UnnamedContract (`0xe9a258...cc9c56`, chain 1)
- UnnamedContract (`0xf0a383...4d95b4`, chain 1)
- UnnamedContract (`0xf7f8db...1dc51f`, chain 1)
- UnnamedContract (`0xfa0033...bc52bb`, chain 1)
- UnnamedContract (`0xfab739...923b88`, chain 1)
- UnnamedContract (`0xfba97f...0fb7d4`, chain 1)
- UnnamedContract (`0xfc72d7...1b6c52`, chain 1)
- UnnamedContract (`0xfd256d...a07f7f`, chain 1)
- UnnamedContract (`0xfe6f76...2c946d`, chain 1)
- UnnamedContract (`0xfff2b6...7c7726`, chain 1)
- UnnamedContract (`0x7543e3...e30f73`, chain 8453)
- AsfToken (`0x59a529...4cf8aa`, chain 1)
- BTCPriceFeed (`0x4b74d0...bc3bb1`, chain 1)
- BTCPriceFeed (`0xeaf3b3...745094`, chain 1)
- CollateralRegistry (`0x33d680...4d60fe`, chain 1)
- dASF (`0x7fe24f...fb632d`, chain 1)
- HintHelpers (`0x838a1f...4e865a`, chain 1)
- InterestRouter (`0x1771f4...f6673c`, chain 1)
- MultiTroveGetter (`0xb3683a...fd7e80`, chain 1)
- PirexMigrator (`0x552f4b...68d3b8`, chain 1)
- SimpleProxy (`0x000000...af7a11`, chain 1)
- SimpleProxy (`0x000000...18a0bf`, chain 1)
- SimpleProxy (`0x8668a1...5257cf`, chain 1)
- WETHPriceFeed (`0x0daafd...c95b94`, chain 1)
- WETHPriceFeed (`0x211346...f46911`, chain 1)
- WETHPriceFeed (`0x629b6c...390e28`, chain 1)
- WETHPriceFeed (`0x653df7...07f7c7`, chain 1)
- WETHPriceFeed (`0x7f5753...49520b`, chain 1)
- WETHPriceFeed (`0xf125c7...06cbb8`, chain 1)
- WrappedCbbtc (`0x7fd713...b27d15`, chain 1)
- WrappedWbtc (`0xe065bc...267c47`, chain 1)
- WrappedWbtc (`0xf53bb9...b58324`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 69; live-surface rows included: 69 (66 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 212/219 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/51 (9.8%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 197 own, 7 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 455 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 37
- Confirmed-live implementations: 197 of 659 unique; 462 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 5/134
- Verified + Unaudited implementations: 129
- Verified by bytecode match: 0
- Unverified implementations: 525
- Unique implementations: 659
- Raw deployments: 746
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $544,595.87
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 7 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 3.9% (Code4rena)
- Note: This protocol is classified as [declining]. ASD of $544,595.87 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| romeroadrian | Tier 2 | 4 | 3.0% | 2024-06 |
| Code4rena | Tier 1 | 2 | 1.5% | 2024-10 |
| Dedaub | Tier 2 | 1 | 0.7% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| VotiumStrategy | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-380070 | 2 deployments: ethereum `0x000000...18a0bf`; ethereum `0xb628b1...84e8d3` | ✅ Audited |
| AfCvx | unknown | project_anchor | own_supporting | 1 | ethereum | unit-380068 | 2 deployments: ethereum `0x56664f...e1f799`; ethereum `0x8668a1...5257cf` | ✅ Audited |
| AfEth | unknown | project_anchor | own_supporting | 1 | ethereum | unit-380071 | 2 deployments: ethereum `0x000000...af7a11`; ethereum `0xdf124a...c832c6` | ✅ Audited |
| CollateralRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-379913 | `0x33d680...4d60fe` | ✅ Audited |
| PirexMigrator | periphery | project_anchor | own_supporting | 0 | ethereum | unit-379936 | `0x552f4b...68d3b8` | ✅ Audited |

### ⚠️ Verified + Unaudited (129)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| swETH | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf951e3...7ded78` | ⚠️ Unaudited |
| RETHToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9559aa...9a3593` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaad3b9...35ec65` | ⚠️ Unaudited |
| AsfToken | token | project_anchor | own_supporting | 0 | ethereum | unit-379940 | `0x59a529...4cf8aa` | ⚠️ Unaudited |
| ActivePool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-380004 | `0xb00d1d...9a7f44` | ⚠️ Unaudited |
| WrappedWbtc | token | project_anchor | own_supporting | 0 | ethereum | unit-380044 | 2 deployments: ethereum `0xe065bc...267c47`; ethereum `0xf53bb9...b58324` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 6 | ethereum | n/a | 6 deployments: ethereum `0x1ee6db...7c53ea`; ethereum `0x2637f3...b970ef`; ethereum `0x2ffff7...51ab9e`; ethereum `0x654973...19f912`; ethereum `0x69671a...3c7665`; ethereum `0x6dec37...7c4616` | ⚠️ Unaudited |
| WrappedWbtc | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99b36e...468752` | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0abd93...519e94` | ⚠️ Unaudited |
| StafiSuperNodeFeePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc5a28...8d3bf0` | ⚠️ Unaudited |
| ActivePool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379867 | `0x08eaaf...0c232d` | ⚠️ Unaudited |
| ActivePool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379890 | `0x20f295...a93774` | ⚠️ Unaudited |
| ActivePool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379895 | `0x244c42...7d046e` | ⚠️ Unaudited |
| ActivePool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-380013 | `0xb87e1e...77fb63` | ⚠️ Unaudited |
| ActivePool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-380053 | `0xf507e2...8fc48a` | ⚠️ Unaudited |
| AddressesRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-379870 | 4 deployments: ethereum `0x0ad1c3...82377c`; ethereum `0x0c7b6c...719c82`; ethereum `0x330a0f...6dc6d1`; ethereum `0x3414bd...8fa1ce` | ⚠️ Unaudited |
| AddressesRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-379906 | 2 deployments: ethereum `0x2c5a85...0ead6d`; ethereum `0xbd9f75...85e999` | ⚠️ Unaudited |
| AETH_R21 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe95a20...c2c3cb` | ⚠️ Unaudited |
| AfEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x5281cc...c7288f`; ethereum `0x8896ef...91a61c`; ethereum `0x90a607...56778a`; ethereum `0xae4131...f63256` | ⚠️ Unaudited |
| AfEthRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x18d492...bfdc67`; ethereum `0x7df87c...c288ad` | ⚠️ Unaudited |
| Ankr | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xf4a173...2ea981`; ethereum `0xfa2d4c...d7082f` | ⚠️ Unaudited |
| ASFOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4feb6c...b04408` | ⚠️ Unaudited |
| AsfToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x17969a...14600a`; ethereum `0x876f12...29e7f7` | ⚠️ Unaudited |
| AsfToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb0f0f...552082` | ⚠️ Unaudited |
| Auction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e988d...c8f945` | ⚠️ Unaudited |
| AuctionFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a370...c976c5` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379896 | `0x2538cd...e4554e` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379912 | `0x336d9c...69b41d` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379938 | `0x57bd20...b48469` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379953 | `0x664507...71f411` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379994 | `0x9e6010...c13830` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-380042 | `0xda9af1...2556e0` | ⚠️ Unaudited |
| BTCPriceFeed | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-379927 | 2 deployments: ethereum `0x4b74d0...bc3bb1`; ethereum `0xeaf3b3...745094` | ⚠️ Unaudited |
| CbbtcZapper | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379880 | `0x1666ee...d9b1e5` | ⚠️ Unaudited |
| CollateralRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x447fd8...caeff4`; ethereum `0xa70d14...096650`; ethereum `0xd5d9c0...366a35` | ⚠️ Unaudited |
| CollateralRegistry | registry | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-380031 | `0xcff0dc...67d791` | ⚠️ Unaudited |
| CrvUsdFallbackOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b36d8...0eeb35` | ⚠️ Unaudited |
| dASF | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379971 | 3 deployments: ethereum `0x7fe24f...fb632d`; ethereum `0x9e1eda...241d97`; ethereum `0xf94189...10dffa` | ⚠️ Unaudited |
| dASF Redemptions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5b9a4b...d4b680`; ethereum `0x8f1477...98dc28`; ethereum `0xdc59d2...afdd27` | ⚠️ Unaudited |
| Dutch Desk | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04d258...56f60e` | ⚠️ Unaudited |
| HintHelpers | periphery | project_anchor | own_supporting | 0 | ethereum | unit-379975 | `0x838a1f...4e865a` | ⚠️ Unaudited |
| InterestRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379882 | `0x1771f4...f6673c` | ⚠️ Unaudited |
| Multisig | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x003aac...ee75d3`; ethereum `0x6aacff...999aa6` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380006 | `0xb3683a...fd7e80` | ⚠️ Unaudited |
| OnLossDepositLimit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x746c23...898f62` | ⚠️ Unaudited |
| Price Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1d07f...39cad4` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x12a14d...878d40`; ethereum `0x2b408d...66809e`; ethereum `0x3777c5...d262cb`; ethereum `0xa30e67...ad1ed3`; ethereum `0xc6798b...8a6c11`; ethereum `0xdf9f1f...88aeac` | ⚠️ Unaudited |
| Reth | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x228f6a...c328d3`; ethereum `0xd8ed29...8c4908` | ⚠️ Unaudited |
| Reth | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x50ea7b...c44cc4`; ethereum `0xbcfed6...8a115e` | ⚠️ Unaudited |
| Reth | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7b6633...1f5ca3`; ethereum `0xb3e64c...905b8b` | ⚠️ Unaudited |
| Reth | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8d5dd2...d890d0`; ethereum `0xa5ad76...78c32b` | ⚠️ Unaudited |
| RETHPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c3774...898c56` | ⚠️ Unaudited |
| RETHToBOLDExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aed7c...4fab76` | ⚠️ Unaudited |
| SafEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x013c06...0bbcfb`; ethereum `0x28baa2...515c41`; ethereum `0x7c8fb4...6fd23e`; ethereum `0xce2b86...8fd03c` | ⚠️ Unaudited |
| SafEth | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-380069 | 2 deployments: ethereum `0x591c4a...1fe970`; ethereum `0x6732ef...c4f3e5` | ⚠️ Unaudited |
| SafEth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xba9d68...04c0df`; ethereum `0xe7ebef...7a38ac` | ⚠️ Unaudited |
| SafEth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbbf865...26931e`; ethereum `0xc57319...d4478d` | ⚠️ Unaudited |
| ScrvUsdOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a0605...aa4ec9` | ⚠️ Unaudited |
| SfrxEth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0e14dc...650e5f`; ethereum `0xbc4718...1cf86a` | ⚠️ Unaudited |
| SfrxEth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1ed84a...5bba37`; ethereum `0x909210...2a60b6` | ⚠️ Unaudited |
| SfrxEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x217e24...d199d8` | ⚠️ Unaudited |
| SfrxEth | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x27137a...113b11`; ethereum `0x36ce17...f6b20a`; ethereum `0x636f16...4e49e8` | ⚠️ Unaudited |
| SfrxEth | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x410eda...8797cf`; ethereum `0x4fb6c0...884fe6`; ethereum `0xa2f35a...7f920c`; ethereum `0xdf7205...c0c0cd` | ⚠️ Unaudited |
| SfrxUsdOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48ba7b...e5b433` | ⚠️ Unaudited |
| Sorted Troves | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5b1096...a1e7d5`; ethereum `0xff1ce6...afafb6` | ⚠️ Unaudited |
| StabilityPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379921 | `0x446f35...4e18f0` | ⚠️ Unaudited |
| StabilityPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379933 | `0x545a7d...85f75e` | ⚠️ Unaudited |
| StabilityPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379976 | `0x83e5bd...675536` | ⚠️ Unaudited |
| StabilityPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379986 | `0x922faa...32ad5c` | ⚠️ Unaudited |
| StabilityPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-380008 | `0xb57178...0ded97` | ⚠️ Unaudited |
| StabilityPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-380035 | `0xd48dc7...d4ea87` | ⚠️ Unaudited |
| Stafi | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xad0e8e...8797cc`; ethereum `0xc9bbcc...4822da` | ⚠️ Unaudited |
| StafiDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5db09e...6dba3d` | ⚠️ Unaudited |
| StafiLightNode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c9066...d44f4b` | ⚠️ Unaudited |
| StafiNodeManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8575c...2307a8` | ⚠️ Unaudited |
| StafiSuperNode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x588e85...aa9ff1` | ⚠️ Unaudited |
| StafiUserDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc12dfb...355058` | ⚠️ Unaudited |
| StakeManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3aee3e...9f3899` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x412330...c25f9e` | ⚠️ Unaudited |
| StrategyAprOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0e40eb...561e65`; ethereum `0x716ee5...10a899`; ethereum `0x8d26d5...bec807`; ethereum `0xe29963...fba79e`; ethereum `0xe9015a...f85786` | ⚠️ Unaudited |
| StrategyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x73dfcc...3dba58`; ethereum `0xbf7a38...c547d1` | ⚠️ Unaudited |
| StrategyFixedReportTrigger | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x600d6a...01007c` | ⚠️ Unaudited |
| StyBoldOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1ed37...182d03` | ⚠️ Unaudited |
| SusdsOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d09d5...082d10` | ⚠️ Unaudited |
| Swell | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xf5ccaf...df3d09`; ethereum `0xfb8725...8371b1` | ⚠️ Unaudited |
| TbtcFallbackOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x193b7d...54aba5` | ⚠️ Unaudited |
| TbtcOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39fca0...a3a775` | ⚠️ Unaudited |
| tBTCToUSDafExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a173e...98134f` | ⚠️ Unaudited |
| TokenLocker | token | project_anchor | own_supporting | 0 | ethereum | unit-380051 | `0xf119b5...329034` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x5f10b1...a83590`; ethereum `0xb5d336...ab8d4b` | ⚠️ Unaudited |
| Trove Manager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x36e9ee...b41c1f`; ethereum `0xc1296a...dabaec` | ⚠️ Unaudited |
| TroveManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-379923 | 4 deployments: ethereum `0x478e7c...7630b0`; ethereum `0x53ce82...33d505`; ethereum `0x7aff01...68220d`; ethereum `0xf8a25a...f11718` | ⚠️ Unaudited |
| TroveManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-379962 | 2 deployments: ethereum `0x7bd47e...9320a3`; ethereum `0xfb17d0...b63bce` | ⚠️ Unaudited |
| USDaf Flash Zapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0502db...91b072`; ethereum `0x07b152...aead67`; ethereum `0x1a3f5e...ca4baa`; ethereum `0x8b2754...6ae07f`; ethereum `0x982e60...8b6fe2`; ethereum `0xf97f41...c96c8c` | ⚠️ Unaudited |
| USDaf Leverage Zapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90318f...542ee4` | ⚠️ Unaudited |
| VotiumStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x12fc2b...b92aad`; ethereum `0x5aed12...3f8cd4` | ⚠️ Unaudited |
| VotiumStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8794f7...a1fae4` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x188384...345919`; ethereum `0x3470a0...c2cbde`; ethereum `0x49c87b...0c9be0`; ethereum `0x693e74...964d93`; ethereum `0x78ebd6...0bfd99`; ethereum `0x82cbd5...e631b3`; ethereum `0x8828c6...fe0100`; ethereum `0x920f99...14aa30`; ethereum `0xd76b14...889bf2`; ethereum `0xec1f93...141352` | ⚠️ Unaudited |
| WbtcFallbackOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66871d...661b4b` | ⚠️ Unaudited |
| WbtcOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1919de...1b7205` | ⚠️ Unaudited |
| WBTCToCRVUSDExchange | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5602eb...e58815` | ⚠️ Unaudited |
| WBTCToUSDCExchange | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cd733...1063b4` | ⚠️ Unaudited |
| WbtcZapper | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379901 | `0x2ae509...46ba65` | ⚠️ Unaudited |
| WbtcZapper | adapter | project_anchor | own_supporting | 0 | ethereum | unit-380056 | `0xf8853a...c2aa1c` | ⚠️ Unaudited |
| WETHPriceFeed | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-379874 | 6 deployments: ethereum `0x0daafd...c95b94`; ethereum `0x211346...f46911`; ethereum `0x629b6c...390e28`; ethereum `0x653df7...07f7c7`; ethereum `0x7f5753...49520b`; ethereum `0xf125c7...06cbb8` | ⚠️ Unaudited |
| WETHToBOLDExchange | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c59ee...99caed` | ⚠️ Unaudited |
| WETHToCRVUSDExchange | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf00850...e3caac` | ⚠️ Unaudited |
| WrappedCbbtc | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379970 | `0x7fd713...b27d15` | ⚠️ Unaudited |
| WrappedSpot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x253da8...1df194` | ⚠️ Unaudited |
| WstEth | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1533ed...9b306f`; ethereum `0xf430e4...92c915` | ⚠️ Unaudited |
| WstEth | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91d410...96ba17` | ⚠️ Unaudited |
| WstEth | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x972a53...f23fad`; ethereum `0xc57d67...d76208` | ⚠️ Unaudited |
| WstEth | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc56aef...e75a12`; ethereum `0xcac2c9...86ae74` | ⚠️ Unaudited |
| WstEth | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xda8a4d...8458a9`; ethereum `0xffd7da...6b9ca4` | ⚠️ Unaudited |
| WSTETHPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa94a6c...09cef3` | ⚠️ Unaudited |
| WSTETHToBOLDExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfe9ac...c5ca9a` | ⚠️ Unaudited |
| WSTETHToCRVUSDExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63bf36...ee881f` | ⚠️ Unaudited |
| Zapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe70990...d83c58` | ⚠️ Unaudited |
| ZapperAsFuck | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379863 | `0x07011c...ca598a` | ⚠️ Unaudited |
| ZapperAsFuck | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379879 | `0x14300f...f90374` | ⚠️ Unaudited |
| ZapperAsFuck | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379886 | `0x1f18af...f0bba4` | ⚠️ Unaudited |
| ZapperAsFuck | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379887 | `0x1f4f32...cc2949` | ⚠️ Unaudited |
| ZapperAsFuck | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379934 | `0x547d14...5d0920` | ⚠️ Unaudited |
| ZapperAsFuck | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379935 | `0x54867d...33f010` | ⚠️ Unaudited |
| ZapperAsFuck | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379939 | `0x58d1a6...78f961` | ⚠️ Unaudited |
| ZapperAsFuck | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379996 | `0x9f6996...6642d2` | ⚠️ Unaudited |
| ZapperAsFuck | adapter | project_anchor | own_supporting | 0 | ethereum | unit-380010 | `0xb6e58f...b32dae` | ⚠️ Unaudited |
| ZapperAsFuck | adapter | project_anchor | own_supporting | 0 | ethereum | unit-380045 | `0xe1dde1...43d68d` | ⚠️ Unaudited |
| ZapperAsFuck | adapter | project_anchor | own_supporting | 0 | ethereum | unit-380065 | `0xff2736...a0e5ae` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (525)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x000000...000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379853 | `0x000000...fdb7da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379854 | `0x001fdd...f6cb70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x014b68...ceed90` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379855 | `0x019d8f...706ca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b6a9...58d055` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379856 | `0x01e111...4282e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379857 | `0x01e376...51ef2d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379858 | `0x0291c8...e1efa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0310a0...ea4669` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x039f03...bae050` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379859 | `0x03ed04...18a124` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x041d53...6a545d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379860 | `0x05d1b7...2e5b31` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379861 | `0x065597...b84367` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379862 | `0x069f91...81bdb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x071bee...c0cfa9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379864 | `0x078eae...11f05e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379865 | `0x07ac2b...8a979e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0808bd...4b2419` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379866 | `0x085abe...3a0904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08e16c...8680e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08f386...054402` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379868 | `0x08fed3...120025` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379869 | `0x0a3622...241d6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aed01...d26845` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379871 | `0x0b656b...27fecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b9655...f20bac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379872 | `0x0bdc2d...60581f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cce6c...e116e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d8441...4ac6e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379875 | `0x0e493f...d25bc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379876 | `0x0f4629...929b55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379877 | `0x0f7e26...b93802` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379878 | `0x0f7eb9...a8ec6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x108d8d...ac488c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10b940...132809` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1130ac...255a8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11830f...1c95fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1261a8...cba6e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x133bfe...20f77c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x136dac...eef5a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13e709...89c964` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13fa9c...edf131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x140c32...166d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x156e03...0b9eda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16aa5f...e4451c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379881 | `0x16b811...9837dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17207f...e93dd9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379883 | `0x18084f...d93a88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18d207...692db3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19a832...65f0b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a5474...2dc3f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c9890...fbed5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d13a5...16c27f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d27f8...fba54a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d775c...260e34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379884 | `0x1d9cc5...84b058` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e3231...1d131e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379885 | `0x1e61cc...93ad9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ef013...137801` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f8ce7...8f804a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f9a16...f5794c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379888 | `0x1fdb7a...4d63e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20239a...79c3d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x204233...cacd92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379889 | `0x20e363...4709df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2231e6...386cae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379892 | `0x22d75a...1d0f75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379893 | `0x23346b...3491cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379894 | `0x233817...a87a70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x234134...4eb174` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x235710...8593d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2421d3...f26679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24bf59...06765c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24c62e...b17ee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25290c...d9eddf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379897 | `0x254a6a...264a07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25eafe...eb7843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2632d6...a52276` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379898 | `0x26e630...14ed77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2735aa...3eefb4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379899 | `0x274d12...3d26a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27ae0b...3e336f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27d64d...f174cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379900 | `0x27f539...1bb212` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x299196...9250c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29a1e4...8f6e8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29f525...c9c1d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379902 | `0x2aff30...b80561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b3825...800e9e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379903 | `0x2ba8e3...a803a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379904 | `0x2bd5a1...a96930` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379905 | `0x2c56dd...0274a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379907 | `0x2c6595...393929` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379908 | `0x2cef51...e0ffb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d598c...09c705` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379909 | `0x2e937b...edd3b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2efd16...6dcacf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f7d25...dcbd2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f8b4c...385574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fe5e0...3dec84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x308a2f...b72c85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31b598...327f5c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379910 | `0x31ef8a...73ca3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31fc48...d1bb8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x322407...c52409` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x323e6b...9a8179` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3249b3...c7836e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3314e9...7fc7a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3387be...c7eebb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x342702...fa0caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x345c63...cb6499` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379915 | `0x3535a5...7058cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35dad8...971ce6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36193d...1236d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x365f90...e000b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36e01f...89aa87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37b209...c86259` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37c47d...f83004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38927d...561752` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379916 | `0x38b5c7...cd9b73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39d2ba...42b9b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a3850...18ea16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ad9a9...93353f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ae636...581a3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b0567...cd8147` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b44ab...e37a30` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379917 | `0x3bca13...1c3ae2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c42b5...6c84fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c6897...3fa421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ca31b...b44b0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d40f9...c1f1ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e1435...74f7b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379918 | `0x3e40bb...15c43b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379919 | `0x3ecce7...5605a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fabb1...d18a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4065a6...136985` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379920 | `0x407851...3932ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x416bb5...b6b4b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4219a2...278869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x430cf6...bb3f28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x439cd7...9388a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4486c9...ff75c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44da62...a16587` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x452eb8...d96007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x455666...26d902` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x460562...cc88f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379922 | `0x46b718...ebcc03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x473d3f...4f80f6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-379924 | `0x47c212...eb0b72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47d122...1694f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x483df4...0ea3d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x489d51...c5d653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48b1b0...3816cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4995a3...983c0c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379925 | `0x4b3eb2...9481cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379926 | `0x4b677b...19ea7b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379928 | `0x4c4d2f...fb5d49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379929 | `0x4d3499...aaba49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d3c3b...bab094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e2640...3e4269` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379930 | `0x4f3d77...ff5526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f9fe2...492fb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fc2cb...941bf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fd35a...62d572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50db2c...9496a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50ec46...1b99ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50f5cd...b4521f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x536d6e...13c92b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379931 | `0x53a5de...74bf71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x548070...624ff6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54896f...d39fc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54dd13...bf150b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x555f3f...060b3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55f312...60df1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56372b...c26c2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56945f...3b12d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56d63b...c0bb8f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379937 | `0x576eba...b5e1fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57816b...e0331d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a2ecb...cc689b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379941 | `0x5aad68...424d85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5af175...8490ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b601a...804b78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bdee7...412908` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5be73b...55b604` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379942 | `0x5c1db6...bd3177` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c1fa7...ac64ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c6def...bd43bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c93f8...d4dc64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d5dcb...1d177c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d62fd...77107d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d64c3...28ab25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dd187...b09aa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e1df4...d924fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f466c...8c8043` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f5fb8...ef8ff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f72c3...892209` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fe520...116979` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379943 | `0x60eef5...61ca38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x612127...a6a8a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379944 | `0x6223d9...fb5431` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x625b7f...d357be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379945 | `0x6296d1...175444` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379947 | `0x62b9eb...4cb2f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62c2c3...7d4475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x630e78...42d460` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379948 | `0x63321e...6a72fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63f01b...c5102b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379949 | `0x64454c...c9cd36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6501bd...a57113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x655603...219665` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379951 | `0x656320...ddc89f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379952 | `0x65799d...7ca1ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6676ba...3f5cba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379954 | `0x67453e...74d096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6780c7...a4ddba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x681c63...ef526d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6845e8...e7d644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68f434...3fc592` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6967df...02dc1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69bcfa...46d355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b284e...360e81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b3884...9359a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c2f7b...02e8b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379955 | `0x6d013f...a3da2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d8cfe...a2418b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ebb9d...49307e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ecf29...cb331d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379956 | `0x6f35f3...ea86e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fb2aa...22df45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379957 | `0x70896a...1d7105` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71d335...fd086c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71ff3c...552891` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x724371...482e29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73822d...de957b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73f972...45b580` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379958 | `0x743ee6...290ee6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747176...0c1fa4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379959 | `0x76365e...a9e243` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76d159...ec7572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x774974...deb10b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x779060...a6f7ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77e492...b66380` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379960 | `0x783da9...ef0019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a7f1c...b14409` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7acd9b...e6420b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b86a8...487f14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bca4c...e56ce5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bf88f...357988` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379963 | `0x7c0eaa...866e1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379964 | `0x7c1765...5a5572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d8627...cff9b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6900...458586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e901c...0a19f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379965 | `0x7ed60c...b4f684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f0d75...d8329c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379966 | `0x7f1171...4b6343` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379967 | `0x7f3232...72d568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f5cf9...ee214f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379969 | `0x7f5d15...53c65c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fcd77...7a2783` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379972 | `0x7ff33e...288e6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379973 | `0x806b29...c882c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x809501...2d39f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8109a8...afb7c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x815594...a0b652` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x818dd8...eb9d31` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379974 | `0x822a91...8b6049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8320c2...71f5be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8387e7...ad8fa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83c20d...b5e4b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83e800...ce94d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379977 | `0x83f20f...42beea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x840abd...31cac4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379978 | `0x8450fb...ad969e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84f899...92cbc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85449d...057cd3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-379979 | `0x85e30b...8579da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86d14d...e81506` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379980 | `0x87e670...d82c03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88c41d...10d10e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x895479...eab819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89a65d...79e03a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ce31...b35ca5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89d8d5...a542c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379981 | `0x8a99be...d86741` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8aacce...a2786e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ae164...6c6c86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379982 | `0x8bbed5...3204f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bee58...82966b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379983 | `0x8bf825...b0d425` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c5b58...3ceaa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dc802...7eda3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e5e15...6caa5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379984 | `0x8f409d...7c7c9a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379985 | `0x8f59b5...d76c43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fd057...01f89d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9007c7...eca68a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x901ea6...4bfb4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90695d...b6273f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x909554...928f67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90e5e4...8b69ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x911858...62f27b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91630f...fddf9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9181b9...7a9bb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91a30a...5fc0ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9305a1...dd2e7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x934414...056d3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94d67c...e7b91b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94f931...2f3540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x951530...2df669` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95480d...8fe2fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95d720...9e81fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9606c2...a90898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x963a41...e7a25e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97f775...1e70b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98bc63...f2df4c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379987 | `0x98d9b0...5bc166` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379988 | `0x98f3f4...8cff02` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379989 | `0x994927...2ef225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b004d...ea0c6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379990 | `0x9cf12c...eb91f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379991 | `0x9d39a5...7a3497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d4ceb...420376` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379992 | `0x9dc845...a1d02a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379993 | `0x9de674...e865dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9df5e7...ba8bdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e425b...719d48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-379995 | `0x9e6906...02ed8f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379997 | `0xa02116...128ee0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379998 | `0xa0290a...8b60cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa100e8...87d298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa16ba3...96d611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa179a4...834761` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa202c7...7ebcef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa21c50...ea8d42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2796e...cfe3ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2b2e0...a1e666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2f1d8...660852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa38f7a...d5ceea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379999 | `0xa3931d...c27fbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a83d...55c563` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa42a10...9fa7ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380000 | `0xa46d2d...e2cdd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6862c...18e8d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa71021...86426e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7bada...018a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8076d...e2aaba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa85064...2b524c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaaabc0...d5d17f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac42fd...fc9ab0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380002 | `0xada317...669fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf12bb...f66b4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf2636...a9aa19` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380003 | `0xaf99e6...f2953f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafcf0e...cef33d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb00aad...788f87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0da55...f2b389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1525d...067170` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380005 | `0xb1866e...de1624` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1f612...fdcff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3d111...c759e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb44f39...2ab40f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380007 | `0xb456f5...89ca1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4c6f0...ca7c76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb510d2...eaa7fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb57e0a...022ce9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380009 | `0xb585c4...c16096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb63d2e...bc3076` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6d67b...ad178e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7d29c...d8404d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb804d7...065711` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380011 | `0xb81cb6...d403d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380012 | `0xb828a3...e4fd2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb841ef...23b910` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb91297...078930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9b7db...7eb9c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9f57b...0ea871` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba22bc...2ea7f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba230f...a0c17a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbaf4cb...8b588c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc23c3...b4c1fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc362f...a8c55b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380014 | `0xbd87cd...973062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe4a0c...6e2a6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe87b9...8248b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe8b20...e7db05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbebfd2...4b56e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf1035...e1d186` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380016 | `0xc18e18...88602f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1d483...919662` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380017 | `0xc20a51...0c0369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2fdf0...1b4402` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc30fd0...a950f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc43880...a26a85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380018 | `0xc470a1...c14dc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc49427...4f4037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4e2bc...b8a8cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc51203...c4c937` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380019 | `0xc54543...4fd577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc54b98...1166e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc59ea6...c4fc96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc59ff0...7cea8f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380020 | `0xc67b18...04a00e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380021 | `0xc693c9...2f0f98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc73655...ed7472` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7fb90...b29840` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380022 | `0xc89c16...f969a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8ce0b...7e336c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8d81c...335c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9e039...1e795d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380023 | `0xc9e524...e353f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcadc2a...cc20db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380024 | `0xcbb43a...cfe3fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380025 | `0xcc47da...314d23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcca908...335319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd0bad...aed871` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380026 | `0xcd3579...1175c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380027 | `0xcda8cc...f7b387` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380028 | `0xce1ca2...c0517e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf61a0...4daac0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380029 | `0xcf62f9...c9c5b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380030 | `0xcf64a6...d8a10c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcffeb2...a9c8a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380032 | `0xd00182...d80aa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd06b5b...d01312` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0f774...739ab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1da8a...b51f12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1e96d...a29d4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380033 | `0xd34462...10a44a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380034 | `0xd369aa...56cbf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd38b16...b0c5c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3b7bc...2af240` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd46fca...e348b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd48523...187bac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd532d1...bae7a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380036 | `0xd55cb3...307780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd69fa4...3f783a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380037 | `0xd7954a...5d73f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380038 | `0xd7a4d0...a4e0d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7d3cd...0cd587` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380039 | `0xd85a27...196c0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd85a46...3dfa52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8737c...1bad41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8828e...9e0b1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380040 | `0xd8c2a4...ed8c80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380041 | `0xd95692...415f8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9c5a9...926d53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda9726...91698d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbbd33...ae5dd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbd025...7815be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc4ad8...012832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcb363...450eb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd427e...9abb7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd737d...000092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddc5f0...f82212` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddfb32...f4fbb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdecafb...717d55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380043 | `0xdee8a9...04805a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf2a04...b61421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe10df3...e64c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe18547...8a80f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe18dec...238fa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe247ab...a16a93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe28516...7cdc34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe43919...da4b1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4534d...64d175` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe55e68...02d8d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7f280...25ea98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380046 | `0xe8e092...98fc62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe991a0...2e7b3e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380047 | `0xe9a258...cc9c56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9b4fc...7a1021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9c32e...475557` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea7de9...d92c5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeaec29...861dc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb3d79...e2f69e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb8b1b...915856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeba81e...26d1ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec0af9...8306d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-380049 | `0xec2302...1edca5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec500f...0c8510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeca746...e5ccb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed07b7...4d4ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed2fbc...ec33b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed44b9...291b9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed9569...cebf04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed9d38...4c8af5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeee151...87d8d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefd240...cedde2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf03039...51fb60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380050 | `0xf0a383...4d95b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf121b5...ae55b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf285b4...4c2d03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf471f9...143241` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf53a7e...c8e17d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf58789...1e9173` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5f194...5ae82d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7e4cf...c1f2d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380055 | `0xf7f8db...1dc51f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7f96d...46bed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf81298...84464e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9336c...a7f760` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9e241...015705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9ea88...197355` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380058 | `0xfa0033...bc52bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380059 | `0xfab739...923b88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb5507...7053b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb8cb4...ee2571` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380061 | `0xfba97f...0fb7d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380062 | `0xfc72d7...1b6c52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380063 | `0xfd256d...a07f7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd467a...369b57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd5a64...60c73c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdfebe...4c9b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe097e...3150eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380064 | `0xfe6f76...2c946d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe8cf1...53a621` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfea91b...9767eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff29c1...c835d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff31f9...8e86b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380066 | `0xfff2b6...7c7726` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-380067 | `0x7543e3...e30f73` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audit 2](https://dedaub.com/audits/liquity/liquity-v2-aug-28-2024) | Dedaub | Audit | 2024-08 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 14 | high |
| [Audit 4](https://certora.cdn.prismic.io/certora/Z1tLJJbqstJ98b8J_LiquityVerificationReport.pdf) | Certora | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Audit 7](https://reports.electisec.com/01-2025-Asymmetry-USA-d) | Electisec | Audit | 2025 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Audit 10](https://reports.electisec.com/05-2025-Asymmetry-USDaf-V2) | Electisec | Audit | 2025 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Audit 11](https://reports.electisec.com/2025-06-usdaf-2-pr2) | Electisec | Audit | 2025-06 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Audit 1](https://code4rena.com/reports/2023-09-asymmetry) | Code4rena | Contest | 2023-09 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 2 | high |
| [Audit 1](https://code4rena.com/audits/2023-03-asymmetry-contest) | Code4rena | Contest | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Audit 2](https://code4rena.com/audits/2023-05-asymmetry-mitigation-review-contest) | Code4rena | Contest | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [Audit 3 (also discovered via alternate URL)](https://github.com/Zellic/publications/blob/1916cd0f6ef5e1fda0e44628d5eed902fd797883/Asymmetry%20Finanace%20safETH%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Audit 2](https://gist.github.com/romeroadrian/3bf5506e1e4a0594cc722b0310b5e362) | romeroadrian | Audit | 2024-05 | stale | Direct | contract_name | matched | 3 | 2 | 0 | 14 | high |
| [Audit 3](https://gist.github.com/romeroadrian/fe3fa83fe7ed0d42768c53e4209e7cdd) | romeroadrian | Audit | 2024-06 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 1 | high |
| [Audit 2](https://gist.github.com/romeroadrian/cea29ae49185dcc9096f49314a83f151) | romeroadrian | Audit | 2024-01 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 21 | high |
| [Chaos Labs USDaf/Bold Economic Modeling and Simulation Report](https://cdn.sanity.io/files/zmh9mnff/production/ca6a4815e62b05f33fb3ec56c5a4c42d6b7ddbec.pdf) | Code4rena | Contest | 2024-10 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [- [Audits/Bug Bounties]()](https://docs.asymmetry.finance/security/audits-bug-bounties.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16689] Audit 2 — matched: Extracted contract names from the audit report's findings and scope description. The report covers Liquity v2 (BOLD) protocol contracts. The audit date is explicitly stated as August 28, 2024.
- [16690] Audit 4 — no match: Scope explicitly lists three contracts: BorrowerOperations.sol, TroveManager.sol, ActivePool.sol. Audit date inferred from 'December 2024' in header.
- [16692] Audit 7 — no match: The provided text is not an audit report; it is a boilerplate for a Next.js application.
- [16693] Audit 10 — no match: The provided text is not an audit report; it only contains 'Create Next App' which is a generic phrase.
- [16694] Audit 11 — no match: The provided text is not an audit report; it is a generic title 'Create Next App' with no contract names or audit details.
- [16695] Audit 1 — matched: Scope section explicitly lists 4 smart contracts: AfEth, AbstractStrategy, VotiumStrategy, VotiumStrategyCore. Audit date found on cover page.
- [16696] Audit 1 — no match: The provided text is a leaderboard for a Code4rena contest, not an audit report. No contracts in scope or audit details are present.
- [16697] Audit 2 — no match: Extracted contract names from findings and mitigation descriptions; no explicit scope table provided.
- [16698] Audit 3 — no match: Scope section lists 9 contracts: SafEth.sol, SafEthStorage.sol, Ankr.sol, DerivativeBase.sol, Reth.sol, SfrxEth.sol, Stafi.sol, Swell.sol, WstEth.sol. Audit date from cover page: July 6, 2023.
- [16699] Audit 2 — matched: Extracted 17 contract names from the scope section listing files in src/ directory. Audit date inferred from 'Date: May 6 to 10, 2024' in the report header.
- [16700] Audit 3 — matched: Scope explicitly lists AfCvx.sol and CLeverCVXStrategy.sol. Audit date is June 10 to 12, 2024, so end date is 2024-06-12.
- [16701] Audit 2 — matched: All contracts listed in the Scope section of the report were extracted. The audit date is the end date of the review period (Jan 22 to 29, 2024).
- [16704] Chaos Labs USDaf/Bold Economic Modeling and Simulation Report — no match: The document is a mechanism design review, not a smart contract audit. It contains no scope section listing contracts or files. No contract names are identifiable.
- [16708] - [Audits/Bug Bounties]() — no match: The document is an index page listing audit reports for various projects (Liquity v2, USDaf, veASF, afCVX, afETH, safETH) but does not contain a scope section or list of contracts in scope for a specific audit. No contract names or audit date are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit 2 | CollateralRegistry | own contract | CollateralRegistry (selected) `0x33d680...4d60fe` — deployed 2025-07-22 20:17:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit 2 | TroveManager | ambiguous — not counted | TroveManager (alternative) `0x53ce82...33d505` — deployed 2025-07-22 20:24:59+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0xf8a25a...f11718` — deployed 2025-07-22 20:18:59+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0x478e7c...7630b0` — deployed 2025-07-22 20:26:59+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0x7aff01...68220d` — deployed 2025-07-22 20:21:11+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0xfb17d0...b63bce` — deployed 2025-07-22 20:29:11+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0x7bd47e...9320a3` — deployed 2025-07-22 20:33:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit 2 | BorrowerOperations | ambiguous — not counted | BorrowerOperations (alternative) `0xda9af1...2556e0` — deployed 2025-07-22 20:29:11+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0x664507...71f411` — deployed 2025-07-22 20:33:35+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0x9e6010...c13830` — deployed 2025-07-22 20:21:11+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0x2538cd...e4554e` — deployed 2025-07-22 20:26:59+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0x336d9c...69b41d` — deployed 2025-07-22 20:24:59+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0x57bd20...b48469` — deployed 2025-07-22 20:18:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit 2 | WETHZapper | unmatched — not counted | — | mentioned in M4 | no |
| Audit 2 | ActivePool | ambiguous — not counted | ActivePool (alternative) `0xb00d1d...9a7f44` — deployed 2025-07-22 20:29:11+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0xf507e2...8fc48a` — deployed 2025-07-22 20:33:35+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0x20f295...a93774` — deployed 2025-07-22 20:26:59+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0x244c42...7d046e` — deployed 2025-07-22 20:21:11+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0x08eaaf...0c232d` — deployed 2025-07-22 20:24:59+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0xb87e1e...77fb63` — deployed 2025-07-22 20:18:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit 2 | SortedTroves | unmatched — not counted | — | mentioned in M2, A4 | no |
| Audit 2 | BoldToken | unmatched — not counted | — | mentioned in L3 | no |
| Audit 2 | StabilityPool | ambiguous — not counted | StabilityPool (alternative) `0x545a7d...85f75e` — deployed 2025-07-22 20:29:11+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0x446f35...4e18f0` — deployed 2025-07-22 20:26:59+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0xd48dc7...d4ea87` — deployed 2025-07-22 20:21:11+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0xb57178...0ded97` — deployed 2025-07-22 20:24:59+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0x922faa...32ad5c` — deployed 2025-07-22 20:33:35+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0x83e5bd...675536` — deployed 2025-07-22 20:18:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit 2 | CollSurplusPool | unmatched — not counted | — | mentioned in A4 | no |
| Audit 2 | DefaultPool | unmatched — not counted | — | mentioned in A4 | no |
| Audit 2 | LiquityBase | unmatched — not counted | — | mentioned in A4, A6 | no |
| Audit 2 | PriceFeed | unmatched — not counted | — | mentioned in A4 | no |
| Audit 2 | TroveNFT | unmatched — not counted | — | mentioned in A4 | no |
| Audit 2 | GasPool | unmatched — not counted | — | mentioned in A5 | no |
| Audit 2 | AddRemoveManagers | unmatched — not counted | — | mentioned in L2 | no |
| Audit 4 | BorrowerOperations | ambiguous — not counted | BorrowerOperations (alternative) `0xda9af1...2556e0` — deployed 2025-07-22 20:29:11+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0x664507...71f411` — deployed 2025-07-22 20:33:35+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0x9e6010...c13830` — deployed 2025-07-22 20:21:11+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0x2538cd...e4554e` — deployed 2025-07-22 20:26:59+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0x336d9c...69b41d` — deployed 2025-07-22 20:24:59+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0x57bd20...b48469` — deployed 2025-07-22 20:18:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit 4 | TroveManager | ambiguous — not counted | TroveManager (alternative) `0x53ce82...33d505` — deployed 2025-07-22 20:24:59+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0xf8a25a...f11718` — deployed 2025-07-22 20:18:59+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0x478e7c...7630b0` — deployed 2025-07-22 20:26:59+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0x7aff01...68220d` — deployed 2025-07-22 20:21:11+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0xfb17d0...b63bce` — deployed 2025-07-22 20:29:11+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0x7bd47e...9320a3` — deployed 2025-07-22 20:33:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit 4 | ActivePool | ambiguous — not counted | ActivePool (alternative) `0xb00d1d...9a7f44` — deployed 2025-07-22 20:29:11+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0xf507e2...8fc48a` — deployed 2025-07-22 20:33:35+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0x20f295...a93774` — deployed 2025-07-22 20:26:59+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0x244c42...7d046e` — deployed 2025-07-22 20:21:11+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0x08eaaf...0c232d` — deployed 2025-07-22 20:24:59+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0xb87e1e...77fb63` — deployed 2025-07-22 20:18:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit 1 | AfEth | own proxy deployment | SimpleProxy (proxy) (selected) `0x000000...af7a11` — deployed 2024-02-19 05:57:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit 1 | AbstractStrategy | unmatched — not counted | — | listed in scope | no |
| Audit 1 | VotiumStrategy | own proxy deployment | SimpleProxy (proxy) (selected) `0x000000...18a0bf` — deployed 2024-02-19 05:57:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit 1 | VotiumStrategyCore | unmatched — not counted | — | listed in scope | no |
| Audit 2 | SafEth | unmatched — not counted | — | mentioned in findings M-10, M-11, M-12 | no |
| Audit 2 | Reth | unmatched — not counted | — | mentioned in findings H-05, H-07, H-08, M-08 | no |
| Audit 2 | WstEth | unmatched — not counted | — | mentioned in finding H-06 | no |
| Audit 2 | SfrxEth | unmatched — not counted | — | mentioned in findings H-04, M-02 | no |
| Audit 3 | SafEth | unmatched — not counted | — | listed in scope | no |
| Audit 3 | SafEthStorage | unmatched — not counted | — | listed in scope | no |
| Audit 3 | Ankr | unmatched — not counted | — | listed in scope | no |
| Audit 3 | DerivativeBase | unmatched — not counted | — | listed in scope | no |
| Audit 3 | Reth | unmatched — not counted | — | listed in scope | no |
| Audit 3 | SfrxEth | unmatched — not counted | — | listed in scope | no |
| Audit 3 | Stafi | unmatched — not counted | — | listed in scope | no |
| Audit 3 | Swell | unmatched — not counted | — | listed in scope | no |
| Audit 3 | WstEth | unmatched — not counted | — | listed in scope | no |
| Audit 2 | AfCvx | own proxy deployment | SimpleProxy (proxy) (selected) `0x8668a1...5257cf` — deployed 2024-05-02 20:48:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit 2 | PirexMigrator | own contract | PirexMigrator (selected) `0x552f4b...68d3b8` — deployed 2024-05-13 23:16:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit 2 | IProxySource | unmatched — not counted | — | listed in scope | no |
| Audit 2 | IAfCvx | unmatched — not counted | — | listed in scope | no |
| Audit 2 | ICleverCvxStrategy | unmatched — not counted | — | listed in scope | no |
| Audit 2 | Constants | unmatched — not counted | — | listed in scope | no |
| Audit 2 | ICLeverCVXLocker | unmatched — not counted | — | listed in scope | no |
| Audit 2 | IFurnace | unmatched — not counted | — | listed in scope | no |
| Audit 2 | ICvxLocker | unmatched — not counted | — | listed in scope | no |
| Audit 2 | ICvxRewardsPool | unmatched — not counted | — | listed in scope | no |
| Audit 2 | IPirexCVX | unmatched — not counted | — | listed in scope | no |
| Audit 2 | IPirexLiquidityPool | unmatched — not counted | — | listed in scope | no |
| Audit 2 | CLeverCVXStrategy | unmatched — not counted | — | listed in scope | no |
| Audit 2 | SimpleProxy | own proxy deployment | SimpleProxy (proxy) (alternative) `0x000000...af7a11` — deployed 2024-02-19 05:57:59+03 — liveness: live (current_address_book_code)<br>SimpleProxy (proxy) (alternative) `0x000000...18a0bf` — deployed 2024-02-19 05:57:59+03 — liveness: live (current_address_book_code)<br>SimpleProxy (proxy) (selected) `0x8668a1...5257cf` — deployed 2024-05-02 20:48:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-05-02 was 8d from audit; next candidate 81d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit 2 | SimpleProxyFactory | unmatched — not counted | — | listed in scope | no |
| Audit 2 | TrackedAllowances | unmatched — not counted | — | listed in scope | no |
| Audit 2 | Zap | unmatched — not counted | — | listed in scope | no |
| Audit 3 | AfCvx | own proxy deployment | SimpleProxy (proxy) (selected) `0x8668a1...5257cf` — deployed 2024-05-02 20:48:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit 3 | CLeverCVXStrategy | unmatched — not counted | — | listed in scope | no |
| Audit 2 | AfEth | own proxy deployment | SimpleProxy (proxy) (selected) `0x000000...af7a11` — deployed 2024-02-19 05:57:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit 2 | AfEthRelayer | unmatched — not counted | — | listed in scope | no |
| Audit 2 | IChainlinkFeed | unmatched — not counted | — | listed in scope | no |
| Audit 2 | IClaimZap | unmatched — not counted | — | listed in scope | no |
| Audit 2 | ISwapRouter | unmatched — not counted | — | listed in scope | no |
| Audit 2 | IWETH | unmatched — not counted | — | listed in scope | no |
| Audit 2 | IAfEth | unmatched — not counted | — | listed in scope | no |
| Audit 2 | IVotiumStrategy | unmatched — not counted | — | listed in scope | no |
| Audit 2 | Constants | unmatched — not counted | — | listed in scope | no |
| Audit 2 | ICvxEthPool | unmatched — not counted | — | listed in scope | no |
| Audit 2 | ILockedCvx | unmatched — not counted | — | listed in scope | no |
| Audit 2 | ISnapshotDelegationRegistry | unmatched — not counted | — | listed in scope | no |
| Audit 2 | IVotiumMerkleStash | unmatched — not counted | — | listed in scope | no |
| Audit 2 | IFraxEthMinter | unmatched — not counted | — | listed in scope | no |
| Audit 2 | IFrxEthPool | unmatched — not counted | — | listed in scope | no |
| Audit 2 | ISfrxETH | unmatched — not counted | — | listed in scope | no |
| Audit 2 | frxETH | unmatched — not counted | — | listed in scope | no |
| Audit 2 | ISafEth | unmatched — not counted | — | listed in scope | no |
| Audit 2 | SfrxEthStrategy | unmatched — not counted | — | listed in scope | no |
| Audit 2 | VotiumStrategy | own proxy deployment | SimpleProxy (proxy) (selected) `0x000000...18a0bf` — deployed 2024-02-19 05:57:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit 2 | CvxEthOracleLib | unmatched — not counted | — | listed in scope | no |
| Audit 2 | HashLib | unmatched — not counted | — | listed in scope | no |
| Audit 2 | TrackedAllowances | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x59a529...4cf8aa` | AsfToken | token | $493,214.80 | Verified native implementation with $493,214.80 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb00d1d...9a7f44` | ActivePool | core_logic | $38,845.99 | Verified native implementation with $38,845.99 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x08eaaf...0c232d` | ActivePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x20f295...a93774` | ActivePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x244c42...7d046e` | ActivePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb87e1e...77fb63` | ActivePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf507e2...8fc48a` | ActivePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0ad1c3...82377c` | AddressesRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2c5a85...0ead6d` | AddressesRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2538cd...e4554e` | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x336d9c...69b41d` | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x57bd20...b48469` | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x664507...71f411` | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9e6010...c13830` | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xda9af1...2556e0` | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4b74d0...bc3bb1` | BTCPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1666ee...d9b1e5` | CbbtcZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7fe24f...fb632d` | dASF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x838a1f...4e865a` | HintHelpers | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1771f4...f6673c` | InterestRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb3683a...fd7e80` | MultiTroveGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x446f35...4e18f0` | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x545a7d...85f75e` | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x83e5bd...675536` | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x922faa...32ad5c` | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb57178...0ded97` | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd48dc7...d4ea87` | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf119b5...329034` | TokenLocker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x478e7c...7630b0` | TroveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7bd47e...9320a3` | TroveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2ae509...46ba65` | WbtcZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf8853a...c2aa1c` | WbtcZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0daafd...c95b94` | WETHPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7fd713...b27d15` | WrappedCbbtc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x07011c...ca598a` | ZapperAsFuck | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x14300f...f90374` | ZapperAsFuck | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f18af...f0bba4` | ZapperAsFuck | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f4f32...cc2949` | ZapperAsFuck | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x547d14...5d0920` | ZapperAsFuck | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x54867d...33f010` | ZapperAsFuck | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x58d1a6...78f961` | ZapperAsFuck | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9f6996...6642d2` | ZapperAsFuck | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb6e58f...b32dae` | ZapperAsFuck | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe1dde1...43d68d` | ZapperAsFuck | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xff2736...a0e5ae` | ZapperAsFuck | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 99 |
| upstream | 7 |
| standard_library | 17 |
| needs_review | 536 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 9 own (7 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 7 ambiguous, 61 unmatched
- Matched-own operational status: 9 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=6, medium=1
- Match method counts: temporal_name=1, unique_name=7

Zero-match audit list:

- [16690] Audit 4
- [16692] Audit 7
- [16693] Audit 10
- [16694] Audit 11
- [16696] Audit 1
- [16697] Audit 2
- [16698] Audit 3
- [16704] Chaos Labs USDaf/Bold Economic Modeling and Simulation Report
- [16708] - [Audits/Bug Bounties]()

Fork inheritance lineage and inherited audits are included when available.
