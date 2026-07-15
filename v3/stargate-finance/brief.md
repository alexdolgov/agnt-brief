# Agentic Audit Brief: Stargate Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 17 (0 matched; 17 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Stargate Finance (`stargate-finance`)
- Website: [https://stargate.finance/](https://stargate.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: abstract, apechain, arbitrum, aurora, avalanche, base, berachain, botanix, bsc, codex, core, degen, ethereum, flare, flow-evm, fuse, glue, gnosis, goat, gravity, hemi, ink, iota-evm, kaia, kava, lightlink, linea, mantle, metis, nibiru, optimism, peaq, plasma, plume, polygon, rari-chain, rootstock, scroll, sei, soneium, sonic, story, superposition, taiko, telos-evm, unichain, vana, xdc
- Contract surface: 457 unique implementations (457 raw deployments)
- Coverage basis: 0/169 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $80,398,075.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Stargate Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 139 contract row(s) across abstract, apechain, arbitrum, aurora, avalanche, base, berachain, botanix, bsc, codex, core, degen, ethereum, flare, flow-evm, fuse, glue, gnosis, goat, gravity, hemi, ink, iota-evm, kaia, kava, lightlink, linea, mantle, metis, nibiru, optimism, peaq, plasma, plume, polygon, rari-chain, rootstock, scroll, sei, soneium, sonic, story, superposition, taiko, telos-evm, unichain, vana, xdc. Structural roles: 139 core. 11 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 139
- Structural roles: core (139)
- Contract kinds: contract (139)
- Detected standards: ownable (119), erc20 (4)
- Frameworks: openzeppelin (119), layerzero (107), openzeppelin-upgradeable (11), permit2 (11)
- Upgradeable-pattern rows: 11

## Fork Analysis

12 of 451 contracts are derived from known codebases. 439 contracts have no detected origin.

### Forked Contracts

**TokenMessaging** (`0x6d6620...f4a980`, chain 1)
Origin: nabla-finance (`0xaf5191...ba2cd6`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenMessaging** (`0xf1fcb4...bf27e6`, chain 10)
Origin: nabla-finance (`0xaf5191...ba2cd6`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenMessaging** (`0x6e3d88...bd7e2b`, chain 56)
Origin: nabla-finance (`0xaf5191...ba2cd6`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenMessaging** (`0xaf368c...bcbebf`, chain 100)
Origin: nabla-finance (`0xaf5191...ba2cd6`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenMessaging** (`0x6ce9bf...f50eac`, chain 137)
Origin: nabla-finance (`0xaf5191...ba2cd6`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenMessaging** (`0x2086f7...849b0f`, chain 146)
Origin: nabla-finance (`0xaf5191...ba2cd6`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenMessaging** (`0x1502fa...275d3d`, chain 1329)
Origin: nabla-finance (`0xaf5191...ba2cd6`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenMessaging** (`0x41b491...0a0aef`, chain 5000)
Origin: nabla-finance (`0xaf5191...ba2cd6`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenMessaging** (`0x5634c4...d86e47`, chain 8453)
Origin: nabla-finance (`0xaf5191...ba2cd6`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenMessaging** (`0x19cfce...7007dd`, chain 42161)
Origin: nabla-finance (`0xaf5191...ba2cd6`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenMessaging** (`0x17e450...ef9a34`, chain 43114)
Origin: nabla-finance (`0xaf5191...ba2cd6`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenMessaging** (`0x5f688f...af2fed`, chain 59144)
Origin: nabla-finance (`0xaf5191...ba2cd6`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x090194...ba8c01`, chain 14)
- UnnamedContract (`0x1502fa...275d3d`, chain 14)
- UnnamedContract (`0x1c10cc...0d4135`, chain 14)
- UnnamedContract (`0x45d417...54ac2e`, chain 14)
- UnnamedContract (`0x711b5a...830d8e`, chain 14)
- UnnamedContract (`0x77c716...492a0f`, chain 14)
- UnnamedContract (`0x8c1014...5e03a0`, chain 14)
- UnnamedContract (`0x8e8539...c58746`, chain 14)
- UnnamedContract (`0xcd4302...423311`, chain 14)
- UnnamedContract (`0x06d538...c2173e`, chain 30)
- UnnamedContract (`0x224d8f...277f03`, chain 30)
- UnnamedContract (`0x296f55...cb3f97`, chain 30)
- UnnamedContract (`0x2f6f07...6e7590`, chain 30)
- UnnamedContract (`0x45a01e...2033cd`, chain 30)
- UnnamedContract (`0x45f1a9...4d263b`, chain 30)
- UnnamedContract (`0x808d7c...bc0949`, chain 30)
- UnnamedContract (`0x8731d5...e01e98`, chain 30)
- UnnamedContract (`0x9d1b16...25b944`, chain 30)
- UnnamedContract (`0xaf5191...ba2cd6`, chain 30)
- UnnamedContract (`0xaf54be...239398`, chain 30)
- UnnamedContract (`0x164a2d...ae557b`, chain 40)
- UnnamedContract (`0x2086f7...849b0f`, chain 40)
- UnnamedContract (`0x3a1293...1bbc0f`, chain 40)
- UnnamedContract (`0x549943...1d3241`, chain 40)
- UnnamedContract (`0x88853d...908279`, chain 40)
- UnnamedContract (`0xa272ff...a2d8f9`, chain 40)
- UnnamedContract (`0xa4bbdd...a8502e`, chain 40)
- UnnamedContract (`0xa7f3e2...a32455`, chain 40)
- UnnamedContract (`0xb0b239...0789f0`, chain 40)
- UnnamedContract (`0xbab93b...7cc500`, chain 40)
- UnnamedContract (`0xbba60d...453d10`, chain 40)
- UnnamedContract (`0x06d538...c2173e`, chain 122)
- UnnamedContract (`0x224d8f...277f03`, chain 122)
- UnnamedContract (`0x296f55...cb3f97`, chain 122)
- UnnamedContract (`0x2f6f07...6e7590`, chain 122)
- UnnamedContract (`0x45a01e...2033cd`, chain 122)
- UnnamedContract (`0x45f1a9...4d263b`, chain 122)
- UnnamedContract (`0x808d7c...bc0949`, chain 122)
- UnnamedContract (`0x8731d5...e01e98`, chain 122)
- UnnamedContract (`0x9d1b16...25b944`, chain 122)
- UnnamedContract (`0xaf5191...ba2cd6`, chain 122)
- UnnamedContract (`0xaf54be...239398`, chain 122)
- UnnamedContract (`0x6d2053...432c35`, chain 130)
- UnnamedContract (`0xd94926...620cb4`, chain 130)
- UnnamedContract (`0xe1ad84...93681e`, chain 130)
- UnnamedContract (`0x06d538...c2173e`, chain 747)
- UnnamedContract (`0x224d8f...277f03`, chain 747)
- UnnamedContract (`0x296f55...cb3f97`, chain 747)
- UnnamedContract (`0x2f6f07...6e7590`, chain 747)
- UnnamedContract (`0x45a01e...2033cd`, chain 747)
- UnnamedContract (`0x45f1a9...4d263b`, chain 747)
- UnnamedContract (`0x808d7c...bc0949`, chain 747)
- UnnamedContract (`0x8731d5...e01e98`, chain 747)
- UnnamedContract (`0x9d1b16...25b944`, chain 747)
- UnnamedContract (`0xaf5191...ba2cd6`, chain 747)
- UnnamedContract (`0xaf54be...239398`, chain 747)
- UnnamedContract (`0x06d538...c2173e`, chain 1116)
- UnnamedContract (`0x224d8f...277f03`, chain 1116)
- UnnamedContract (`0x296f55...cb3f97`, chain 1116)
- UnnamedContract (`0x2f6f07...6e7590`, chain 1116)
- UnnamedContract (`0x45a01e...2033cd`, chain 1116)
- UnnamedContract (`0x45f1a9...4d263b`, chain 1116)
- UnnamedContract (`0x693604...562341`, chain 1116)
- UnnamedContract (`0x808d7c...bc0949`, chain 1116)
- UnnamedContract (`0x8731d5...e01e98`, chain 1116)
- UnnamedContract (`0x9d1b16...25b944`, chain 1116)
- UnnamedContract (`0xaf5191...ba2cd6`, chain 1116)
- UnnamedContract (`0xaf54be...239398`, chain 1116)
- UnnamedContract (`0x06d538...c2173e`, chain 1300)
- UnnamedContract (`0x224d8f...277f03`, chain 1300)
- UnnamedContract (`0x296f55...cb3f97`, chain 1300)
- UnnamedContract (`0x2f6f07...6e7590`, chain 1300)
- UnnamedContract (`0x45a01e...2033cd`, chain 1300)
- UnnamedContract (`0x45f1a9...4d263b`, chain 1300)
- UnnamedContract (`0x808d7c...bc0949`, chain 1300)
- UnnamedContract (`0x8731d5...e01e98`, chain 1300)
- UnnamedContract (`0x9d1b16...25b944`, chain 1300)
- UnnamedContract (`0xaf5191...ba2cd6`, chain 1300)
- UnnamedContract (`0xaf54be...239398`, chain 1300)
- UnnamedContract (`0x224d8f...277f03`, chain 1480)
- UnnamedContract (`0x296f55...cb3f97`, chain 1480)
- UnnamedContract (`0x2f6f07...6e7590`, chain 1480)
- UnnamedContract (`0x45a01e...2033cd`, chain 1480)
- UnnamedContract (`0x693604...562341`, chain 1480)
- UnnamedContract (`0x808d7c...bc0949`, chain 1480)
- UnnamedContract (`0x8731d5...e01e98`, chain 1480)
- UnnamedContract (`0xaf5191...ba2cd6`, chain 1480)
- UnnamedContract (`0xb0d502...31d62b`, chain 1480)
- UnnamedContract (`0xc53e6d...2804fb`, chain 1480)
- UnnamedContract (`0xf2c0e5...2ed6c5`, chain 1480)
- UnnamedContract (`0x164a2d...ae557b`, chain 1514)
- UnnamedContract (`0x2086f7...849b0f`, chain 1514)
- UnnamedContract (`0x3a1293...1bbc0f`, chain 1514)
- UnnamedContract (`0x549943...1d3241`, chain 1514)
- UnnamedContract (`0x88853d...908279`, chain 1514)
- UnnamedContract (`0xa272ff...a2d8f9`, chain 1514)
- UnnamedContract (`0xa4bbdd...a8502e`, chain 1514)
- UnnamedContract (`0xa7f3e2...a32455`, chain 1514)
- UnnamedContract (`0xb0b239...0789f0`, chain 1514)
- UnnamedContract (`0xbab93b...7cc500`, chain 1514)
- UnnamedContract (`0xbba60d...453d10`, chain 1514)
- UnnamedContract (`0x0b38e8...535396`, chain 1625)
- UnnamedContract (`0x0db9af...7ab10a`, chain 1625)
- UnnamedContract (`0x17d65b...8ee0b2`, chain 1625)
- UnnamedContract (`0x1c10cc...0d4135`, chain 1625)
- UnnamedContract (`0x45d417...54ac2e`, chain 1625)
- UnnamedContract (`0x77c716...492a0f`, chain 1625)
- UnnamedContract (`0x9c2dc7...4945bd`, chain 1625)
- UnnamedContract (`0xc1b804...9be7e4`, chain 1625)
- UnnamedContract (`0xf6f832...c8ceaa`, chain 1625)
- UnnamedContract (`0x06d538...c2173e`, chain 1868)
- UnnamedContract (`0x224d8f...277f03`, chain 1868)
- UnnamedContract (`0x296f55...cb3f97`, chain 1868)
- UnnamedContract (`0x2f6f07...6e7590`, chain 1868)
- UnnamedContract (`0x45a01e...2033cd`, chain 1868)
- UnnamedContract (`0x45f1a9...4d263b`, chain 1868)
- UnnamedContract (`0x693604...562341`, chain 1868)
- UnnamedContract (`0x808d7c...bc0949`, chain 1868)
- UnnamedContract (`0x8731d5...e01e98`, chain 1868)
- UnnamedContract (`0x9d1b16...25b944`, chain 1868)
- UnnamedContract (`0xaf5191...ba2cd6`, chain 1868)
- UnnamedContract (`0xaf54be...239398`, chain 1868)
- UnnamedContract (`0x06d538...c2173e`, chain 1890)
- UnnamedContract (`0x06eb48...92739c`, chain 1890)
- UnnamedContract (`0x3052a0...6dab47`, chain 1890)
- UnnamedContract (`0x4a364f...cf18d8`, chain 1890)
- UnnamedContract (`0x53bf83...a41614`, chain 1890)
- UnnamedContract (`0x5c1a97...f30de5`, chain 1890)
- UnnamedContract (`0x669434...ce1eb6`, chain 1890)
- UnnamedContract (`0x693604...562341`, chain 1890)
- UnnamedContract (`0x6d5e66...2cf129`, chain 1890)
- UnnamedContract (`0x701a95...360883`, chain 1890)
- UnnamedContract (`0x8731d5...e01e98`, chain 1890)
- UnnamedContract (`0x8ee211...2b9b33`, chain 1890)
- UnnamedContract (`0xb0d502...31d62b`, chain 1890)
- UnnamedContract (`0xe7ec68...051f25`, chain 1890)
- UnnamedContract (`0x10e28b...2f1a92`, chain 2222)
- UnnamedContract (`0x62207a...d4d247`, chain 2222)
- UnnamedContract (`0x6b73d3...c4594b`, chain 2222)
- UnnamedContract (`0xa76cd3...cc6184`, chain 2222)
- UnnamedContract (`0xb7a05a...e3ae58`, chain 2222)
- UnnamedContract (`0x164a2d...ae557b`, chain 2345)
- UnnamedContract (`0x2d93fb...6c38b3`, chain 2345)
- UnnamedContract (`0x370dc6...49aba8`, chain 2345)
- UnnamedContract (`0x3a1293...1bbc0f`, chain 2345)
- UnnamedContract (`0x4f5f42...e9f9c7`, chain 2345)
- UnnamedContract (`0x549943...1d3241`, chain 2345)
- UnnamedContract (`0x87c367...03c70f`, chain 2345)
- UnnamedContract (`0x88853d...908279`, chain 2345)
- UnnamedContract (`0xa7f3e2...a32455`, chain 2345)
- UnnamedContract (`0xb0b239...0789f0`, chain 2345)
- UnnamedContract (`0xbba60d...453d10`, chain 2345)
- UnnamedContract (`0x183d6b...467b25`, chain 2741)
- UnnamedContract (`0x221f0e...29527d`, chain 2741)
- UnnamedContract (`0x583548...d29bbe`, chain 2741)
- UnnamedContract (`0x5f9c01...f3b671`, chain 2741)
- UnnamedContract (`0x79f51a...2ab4fd`, chain 2741)
- UnnamedContract (`0x91a5fe...426e0e`, chain 2741)
- UnnamedContract (`0x943c48...f11a76`, chain 2741)
- UnnamedContract (`0x945320...3cc7bd`, chain 2741)
- UnnamedContract (`0x953519...ea5599`, chain 2741)
- UnnamedContract (`0x9c7007...0a3f40`, chain 2741)
- UnnamedContract (`0xaff6d1...9a7646`, chain 2741)
- UnnamedContract (`0xbc6de8...293e97`, chain 2741)
- UnnamedContract (`0xc0bdf9...5df751`, chain 2741)
- UnnamedContract (`0xdd46bf...920157`, chain 2741)
- UnnamedContract (`0x07cd5a...6e5e8c`, chain 3338)
- UnnamedContract (`0x352d82...beb3dd`, chain 3338)
- UnnamedContract (`0x4cc108...c29e32`, chain 3338)
- UnnamedContract (`0x53bf83...a41614`, chain 3338)
- UnnamedContract (`0x55bdb4...ac9970`, chain 3338)
- UnnamedContract (`0x5c1a97...f30de5`, chain 3338)
- UnnamedContract (`0x669434...ce1eb6`, chain 3338)
- UnnamedContract (`0x6d5e66...2cf129`, chain 3338)
- UnnamedContract (`0x8943cb...e31c1a`, chain 3338)
- UnnamedContract (`0xe7ec68...051f25`, chain 3338)
- UnnamedContract (`0xf2c0e5...2ed6c5`, chain 3338)
- UnnamedContract (`0x118b37...7faf2b`, chain 3637)
- UnnamedContract (`0x3292c4...3b1e28`, chain 3637)
- UnnamedContract (`0x3a1e30...60be55`, chain 3637)
- UnnamedContract (`0x5e3708...e9ad40`, chain 3637)
- UnnamedContract (`0x714533...50d9ce`, chain 3637)
- UnnamedContract (`0xad4134...c1593e`, chain 3637)
- UnnamedContract (`0xb0987c...544b6c`, chain 3637)
- UnnamedContract (`0xdf43c9...26a886`, chain 3637)
- UnnamedContract (`0xf785a6...710bb2`, chain 3637)
- UnnamedContract (`0x015007...cf394d`, chain 6900)
- UnnamedContract (`0x08c492...6a472a`, chain 6900)
- UnnamedContract (`0x108f4c...03f916`, chain 6900)
- UnnamedContract (`0x12a272...a8c2f8`, chain 6900)
- UnnamedContract (`0x28bec7...632a00`, chain 6900)
- UnnamedContract (`0x6bebd4...9c51b6`, chain 6900)
- UnnamedContract (`0x851c9d...8b337f`, chain 6900)
- UnnamedContract (`0xc16977...ff63c9`, chain 6900)
- UnnamedContract (`0xc7616b...3e3d79`, chain 6900)
- UnnamedContract (`0xcc0587...486e74`, chain 6900)
- UnnamedContract (`0xcda5b7...b37555`, chain 6900)
- UnnamedContract (`0x01a7c8...f59224`, chain 8217)
- UnnamedContract (`0x16f3f9...19a1c0`, chain 8217)
- UnnamedContract (`0x259ef4...a9212f`, chain 8217)
- UnnamedContract (`0x55acee...1dc71b`, chain 8217)
- UnnamedContract (`0x6effa1...9402d2`, chain 8217)
- UnnamedContract (`0x8619ba...4456c6`, chain 8217)
- UnnamedContract (`0x8d9210...e0da00`, chain 8217)
- UnnamedContract (`0xb83ab1...7ecfcd`, chain 8217)
- UnnamedContract (`0xbb4957...fa13ce`, chain 8217)
- UnnamedContract (`0x0db9af...7ab10a`, chain 8822)
- UnnamedContract (`0x160345...9342d8`, chain 8822)
- UnnamedContract (`0x1c10cc...0d4135`, chain 8822)
- UnnamedContract (`0x711b5a...830d8e`, chain 8822)
- UnnamedContract (`0x77c716...492a0f`, chain 8822)
- UnnamedContract (`0x8c1014...5e03a0`, chain 8822)
- UnnamedContract (`0x8e8539...c58746`, chain 8822)
- UnnamedContract (`0x9c2dc7...4945bd`, chain 8822)
- UnnamedContract (`0xcd4302...423311`, chain 8822)
- UnnamedContract (`0x0ceb23...fa4cbb`, chain 9745)
- UnnamedContract (`0x102d75...460282`, chain 9745)
- UnnamedContract (`0x134399...4ebce0`, chain 9745)
- UnnamedContract (`0x43f237...36eb08`, chain 9745)
- UnnamedContract (`0x9895d8...7c32cb`, chain 9745)
- UnnamedContract (`0xca3676...3f1ef2`, chain 9745)
- UnnamedContract (`0xda6087...dfdcad`, chain 9745)
- UnnamedContract (`0x224d8f...277f03`, chain 43111)
- UnnamedContract (`0x296f55...cb3f97`, chain 43111)
- UnnamedContract (`0x2f6f07...6e7590`, chain 43111)
- UnnamedContract (`0x45a01e...2033cd`, chain 43111)
- UnnamedContract (`0x45f1a9...4d263b`, chain 43111)
- UnnamedContract (`0x808d7c...bc0949`, chain 43111)
- UnnamedContract (`0x8731d5...e01e98`, chain 43111)
- UnnamedContract (`0x8943cb...e31c1a`, chain 43111)
- UnnamedContract (`0x9d1b16...25b944`, chain 43111)
- UnnamedContract (`0xaf5191...ba2cd6`, chain 43111)
- UnnamedContract (`0xaf54be...239398`, chain 43111)
- UnnamedContract (`0xc53e6d...2804fb`, chain 43111)
- UnnamedContract (`0xe4111e...b404ea`, chain 43111)
- UnnamedContract (`0xf2c0e5...2ed6c5`, chain 43111)
- UnnamedContract (`0x22bdf9...8b35b8`, chain 43114)
- UnnamedContract (`0x6ce9bf...f50eac`, chain 43114)
- UnnamedContract (`0x8db623...ff8331`, chain 43114)
- UnnamedContract (`0xc2b638...840583`, chain 43114)
- UnnamedContract (`0xdfc47d...ea0b80`, chain 43114)
- UnnamedContract (`0x06eb48...92739c`, chain 55244)
- UnnamedContract (`0x4a364f...cf18d8`, chain 55244)
- UnnamedContract (`0x5c1a97...f30de5`, chain 55244)
- UnnamedContract (`0x8ee211...2b9b33`, chain 55244)
- UnnamedContract (`0xafb393...dc5ee5`, chain 55244)
- UnnamedContract (`0xe7ec68...051f25`, chain 55244)
- UnnamedContract (`0x2f6f07...6e7590`, chain 57073)
- UnnamedContract (`0x45a01e...2033cd`, chain 57073)
- UnnamedContract (`0x45f1a9...4d263b`, chain 57073)
- UnnamedContract (`0x9d1b16...25b944`, chain 57073)
- UnnamedContract (`0xaf5191...ba2cd6`, chain 57073)
- UnnamedContract (`0xaf54be...239398`, chain 57073)
- UnnamedContract (`0x2f6f07...6e7590`, chain 81224)
- UnnamedContract (`0x45a01e...2033cd`, chain 81224)
- UnnamedContract (`0x45f1a9...4d263b`, chain 81224)
- UnnamedContract (`0x9d1b16...25b944`, chain 81224)
- UnnamedContract (`0xaf5191...ba2cd6`, chain 81224)
- UnnamedContract (`0xaf54be...239398`, chain 81224)
- UnnamedContract (`0x193564...85cc85`, chain 98866)
- UnnamedContract (`0x2d870d...5cf2f6`, chain 98866)
- UnnamedContract (`0x3d07d5...5ac412`, chain 98866)
- UnnamedContract (`0x45d2cf...dbaadb`, chain 98866)
- UnnamedContract (`0x4683ce...f4f066`, chain 98866)
- UnnamedContract (`0x5e3291...95e253`, chain 98866)
- UnnamedContract (`0x9909fa...3631e6`, chain 98866)
- UnnamedContract (`0xabd218...409e61`, chain 98866)
- UnnamedContract (`0xbbfab5...97dd60`, chain 98866)
- UnnamedContract (`0xca59ca...1f14be`, chain 98866)
- UnnamedContract (`0xf26d57...adcb14`, chain 98866)
- UnnamedContract (`0x06d538...c2173e`, chain 666666666)
- UnnamedContract (`0x224d8f...277f03`, chain 666666666)
- UnnamedContract (`0x296f55...cb3f97`, chain 666666666)
- UnnamedContract (`0x2f6f07...6e7590`, chain 666666666)
- UnnamedContract (`0x45a01e...2033cd`, chain 666666666)
- UnnamedContract (`0x45f1a9...4d263b`, chain 666666666)
- UnnamedContract (`0x808d7c...bc0949`, chain 666666666)
- UnnamedContract (`0x8731d5...e01e98`, chain 666666666)
- UnnamedContract (`0x9d1b16...25b944`, chain 666666666)
- UnnamedContract (`0xaf5191...ba2cd6`, chain 666666666)
- UnnamedContract (`0xaf54be...239398`, chain 666666666)
- CreditMessaging (`0xef9ec6...4a2c88`, chain 50)
- CreditMessaging (`0xe1ad84...93681e`, chain 100)
- CreditMessaging (`0xaf368c...bcbebf`, chain 130)
- CreditMessaging (`0x3a1293...1bbc0f`, chain 146)
- CreditMessaging (`0x99e799...66a734`, chain 33139)
- CreditMessaging (`0x45a01e...2033cd`, chain 80094)
- FeeLibV1 (`0x3e368b...658a06`, chain 1)
- FeeLibV1 (`0x52b354...f74087`, chain 1)
- FeeLibV1 (`0x6d5521...0f73eb`, chain 1)
- FeeLibV1 (`0xe171af...3db311`, chain 1)
- FeeLibV1 (`0x1f6051...7f52fa`, chain 10)
- FeeLibV1 (`0x3da4f8...be7c4c`, chain 10)
- FeeLibV1 (`0x80f755...1b8161`, chain 10)
- FeeLibV1 (`0x29ee61...58a402`, chain 50)
- FeeLibV1 (`0xa628bb...9557e9`, chain 50)
- FeeLibV1 (`0xd34e23...5465c0`, chain 50)
- FeeLibV1 (`0x622244...b38b7d`, chain 56)
- FeeLibV1 (`0xdd0022...cafc31`, chain 56)
- FeeLibV1 (`0x6d2053...432c35`, chain 100)
- FeeLibV1 (`0xd94926...620cb4`, chain 100)
- FeeLibV1 (`0x3fc69c...2b14e4`, chain 137)
- FeeLibV1 (`0x4e422b...a94038`, chain 137)
- FeeLibV1 (`0x88853d...908279`, chain 146)
- FeeLibV1 (`0x19cfce...7007dd`, chain 1088)
- FeeLibV1 (`0xce8cca...abb7d0`, chain 1088)
- FeeLibV1 (`0xe8cdf2...e7d0d3`, chain 1088)
- FeeLibV1 (`0x711b5a...830d8e`, chain 1329)
- FeeLibV1 (`0xcd4302...423311`, chain 1329)
- FeeLibV1 (`0xde4860...abaeb2`, chain 1329)
- FeeLibV1 (`0x288968...3c8df7`, chain 5000)
- FeeLibV1 (`0x2bc314...85c0c4`, chain 5000)
- FeeLibV1 (`0x6ec3ef...5045c9`, chain 5000)
- FeeLibV1 (`0xa81274...0ccebe`, chain 5000)
- FeeLibV1 (`0x08ed1d...44441e`, chain 8453)
- FeeLibV1 (`0x17e450...ef9a34`, chain 8453)
- FeeLibV1 (`0x60f2a6...dffd52`, chain 33139)
- FeeLibV1 (`0x897aaf...85f29d`, chain 33139)
- FeeLibV1 (`0xb0b239...0789f0`, chain 33139)
- FeeLibV1 (`0x1f6051...7f52fa`, chain 42161)
- FeeLibV1 (`0x80f755...1b8161`, chain 42161)
- FeeLibV1 (`0xda82a3...1706f5`, chain 42161)
- FeeLibV1 (`0x6e3d88...bd7e2b`, chain 59144)
- FeeLibV1 (`0x808d7c...bc0949`, chain 80094)
- FeeLibV1 (`0x9d1b16...25b944`, chain 80094)
- FeeLibV1 (`0x711b5a...830d8e`, chain 167000)
- FeeLibV1 (`0xcd4302...423311`, chain 167000)
- FeeLibV1 (`0x2a6c43...6db219`, chain 534352)
- FeeLibV1 (`0x503c5c...7a06ff`, chain 534352)
- FeeLibV1 (`0x6e3d88...bd7e2b`, chain 1313161554)
- OFTTokenERC20 (`0xa73482...3fc212`, chain 50)
- OFTTokenERC20 (`0x160345...9342d8`, chain 1329)
- OFTTokenERC20 (`0xf4d923...e37949`, chain 33139)
- OFTTokenERC20 (`0x2f6f07...6e7590`, chain 80094)
- OFTWrapper (`0x936ab8...04e9d8`, chain 50)
- OFTWrapper (`0x824d8f...4e4cba`, chain 100)
- OFTWrapper (`0x2d93fb...6c38b3`, chain 146)
- OFTWrapper (`0xc6bc40...63e7f9`, chain 33139)
- OFTWrapper (`0x8731d5...e01e98`, chain 80094)
- RewardLib (`0x549943...1d3241`, chain 146)
- RewardRegistryLib (`0xb0b239...0789f0`, chain 146)
- StargateMultiRewarder (`0x5871a7...37e881`, chain 1)
- StargateMultiRewarder (`0x146c8e...ffbb3a`, chain 10)
- StargateMultiRewarder (`0x68d787...b55589`, chain 56)
- StargateMultiRewarder (`0xd240a8...d72a1b`, chain 137)
- StargateMultiRewarder (`0x164a2d...ae557b`, chain 146)
- StargateMultiRewarder (`0x1f6051...7f52fa`, chain 1088)
- StargateMultiRewarder (`0xd69a3d...20ed67`, chain 1329)
- StargateMultiRewarder (`0x018485...6fc0c8`, chain 5000)
- StargateMultiRewarder (`0x9aa02d...ac7fe4`, chain 8453)
- StargateMultiRewarder (`0x957b12...ed99c7`, chain 42161)
- StargateMultiRewarder (`0xe89ca5...a0b3dd`, chain 59144)
- StargateMultiRewarder (`0x4dcbfc...ff5125`, chain 534352)
- StargateMultiRewarder (`0xe89ca5...a0b3dd`, chain 1313161554)
- StargateOFT (`0xa4272a...02ec6b`, chain 50)
- StargateOFT (`0xb0d274...9aaffb`, chain 50)
- StargateOFT (`0x5c386d...b6345b`, chain 1329)
- StargateOFT (`0x28e0f0...5ccc48`, chain 33139)
- StargateOFT (`0xeb8d95...8db4f6`, chain 33139)
- StargateOFT (`0x45f1a9...4d263b`, chain 80094)
- StargateOFT (`0x1c10cc...0d4135`, chain 167000)
- StargateOFTUSDC (`0x8e2e38...67ae44`, chain 50)
- StargateOFTUSDC (`0x2086f7...849b0f`, chain 33139)
- StargateOFTUSDC (`0xaf54be...239398`, chain 80094)
- StargateOFTUSDC (`0x77c716...492a0f`, chain 167000)
- StargatePool (`0x268ca2...9e931d`, chain 1)
- StargatePool (`0xe9aba8...0f7de7`, chain 100)
- StargatePool (`0x36ed19...087d08`, chain 1088)
- StargatePool (`0x4c1d3f...547463`, chain 5000)
- StargatePool (`0xf7628d...69f3f1`, chain 5000)
- StargatePoolMigratable (`0x933597...5a3973`, chain 1)
- StargatePoolMigratable (`0x19cfce...7007dd`, chain 10)
- StargatePoolMigratable (`0x138eb3...9ebc63`, chain 56)
- StargatePoolMigratable (`0xd47b03...9fd4d7`, chain 137)
- StargatePoolMigratable (`0x4dcbfc...ff5125`, chain 1088)
- StargatePoolMigratable (`0x0db9af...7ab10a`, chain 1329)
- StargatePoolMigratable (`0xb715b8...1c57fc`, chain 5000)
- StargatePoolMigratable (`0xce8cca...abb7d0`, chain 42161)
- StargatePoolMigratable (`0x12dc92...e62cee`, chain 43114)
- StargatePoolNative (`0x77b204...e57931`, chain 1)
- StargatePoolNative (`0xe8cdf2...e7d0d3`, chain 10)
- StargatePoolNative (`0xe9aba8...0f7de7`, chain 130)
- StargatePoolNative (`0xdc181b...b6f7c7`, chain 8453)
- StargatePoolNative (`0xa45b51...4a5f7f`, chain 42161)
- StargatePoolNative (`0x81f613...06b075`, chain 59144)
- StargatePoolNative (`0xc2b638...840583`, chain 534352)
- StargatePoolUSDC (`0xc02639...3189c7`, chain 1)
- StargatePoolUSDC (`0xce8cca...abb7d0`, chain 10)
- StargatePoolUSDC (`0x962bd4...576057`, chain 56)
- StargatePoolUSDC (`0xb1eead...2b86c3`, chain 100)
- StargatePoolUSDC (`0x9aa02d...ac7fe4`, chain 137)
- StargatePoolUSDC (`0xa272ff...a2d8f9`, chain 146)
- StargatePoolUSDC (`0x45d417...54ac2e`, chain 1329)
- StargatePoolUSDC (`0xac290a...c6acdc`, chain 5000)
- StargatePoolUSDC (`0x27a16d...4b5d26`, chain 8453)
- StargatePoolUSDC (`0xe8cdf2...e7d0d3`, chain 42161)
- StargatePoolUSDC (`0x5634c4...d86e47`, chain 43114)
- StargatePoolUSDC (`0x3fc69c...2b14e4`, chain 534352)
- StargatePoolUSDC (`0x81f613...06b075`, chain 1313161554)
- StargateStaking (`0xff551f...04a6bd`, chain 1)
- StargateStaking (`0xfbb5a7...7d6443`, chain 10)
- StargateStaking (`0x26727c...2a3098`, chain 56)
- StargateStaking (`0x469490...06a90d`, chain 137)
- StargateStaking (`0xbba60d...453d10`, chain 146)
- StargateStaking (`0xf1fcb4...bf27e6`, chain 1088)
- StargateStaking (`0x8c1014...5e03a0`, chain 1329)
- StargateStaking (`0x02dc10...5d486a`, chain 5000)
- StargateStaking (`0xdfc47d...ea0b80`, chain 8453)
- StargateStaking (`0x3da4f8...be7c4c`, chain 42161)
- StargateStaking (`0x25bbf5...a7b9ea`, chain 59144)
- StargateStaking (`0xd240a8...d72a1b`, chain 534352)
- StargateStaking (`0x25bbf5...a7b9ea`, chain 1313161554)
- TokenMessaging (`0x2761c3...cc2650`, chain 50)
- TokenMessaging (`0xb1eead...2b86c3`, chain 130)
- TokenMessaging (`0xcbe782...06588a`, chain 1088)
- TokenMessaging (`0xbe574b...5f1ae8`, chain 33139)
- TokenMessaging (`0xaf5191...ba2cd6`, chain 80094)
- TokenMessaging (`0x45d417...54ac2e`, chain 167000)
- TokenMessaging (`0x4e422b...a94038`, chain 534352)
- TokenMessaging (`0x5f688f...af2fed`, chain 1313161554)
- Treasurer (`0x1041d1...606918`, chain 1)
- Treasurer (`0x644abb...a487e9`, chain 10)
- Treasurer (`0x67b302...428330`, chain 50)
- Treasurer (`0x0a6a15...f0d97c`, chain 56)
- Treasurer (`0xf1815b...045d14`, chain 100)
- Treasurer (`0x36ed19...087d08`, chain 137)
- Treasurer (`0xa7f3e2...a32455`, chain 146)
- Treasurer (`0x3da4f8...be7c4c`, chain 1088)
- Treasurer (`0x873cfb...dced22`, chain 1329)
- Treasurer (`0x4e8c9b...5b9ce1`, chain 5000)
- Treasurer (`0xd47b03...9fd4d7`, chain 8453)
- Treasurer (`0xa4bbdd...a8502e`, chain 33139)
- Treasurer (`0x146c8e...ffbb3a`, chain 42161)
- Treasurer (`0xf5f74d...b46152`, chain 59144)
- Treasurer (`0x224d8f...277f03`, chain 80094)
- Treasurer (`0x8c1014...5e03a0`, chain 167000)
- Treasurer (`0xcbe782...06588a`, chain 534352)
- Treasurer (`0xf5f74d...b46152`, chain 1313161554)
- UnnamedContract (`0x41a5b0...a3420b`, chain 2222)

## Contract Surface Quality

- Indexed contracts: 139; live-surface contracts included: 139 (139 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 451/457 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/169 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 451 own, 6 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 451 of 457 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/169
- Verified + Unaudited implementations: 169
- Verified by bytecode match: 0
- Unverified implementations: 282
- Unique implementations: 457
- Raw deployments: 457
- Audits discovered: 17 (17 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 17 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (169)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CreditMessaging | unknown | project_anchor | own_supporting | 0 | xdc | unit-396997 | `0xef9ec6...4a2c88` | ⚠️ Unaudited |
| CreditMessaging | unknown | project_anchor | own_supporting | 0 | gnosis | unit-396706 | `0xe1ad84...93681e` | ⚠️ Unaudited |
| CreditMessaging | unknown | project_anchor | own_supporting | 0 | unichain | unit-396742 | `0xaf368c...bcbebf` | ⚠️ Unaudited |
| CreditMessaging | unknown | project_anchor | own_supporting | 0 | sonic | unit-396801 | `0x3a1293...1bbc0f` | ⚠️ Unaudited |
| CreditMessaging | unknown | project_anchor | own_supporting | 0 | apechain | unit-396917 | `0x99e799...66a734` | ⚠️ Unaudited |
| CreditMessaging | unknown | project_anchor | own_supporting | 0 | berachain | unit-397079 | `0x45a01e...2033cd` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396681 | `0x3e368b...658a06` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396682 | `0x52b354...f74087` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396684 | `0x6d5521...0f73eb` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396689 | `0xe171af...3db311` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | optimism | unit-396693 | `0x1f6051...7f52fa` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | optimism | unit-396694 | `0x3da4f8...be7c4c` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | optimism | unit-396696 | `0x80f755...1b8161` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | xdc | unit-396988 | `0x29ee61...58a402` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | xdc | unit-396993 | `0xa628bb...9557e9` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | xdc | unit-396996 | `0xd34e23...5465c0` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | bsc | unit-397027 | `0x622244...b38b7d` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | bsc | unit-397031 | `0xdd0022...cafc31` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | gnosis | unit-396701 | `0x6d2053...432c35` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | gnosis | unit-396705 | `0xd94926...620cb4` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | polygon | unit-396776 | `0x3fc69c...2b14e4` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | polygon | unit-396778 | `0x4e422b...a94038` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | sonic | unit-396803 | `0x88853d...908279` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | metis | unit-396709 | `0x19cfce...7007dd` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | metis | unit-396715 | `0xce8cca...abb7d0` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | metis | unit-396716 | `0xe8cdf2...e7d0d3` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | sei | unit-396769 | `0x711b5a...830d8e` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | sei | unit-396772 | `0xcd4302...423311` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | sei | unit-396774 | `0xde4860...abaeb2` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | mantle | unit-397000 | `0x288968...3c8df7` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | mantle | unit-397001 | `0x2bc314...85c0c4` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | mantle | unit-397005 | `0x6ec3ef...5045c9` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | mantle | unit-397006 | `0xa81274...0ccebe` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | base | unit-397101 | `0x08ed1d...44441e` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | base | unit-397102 | `0x17e450...ef9a34` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | apechain | unit-396915 | `0x60f2a6...dffd52` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | apechain | unit-396916 | `0x897aaf...85f29d` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | apechain | unit-396919 | `0xb0b239...0789f0` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-396957 | `0x1f6051...7f52fa` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-396959 | `0x80f755...1b8161` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-396963 | `0xda82a3...1706f5` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | linea | unit-397040 | `0x6e3d88...bd7e2b` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | berachain | unit-397081 | `0x808d7c...bc0949` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | berachain | unit-397083 | `0x9d1b16...25b944` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | taiko | unit-396841 | `0x711b5a...830d8e` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | taiko | unit-396844 | `0xcd4302...423311` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | scroll | unit-397010 | `0x2a6c43...6db219` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | scroll | unit-397014 | `0x503c5c...7a06ff` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | aurora | unit-396760 | `0x6e3d88...bd7e2b` | ⚠️ Unaudited |
| OFTTokenERC20 | unknown | project_anchor | own_supporting | 0 | xdc | unit-396994 | `0xa73482...3fc212` | ⚠️ Unaudited |
| OFTTokenERC20 | token | project_anchor | own_supporting | 0 | sei | unit-396766 | `0x160345...9342d8` | ⚠️ Unaudited |
| OFTTokenERC20 | unknown | project_anchor | own_supporting | 0 | apechain | unit-396923 | `0xf4d923...e37949` | ⚠️ Unaudited |
| OFTTokenERC20 | unknown | project_anchor | own_supporting | 0 | berachain | unit-397078 | `0x2f6f07...6e7590` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | xdc | unit-396991 | `0x936ab8...04e9d8` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | gnosis | unit-396702 | `0x824d8f...4e4cba` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | sonic | unit-396800 | `0x2d93fb...6c38b3` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | apechain | unit-396921 | `0xc6bc40...63e7f9` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | berachain | unit-397082 | `0x8731d5...e01e98` | ⚠️ Unaudited |
| RewardLib | unknown | project_anchor | own_supporting | 0 | sonic | unit-396802 | `0x549943...1d3241` | ⚠️ Unaudited |
| RewardRegistryLib | unknown | project_anchor | own_supporting | 0 | sonic | unit-396806 | `0xb0b239...0789f0` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396683 | `0x5871a7...37e881` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | project_anchor | own_supporting | 0 | optimism | unit-396691 | `0x146c8e...ffbb3a` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | project_anchor | own_supporting | 0 | bsc | unit-397028 | `0x68d787...b55589` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | project_anchor | own_supporting | 0 | polygon | unit-396781 | `0xd240a8...d72a1b` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | project_anchor | own_supporting | 0 | sonic | unit-396798 | `0x164a2d...ae557b` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | project_anchor | own_supporting | 0 | metis | unit-396710 | `0x1f6051...7f52fa` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | project_anchor | own_supporting | 0 | sei | unit-396773 | `0xd69a3d...20ed67` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | project_anchor | own_supporting | 0 | mantle | unit-396998 | `0x018485...6fc0c8` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | project_anchor | own_supporting | 0 | base | unit-397105 | `0x9aa02d...ac7fe4` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-396960 | `0x957b12...ed99c7` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | project_anchor | own_supporting | 0 | linea | unit-397042 | `0xe89ca5...a0b3dd` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | project_anchor | own_supporting | 0 | scroll | unit-397012 | `0x4dcbfc...ff5125` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | project_anchor | own_supporting | 0 | aurora | unit-396762 | `0xe89ca5...a0b3dd` | ⚠️ Unaudited |
| StargateOFT | unknown | project_anchor | own_supporting | 0 | xdc | unit-396992 | `0xa4272a...02ec6b` | ⚠️ Unaudited |
| StargateOFT | unknown | project_anchor | own_supporting | 0 | xdc | unit-396995 | `0xb0d274...9aaffb` | ⚠️ Unaudited |
| StargateOFT | unknown | project_anchor | own_supporting | 0 | sei | unit-396768 | `0x5c386d...b6345b` | ⚠️ Unaudited |
| StargateOFT | unknown | project_anchor | own_supporting | 0 | apechain | unit-396914 | `0x28e0f0...5ccc48` | ⚠️ Unaudited |
| StargateOFT | unknown | project_anchor | own_supporting | 0 | apechain | unit-396922 | `0xeb8d95...8db4f6` | ⚠️ Unaudited |
| StargateOFT | unknown | project_anchor | own_supporting | 0 | berachain | unit-397080 | `0x45f1a9...4d263b` | ⚠️ Unaudited |
| StargateOFT | unknown | project_anchor | own_supporting | 0 | taiko | unit-396839 | `0x1c10cc...0d4135` | ⚠️ Unaudited |
| StargateOFTUSDC | unknown | project_anchor | own_supporting | 0 | xdc | unit-396990 | `0x8e2e38...67ae44` | ⚠️ Unaudited |
| StargateOFTUSDC | unknown | project_anchor | own_supporting | 0 | apechain | unit-396913 | `0x2086f7...849b0f` | ⚠️ Unaudited |
| StargateOFTUSDC | unknown | project_anchor | own_supporting | 0 | berachain | unit-397085 | `0xaf54be...239398` | ⚠️ Unaudited |
| StargateOFTUSDC | unknown | project_anchor | own_supporting | 0 | taiko | unit-396842 | `0x77c716...492a0f` | ⚠️ Unaudited |
| StargatePool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-396680 | `0x268ca2...9e931d` | ⚠️ Unaudited |
| StargatePool | core_logic | project_anchor | own_supporting | 0 | gnosis | unit-396707 | `0xe9aba8...0f7de7` | ⚠️ Unaudited |
| StargatePool | core_logic | project_anchor | own_supporting | 0 | metis | unit-396711 | `0x36ed19...087d08` | ⚠️ Unaudited |
| StargatePool | core_logic | project_anchor | own_supporting | 0 | mantle | unit-397003 | `0x4c1d3f...547463` | ⚠️ Unaudited |
| StargatePool | core_logic | project_anchor | own_supporting | 0 | mantle | unit-397009 | `0xf7628d...69f3f1` | ⚠️ Unaudited |
| StargatePoolMigratable | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-396687 | `0x933597...5a3973` | ⚠️ Unaudited |
| StargatePoolMigratable | core_logic | project_anchor | own_supporting | 0 | optimism | unit-396692 | `0x19cfce...7007dd` | ⚠️ Unaudited |
| StargatePoolMigratable | core_logic | project_anchor | own_supporting | 0 | bsc | unit-397025 | `0x138eb3...9ebc63` | ⚠️ Unaudited |
| StargatePoolMigratable | core_logic | project_anchor | own_supporting | 0 | polygon | unit-396782 | `0xd47b03...9fd4d7` | ⚠️ Unaudited |
| StargatePoolMigratable | core_logic | project_anchor | own_supporting | 0 | metis | unit-396713 | `0x4dcbfc...ff5125` | ⚠️ Unaudited |
| StargatePoolMigratable | core_logic | project_anchor | own_supporting | 0 | sei | unit-396764 | `0x0db9af...7ab10a` | ⚠️ Unaudited |
| StargatePoolMigratable | core_logic | project_anchor | own_supporting | 0 | mantle | unit-397008 | `0xb715b8...1c57fc` | ⚠️ Unaudited |
| StargatePoolMigratable | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-396962 | `0xce8cca...abb7d0` | ⚠️ Unaudited |
| StargatePoolMigratable | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-396979 | `0x12dc92...e62cee` | ⚠️ Unaudited |
| StargatePoolNative | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-396686 | `0x77b204...e57931` | ⚠️ Unaudited |
| StargatePoolNative | core_logic | project_anchor | own_supporting | 0 | optimism | unit-396698 | `0xe8cdf2...e7d0d3` | ⚠️ Unaudited |
| StargatePoolNative | core_logic | project_anchor | own_supporting | 0 | unichain | unit-396746 | `0xe9aba8...0f7de7` | ⚠️ Unaudited |
| StargatePoolNative | core_logic | project_anchor | own_supporting | 0 | base | unit-397107 | `0xdc181b...b6f7c7` | ⚠️ Unaudited |
| StargatePoolNative | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-396961 | `0xa45b51...4a5f7f` | ⚠️ Unaudited |
| StargatePoolNative | core_logic | project_anchor | own_supporting | 0 | linea | unit-397041 | `0x81f613...06b075` | ⚠️ Unaudited |
| StargatePoolNative | core_logic | project_anchor | own_supporting | 0 | scroll | unit-397015 | `0xc2b638...840583` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-396688 | `0xc02639...3189c7` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | project_anchor | own_supporting | 0 | optimism | unit-396697 | `0xce8cca...abb7d0` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | project_anchor | own_supporting | 0 | bsc | unit-397030 | `0x962bd4...576057` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | project_anchor | own_supporting | 0 | gnosis | unit-396704 | `0xb1eead...2b86c3` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | project_anchor | own_supporting | 0 | polygon | unit-396780 | `0x9aa02d...ac7fe4` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | project_anchor | own_supporting | 0 | sonic | unit-396804 | `0xa272ff...a2d8f9` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | project_anchor | own_supporting | 0 | sei | unit-396767 | `0x45d417...54ac2e` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | project_anchor | own_supporting | 0 | mantle | unit-397007 | `0xac290a...c6acdc` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | project_anchor | own_supporting | 0 | base | unit-397103 | `0x27a16d...4b5d26` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-396964 | `0xe8cdf2...e7d0d3` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-396982 | `0x5634c4...d86e47` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | project_anchor | own_supporting | 0 | scroll | unit-397011 | `0x3fc69c...2b14e4` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | project_anchor | own_supporting | 0 | aurora | unit-396761 | `0x81f613...06b075` | ⚠️ Unaudited |
| StargateStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396690 | `0xff551f...04a6bd` | ⚠️ Unaudited |
| StargateStaking | unknown | project_anchor | own_supporting | 0 | optimism | unit-396700 | `0xfbb5a7...7d6443` | ⚠️ Unaudited |
| StargateStaking | unknown | project_anchor | own_supporting | 0 | bsc | unit-397026 | `0x26727c...2a3098` | ⚠️ Unaudited |
| StargateStaking | unknown | project_anchor | own_supporting | 0 | polygon | unit-396777 | `0x469490...06a90d` | ⚠️ Unaudited |
| StargateStaking | unknown | project_anchor | own_supporting | 0 | sonic | unit-396807 | `0xbba60d...453d10` | ⚠️ Unaudited |
| StargateStaking | unknown | project_anchor | own_supporting | 0 | metis | unit-396717 | `0xf1fcb4...bf27e6` | ⚠️ Unaudited |
| StargateStaking | unknown | project_anchor | own_supporting | 0 | sei | unit-396771 | `0x8c1014...5e03a0` | ⚠️ Unaudited |
| StargateStaking | unknown | project_anchor | own_supporting | 0 | mantle | unit-396999 | `0x02dc10...5d486a` | ⚠️ Unaudited |
| StargateStaking | unknown | project_anchor | own_supporting | 0 | base | unit-397108 | `0xdfc47d...ea0b80` | ⚠️ Unaudited |
| StargateStaking | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-396958 | `0x3da4f8...be7c4c` | ⚠️ Unaudited |
| StargateStaking | unknown | project_anchor | own_supporting | 0 | linea | unit-397038 | `0x25bbf5...a7b9ea` | ⚠️ Unaudited |
| StargateStaking | unknown | project_anchor | own_supporting | 0 | scroll | unit-397017 | `0xd240a8...d72a1b` | ⚠️ Unaudited |
| StargateStaking | unknown | project_anchor | own_supporting | 0 | aurora | unit-396758 | `0x25bbf5...a7b9ea` | ⚠️ Unaudited |
| TokenMessaging | token | project_anchor | own_supporting | 0 | ethereum | unit-396685 | `0x6d6620...f4a980` | ⚠️ Unaudited |
| TokenMessaging | token | project_anchor | own_supporting | 0 | optimism | unit-396699 | `0xf1fcb4...bf27e6` | ⚠️ Unaudited |
| TokenMessaging | unknown | project_anchor | own_supporting | 0 | xdc | unit-396987 | `0x2761c3...cc2650` | ⚠️ Unaudited |
| TokenMessaging | token | project_anchor | own_supporting | 0 | bsc | unit-397029 | `0x6e3d88...bd7e2b` | ⚠️ Unaudited |
| TokenMessaging | token | project_anchor | own_supporting | 0 | gnosis | unit-396703 | `0xaf368c...bcbebf` | ⚠️ Unaudited |
| TokenMessaging | unknown | project_anchor | own_supporting | 0 | unichain | unit-396743 | `0xb1eead...2b86c3` | ⚠️ Unaudited |
| TokenMessaging | token | project_anchor | own_supporting | 0 | polygon | unit-396779 | `0x6ce9bf...f50eac` | ⚠️ Unaudited |
| TokenMessaging | token | project_anchor | own_supporting | 0 | sonic | unit-396799 | `0x2086f7...849b0f` | ⚠️ Unaudited |
| TokenMessaging | token | project_anchor | own_supporting | 0 | metis | unit-396714 | `0xcbe782...06588a` | ⚠️ Unaudited |
| TokenMessaging | token | project_anchor | own_supporting | 0 | sei | unit-396765 | `0x1502fa...275d3d` | ⚠️ Unaudited |
| TokenMessaging | token | project_anchor | own_supporting | 0 | mantle | unit-397002 | `0x41b491...0a0aef` | ⚠️ Unaudited |
| TokenMessaging | token | project_anchor | own_supporting | 0 | base | unit-397104 | `0x5634c4...d86e47` | ⚠️ Unaudited |
| TokenMessaging | unknown | project_anchor | own_supporting | 0 | apechain | unit-396920 | `0xbe574b...5f1ae8` | ⚠️ Unaudited |
| TokenMessaging | token | project_anchor | own_supporting | 0 | arbitrum | unit-396956 | `0x19cfce...7007dd` | ⚠️ Unaudited |
| TokenMessaging | token | project_anchor | own_supporting | 0 | avalanche | unit-396980 | `0x17e450...ef9a34` | ⚠️ Unaudited |
| TokenMessaging | token | project_anchor | own_supporting | 0 | linea | unit-397039 | `0x5f688f...af2fed` | ⚠️ Unaudited |
| TokenMessaging | unknown | project_anchor | own_supporting | 0 | berachain | unit-397084 | `0xaf5191...ba2cd6` | ⚠️ Unaudited |
| TokenMessaging | unknown | project_anchor | own_supporting | 0 | taiko | unit-396840 | `0x45d417...54ac2e` | ⚠️ Unaudited |
| TokenMessaging | unknown | project_anchor | own_supporting | 0 | scroll | unit-397013 | `0x4e422b...a94038` | ⚠️ Unaudited |
| TokenMessaging | unknown | project_anchor | own_supporting | 0 | aurora | unit-396759 | `0x5f688f...af2fed` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396679 | `0x1041d1...606918` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | optimism | unit-396695 | `0x644abb...a487e9` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | xdc | unit-396989 | `0x67b302...428330` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | bsc | unit-397024 | `0x0a6a15...f0d97c` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | gnosis | unit-396708 | `0xf1815b...045d14` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | polygon | unit-396775 | `0x36ed19...087d08` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | sonic | unit-396805 | `0xa7f3e2...a32455` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | metis | unit-396712 | `0x3da4f8...be7c4c` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | sei | unit-396770 | `0x873cfb...dced22` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | mantle | unit-397004 | `0x4e8c9b...5b9ce1` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | base | unit-397106 | `0xd47b03...9fd4d7` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | apechain | unit-396918 | `0xa4bbdd...a8502e` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-396955 | `0x146c8e...ffbb3a` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | linea | unit-397043 | `0xf5f74d...b46152` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | berachain | unit-397077 | `0x224d8f...277f03` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | taiko | unit-396843 | `0x8c1014...5e03a0` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | scroll | unit-397016 | `0xcbe782...06588a` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | aurora | unit-396763 | `0xf5f74d...b46152` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (288)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-396789 | `0x090194...ba8c01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-396790 | `0x1502fa...275d3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-396791 | `0x1c10cc...0d4135` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-396792 | `0x45d417...54ac2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-396793 | `0x711b5a...830d8e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-396794 | `0x77c716...492a0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-396795 | `0x8c1014...5e03a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-396796 | `0x8e8539...c58746` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-396797 | `0xcd4302...423311` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | rootstock | unit-396902 | `0x06d538...c2173e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | rootstock | unit-396903 | `0x224d8f...277f03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | rootstock | unit-396904 | `0x296f55...cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | rootstock | unit-396905 | `0x2f6f07...6e7590` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | rootstock | unit-396906 | `0x45a01e...2033cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | rootstock | unit-396907 | `0x45f1a9...4d263b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | rootstock | unit-396908 | `0x808d7c...bc0949` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | rootstock | unit-396909 | `0x8731d5...e01e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | rootstock | unit-396910 | `0x9d1b16...25b944` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | rootstock | unit-396911 | `0xaf5191...ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | rootstock | unit-396912 | `0xaf54be...239398` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | telos-evm | unit-396944 | `0x164a2d...ae557b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | telos-evm | unit-396945 | `0x2086f7...849b0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | telos-evm | unit-396946 | `0x3a1293...1bbc0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | telos-evm | unit-396947 | `0x549943...1d3241` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | telos-evm | unit-396948 | `0x88853d...908279` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | telos-evm | unit-396949 | `0xa272ff...a2d8f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | telos-evm | unit-396950 | `0xa4bbdd...a8502e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | telos-evm | unit-396951 | `0xa7f3e2...a32455` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | telos-evm | unit-396952 | `0xb0b239...0789f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | telos-evm | unit-396953 | `0xbab93b...7cc500` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | telos-evm | unit-396954 | `0xbba60d...453d10` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fuse | unit-396730 | `0x06d538...c2173e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fuse | unit-396731 | `0x224d8f...277f03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fuse | unit-396732 | `0x296f55...cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fuse | unit-396733 | `0x2f6f07...6e7590` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fuse | unit-396734 | `0x45a01e...2033cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fuse | unit-396735 | `0x45f1a9...4d263b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fuse | unit-396736 | `0x808d7c...bc0949` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fuse | unit-396737 | `0x8731d5...e01e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fuse | unit-396738 | `0x9d1b16...25b944` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fuse | unit-396739 | `0xaf5191...ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fuse | unit-396740 | `0xaf54be...239398` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-396741 | `0x6d2053...432c35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-396744 | `0xd94926...620cb4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-396745 | `0xe1ad84...93681e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flow-evm | unit-397066 | `0x06d538...c2173e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flow-evm | unit-397067 | `0x224d8f...277f03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flow-evm | unit-397068 | `0x296f55...cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flow-evm | unit-397069 | `0x2f6f07...6e7590` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flow-evm | unit-397070 | `0x45a01e...2033cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flow-evm | unit-397071 | `0x45f1a9...4d263b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flow-evm | unit-397072 | `0x808d7c...bc0949` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flow-evm | unit-397073 | `0x8731d5...e01e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flow-evm | unit-397074 | `0x9d1b16...25b944` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flow-evm | unit-397075 | `0xaf5191...ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flow-evm | unit-397076 | `0xaf54be...239398` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-396718 | `0x06d538...c2173e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-396719 | `0x224d8f...277f03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-396720 | `0x296f55...cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-396721 | `0x2f6f07...6e7590` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-396722 | `0x45a01e...2033cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-396723 | `0x45f1a9...4d263b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-396724 | `0x693604...562341` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-396725 | `0x808d7c...bc0949` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-396726 | `0x8731d5...e01e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-396727 | `0x9d1b16...25b944` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-396728 | `0xaf5191...ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-396729 | `0xaf54be...239398` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | glue | unit-396747 | `0x06d538...c2173e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | glue | unit-396748 | `0x224d8f...277f03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | glue | unit-396749 | `0x296f55...cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | glue | unit-396750 | `0x2f6f07...6e7590` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | glue | unit-396751 | `0x45a01e...2033cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | glue | unit-396752 | `0x45f1a9...4d263b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | glue | unit-396753 | `0x808d7c...bc0949` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | glue | unit-396754 | `0x8731d5...e01e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | glue | unit-396755 | `0x9d1b16...25b944` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | glue | unit-396756 | `0xaf5191...ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | glue | unit-396757 | `0xaf54be...239398` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | vana | unit-396808 | `0x224d8f...277f03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | vana | unit-396809 | `0x296f55...cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | vana | unit-396810 | `0x2f6f07...6e7590` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | vana | unit-396811 | `0x45a01e...2033cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | vana | unit-396812 | `0x693604...562341` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | vana | unit-396813 | `0x808d7c...bc0949` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | vana | unit-396814 | `0x8731d5...e01e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | vana | unit-396815 | `0xaf5191...ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | vana | unit-396816 | `0xb0d502...31d62b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | vana | unit-396817 | `0xc53e6d...2804fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | vana | unit-396818 | `0xf2c0e5...2ed6c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | story | unit-396819 | `0x164a2d...ae557b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | story | unit-396820 | `0x2086f7...849b0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | story | unit-396821 | `0x3a1293...1bbc0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | story | unit-396822 | `0x549943...1d3241` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | story | unit-396823 | `0x88853d...908279` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | story | unit-396824 | `0xa272ff...a2d8f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | story | unit-396825 | `0xa4bbdd...a8502e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | story | unit-396826 | `0xa7f3e2...a32455` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | story | unit-396827 | `0xb0b239...0789f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | story | unit-396828 | `0xbab93b...7cc500` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | story | unit-396829 | `0xbba60d...453d10` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gravity | unit-396830 | `0x0b38e8...535396` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gravity | unit-396831 | `0x0db9af...7ab10a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gravity | unit-396832 | `0x17d65b...8ee0b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gravity | unit-396833 | `0x1c10cc...0d4135` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gravity | unit-396834 | `0x45d417...54ac2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gravity | unit-396835 | `0x77c716...492a0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gravity | unit-396836 | `0x9c2dc7...4945bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gravity | unit-396837 | `0xc1b804...9be7e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gravity | unit-396838 | `0xf6f832...c8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-396845 | `0x06d538...c2173e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-396846 | `0x224d8f...277f03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-396847 | `0x296f55...cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-396848 | `0x2f6f07...6e7590` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-396849 | `0x45a01e...2033cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-396850 | `0x45f1a9...4d263b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-396851 | `0x693604...562341` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-396852 | `0x808d7c...bc0949` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-396853 | `0x8731d5...e01e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-396854 | `0x9d1b16...25b944` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-396855 | `0xaf5191...ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-396856 | `0xaf54be...239398` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396857 | `0x06d538...c2173e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396858 | `0x06eb48...92739c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396859 | `0x3052a0...6dab47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396860 | `0x4a364f...cf18d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396861 | `0x53bf83...a41614` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396862 | `0x5c1a97...f30de5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396863 | `0x669434...ce1eb6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396864 | `0x693604...562341` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396865 | `0x6d5e66...2cf129` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396866 | `0x701a95...360883` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396867 | `0x8731d5...e01e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396868 | `0x8ee211...2b9b33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396869 | `0xb0d502...31d62b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396870 | `0xe7ec68...051f25` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-396871 | `0x10e28b...2f1a92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-396872 | `0x41a5b0...a3420b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-396873 | `0x62207a...d4d247` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-396874 | `0x6b73d3...c4594b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-396875 | `0xa76cd3...cc6184` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-396876 | `0xb7a05a...e3ae58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-396877 | `0x164a2d...ae557b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-396878 | `0x2d93fb...6c38b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-396879 | `0x370dc6...49aba8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-396880 | `0x3a1293...1bbc0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-396881 | `0x4f5f42...e9f9c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-396882 | `0x549943...1d3241` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-396883 | `0x87c367...03c70f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-396884 | `0x88853d...908279` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-396885 | `0xa7f3e2...a32455` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-396886 | `0xb0b239...0789f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-396887 | `0xbba60d...453d10` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396888 | `0x183d6b...467b25` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396889 | `0x221f0e...29527d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396890 | `0x583548...d29bbe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396891 | `0x5f9c01...f3b671` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396892 | `0x79f51a...2ab4fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396893 | `0x91a5fe...426e0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396894 | `0x943c48...f11a76` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396895 | `0x945320...3cc7bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396896 | `0x953519...ea5599` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396897 | `0x9c7007...0a3f40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396898 | `0xaff6d1...9a7646` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396899 | `0xbc6de8...293e97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396900 | `0xc0bdf9...5df751` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396901 | `0xdd46bf...920157` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | peaq | unit-396924 | `0x07cd5a...6e5e8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | peaq | unit-396925 | `0x352d82...beb3dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | peaq | unit-396926 | `0x4cc108...c29e32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | peaq | unit-396927 | `0x53bf83...a41614` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | peaq | unit-396928 | `0x55bdb4...ac9970` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | peaq | unit-396929 | `0x5c1a97...f30de5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | peaq | unit-396930 | `0x669434...ce1eb6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | peaq | unit-396931 | `0x6d5e66...2cf129` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | peaq | unit-396932 | `0x8943cb...e31c1a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | peaq | unit-396933 | `0xe7ec68...051f25` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | peaq | unit-396934 | `0xf2c0e5...2ed6c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | botanix | unit-396935 | `0x118b37...7faf2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | botanix | unit-396936 | `0x3292c4...3b1e28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | botanix | unit-396937 | `0x3a1e30...60be55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | botanix | unit-396938 | `0x5e3708...e9ad40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | botanix | unit-396939 | `0x714533...50d9ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | botanix | unit-396940 | `0xad4134...c1593e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | botanix | unit-396941 | `0xb0987c...544b6c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | botanix | unit-396942 | `0xdf43c9...26a886` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | botanix | unit-396943 | `0xf785a6...710bb2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | nibiru | unit-397055 | `0x015007...cf394d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | nibiru | unit-397056 | `0x08c492...6a472a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | nibiru | unit-397057 | `0x108f4c...03f916` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | nibiru | unit-397058 | `0x12a272...a8c2f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | nibiru | unit-397059 | `0x28bec7...632a00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | nibiru | unit-397060 | `0x6bebd4...9c51b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | nibiru | unit-397061 | `0x851c9d...8b337f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | nibiru | unit-397062 | `0xc16977...ff63c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | nibiru | unit-397063 | `0xc7616b...3e3d79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | nibiru | unit-397064 | `0xcc0587...486e74` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | nibiru | unit-397065 | `0xcda5b7...b37555` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-397092 | `0x01a7c8...f59224` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-397093 | `0x16f3f9...19a1c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-397094 | `0x259ef4...a9212f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-397095 | `0x55acee...1dc71b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-397096 | `0x6effa1...9402d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-397097 | `0x8619ba...4456c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-397098 | `0x8d9210...e0da00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-397099 | `0xb83ab1...7ecfcd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-397100 | `0xbb4957...fa13ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | iota-evm | unit-397109 | `0x0db9af...7ab10a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | iota-evm | unit-397110 | `0x160345...9342d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | iota-evm | unit-397111 | `0x1c10cc...0d4135` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | iota-evm | unit-397112 | `0x711b5a...830d8e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | iota-evm | unit-397113 | `0x77c716...492a0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | iota-evm | unit-397114 | `0x8c1014...5e03a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | iota-evm | unit-397115 | `0x8e8539...c58746` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | iota-evm | unit-397116 | `0x9c2dc7...4945bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | iota-evm | unit-397117 | `0xcd4302...423311` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-397118 | `0x0ceb23...fa4cbb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-397119 | `0x102d75...460282` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-397120 | `0x134399...4ebce0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-397121 | `0x43f237...36eb08` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-397122 | `0x9895d8...7c32cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-397123 | `0xca3676...3f1ef2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-397124 | `0xda6087...dfdcad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396965 | `0x224d8f...277f03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396966 | `0x296f55...cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396967 | `0x2f6f07...6e7590` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396968 | `0x45a01e...2033cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396969 | `0x45f1a9...4d263b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396970 | `0x808d7c...bc0949` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396971 | `0x8731d5...e01e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396972 | `0x8943cb...e31c1a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396973 | `0x9d1b16...25b944` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396974 | `0xaf5191...ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396975 | `0xaf54be...239398` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396976 | `0xc53e6d...2804fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396977 | `0xe4111e...b404ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396978 | `0xf2c0e5...2ed6c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-396981 | `0x22bdf9...8b35b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-396983 | `0x6ce9bf...f50eac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-396984 | `0x8db623...ff8331` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-396985 | `0xc2b638...840583` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-396986 | `0xdfc47d...ea0b80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | superposition | unit-397018 | `0x06eb48...92739c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | superposition | unit-397019 | `0x4a364f...cf18d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | superposition | unit-397020 | `0x5c1a97...f30de5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | superposition | unit-397021 | `0x8ee211...2b9b33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | superposition | unit-397022 | `0xafb393...dc5ee5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | superposition | unit-397023 | `0xe7ec68...051f25` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-397032 | `0x2f6f07...6e7590` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-397033 | `0x45a01e...2033cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-397034 | `0x45f1a9...4d263b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-397035 | `0x9d1b16...25b944` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-397036 | `0xaf5191...ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-397037 | `0xaf54be...239398` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | codex | unit-397086 | `0x2f6f07...6e7590` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | codex | unit-397087 | `0x45a01e...2033cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | codex | unit-397088 | `0x45f1a9...4d263b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | codex | unit-397089 | `0x9d1b16...25b944` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | codex | unit-397090 | `0xaf5191...ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | codex | unit-397091 | `0xaf54be...239398` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plume | unit-397125 | `0x193564...85cc85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plume | unit-397126 | `0x2d870d...5cf2f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plume | unit-397127 | `0x3d07d5...5ac412` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plume | unit-397128 | `0x45d2cf...dbaadb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plume | unit-397129 | `0x4683ce...f4f066` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plume | unit-397130 | `0x5e3291...95e253` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plume | unit-397131 | `0x9909fa...3631e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plume | unit-397132 | `0xabd218...409e61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plume | unit-397133 | `0xbbfab5...97dd60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plume | unit-397134 | `0xca59ca...1f14be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plume | unit-397135 | `0xf26d57...adcb14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | degen | unit-397044 | `0x06d538...c2173e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | degen | unit-397045 | `0x224d8f...277f03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | degen | unit-397046 | `0x296f55...cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | degen | unit-397047 | `0x2f6f07...6e7590` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | degen | unit-397048 | `0x45a01e...2033cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | degen | unit-397049 | `0x45f1a9...4d263b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | degen | unit-397050 | `0x808d7c...bc0949` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | degen | unit-397051 | `0x8731d5...e01e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | degen | unit-397052 | `0x9d1b16...25b944` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | degen | unit-397053 | `0xaf5191...ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | degen | unit-397054 | `0xaf54be...239398` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | rari-chain | unit-396783 | `0x17d65b...8ee0b2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | rari-chain | unit-396784 | `0x77c716...492a0f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | rari-chain | unit-396785 | `0x875bee...59b086` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | rari-chain | unit-396786 | `0x8e8539...c58746` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | rari-chain | unit-396787 | `0x9c2dc7...4945bd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | rari-chain | unit-396788 | `0xc1b804...9be7e4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Stargate V2 - Zellic FINAL Audit Report.pdf](https://github.com/stargate-protocol/stargate-v2/blob/main/audits/Stargate%20V2%20-%20Zellic%20FINAL%20Audit%20Report.pdf) | Zellic | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [Stargate_V2_Ottersec_Final.pdf](https://github.com/stargate-protocol/stargate-v2/blob/main/audits/Stargate_V2_Ottersec_Final.pdf) | Ottersec | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Stargate Audit 1.0 (December 22nd 2021) - Quantstamp.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20Audit%201.0%20(December%2022nd%202021)%20-%20Quantstamp.pdf) | Quantstamp | Audit | 2021-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [Stargate Audit 1.1 (March 21st 2022) - Zokyo.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20Audit%201.1%20(March%2021st%202022)%20-%20Zokyo.pdf) | Zokyo | Audit | 2022-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [Stargate Audit 2.0 (February 24th 2022) - Quantstamp.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20Audit%202.0%20(February%2024th%202022)%20-%20Quantstamp.pdf) | Quantstamp | Audit | 2022-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 16 | n/a |
| [Stargate Audit Report (16th March 2022) - Quantstamp.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20Audit%20Report%20(16th%20March%202022)%20-%20Quantstamp.pdf) | Quantstamp | Audit | 2022-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [Stargate Audit Report (March 6th 2022) - Zellic.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20Audit%20Report%20(March%206th%202022)%20-%20Zellic.pdf) | Zellic | Audit | 2022-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [Stargate EthVault & RouterETH Audit 1.1 (17th June 2022) - Ackee.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20EthVault%20%26%20RouterETH%20Audit%201.1%20(17th%20June%202022)%20-%20Ackee.pdf) | Ackee Blockchain | Audit | 2022-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Stargate EthVault &RouterETH Audit 1.0 (17th June 2022) - Ackee.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20EthVault%20%26RouterETH%20Audit%201.0%20(17th%20June%202022)%20-%20Ackee.pdf) | Ackee Blockchain | Audit | 2022-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Stargate FeeLibraryV4 Audit 1.0 (June 28th 2022) - Ackee.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20FeeLibraryV4%20Audit%201.0%20(June%2028th%202022)%20-%20Ackee.pdf) | Ackee Blockchain | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Stargate FeeLibraryV4 Audit 1.1 (June 28th 2022) - Ackee.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20FeeLibraryV4%20Audit%201.1%20(June%2028th%202022)%20-%20Ackee.pdf) | Ackee Blockchain | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Stargate LPStakingTime & WidgetSwap Audit 1.0 (July 12th 2022) - Ackee.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20LPStakingTime%20%26%20WidgetSwap%20Audit%201.0%20(July%2012th%202022)%20-%20Ackee.pdf) | Ackee Blockchain | Audit | 2022-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Stargate LPStakingTime & WidgetSwap Audit 1.1 (July 12th 2022) - Ackee.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20LPStakingTime%20%26%20WidgetSwap%20Audit%201.1%20(July%2012th%202022)%20-%20Ackee.pdf) | Ackee Blockchain | Audit | 2022-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Stargate Router & FeeLibraryV5.1 Audit (December 14th 2022) - Zellic.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20Router%20%26%20FeeLibraryV5.1%20Audit%20(December%2014th%202022)%20-%20Zellic.pdf) | Zellic | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Stargate VE Audit 1.0 (March 29th 2022) - Ackee.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20VE%20Audit%201.0%20(March%2029th%202022)%20-%20Ackee.pdf) | Ackee Blockchain | Audit | 2022-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Stargate VE Audit 1.1 (April 13th 2022) - Ackee.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20VE%20Audit%201.1%20(April%2013th%202022)%20-%20Ackee.pdf) | Ackee Blockchain | Audit | 2022-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Paladin_StargateFeeDistributor_Final_Report.pdf](https://github.com/stargate-protocol/stargate-dao/blob/main/audit/Paladin_StargateFeeDistributor_Final_Report.pdf) | Paladin | Audit | 2023-09 | stale | Direct | address | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4605] Stargate V2 - Zellic FINAL Audit Report.pdf — no match: Extracted contract names from the scope section (page 9) and file paths. Audit date from cover page.
- [4606] Stargate_V2_Ottersec_Final.pdf — no match: Extracted contract names from findings and scope description. The scope section mentions 'stargate-v2' program but does not list individual files; contract names were inferred from findings referencing specific contracts.
- [10482] Stargate Audit 1.0 (December 22nd 2021) - Quantstamp.pdf — no match: No reason recorded
- [10483] Stargate Audit 1.1 (March 21st 2022) - Zokyo.pdf — no match: No reason recorded
- [10484] Stargate Audit 2.0 (February 24th 2022) - Quantstamp.pdf — no match: No reason recorded
- [10485] Stargate Audit Report (16th March 2022) - Quantstamp.pdf — no match: No reason recorded
- [10486] Stargate Audit Report (March 6th 2022) - Zellic.pdf — no match: No reason recorded
- [10487] Stargate EthVault & RouterETH Audit 1.1 (17th June 2022) - Ackee.pdf — no match: No reason recorded
- [10488] Stargate EthVault &RouterETH Audit 1.0 (17th June 2022) - Ackee.pdf — no match: No reason recorded
- [10489] Stargate FeeLibraryV4 Audit 1.0 (June 28th 2022) - Ackee.pdf — no match: Only one contract in scope: StargateFeeLibraryV04.sol. Audit date from cover page and document revisions.
- [10490] Stargate FeeLibraryV4 Audit 1.1 (June 28th 2022) - Ackee.pdf — no match: Only one contract in scope: StargateFeeLibraryV04.sol. Audit date from cover page and executive summary.
- [10491] Stargate LPStakingTime & WidgetSwap Audit 1.0 (July 12th 2022) - Ackee.pdf — no match: No reason recorded
- [10492] Stargate LPStakingTime & WidgetSwap Audit 1.1 (July 12th 2022) - Ackee.pdf — no match: No reason recorded
- [10493] Stargate Router & FeeLibraryV5.1 Audit (December 14th 2022) - Zellic.pdf — no match: No reason recorded
- [10494] Stargate VE Audit 1.0 (March 29th 2022) - Ackee.pdf — no match: No reason recorded
- [10495] Stargate VE Audit 1.1 (April 13th 2022) - Ackee.pdf — no match: No reason recorded
- [10498] Paladin_StargateFeeDistributor_Final_Report.pdf — no match: Only one contract (FeeDistributor) is in scope. The report covers Stargate V2 Fee Claimer on multiple chains.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Stargate V2 - Zellic FINAL Audit Report.pdf | StargateBase | unmatched — not counted | — | listed in scope programs | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | StargateOFT | ambiguous — not counted | StargateOFT (alternative) `0x1c10cc...0d4135` — liveness: live (code_present_context)<br>StargateOFT (alternative) `0x5c386d...b6345b` — deployed 2024-06-14 03:24:38+03 — liveness: live (code_present_context)<br>StargateOFT (alternative) `0xeb8d95...8db4f6` — liveness: live (code_present_context)<br>StargateOFT (alternative) `0xa4272a...02ec6b` — liveness: live (current_address_book_code)<br>StargateOFT (alternative) `0xb0d274...9aaffb` — liveness: live (current_address_book_code)<br>StargateOFT (alternative) `0x28e0f0...5ccc48` — liveness: live (code_present_context)<br>StargateOFT (alternative) `0x45f1a9...4d263b` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | StargatePool | ambiguous — not counted | StargatePool (alternative) `0xf7628d...69f3f1` — deployed 2024-05-27 22:10:26+03 — liveness: live (code_present_context)<br>StargatePool (alternative) `0x268ca2...9e931d` — deployed 2024-05-27 22:15:23+03 — liveness: live (code_present_context)<br>StargatePool (alternative) `0x4c1d3f...547463` — deployed 2024-05-27 22:10:14+03 — liveness: live (code_present_context)<br>StargatePool (alternative) `0xe9aba8...0f7de7` — deployed 2025-02-03 23:50:05+03 — liveness: live (code_present_context)<br>StargatePool (alternative) `0x36ed19...087d08` — deployed 2024-05-27 22:10:10+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | StargatePoolNative | ambiguous — not counted | StargatePoolNative (alternative) `0xc2b638...840583` — deployed 2024-05-27 22:10:11+03 — liveness: live (code_present_context)<br>StargatePoolNative (alternative) `0x81f613...06b075` — deployed 2024-05-27 22:10:11+03 — liveness: live (code_present_context)<br>StargatePoolNative (alternative) `0xe9aba8...0f7de7` — deployed 2025-02-12 03:10:28+03 — liveness: live (current_address_book_code)<br>0x2f6f07… (alternative) `0x2f6f07...6e7590` — liveness: live (current_address_book_code)<br>0x2f6f07… (alternative) `0x2f6f07...6e7590` — liveness: live (current_address_book_code)<br>StargatePoolNative (alternative) `0x77b204...e57931` — deployed 2024-05-27 22:14:59+03 — liveness: live (code_present_context)<br>StargatePoolNative (alternative) `0xa45b51...4a5f7f` — deployed 2024-05-27 22:10:08+03 — liveness: live (code_present_context)<br>0x221f0e… (alternative) `0x221f0e...29527d` — liveness: live (current_address_book_code)<br>StargatePoolNative (alternative) `0xdc181b...b6f7c7` — deployed 2024-05-27 22:10:09+03 — liveness: live (code_present_context)<br>StargatePoolNative (alternative) `0xe8cdf2...e7d0d3` — deployed 2024-05-27 22:10:09+03 — liveness: live (code_present_context)<br>0x8731d5… (alternative) `0x8731d5...e01e98` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | StargatePoolUSDC | ambiguous — not counted | StargatePoolUSDC (alternative) `0x5634c4...d86e47` — deployed 2024-05-27 22:10:09+03 — liveness: live (current_address_book_code)<br>StargatePoolUSDC (alternative) `0xb1eead...2b86c3` — deployed 2025-02-03 23:50:15+03 — liveness: live (code_present_context)<br>StargatePoolUSDC (alternative) `0xac290a...c6acdc` — deployed 2024-05-27 22:10:36+03 — liveness: live (code_present_context)<br>StargatePoolUSDC (alternative) `0xce8cca...abb7d0` — deployed 2024-05-27 22:10:17+03 — liveness: live (code_present_context)<br>0x2f6f07… (alternative) `0x2f6f07...6e7590` — liveness: live (current_address_book_code)<br>StargatePoolUSDC (alternative) `0x81f613...06b075` — deployed 2024-05-27 22:10:16+03 — liveness: live (code_present_context)<br>StargatePoolUSDC (alternative) `0x45d417...54ac2e` — deployed 2024-08-01 03:40:44+03 — liveness: live (code_present_context)<br>StargatePoolUSDC (alternative) `0xe8cdf2...e7d0d3` — deployed 2024-05-27 22:10:16+03 — liveness: live (code_present_context)<br>StargatePoolUSDC (alternative) `0x27a16d...4b5d26` — deployed 2024-05-27 22:10:17+03 — liveness: live (code_present_context)<br>StargatePoolUSDC (alternative) `0x3fc69c...2b14e4` — deployed 2024-05-27 22:10:20+03 — liveness: live (code_present_context)<br>StargatePoolUSDC (alternative) `0xc02639...3189c7` — deployed 2024-05-27 22:15:47+03 — liveness: live (code_present_context)<br>StargatePoolUSDC (alternative) `0x962bd4...576057` — deployed 2024-08-01 03:40:46+03 — liveness: live (current_address_book_code)<br>StargatePoolUSDC (alternative) `0xa272ff...a2d8f9` — deployed 2025-02-19 04:11:26+03 — liveness: live (code_present_context)<br>0x45f1a9… (alternative) `0x45f1a9...4d263b` — liveness: live (current_address_book_code)<br>StargatePoolUSDC (alternative) `0x9aa02d...ac7fe4` — deployed 2024-05-27 22:15:00+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | TokenMessaging | ambiguous — not counted | 0x45a01e… (alternative) `0x45a01e...2033cd` — liveness: live (current_address_book_code)<br>0x53bf83… (alternative) `0x53bf83...a41614` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0xaf5191...ba2cd6` — liveness: live (current_address_book_code)<br>0x45f1a9… (alternative) `0x45f1a9...4d263b` — liveness: live (current_address_book_code)<br>0x3a1e30… (alternative) `0x3a1e30...60be55` — liveness: live (current_address_book_code)<br>0x9c2dc7… (alternative) `0x9c2dc7...4945bd` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x4e422b...a94038` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0xcbe782...06588a` — deployed 2024-05-27 22:10:30+03 — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x6e3d88...bd7e2b` — deployed 2024-05-27 22:10:19+03 — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0xb1eead...2b86c3` — deployed 2025-02-12 03:10:35+03 — liveness: live (current_address_book_code)<br>0xaf54be… (alternative) `0xaf54be...239398` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x2086f7...849b0f` — deployed 2025-02-19 04:11:31+03 — liveness: live (current_address_book_code)<br>0x45d417… (alternative) `0x45d417...54ac2e` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0xbe574b...5f1ae8` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x19cfce...7007dd` — deployed 2024-05-27 22:10:25+03 — liveness: live (current_address_book_code)<br>0x45a01e… (alternative) `0x45a01e...2033cd` — liveness: live (current_address_book_code)<br>0x88853d… (alternative) `0x88853d...908279` — liveness: live (current_address_book_code)<br>0xf26d57… (alternative) `0xf26d57...adcb14` — liveness: live (current_address_book_code)<br>0x183d6b… (alternative) `0x183d6b...467b25` — liveness: live (current_address_book_code)<br>0x16f3f9… (alternative) `0x16f3f9...19a1c0` — liveness: live (current_address_book_code)<br>0x102d75… (alternative) `0x102d75...460282` — deployed 2025-09-11 20:38:30+03 — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x6d6620...f4a980` — deployed 2024-05-27 22:16:11+03 — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x41b491...0a0aef` — deployed 2024-05-27 22:10:58+03 — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0xf1fcb4...bf27e6` — deployed 2024-05-27 22:10:31+03 — liveness: live (current_address_book_code)<br>0x88853d… (alternative) `0x88853d...908279` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x1502fa...275d3d` — deployed 2024-06-14 03:24:40+03 — liveness: live (current_address_book_code)<br>0x45a01e… (alternative) `0x45a01e...2033cd` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x2761c3...cc2650` — liveness: live (current_address_book_code)<br>0x45a01e… (alternative) `0x45a01e...2033cd` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0xaf368c...bcbebf` — deployed 2025-02-03 23:50:20+03 — liveness: live (current_address_book_code)<br>0xb0b239… (alternative) `0xb0b239...0789f0` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x45d417...54ac2e` — liveness: live (current_address_book_code)<br>0x06eb48… (alternative) `0x06eb48...92739c` — liveness: live (current_address_book_code)<br>0xaf5191… (alternative) `0xaf5191...ba2cd6` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x6ce9bf...f50eac` — deployed 2024-05-27 22:15:16+03 — liveness: live (current_address_book_code)<br>0x808d7c… (alternative) `0x808d7c...bc0949` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x5f688f...af2fed` — deployed 2024-05-27 22:10:17+03 — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x17e450...ef9a34` — deployed 2024-05-27 22:10:26+03 — liveness: live (current_address_book_code)<br>0x6b73d3… (alternative) `0x6b73d3...c4594b` — liveness: live (current_address_book_code)<br>0x693604… (alternative) `0x693604...562341` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x5634c4...d86e47` — deployed 2024-05-27 22:10:23+03 — liveness: live (current_address_book_code)<br>0x08c492… (alternative) `0x08c492...6a472a` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x5f688f...af2fed` — liveness: live (current_address_book_code)<br>0x45a01e… (alternative) `0x45a01e...2033cd` — liveness: live (current_address_book_code)<br>0x1c10cc… (alternative) `0x1c10cc...0d4135` — liveness: live (current_address_book_code)<br>0x45f1a9… (alternative) `0x45f1a9...4d263b` — liveness: live (current_address_book_code)<br>0xaf54be… (alternative) `0xaf54be...239398` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | TokenMessagingOptions | unmatched — not counted | — | listed in scope programs | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | CreditMessaging | ambiguous — not counted | 0xad4134… (alternative) `0xad4134...c1593e` — liveness: live (current_address_book_code)<br>0xb0d502… (alternative) `0xb0d502...31d62b` — liveness: live (current_address_book_code)<br>0xbba60d… (alternative) `0xbba60d...453d10` — liveness: live (current_address_book_code)<br>0xc0bdf9… (alternative) `0xc0bdf9...5df751` — liveness: live (current_address_book_code)<br>0x5e3291… (alternative) `0x5e3291...95e253` — liveness: live (current_address_book_code)<br>0xaf54be… (alternative) `0xaf54be...239398` — liveness: live (current_address_book_code)<br>0xc7616b… (alternative) `0xc7616b...3e3d79` — liveness: live (current_address_book_code)<br>0x352d82… (alternative) `0x352d82...beb3dd` — liveness: live (current_address_book_code)<br>CreditMessaging (alternative) `0xef9ec6...4a2c88` — liveness: live (current_address_book_code)<br>0x9d1b16… (alternative) `0x9d1b16...25b944` — liveness: live (current_address_book_code)<br>CreditMessaging (alternative) `0x99e799...66a734` — liveness: live (current_address_book_code)<br>0x9d1b16… (alternative) `0x9d1b16...25b944` — liveness: live (current_address_book_code)<br>CreditMessaging (alternative) `0xaf368c...bcbebf` — deployed 2025-02-12 03:10:41+03 — liveness: live (current_address_book_code)<br>0x164a2d… (alternative) `0x164a2d...ae557b` — liveness: live (current_address_book_code)<br>0x9d1b16… (alternative) `0x9d1b16...25b944` — liveness: live (current_address_book_code)<br>0xbba60d… (alternative) `0xbba60d...453d10` — liveness: live (current_address_book_code)<br>CreditMessaging (alternative) `0x3a1293...1bbc0f` — deployed 2025-02-19 04:11:36+03 — liveness: live (current_address_book_code)<br>0x224d8f… (alternative) `0x224d8f...277f03` — liveness: live (current_address_book_code)<br>CreditMessaging (alternative) `0xe1ad84...93681e` — deployed 2025-02-03 23:50:30+03 — liveness: live (current_address_book_code)<br>0xaf5191… (alternative) `0xaf5191...ba2cd6` — liveness: live (current_address_book_code)<br>0x4a364f… (alternative) `0x4a364f...cf18d8` — liveness: live (current_address_book_code)<br>0x9d1b16… (alternative) `0x9d1b16...25b944` — liveness: live (current_address_book_code)<br>0x9d1b16… (alternative) `0x9d1b16...25b944` — liveness: live (current_address_book_code)<br>0xaf54be… (alternative) `0xaf54be...239398` — liveness: live (current_address_book_code)<br>CreditMessaging (alternative) `0x45a01e...2033cd` — liveness: live (current_address_book_code)<br>0x43f237… (alternative) `0x43f237...36eb08` — deployed 2025-09-11 20:38:34+03 — liveness: live (current_address_book_code)<br>0x45a01e… (alternative) `0x45a01e...2033cd` — liveness: live (current_address_book_code)<br>0xaf5191… (alternative) `0xaf5191...ba2cd6` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | CreditMessagingOptions | unmatched — not counted | — | listed in scope programs | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | StargateMultiRewarder | ambiguous — not counted | 0x62207a… (alternative) `0x62207a...d4d247` — liveness: live (current_address_book_code)<br>StargateMultiRewarder (alternative) `0xe89ca5...a0b3dd` — deployed 2024-05-27 22:10:50+03 — liveness: live (current_address_book_code)<br>StargateMultiRewarder (alternative) `0x957b12...ed99c7` — deployed 2024-05-27 22:10:43+03 — liveness: live (current_address_book_code)<br>0x5c1a97… (alternative) `0x5c1a97...f30de5` — liveness: live (current_address_book_code)<br>StargateMultiRewarder (alternative) `0x4dcbfc...ff5125` — liveness: live (current_address_book_code)<br>StargateMultiRewarder (alternative) `0xd240a8...d72a1b` — deployed 2024-05-27 22:16:02+03 — liveness: live (current_address_book_code)<br>StargateMultiRewarder (alternative) `0x5871a7...37e881` — deployed 2024-05-27 22:18:11+03 — liveness: live (current_address_book_code)<br>0xe4111e… (alternative) `0xe4111e...b404ea` — liveness: live (current_address_book_code)<br>0x6ce9bf… (alternative) `0x6ce9bf...f50eac` — deployed 2024-05-27 22:11:06+03 — liveness: live (current_address_book_code)<br>StargateMultiRewarder (alternative) `0xe89ca5...a0b3dd` — liveness: live (current_address_book_code)<br>StargateMultiRewarder (alternative) `0x164a2d...ae557b` — deployed 2025-02-19 04:12:01+03 — liveness: live (current_address_book_code)<br>StargateMultiRewarder (alternative) `0xd69a3d...20ed67` — deployed 2024-08-01 03:41:06+03 — liveness: live (current_address_book_code)<br>0x5f9c01… (alternative) `0x5f9c01...f3b671` — liveness: live (current_address_book_code)<br>StargateMultiRewarder (alternative) `0x018485...6fc0c8` — deployed 2024-05-27 22:12:20+03 — liveness: live (current_address_book_code)<br>0x296f55… (alternative) `0x296f55...cb3f97` — liveness: live (current_address_book_code)<br>StargateMultiRewarder (alternative) `0x1f6051...7f52fa` — deployed 2024-05-27 22:11:28+03 — liveness: live (current_address_book_code)<br>StargateMultiRewarder (alternative) `0x68d787...b55589` — deployed 2024-05-27 22:15:10+03 — liveness: live (current_address_book_code)<br>0x296f55… (alternative) `0x296f55...cb3f97` — liveness: live (current_address_book_code)<br>StargateMultiRewarder (alternative) `0x146c8e...ffbb3a` — deployed 2024-05-27 22:11:21+03 — liveness: live (current_address_book_code)<br>StargateMultiRewarder (alternative) `0x9aa02d...ac7fe4` — deployed 2024-05-27 22:11:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | StargateStaking | ambiguous — not counted | 0x8943cb… (alternative) `0x8943cb...e31c1a` — liveness: live (current_address_book_code)<br>StargateStaking (alternative) `0xfbb5a7...7d6443` — deployed 2024-05-27 22:11:03+03 — liveness: live (current_address_book_code)<br>StargateStaking (alternative) `0x25bbf5...a7b9ea` — liveness: live (code_present_context)<br>0x4a364f… (alternative) `0x4a364f...cf18d8` — liveness: live (current_address_book_code)<br>0x808d7c… (alternative) `0x808d7c...bc0949` — liveness: live (current_address_book_code)<br>StargateStaking (alternative) `0x25bbf5...a7b9ea` — deployed 2024-05-27 22:10:32+03 — liveness: live (current_address_book_code)<br>StargateStaking (alternative) `0x3da4f8...be7c4c` — deployed 2024-05-27 22:10:39+03 — liveness: live (current_address_book_code)<br>0x10e28b… (alternative) `0x10e28b...2f1a92` — liveness: live (current_address_book_code)<br>StargateStaking (alternative) `0xff551f...04a6bd` — deployed 2024-05-27 22:17:35+03 — liveness: live (current_address_book_code)<br>0x808d7c… (alternative) `0x808d7c...bc0949` — liveness: live (current_address_book_code)<br>StargateStaking (alternative) `0xf1fcb4...bf27e6` — deployed 2024-05-27 22:11:06+03 — liveness: live (code_present_context)<br>StargateStaking (alternative) `0xdfc47d...ea0b80` — deployed 2024-05-27 22:10:47+03 — liveness: live (current_address_book_code)<br>StargateStaking (alternative) `0x26727c...2a3098` — deployed 2024-05-27 22:10:34+03 — liveness: live (current_address_book_code)<br>StargateStaking (alternative) `0xbba60d...453d10` — deployed 2025-02-19 04:11:46+03 — liveness: live (current_address_book_code)<br>StargateStaking (alternative) `0x8c1014...5e03a0` — deployed 2024-08-01 03:40:58+03 — liveness: live (current_address_book_code)<br>StargateStaking (alternative) `0xd240a8...d72a1b` — liveness: live (code_present_context)<br>StargateStaking (alternative) `0x02dc10...5d486a` — deployed 2024-05-27 22:11:58+03 — liveness: live (current_address_book_code)<br>StargateStaking (alternative) `0x469490...06a90d` — deployed 2024-05-27 22:15:42+03 — liveness: live (current_address_book_code)<br>0x945320… (alternative) `0x945320...3cc7bd` — liveness: live (current_address_book_code)<br>0x8db623… (alternative) `0x8db623...ff8331` — deployed 2024-05-27 22:10:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | StargateZapperV1 | unmatched — not counted | — | listed in scope programs | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | Treasurer | ambiguous — not counted | 0xe7ec68… (alternative) `0xe7ec68...051f25` — liveness: live (current_address_book_code)<br>0x370dc6… (alternative) `0x370dc6...49aba8` — liveness: live (current_address_book_code)<br>0x45a01e… (alternative) `0x45a01e...2033cd` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0x8c1014...5e03a0` — liveness: live (current_address_book_code)<br>0x6d2053… (alternative) `0x6d2053...432c35` — deployed 2025-02-12 03:10:52+03 — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0xa4bbdd...a8502e` — liveness: live (current_address_book_code)<br>0x296f55… (alternative) `0x296f55...cb3f97` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0xd47b03...9fd4d7` — deployed 2024-05-27 22:11:11+03 — liveness: live (current_address_book_code)<br>0x296f55… (alternative) `0x296f55...cb3f97` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0x36ed19...087d08` — deployed 2024-05-27 22:16:10+03 — liveness: live (current_address_book_code)<br>0xa7f3e2… (alternative) `0xa7f3e2...a32455` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0x146c8e...ffbb3a` — deployed 2024-05-27 22:10:46+03 — liveness: live (current_address_book_code)<br>0x3052a0… (alternative) `0x3052a0...6dab47` — liveness: live (current_address_book_code)<br>0x851c9d… (alternative) `0x851c9d...8b337f` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0x3da4f8...be7c4c` — deployed 2024-05-27 22:11:38+03 — liveness: live (current_address_book_code)<br>0x8731d5… (alternative) `0x8731d5...e01e98` — liveness: live (current_address_book_code)<br>0x296f55… (alternative) `0x296f55...cb3f97` — liveness: live (current_address_book_code)<br>0x06d538… (alternative) `0x06d538...c2173e` — liveness: live (current_address_book_code)<br>0xb7a05a… (alternative) `0xb7a05a...e3ae58` — liveness: live (current_address_book_code)<br>0xc2b638… (alternative) `0xc2b638...840583` — deployed 2024-05-27 22:11:12+03 — liveness: live (current_address_book_code)<br>0x693604… (alternative) `0x693604...562341` — liveness: live (current_address_book_code)<br>0x953519… (alternative) `0x953519...ea5599` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0xf5f74d...b46152` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0x1041d1...606918` — deployed 2024-05-27 22:18:23+03 — liveness: live (current_address_book_code)<br>0x296f55… (alternative) `0x296f55...cb3f97` — liveness: live (current_address_book_code)<br>0x296f55… (alternative) `0x296f55...cb3f97` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0x224d8f...277f03` — liveness: live (current_address_book_code)<br>0x090194… (alternative) `0x090194...ba8c01` — liveness: live (current_address_book_code)<br>0xa7f3e2… (alternative) `0xa7f3e2...a32455` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0x644abb...a487e9` — deployed 2024-05-27 22:11:27+03 — liveness: live (current_address_book_code)<br>0x8c1014… (alternative) `0x8c1014...5e03a0` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0xf1815b...045d14` — deployed 2025-02-03 23:51:05+03 — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0xcbe782...06588a` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0xf5f74d...b46152` — deployed 2024-05-27 22:10:56+03 — liveness: live (current_address_book_code)<br>0x8943cb… (alternative) `0x8943cb...e31c1a` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0x873cfb...dced22` — deployed 2024-06-14 03:24:45+03 — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0x0a6a15...f0d97c` — deployed 2024-05-27 22:15:13+03 — liveness: live (current_address_book_code)<br>0xbbfab5… (alternative) `0xbbfab5...97dd60` — liveness: live (current_address_book_code)<br>0x259ef4… (alternative) `0x259ef4...a9212f` — liveness: live (current_address_book_code)<br>0xca3676… (alternative) `0xca3676...3f1ef2` — deployed 2025-09-11 20:38:44+03 — liveness: live (current_address_book_code)<br>0x714533… (alternative) `0x714533...50d9ce` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0xa7f3e2...a32455` — deployed 2025-02-19 04:12:06+03 — liveness: live (current_address_book_code)<br>0x45a01e… (alternative) `0x45a01e...2033cd` — liveness: live (current_address_book_code)<br>0x06d538… (alternative) `0x06d538...c2173e` — liveness: live (current_address_book_code)<br>0x0db9af… (alternative) `0x0db9af...7ab10a` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0x67b302...428330` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0x4e8c9b...5b9ce1` — deployed 2024-05-27 22:12:28+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | OFTTokenERC20 | ambiguous — not counted | OFTTokenERC20 (alternative) `0xf4d923...e37949` — liveness: live (code_present_context)<br>OFTTokenERC20 (alternative) `0xa73482...3fc212` — liveness: live (current_address_book_code)<br>OFTTokenERC20 (alternative) `0x2f6f07...6e7590` — liveness: live (code_present_context)<br>OFTTokenERC20 (alternative) `0x160345...9342d8` — deployed 2024-06-14 03:24:36+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | LPToken | unmatched — not counted | — | listed in scope programs | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | RewardLib | ambiguous — not counted | 0xbc6de8… (alternative) `0xbc6de8...293e97` — liveness: live (current_address_book_code)<br>0xf2c0e5… (alternative) `0xf2c0e5...2ed6c5` — liveness: live (current_address_book_code)<br>0x224d8f… (alternative) `0x224d8f...277f03` — liveness: live (current_address_book_code)<br>0x669434… (alternative) `0x669434...ce1eb6` — liveness: live (current_address_book_code)<br>RewardLib (alternative) `0x549943...1d3241` — deployed 2025-02-19 04:11:51+03 — liveness: live (current_address_book_code)<br>0x224d8f… (alternative) `0x224d8f...277f03` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | StakingLib | unmatched — not counted | — | listed in scope programs | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | FeeLibV1 | ambiguous — not counted | FeeLibV1 (alternative) `0x897aaf...85f29d` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x08ed1d...44441e` — deployed 2024-05-27 22:10:41+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x2bc314...85c0c4` — deployed 2024-05-27 22:11:24+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x6e3d88...bd7e2b` — deployed 2024-05-27 22:10:29+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x52b354...f74087` — deployed 2024-05-27 22:17:11+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x1f6051...7f52fa` — deployed 2024-05-27 22:10:49+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x6d2053...432c35` — deployed 2025-02-03 23:50:35+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x4e422b...a94038` — deployed 2024-05-27 22:15:36+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x9d1b16...25b944` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x80f755...1b8161` — deployed 2024-05-27 22:10:35+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xe8cdf2...e7d0d3` — deployed 2024-05-27 22:10:46+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x19cfce...7007dd` — deployed 2024-05-27 22:11:00+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xe171af...3db311` — deployed 2024-05-27 22:17:23+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x6ec3ef...5045c9` — deployed 2024-05-27 22:11:30+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xde4860...abaeb2` — deployed 2024-06-14 03:24:42+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x622244...b38b7d` — deployed 2024-08-01 03:40:52+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x29ee61...58a402` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xd34e23...5465c0` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xcd4302...423311` — deployed 2024-08-01 03:40:52+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x80f755...1b8161` — deployed 2024-05-27 22:10:43+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x6d5521...0f73eb` — deployed 2024-05-27 22:16:47+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x503c5c...7a06ff` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xa81274...0ccebe` — deployed 2024-05-27 22:11:50+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xce8cca...abb7d0` — deployed 2024-05-27 22:10:54+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xa628bb...9557e9` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x711b5a...830d8e` — deployed 2024-08-01 03:40:57+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xb0b239...0789f0` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x60f2a6...dffd52` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x808d7c...bc0949` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x1f6051...7f52fa` — deployed 2024-05-27 22:10:36+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xdd0022...cafc31` — deployed 2024-05-27 22:10:28+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x288968...3c8df7` — deployed 2024-05-27 22:11:38+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x2a6c43...6db219` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x17e450...ef9a34` — deployed 2024-05-27 22:10:35+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x3e368b...658a06` — deployed 2024-05-27 22:16:35+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x3fc69c...2b14e4` — deployed 2024-05-27 22:15:28+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xcd4302...423311` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x88853d...908279` — deployed 2025-02-19 04:11:41+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x711b5a...830d8e` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x6e3d88...bd7e2b` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xda82a3...1706f5` — deployed 2024-05-27 22:10:33+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xd94926...620cb4` — deployed 2025-02-03 23:50:55+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x3da4f8...be7c4c` — deployed 2024-05-27 22:10:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate_V2_Ottersec_Final.pdf | StargatePool | ambiguous — not counted | StargatePool (alternative) `0xf7628d...69f3f1` — deployed 2024-05-27 22:10:26+03 — liveness: live (code_present_context)<br>StargatePool (alternative) `0x268ca2...9e931d` — deployed 2024-05-27 22:15:23+03 — liveness: live (code_present_context)<br>StargatePool (alternative) `0x4c1d3f...547463` — deployed 2024-05-27 22:10:14+03 — liveness: live (code_present_context)<br>StargatePool (alternative) `0xe9aba8...0f7de7` — deployed 2025-02-03 23:50:05+03 — liveness: live (code_present_context)<br>StargatePool (alternative) `0x36ed19...087d08` — deployed 2024-05-27 22:10:10+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate_V2_Ottersec_Final.pdf | StargatePoolNative | ambiguous — not counted | StargatePoolNative (alternative) `0xc2b638...840583` — deployed 2024-05-27 22:10:11+03 — liveness: live (code_present_context)<br>StargatePoolNative (alternative) `0x81f613...06b075` — deployed 2024-05-27 22:10:11+03 — liveness: live (code_present_context)<br>StargatePoolNative (alternative) `0xe9aba8...0f7de7` — deployed 2025-02-12 03:10:28+03 — liveness: live (current_address_book_code)<br>0x2f6f07… (alternative) `0x2f6f07...6e7590` — liveness: live (current_address_book_code)<br>0x2f6f07… (alternative) `0x2f6f07...6e7590` — liveness: live (current_address_book_code)<br>StargatePoolNative (alternative) `0x77b204...e57931` — deployed 2024-05-27 22:14:59+03 — liveness: live (code_present_context)<br>StargatePoolNative (alternative) `0xa45b51...4a5f7f` — deployed 2024-05-27 22:10:08+03 — liveness: live (code_present_context)<br>0x221f0e… (alternative) `0x221f0e...29527d` — liveness: live (current_address_book_code)<br>StargatePoolNative (alternative) `0xdc181b...b6f7c7` — deployed 2024-05-27 22:10:09+03 — liveness: live (code_present_context)<br>StargatePoolNative (alternative) `0xe8cdf2...e7d0d3` — deployed 2024-05-27 22:10:09+03 — liveness: live (code_present_context)<br>0x8731d5… (alternative) `0x8731d5...e01e98` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate_V2_Ottersec_Final.pdf | FeeLibV1 | ambiguous — not counted | FeeLibV1 (alternative) `0x897aaf...85f29d` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x08ed1d...44441e` — deployed 2024-05-27 22:10:41+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x2bc314...85c0c4` — deployed 2024-05-27 22:11:24+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x6e3d88...bd7e2b` — deployed 2024-05-27 22:10:29+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x52b354...f74087` — deployed 2024-05-27 22:17:11+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x1f6051...7f52fa` — deployed 2024-05-27 22:10:49+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x6d2053...432c35` — deployed 2025-02-03 23:50:35+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x4e422b...a94038` — deployed 2024-05-27 22:15:36+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x9d1b16...25b944` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x80f755...1b8161` — deployed 2024-05-27 22:10:35+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xe8cdf2...e7d0d3` — deployed 2024-05-27 22:10:46+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x19cfce...7007dd` — deployed 2024-05-27 22:11:00+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xe171af...3db311` — deployed 2024-05-27 22:17:23+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x6ec3ef...5045c9` — deployed 2024-05-27 22:11:30+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xde4860...abaeb2` — deployed 2024-06-14 03:24:42+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x622244...b38b7d` — deployed 2024-08-01 03:40:52+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x29ee61...58a402` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xd34e23...5465c0` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xcd4302...423311` — deployed 2024-08-01 03:40:52+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x80f755...1b8161` — deployed 2024-05-27 22:10:43+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x6d5521...0f73eb` — deployed 2024-05-27 22:16:47+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x503c5c...7a06ff` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xa81274...0ccebe` — deployed 2024-05-27 22:11:50+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xce8cca...abb7d0` — deployed 2024-05-27 22:10:54+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xa628bb...9557e9` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x711b5a...830d8e` — deployed 2024-08-01 03:40:57+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xb0b239...0789f0` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x60f2a6...dffd52` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x808d7c...bc0949` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x1f6051...7f52fa` — deployed 2024-05-27 22:10:36+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xdd0022...cafc31` — deployed 2024-05-27 22:10:28+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x288968...3c8df7` — deployed 2024-05-27 22:11:38+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x2a6c43...6db219` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x17e450...ef9a34` — deployed 2024-05-27 22:10:35+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x3e368b...658a06` — deployed 2024-05-27 22:16:35+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x3fc69c...2b14e4` — deployed 2024-05-27 22:15:28+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xcd4302...423311` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x88853d...908279` — deployed 2025-02-19 04:11:41+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x711b5a...830d8e` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x6e3d88...bd7e2b` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xda82a3...1706f5` — deployed 2024-05-27 22:10:33+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xd94926...620cb4` — deployed 2025-02-03 23:50:55+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x3da4f8...be7c4c` — deployed 2024-05-27 22:10:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate_V2_Ottersec_Final.pdf | BusLib | unmatched — not counted | — | mentioned in finding OS-STG-ADV-01 | no |
| Stargate_V2_Ottersec_Final.pdf | TokenMessaging | ambiguous — not counted | 0x45a01e… (alternative) `0x45a01e...2033cd` — liveness: live (current_address_book_code)<br>0x53bf83… (alternative) `0x53bf83...a41614` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0xaf5191...ba2cd6` — liveness: live (current_address_book_code)<br>0x45f1a9… (alternative) `0x45f1a9...4d263b` — liveness: live (current_address_book_code)<br>0x3a1e30… (alternative) `0x3a1e30...60be55` — liveness: live (current_address_book_code)<br>0x9c2dc7… (alternative) `0x9c2dc7...4945bd` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x4e422b...a94038` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0xcbe782...06588a` — deployed 2024-05-27 22:10:30+03 — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x6e3d88...bd7e2b` — deployed 2024-05-27 22:10:19+03 — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0xb1eead...2b86c3` — deployed 2025-02-12 03:10:35+03 — liveness: live (current_address_book_code)<br>0xaf54be… (alternative) `0xaf54be...239398` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x2086f7...849b0f` — deployed 2025-02-19 04:11:31+03 — liveness: live (current_address_book_code)<br>0x45d417… (alternative) `0x45d417...54ac2e` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0xbe574b...5f1ae8` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x19cfce...7007dd` — deployed 2024-05-27 22:10:25+03 — liveness: live (current_address_book_code)<br>0x45a01e… (alternative) `0x45a01e...2033cd` — liveness: live (current_address_book_code)<br>0x88853d… (alternative) `0x88853d...908279` — liveness: live (current_address_book_code)<br>0xf26d57… (alternative) `0xf26d57...adcb14` — liveness: live (current_address_book_code)<br>0x183d6b… (alternative) `0x183d6b...467b25` — liveness: live (current_address_book_code)<br>0x16f3f9… (alternative) `0x16f3f9...19a1c0` — liveness: live (current_address_book_code)<br>0x102d75… (alternative) `0x102d75...460282` — deployed 2025-09-11 20:38:30+03 — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x6d6620...f4a980` — deployed 2024-05-27 22:16:11+03 — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x41b491...0a0aef` — deployed 2024-05-27 22:10:58+03 — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0xf1fcb4...bf27e6` — deployed 2024-05-27 22:10:31+03 — liveness: live (current_address_book_code)<br>0x88853d… (alternative) `0x88853d...908279` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x1502fa...275d3d` — deployed 2024-06-14 03:24:40+03 — liveness: live (current_address_book_code)<br>0x45a01e… (alternative) `0x45a01e...2033cd` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x2761c3...cc2650` — liveness: live (current_address_book_code)<br>0x45a01e… (alternative) `0x45a01e...2033cd` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0xaf368c...bcbebf` — deployed 2025-02-03 23:50:20+03 — liveness: live (current_address_book_code)<br>0xb0b239… (alternative) `0xb0b239...0789f0` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x45d417...54ac2e` — liveness: live (current_address_book_code)<br>0x06eb48… (alternative) `0x06eb48...92739c` — liveness: live (current_address_book_code)<br>0xaf5191… (alternative) `0xaf5191...ba2cd6` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x6ce9bf...f50eac` — deployed 2024-05-27 22:15:16+03 — liveness: live (current_address_book_code)<br>0x808d7c… (alternative) `0x808d7c...bc0949` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x5f688f...af2fed` — deployed 2024-05-27 22:10:17+03 — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x17e450...ef9a34` — deployed 2024-05-27 22:10:26+03 — liveness: live (current_address_book_code)<br>0x6b73d3… (alternative) `0x6b73d3...c4594b` — liveness: live (current_address_book_code)<br>0x693604… (alternative) `0x693604...562341` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x5634c4...d86e47` — deployed 2024-05-27 22:10:23+03 — liveness: live (current_address_book_code)<br>0x08c492… (alternative) `0x08c492...6a472a` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x5f688f...af2fed` — liveness: live (current_address_book_code)<br>0x45a01e… (alternative) `0x45a01e...2033cd` — liveness: live (current_address_book_code)<br>0x1c10cc… (alternative) `0x1c10cc...0d4135` — liveness: live (current_address_book_code)<br>0x45f1a9… (alternative) `0x45f1a9...4d263b` — liveness: live (current_address_book_code)<br>0xaf54be… (alternative) `0xaf54be...239398` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate_V2_Ottersec_Final.pdf | BusCodec | unmatched — not counted | — | mentioned in finding OS-STG-ADV-06 | no |
| Stargate_V2_Ottersec_Final.pdf | StargateBase | unmatched — not counted | — | mentioned in finding OS-STG-SUG-00 | no |
| Stargate Audit 1.0 (December 22nd 2021) - Quantstamp.pdf | Bridge | unmatched — not counted | — | — | no |
| Stargate Audit 1.0 (December 22nd 2021) - Quantstamp.pdf | BytesLib | unmatched — not counted | — | — | no |
| Stargate Audit 1.0 (December 22nd 2021) - Quantstamp.pdf | Factory | unmatched — not counted | — | — | no |
| Stargate Audit 1.0 (December 22nd 2021) - Quantstamp.pdf | ILayerZeroEndpoint | unmatched — not counted | — | — | no |
| Stargate Audit 1.0 (December 22nd 2021) - Quantstamp.pdf | ILayerZeroReceiver | unmatched — not counted | — | — | no |
| Stargate Audit 1.0 (December 22nd 2021) - Quantstamp.pdf | ILayerZeroUserApplicationConfig | unmatched — not counted | — | — | no |
| Stargate Audit 1.0 (December 22nd 2021) - Quantstamp.pdf | IStargateReceiver | unmatched — not counted | — | — | no |
| Stargate Audit 1.0 (December 22nd 2021) - Quantstamp.pdf | IStargateRouter | unmatched — not counted | — | — | no |
| Stargate Audit 1.0 (December 22nd 2021) - Quantstamp.pdf | LPStaking | unmatched — not counted | — | — | no |
| Stargate Audit 1.0 (December 22nd 2021) - Quantstamp.pdf | LPTokenERC20 | unmatched — not counted | — | — | no |
| Stargate Audit 1.0 (December 22nd 2021) - Quantstamp.pdf | Pool | unmatched — not counted | — | — | no |
| Stargate Audit 1.0 (December 22nd 2021) - Quantstamp.pdf | Router | unmatched — not counted | — | — | no |
| Stargate Audit 1.0 (December 22nd 2021) - Quantstamp.pdf | Staking | unmatched — not counted | — | — | no |
| Stargate Audit 1.0 (December 22nd 2021) - Quantstamp.pdf | StargateToken | unmatched — not counted | — | — | no |
| Stargate Audit 1.1 (March 21st 2022) - Zokyo.pdf | Bridge | unmatched — not counted | — | — | no |
| Stargate Audit 1.1 (March 21st 2022) - Zokyo.pdf | Factory | unmatched — not counted | — | — | no |
| Stargate Audit 1.1 (March 21st 2022) - Zokyo.pdf | LPStaking | unmatched — not counted | — | — | no |
| Stargate Audit 1.1 (March 21st 2022) - Zokyo.pdf | LPTokenERC20 | unmatched — not counted | — | — | no |
| Stargate Audit 1.1 (March 21st 2022) - Zokyo.pdf | OmnichainFungibleToken | unmatched — not counted | — | — | no |
| Stargate Audit 1.1 (March 21st 2022) - Zokyo.pdf | Pool | unmatched — not counted | — | — | no |
| Stargate Audit 1.1 (March 21st 2022) - Zokyo.pdf | Router | unmatched — not counted | — | — | no |
| Stargate Audit 1.1 (March 21st 2022) - Zokyo.pdf | StargateToken | unmatched — not counted | — | — | no |
| Stargate Audit 2.0 (February 24th 2022) - Quantstamp.pdf | Bridge | unmatched — not counted | — | — | no |
| Stargate Audit 2.0 (February 24th 2022) - Quantstamp.pdf | Factory | unmatched — not counted | — | — | no |
| Stargate Audit 2.0 (February 24th 2022) - Quantstamp.pdf | ILayerZeroEndpoint | unmatched — not counted | — | — | no |
| Stargate Audit 2.0 (February 24th 2022) - Quantstamp.pdf | ILayerZeroReceiver | unmatched — not counted | — | — | no |
| Stargate Audit 2.0 (February 24th 2022) - Quantstamp.pdf | ILayerZeroUserApplicationConfig | unmatched — not counted | — | — | no |
| Stargate Audit 2.0 (February 24th 2022) - Quantstamp.pdf | IStargateFeeLibrary | unmatched — not counted | — | — | no |
| Stargate Audit 2.0 (February 24th 2022) - Quantstamp.pdf | IStargateReceiver | unmatched — not counted | — | — | no |
| Stargate Audit 2.0 (February 24th 2022) - Quantstamp.pdf | IStargateRouter | unmatched — not counted | — | — | no |
| Stargate Audit 2.0 (February 24th 2022) - Quantstamp.pdf | LPStaking | unmatched — not counted | — | — | no |
| Stargate Audit 2.0 (February 24th 2022) - Quantstamp.pdf | LPTokenERC20 | unmatched — not counted | — | — | no |
| Stargate Audit 2.0 (February 24th 2022) - Quantstamp.pdf | OmnichainFungibleToken | unmatched — not counted | — | — | no |
| Stargate Audit 2.0 (February 24th 2022) - Quantstamp.pdf | Pool | unmatched — not counted | — | — | no |
| Stargate Audit 2.0 (February 24th 2022) - Quantstamp.pdf | Router | unmatched — not counted | — | — | no |
| Stargate Audit 2.0 (February 24th 2022) - Quantstamp.pdf | Staking | unmatched — not counted | — | — | no |
| Stargate Audit 2.0 (February 24th 2022) - Quantstamp.pdf | StargateFeeLibraryV01 | unmatched — not counted | — | — | no |
| Stargate Audit 2.0 (February 24th 2022) - Quantstamp.pdf | StargateToken | unmatched — not counted | — | — | no |
| Stargate Audit Report (16th March 2022) - Quantstamp.pdf | Bridge | unmatched — not counted | — | — | no |
| Stargate Audit Report (16th March 2022) - Quantstamp.pdf | Factory | unmatched — not counted | — | — | no |
| Stargate Audit Report (16th March 2022) - Quantstamp.pdf | IStargateFeeLibrary | unmatched — not counted | — | — | no |
| Stargate Audit Report (16th March 2022) - Quantstamp.pdf | IStargateReceiver | unmatched — not counted | — | — | no |
| Stargate Audit Report (16th March 2022) - Quantstamp.pdf | IStargateRouter | unmatched — not counted | — | — | no |
| Stargate Audit Report (16th March 2022) - Quantstamp.pdf | LPStaking | unmatched — not counted | — | — | no |
| Stargate Audit Report (16th March 2022) - Quantstamp.pdf | LPTokenERC20 | unmatched — not counted | — | — | no |
| Stargate Audit Report (16th March 2022) - Quantstamp.pdf | OmnichainFungibleToken | unmatched — not counted | — | — | no |
| Stargate Audit Report (16th March 2022) - Quantstamp.pdf | Pool | unmatched — not counted | — | — | no |
| Stargate Audit Report (16th March 2022) - Quantstamp.pdf | Router | unmatched — not counted | — | — | no |
| Stargate Audit Report (16th March 2022) - Quantstamp.pdf | StargateFeeLibraryV01 | unmatched — not counted | — | — | no |
| Stargate Audit Report (16th March 2022) - Quantstamp.pdf | StargateFeeLibraryV02 | unmatched — not counted | — | — | no |
| Stargate Audit Report (16th March 2022) - Quantstamp.pdf | StargateToken | unmatched — not counted | — | — | no |
| Stargate Audit Report (16th March 2022) - Quantstamp.pdf | SwapMath | unmatched — not counted | — | — | no |
| Stargate Audit Report (March 6th 2022) - Zellic.pdf | Bridge | unmatched — not counted | — | — | no |
| Stargate Audit Report (March 6th 2022) - Zellic.pdf | LPStaking | unmatched — not counted | — | — | no |
| Stargate Audit Report (March 6th 2022) - Zellic.pdf | LPTokenERC20 | unmatched — not counted | — | — | no |
| Stargate Audit Report (March 6th 2022) - Zellic.pdf | OmnichainFungibleToken | unmatched — not counted | — | — | no |
| Stargate Audit Report (March 6th 2022) - Zellic.pdf | Pool | unmatched — not counted | — | — | no |
| Stargate Audit Report (March 6th 2022) - Zellic.pdf | Router | unmatched — not counted | — | — | no |
| Stargate Audit Report (March 6th 2022) - Zellic.pdf | StargateFeeLibraryV02 | unmatched — not counted | — | — | no |
| Stargate EthVault & RouterETH Audit 1.1 (17th June 2022) - Ackee.pdf | RouterETH | unmatched — not counted | — | — | no |
| Stargate EthVault & RouterETH Audit 1.1 (17th June 2022) - Ackee.pdf | StargateEthVault | unmatched — not counted | — | — | no |
| Stargate EthVault &RouterETH Audit 1.0 (17th June 2022) - Ackee.pdf | RouterETH | unmatched — not counted | — | — | no |
| Stargate EthVault &RouterETH Audit 1.0 (17th June 2022) - Ackee.pdf | StargateEthVault | unmatched — not counted | — | — | no |
| Stargate FeeLibraryV4 Audit 1.0 (June 28th 2022) - Ackee.pdf | StargateFeeLibraryV04 | unmatched — not counted | — | listed in scope and findings target | no |
| Stargate FeeLibraryV4 Audit 1.1 (June 28th 2022) - Ackee.pdf | StargateFeeLibraryV04 | unmatched — not counted | — | listed in scope and findings | no |
| Stargate LPStakingTime & WidgetSwap Audit 1.0 (July 12th 2022) - Ackee.pdf | LPStakingTime | unmatched — not counted | — | — | no |
| Stargate LPStakingTime & WidgetSwap Audit 1.0 (July 12th 2022) - Ackee.pdf | WidgetSwap | unmatched — not counted | — | — | no |
| Stargate LPStakingTime & WidgetSwap Audit 1.1 (July 12th 2022) - Ackee.pdf | LPStakingTime | unmatched — not counted | — | — | no |
| Stargate LPStakingTime & WidgetSwap Audit 1.1 (July 12th 2022) - Ackee.pdf | WidgetSwap | unmatched — not counted | — | — | no |
| Stargate Router & FeeLibraryV5.1 Audit (December 14th 2022) - Zellic.pdf | Router.sol | unmatched — not counted | — | — | no |
| Stargate Router & FeeLibraryV5.1 Audit (December 14th 2022) - Zellic.pdf | StargateFeeLibraryV05.sol | unmatched — not counted | — | — | no |
| Stargate VE Audit 1.0 (March 29th 2022) - Ackee.pdf | VotingEscrow | unmatched — not counted | — | — | no |
| Stargate VE Audit 1.0 (March 29th 2022) - Ackee.pdf | sVotingEscrow | unmatched — not counted | — | — | no |
| Stargate VE Audit 1.1 (April 13th 2022) - Ackee.pdf | VotingEscrow | unmatched — not counted | — | — | no |
| Stargate VE Audit 1.1 (April 13th 2022) - Ackee.pdf | sVotingEscrow | unmatched — not counted | — | — | no |
| Paladin_StargateFeeDistributor_Final_Report.pdf | FeeDistributor | unmatched — not counted | — | listed in scope table and findings section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| gnosis | `0xe1ad84...93681e` | CreditMessaging | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xaf368c...bcbebf` | CreditMessaging | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x3a1293...1bbc0f` | CreditMessaging | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3e368b...658a06` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x52b354...f74087` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6d5521...0f73eb` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe171af...3db311` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x1f6051...7f52fa` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x3da4f8...be7c4c` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x80f755...1b8161` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x6d2053...432c35` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xd94926...620cb4` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x3fc69c...2b14e4` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x4e422b...a94038` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x88853d...908279` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x19cfce...7007dd` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0xce8cca...abb7d0` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0xe8cdf2...e7d0d3` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x711b5a...830d8e` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0xcd4302...423311` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0xde4860...abaeb2` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x288968...3c8df7` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x2bc314...85c0c4` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x6ec3ef...5045c9` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xa81274...0ccebe` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x08ed1d...44441e` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x17e450...ef9a34` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1f6051...7f52fa` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x80f755...1b8161` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xda82a3...1706f5` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x6e3d88...bd7e2b` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x160345...9342d8` | OFTTokenERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x1f6051...7f52fa` | StargateMultiRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x5c386d...b6345b` | StargateOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x268ca2...9e931d` | StargatePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xe9aba8...0f7de7` | StargatePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x36ed19...087d08` | StargatePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x4c1d3f...547463` | StargatePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xf7628d...69f3f1` | StargatePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x933597...5a3973` | StargatePoolMigratable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x19cfce...7007dd` | StargatePoolMigratable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x138eb3...9ebc63` | StargatePoolMigratable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xd47b03...9fd4d7` | StargatePoolMigratable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x4dcbfc...ff5125` | StargatePoolMigratable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x0db9af...7ab10a` | StargatePoolMigratable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xb715b8...1c57fc` | StargatePoolMigratable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xce8cca...abb7d0` | StargatePoolMigratable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x12dc92...e62cee` | StargatePoolMigratable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x77b204...e57931` | StargatePoolNative | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xe8cdf2...e7d0d3` | StargatePoolNative | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xe9aba8...0f7de7` | StargatePoolNative | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xdc181b...b6f7c7` | StargatePoolNative | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa45b51...4a5f7f` | StargatePoolNative | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x81f613...06b075` | StargatePoolNative | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xc2b638...840583` | StargatePoolNative | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc02639...3189c7` | StargatePoolUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xce8cca...abb7d0` | StargatePoolUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x962bd4...576057` | StargatePoolUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xb1eead...2b86c3` | StargatePoolUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x9aa02d...ac7fe4` | StargatePoolUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xa272ff...a2d8f9` | StargatePoolUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x45d417...54ac2e` | StargatePoolUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xac290a...c6acdc` | StargatePoolUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x27a16d...4b5d26` | StargatePoolUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe8cdf2...e7d0d3` | StargatePoolUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x5634c4...d86e47` | StargatePoolUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x3fc69c...2b14e4` | StargatePoolUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | `0x81f613...06b075` | StargatePoolUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xff551f...04a6bd` | StargateStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xfbb5a7...7d6443` | StargateStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x469490...06a90d` | StargateStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0xf1fcb4...bf27e6` | StargateStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x8c1014...5e03a0` | StargateStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x02dc10...5d486a` | StargateStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xdfc47d...ea0b80` | StargateStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3da4f8...be7c4c` | StargateStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x25bbf5...a7b9ea` | StargateStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6d6620...f4a980` | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xf1fcb4...bf27e6` | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6e3d88...bd7e2b` | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xaf368c...bcbebf` | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x6ce9bf...f50eac` | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x2086f7...849b0f` | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0xcbe782...06588a` | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x1502fa...275d3d` | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x41b491...0a0aef` | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5634c4...d86e47` | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x19cfce...7007dd` | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x17e450...ef9a34` | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x5f688f...af2fed` | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x3da4f8...be7c4c` | Treasurer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 91 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 366 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 17
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 16 ambiguous, 85 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: n/a

Zero-match audit list:

- [4605] Stargate V2 - Zellic FINAL Audit Report.pdf
- [4606] Stargate_V2_Ottersec_Final.pdf
- [10482] Stargate Audit 1.0 (December 22nd 2021) - Quantstamp.pdf
- [10483] Stargate Audit 1.1 (March 21st 2022) - Zokyo.pdf
- [10484] Stargate Audit 2.0 (February 24th 2022) - Quantstamp.pdf
- [10485] Stargate Audit Report (16th March 2022) - Quantstamp.pdf
- [10486] Stargate Audit Report (March 6th 2022) - Zellic.pdf
- [10487] Stargate EthVault & RouterETH Audit 1.1 (17th June 2022) - Ackee.pdf
- [10488] Stargate EthVault &RouterETH Audit 1.0 (17th June 2022) - Ackee.pdf
- [10489] Stargate FeeLibraryV4 Audit 1.0 (June 28th 2022) - Ackee.pdf
- [10490] Stargate FeeLibraryV4 Audit 1.1 (June 28th 2022) - Ackee.pdf
- [10491] Stargate LPStakingTime & WidgetSwap Audit 1.0 (July 12th 2022) - Ackee.pdf
- [10492] Stargate LPStakingTime & WidgetSwap Audit 1.1 (July 12th 2022) - Ackee.pdf
- [10493] Stargate Router & FeeLibraryV5.1 Audit (December 14th 2022) - Zellic.pdf
- [10494] Stargate VE Audit 1.0 (March 29th 2022) - Ackee.pdf
- [10495] Stargate VE Audit 1.1 (April 13th 2022) - Ackee.pdf
- [10498] Paladin_StargateFeeDistributor_Final_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
