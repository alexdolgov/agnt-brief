# Agentic Audit Brief: Stargate Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 17 (0 matched; 17 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Stargate Finance (`stargate-finance`)
- Website: [https://stargate.finance/](https://stargate.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: abstract, apechain, arbitrum, aurora, avalanche, base, berachain, botanix, bsc, codex, core, degen, ethereum, fantom, flare, flow-evm, fuse, glue, gnosis, goat, gravity, hemi, ink, iota-evm, kaia, kava, lightlink, linea, manta-pacific, mantle, metis, nibiru, optimism, peaq, plasma, plume, polygon, rari-chain, rootstock, scroll, sei, soneium, sonic, story, superposition, swellchain, taiko, telos-evm, unichain, vana, xdc
- Contract surface: 988 unique implementations (1087 raw deployments)
- Coverage basis: 0/169 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $80,398,075.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Stargate Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 139 contract row(s) across abstract, apechain, arbitrum, aurora, avalanche, base, berachain, botanix, bsc, codex, core, degen, ethereum, fantom, flare, flow-evm, fuse, glue, gnosis, goat, gravity, hemi, ink, iota-evm, kaia, kava, lightlink, linea, manta-pacific, mantle, metis, nibiru, optimism, peaq, plasma, plume, polygon, rari-chain, rootstock, scroll, sei, soneium, sonic, story, superposition, swellchain, taiko, telos-evm, unichain, vana, xdc. Structural roles: 139 core. 11 row(s) use upgradeable patterns.

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

**TokenMessaging** (`0x6d6620efa72948c5f68a3c8646d58c00d3f4a980`, chain 1)
Origin: nabla-finance (`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenMessaging** (`0xf1fcb4cbd57b67d683972a59b6a7b1e2e8bf27e6`, chain 10)
Origin: nabla-finance (`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenMessaging** (`0x6e3d884c96d640526f273c61dfcf08915ebd7e2b`, chain 56)
Origin: nabla-finance (`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenMessaging** (`0xaf368c91793cb22739386dfcbbb2f1a9e4bcbebf`, chain 100)
Origin: nabla-finance (`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenMessaging** (`0x6ce9bf8cdab780416ad1fd87b318a077d2f50eac`, chain 137)
Origin: nabla-finance (`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenMessaging** (`0x2086f755a6d9254045c257ea3d382ef854849b0f`, chain 146)
Origin: nabla-finance (`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenMessaging** (`0x1502fa4be69d526124d453619276faccab275d3d`, chain 1329)
Origin: nabla-finance (`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenMessaging** (`0x41b491285a4f888f9f636cec8a363ab9770a0aef`, chain 5000)
Origin: nabla-finance (`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenMessaging** (`0x5634c4a5fed09819e3c46d86a965dd9447d86e47`, chain 8453)
Origin: nabla-finance (`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenMessaging** (`0x19cfce47ed54a88614648dc3f19a5980097007dd`, chain 42161)
Origin: nabla-finance (`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenMessaging** (`0x17e450be3ba9557f2378e20d64ad417e59ef9a34`, chain 43114)
Origin: nabla-finance (`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenMessaging** (`0x5f688f563dc16590e570f97b542fa87931af2fed`, chain 59144)
Origin: nabla-finance (`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x090194f1eedc134a680e3b488abb2d212dba8c01`, chain 14)
- UnnamedContract (`0x1502fa4be69d526124d453619276faccab275d3d`, chain 14)
- UnnamedContract (`0x1c10cc06dc6d35970d1d53b2a23c76ef370d4135`, chain 14)
- UnnamedContract (`0x45d417612e177672958dc0537c45a8f8d754ac2e`, chain 14)
- UnnamedContract (`0x711b5aafd4d0a5b7b863ca434a2678d086830d8e`, chain 14)
- UnnamedContract (`0x77c71633c34c3784ede189d74223122422492a0f`, chain 14)
- UnnamedContract (`0x8c1014b5936dd88baa5f4db0423c3003615e03a0`, chain 14)
- UnnamedContract (`0x8e8539e4ccd69123c623a106773f2b0cbbc58746`, chain 14)
- UnnamedContract (`0xcd4302d950e7e6606b6910cd232758b5ad423311`, chain 14)
- UnnamedContract (`0x06d538690af257da524f25d0cd52fd85b1c2173e`, chain 30)
- UnnamedContract (`0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03`, chain 30)
- UnnamedContract (`0x296f55f8fb28e498b858d0bcda06d955b2cb3f97`, chain 30)
- UnnamedContract (`0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590`, chain 30)
- UnnamedContract (`0x45a01e4e04f14f7a4a6702c74187c5f6222033cd`, chain 30)
- UnnamedContract (`0x45f1a95a4d3f3836523f5c83673c797f4d4d263b`, chain 30)
- UnnamedContract (`0x808d7c71ad2ba3fa531b068a2417c63106bc0949`, chain 30)
- UnnamedContract (`0x8731d54e9d02c286767d56ac03e8037c07e01e98`, chain 30)
- UnnamedContract (`0x9d1b1669c73b033dfe47ae5a0164ab96df25b944`, chain 30)
- UnnamedContract (`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`, chain 30)
- UnnamedContract (`0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398`, chain 30)
- UnnamedContract (`0x164a2de1bc5dc56f329909f7c97bae929cae557b`, chain 40)
- UnnamedContract (`0x2086f755a6d9254045c257ea3d382ef854849b0f`, chain 40)
- UnnamedContract (`0x3a1293bdb83bbbdd5ebf4fac96605ad2021bbc0f`, chain 40)
- UnnamedContract (`0x549943e04f40284185054145c6e4e9568c1d3241`, chain 40)
- UnnamedContract (`0x88853d410299bcbfe5fcc9eef93c03115e908279`, chain 40)
- UnnamedContract (`0xa272ffe20cffe769cdfc4b63088dcd2c82a2d8f9`, chain 40)
- UnnamedContract (`0xa4bbddefaee27cd778c4ced30c0535ec06a8502e`, chain 40)
- UnnamedContract (`0xa7f3e26df31abcb20a6fe6be35ddc60702a32455`, chain 40)
- UnnamedContract (`0xb0b2391a32e066fdf354ef7f4199300f920789f0`, chain 40)
- UnnamedContract (`0xbab93b7ad7fe8692a878b95a8e689423437cc500`, chain 40)
- UnnamedContract (`0xbba60da06c2c5424f03f7434542280fcad453d10`, chain 40)
- UnnamedContract (`0x06d538690af257da524f25d0cd52fd85b1c2173e`, chain 122)
- UnnamedContract (`0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03`, chain 122)
- UnnamedContract (`0x296f55f8fb28e498b858d0bcda06d955b2cb3f97`, chain 122)
- UnnamedContract (`0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590`, chain 122)
- UnnamedContract (`0x45a01e4e04f14f7a4a6702c74187c5f6222033cd`, chain 122)
- UnnamedContract (`0x45f1a95a4d3f3836523f5c83673c797f4d4d263b`, chain 122)
- UnnamedContract (`0x808d7c71ad2ba3fa531b068a2417c63106bc0949`, chain 122)
- UnnamedContract (`0x8731d54e9d02c286767d56ac03e8037c07e01e98`, chain 122)
- UnnamedContract (`0x9d1b1669c73b033dfe47ae5a0164ab96df25b944`, chain 122)
- UnnamedContract (`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`, chain 122)
- UnnamedContract (`0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398`, chain 122)
- UnnamedContract (`0x6d205337f45d6850c3c3006e28d5b52c8a432c35`, chain 130)
- UnnamedContract (`0xd9492653457a69e9f4987db43d7fa0112e620cb4`, chain 130)
- UnnamedContract (`0xe1ad845d93853fff44990ae0dcecd8575293681e`, chain 130)
- UnnamedContract (`0x06d538690af257da524f25d0cd52fd85b1c2173e`, chain 747)
- UnnamedContract (`0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03`, chain 747)
- UnnamedContract (`0x296f55f8fb28e498b858d0bcda06d955b2cb3f97`, chain 747)
- UnnamedContract (`0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590`, chain 747)
- UnnamedContract (`0x45a01e4e04f14f7a4a6702c74187c5f6222033cd`, chain 747)
- UnnamedContract (`0x45f1a95a4d3f3836523f5c83673c797f4d4d263b`, chain 747)
- UnnamedContract (`0x808d7c71ad2ba3fa531b068a2417c63106bc0949`, chain 747)
- UnnamedContract (`0x8731d54e9d02c286767d56ac03e8037c07e01e98`, chain 747)
- UnnamedContract (`0x9d1b1669c73b033dfe47ae5a0164ab96df25b944`, chain 747)
- UnnamedContract (`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`, chain 747)
- UnnamedContract (`0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398`, chain 747)
- UnnamedContract (`0x06d538690af257da524f25d0cd52fd85b1c2173e`, chain 1116)
- UnnamedContract (`0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03`, chain 1116)
- UnnamedContract (`0x296f55f8fb28e498b858d0bcda06d955b2cb3f97`, chain 1116)
- UnnamedContract (`0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590`, chain 1116)
- UnnamedContract (`0x45a01e4e04f14f7a4a6702c74187c5f6222033cd`, chain 1116)
- UnnamedContract (`0x45f1a95a4d3f3836523f5c83673c797f4d4d263b`, chain 1116)
- UnnamedContract (`0x693604e757ac7e2c4a8263594a18d69c35562341`, chain 1116)
- UnnamedContract (`0x808d7c71ad2ba3fa531b068a2417c63106bc0949`, chain 1116)
- UnnamedContract (`0x8731d54e9d02c286767d56ac03e8037c07e01e98`, chain 1116)
- UnnamedContract (`0x9d1b1669c73b033dfe47ae5a0164ab96df25b944`, chain 1116)
- UnnamedContract (`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`, chain 1116)
- UnnamedContract (`0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398`, chain 1116)
- UnnamedContract (`0x06d538690af257da524f25d0cd52fd85b1c2173e`, chain 1300)
- UnnamedContract (`0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03`, chain 1300)
- UnnamedContract (`0x296f55f8fb28e498b858d0bcda06d955b2cb3f97`, chain 1300)
- UnnamedContract (`0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590`, chain 1300)
- UnnamedContract (`0x45a01e4e04f14f7a4a6702c74187c5f6222033cd`, chain 1300)
- UnnamedContract (`0x45f1a95a4d3f3836523f5c83673c797f4d4d263b`, chain 1300)
- UnnamedContract (`0x808d7c71ad2ba3fa531b068a2417c63106bc0949`, chain 1300)
- UnnamedContract (`0x8731d54e9d02c286767d56ac03e8037c07e01e98`, chain 1300)
- UnnamedContract (`0x9d1b1669c73b033dfe47ae5a0164ab96df25b944`, chain 1300)
- UnnamedContract (`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`, chain 1300)
- UnnamedContract (`0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398`, chain 1300)
- UnnamedContract (`0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03`, chain 1480)
- UnnamedContract (`0x296f55f8fb28e498b858d0bcda06d955b2cb3f97`, chain 1480)
- UnnamedContract (`0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590`, chain 1480)
- UnnamedContract (`0x45a01e4e04f14f7a4a6702c74187c5f6222033cd`, chain 1480)
- UnnamedContract (`0x693604e757ac7e2c4a8263594a18d69c35562341`, chain 1480)
- UnnamedContract (`0x808d7c71ad2ba3fa531b068a2417c63106bc0949`, chain 1480)
- UnnamedContract (`0x8731d54e9d02c286767d56ac03e8037c07e01e98`, chain 1480)
- UnnamedContract (`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`, chain 1480)
- UnnamedContract (`0xb0d502e938ed5f4df2e681fe6e419ff29631d62b`, chain 1480)
- UnnamedContract (`0xc53e6d7018e2d10ebed643302567f8de752804fb`, chain 1480)
- UnnamedContract (`0xf2c0e57f48276112a596e141817d93be472ed6c5`, chain 1480)
- UnnamedContract (`0x164a2de1bc5dc56f329909f7c97bae929cae557b`, chain 1514)
- UnnamedContract (`0x2086f755a6d9254045c257ea3d382ef854849b0f`, chain 1514)
- UnnamedContract (`0x3a1293bdb83bbbdd5ebf4fac96605ad2021bbc0f`, chain 1514)
- UnnamedContract (`0x549943e04f40284185054145c6e4e9568c1d3241`, chain 1514)
- UnnamedContract (`0x88853d410299bcbfe5fcc9eef93c03115e908279`, chain 1514)
- UnnamedContract (`0xa272ffe20cffe769cdfc4b63088dcd2c82a2d8f9`, chain 1514)
- UnnamedContract (`0xa4bbddefaee27cd778c4ced30c0535ec06a8502e`, chain 1514)
- UnnamedContract (`0xa7f3e26df31abcb20a6fe6be35ddc60702a32455`, chain 1514)
- UnnamedContract (`0xb0b2391a32e066fdf354ef7f4199300f920789f0`, chain 1514)
- UnnamedContract (`0xbab93b7ad7fe8692a878b95a8e689423437cc500`, chain 1514)
- UnnamedContract (`0xbba60da06c2c5424f03f7434542280fcad453d10`, chain 1514)
- UnnamedContract (`0x0b38e83b86d491735feaa0a791f65c2b99535396`, chain 1625)
- UnnamedContract (`0x0db9afb4c33be43a0a0e396fd1383b4ea97ab10a`, chain 1625)
- UnnamedContract (`0x17d65bf79e77b6ab21d8a0afed3bc8657d8ee0b2`, chain 1625)
- UnnamedContract (`0x1c10cc06dc6d35970d1d53b2a23c76ef370d4135`, chain 1625)
- UnnamedContract (`0x45d417612e177672958dc0537c45a8f8d754ac2e`, chain 1625)
- UnnamedContract (`0x77c71633c34c3784ede189d74223122422492a0f`, chain 1625)
- UnnamedContract (`0x9c2dc7377717603eb92b2655c5f2e7997a4945bd`, chain 1625)
- UnnamedContract (`0xc1b8045a6ef2934cf0f78b0dbd489969fa9be7e4`, chain 1625)
- UnnamedContract (`0xf6f832466cd6c21967e0d954109403f36bc8ceaa`, chain 1625)
- UnnamedContract (`0x06d538690af257da524f25d0cd52fd85b1c2173e`, chain 1868)
- UnnamedContract (`0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03`, chain 1868)
- UnnamedContract (`0x296f55f8fb28e498b858d0bcda06d955b2cb3f97`, chain 1868)
- UnnamedContract (`0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590`, chain 1868)
- UnnamedContract (`0x45a01e4e04f14f7a4a6702c74187c5f6222033cd`, chain 1868)
- UnnamedContract (`0x45f1a95a4d3f3836523f5c83673c797f4d4d263b`, chain 1868)
- UnnamedContract (`0x693604e757ac7e2c4a8263594a18d69c35562341`, chain 1868)
- UnnamedContract (`0x808d7c71ad2ba3fa531b068a2417c63106bc0949`, chain 1868)
- UnnamedContract (`0x8731d54e9d02c286767d56ac03e8037c07e01e98`, chain 1868)
- UnnamedContract (`0x9d1b1669c73b033dfe47ae5a0164ab96df25b944`, chain 1868)
- UnnamedContract (`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`, chain 1868)
- UnnamedContract (`0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398`, chain 1868)
- UnnamedContract (`0x06d538690af257da524f25d0cd52fd85b1c2173e`, chain 1890)
- UnnamedContract (`0x06eb48763f117c7be887296cdcdfad2e4092739c`, chain 1890)
- UnnamedContract (`0x3052a0f6ab15b4ae1df39962d5ddefaca86dab47`, chain 1890)
- UnnamedContract (`0x4a364f8c717caad9a442737eb7b8a55cc6cf18d8`, chain 1890)
- UnnamedContract (`0x53bf833a5d6c4dda888f69c22c88c9f356a41614`, chain 1890)
- UnnamedContract (`0x5c1a97c144a97e9b370f833a06c70ca8f2f30de5`, chain 1890)
- UnnamedContract (`0x6694340fc020c5e6b96567843da2df01b2ce1eb6`, chain 1890)
- UnnamedContract (`0x693604e757ac7e2c4a8263594a18d69c35562341`, chain 1890)
- UnnamedContract (`0x6d5e6657ef23f3636af84ee9db5b51b4ad2cf129`, chain 1890)
- UnnamedContract (`0x701a95707a0290ac8b90b3719e8ee5b210360883`, chain 1890)
- UnnamedContract (`0x8731d54e9d02c286767d56ac03e8037c07e01e98`, chain 1890)
- UnnamedContract (`0x8ee21165ecb7562ba716c9549c1de751282b9b33`, chain 1890)
- UnnamedContract (`0xb0d502e938ed5f4df2e681fe6e419ff29631d62b`, chain 1890)
- UnnamedContract (`0xe7ec689f432f29383f217e36e680b5c855051f25`, chain 1890)
- UnnamedContract (`0x10e28ba4d7fc9cf39f34e20bbc5c58694b2f1a92`, chain 2222)
- UnnamedContract (`0x62207a4d054376052bfcede2c00d113e97d4d247`, chain 2222)
- UnnamedContract (`0x6b73d3cbbb278ce2e8698e983aeccdd94dc4594b`, chain 2222)
- UnnamedContract (`0xa76cd3a43751090c40a35c37b38aa06973cc6184`, chain 2222)
- UnnamedContract (`0xb7a05a3a687ef09cc70e3f98b5f6a62f32e3ae58`, chain 2222)
- UnnamedContract (`0x164a2de1bc5dc56f329909f7c97bae929cae557b`, chain 2345)
- UnnamedContract (`0x2d93fbce4cffc15dd385a80b3f4cc1d4e76c38b3`, chain 2345)
- UnnamedContract (`0x370dc69d5b49e6844c867efa752b419eac49aba8`, chain 2345)
- UnnamedContract (`0x3a1293bdb83bbbdd5ebf4fac96605ad2021bbc0f`, chain 2345)
- UnnamedContract (`0x4f5f42799d1e01662b629ede265baea223e9f9c7`, chain 2345)
- UnnamedContract (`0x549943e04f40284185054145c6e4e9568c1d3241`, chain 2345)
- UnnamedContract (`0x87c367a0522aeb8ad9f9660d2250f1eac403c70f`, chain 2345)
- UnnamedContract (`0x88853d410299bcbfe5fcc9eef93c03115e908279`, chain 2345)
- UnnamedContract (`0xa7f3e26df31abcb20a6fe6be35ddc60702a32455`, chain 2345)
- UnnamedContract (`0xb0b2391a32e066fdf354ef7f4199300f920789f0`, chain 2345)
- UnnamedContract (`0xbba60da06c2c5424f03f7434542280fcad453d10`, chain 2345)
- UnnamedContract (`0x183d6b82680189bb4db826f739cdc9527d467b25`, chain 2741)
- UnnamedContract (`0x221f0e1280ec657503ca55c708105f1e1529527d`, chain 2741)
- UnnamedContract (`0x583548d69d63f4d56a75b78c55a0ce1584d29bbe`, chain 2741)
- UnnamedContract (`0x5f9c011dff285e76fa64c14301fd6493a2f3b671`, chain 2741)
- UnnamedContract (`0x79f51a560298740c764a487655f8fb94c42ab4fd`, chain 2741)
- UnnamedContract (`0x91a5fe991ccb876d22847967ced24dcd7a426e0e`, chain 2741)
- UnnamedContract (`0x943c484278b8be05d119dfc73cfaa4c9d8f11a76`, chain 2741)
- UnnamedContract (`0x945320436abd33d21c0d7d79290627293b3cc7bd`, chain 2741)
- UnnamedContract (`0x953519953fe196a0c8a031157c751fc732ea5599`, chain 2741)
- UnnamedContract (`0x9c7007501faea5011d2e04cbdd4f65b8890a3f40`, chain 2741)
- UnnamedContract (`0xaff6d1e61feda42fefb77e70084e38f68b9a7646`, chain 2741)
- UnnamedContract (`0xbc6de829570780d1248adb5ac4ff35b92b293e97`, chain 2741)
- UnnamedContract (`0xc0bdf9152e5fe7e29ac2de8072fa42a3565df751`, chain 2741)
- UnnamedContract (`0xdd46bf5693cdd732d09091794efcf3ba62920157`, chain 2741)
- UnnamedContract (`0x07cd5a2702394e512aaae54f7a250ea0576e5e8c`, chain 3338)
- UnnamedContract (`0x352d8275aae3e0c2404d9f68f6cee084b5beb3dd`, chain 3338)
- UnnamedContract (`0x4cc10835f7e5d2eec2e1c2c0afd239b41ac29e32`, chain 3338)
- UnnamedContract (`0x53bf833a5d6c4dda888f69c22c88c9f356a41614`, chain 3338)
- UnnamedContract (`0x55bdb4164d28fbaf0898e0ef14a589ac09ac9970`, chain 3338)
- UnnamedContract (`0x5c1a97c144a97e9b370f833a06c70ca8f2f30de5`, chain 3338)
- UnnamedContract (`0x6694340fc020c5e6b96567843da2df01b2ce1eb6`, chain 3338)
- UnnamedContract (`0x6d5e6657ef23f3636af84ee9db5b51b4ad2cf129`, chain 3338)
- UnnamedContract (`0x8943cb63eef1b3dba5f455bfb704477436e31c1a`, chain 3338)
- UnnamedContract (`0xe7ec689f432f29383f217e36e680b5c855051f25`, chain 3338)
- UnnamedContract (`0xf2c0e57f48276112a596e141817d93be472ed6c5`, chain 3338)
- UnnamedContract (`0x118b37e3f8dc911bbc707abc8a1980f8357faf2b`, chain 3637)
- UnnamedContract (`0x3292c42e8e9ab3c6a12cfda556bbcb6f113b1e28`, chain 3637)
- UnnamedContract (`0x3a1e3062414165a15d4cae4a6cbff6d83f60be55`, chain 3637)
- UnnamedContract (`0x5e37084162504da9aaa8f441d5f9360d1fe9ad40`, chain 3637)
- UnnamedContract (`0x714533808f5c4a8c3734998e7c53f477cc50d9ce`, chain 3637)
- UnnamedContract (`0xad41342a260b6b147d8cc4184326cb1140c1593e`, chain 3637)
- UnnamedContract (`0xb0987cc8b9e2521e2234da21be9d01afb0544b6c`, chain 3637)
- UnnamedContract (`0xdf43c9242b61d8a048a937063662d98da126a886`, chain 3637)
- UnnamedContract (`0xf785a6bcc6a2d5522d27a1fd11099a84e3710bb2`, chain 3637)
- UnnamedContract (`0x01500764dd66079eab0c2881149bdf93f9cf394d`, chain 6900)
- UnnamedContract (`0x08c49257767c1f92634a9cdbf0663af0356a472a`, chain 6900)
- UnnamedContract (`0x108f4c02c9fcdf862e5f5131054c50f13703f916`, chain 6900)
- UnnamedContract (`0x12a272a581fee5577a5dfa371afeb4b2f3a8c2f8`, chain 6900)
- UnnamedContract (`0x28bec7e30e6faee657a03e19bf1128aad7632a00`, chain 6900)
- UnnamedContract (`0x6bebd4bddff9478cf8dddfc54278f805be9c51b6`, chain 6900)
- UnnamedContract (`0x851c9d74bf5cfaeb4a0082a55a65a8f2718b337f`, chain 6900)
- UnnamedContract (`0xc16977205c53cd854136031bd2128f75d6ff63c9`, chain 6900)
- UnnamedContract (`0xc7616b08ffec8b4ba47188bfd1a814316f3e3d79`, chain 6900)
- UnnamedContract (`0xcc0587aebda397146cc828b445db130a94486e74`, chain 6900)
- UnnamedContract (`0xcda5b77e2e2268d9e09c874c1b9a4c3f07b37555`, chain 6900)
- UnnamedContract (`0x01a7c805cc47abdb254cd8aad29de5e447f59224`, chain 8217)
- UnnamedContract (`0x16f3f98d82d965988e6853681fd578f4d719a1c0`, chain 8217)
- UnnamedContract (`0x259ef40ebe42073bd70966519b53791f03a9212f`, chain 8217)
- UnnamedContract (`0x55acee547df909cf844e32dd66ee55a6f81dc71b`, chain 8217)
- UnnamedContract (`0x6effa1afe190a652a8204d318fec03d3dd9402d2`, chain 8217)
- UnnamedContract (`0x8619ba1b324e099cb2227060c4bc5bdee14456c6`, chain 8217)
- UnnamedContract (`0x8d92105ae654f494ce10b3b3e4c58186e3e0da00`, chain 8217)
- UnnamedContract (`0xb83ab1ff56ccd2b9e9914c68c182135c3a7ecfcd`, chain 8217)
- UnnamedContract (`0xbb4957e44401a31ed81cab33539d9e8993fa13ce`, chain 8217)
- UnnamedContract (`0x0db9afb4c33be43a0a0e396fd1383b4ea97ab10a`, chain 8822)
- UnnamedContract (`0x160345fc359604fc6e70e3c5facbde5f7a9342d8`, chain 8822)
- UnnamedContract (`0x1c10cc06dc6d35970d1d53b2a23c76ef370d4135`, chain 8822)
- UnnamedContract (`0x711b5aafd4d0a5b7b863ca434a2678d086830d8e`, chain 8822)
- UnnamedContract (`0x77c71633c34c3784ede189d74223122422492a0f`, chain 8822)
- UnnamedContract (`0x8c1014b5936dd88baa5f4db0423c3003615e03a0`, chain 8822)
- UnnamedContract (`0x8e8539e4ccd69123c623a106773f2b0cbbc58746`, chain 8822)
- UnnamedContract (`0x9c2dc7377717603eb92b2655c5f2e7997a4945bd`, chain 8822)
- UnnamedContract (`0xcd4302d950e7e6606b6910cd232758b5ad423311`, chain 8822)
- UnnamedContract (`0x0ceb237e109ee22374a567c6b09f373c73fa4cbb`, chain 9745)
- UnnamedContract (`0x102d758f688a4c1c5a80b116bd945d4455460282`, chain 9745)
- UnnamedContract (`0x1343994e136b6b15cbb2eb4075e0e73b8c4ebce0`, chain 9745)
- UnnamedContract (`0x43f2376d5d03553ae72f4a8093bbe9de4336eb08`, chain 9745)
- UnnamedContract (`0x9895d81bb462a195b4922ed7de0e3acd007c32cb`, chain 9745)
- UnnamedContract (`0xca367694cdac8f152e33683bb36cc9d6a73f1ef2`, chain 9745)
- UnnamedContract (`0xda6087e69c51e7d31b6dbad276a3c44703dfdcad`, chain 9745)
- UnnamedContract (`0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03`, chain 43111)
- UnnamedContract (`0x296f55f8fb28e498b858d0bcda06d955b2cb3f97`, chain 43111)
- UnnamedContract (`0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590`, chain 43111)
- UnnamedContract (`0x45a01e4e04f14f7a4a6702c74187c5f6222033cd`, chain 43111)
- UnnamedContract (`0x45f1a95a4d3f3836523f5c83673c797f4d4d263b`, chain 43111)
- UnnamedContract (`0x808d7c71ad2ba3fa531b068a2417c63106bc0949`, chain 43111)
- UnnamedContract (`0x8731d54e9d02c286767d56ac03e8037c07e01e98`, chain 43111)
- UnnamedContract (`0x8943cb63eef1b3dba5f455bfb704477436e31c1a`, chain 43111)
- UnnamedContract (`0x9d1b1669c73b033dfe47ae5a0164ab96df25b944`, chain 43111)
- UnnamedContract (`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`, chain 43111)
- UnnamedContract (`0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398`, chain 43111)
- UnnamedContract (`0xc53e6d7018e2d10ebed643302567f8de752804fb`, chain 43111)
- UnnamedContract (`0xe4111e53f1b59bbee7dd88394ee995f058b404ea`, chain 43111)
- UnnamedContract (`0xf2c0e57f48276112a596e141817d93be472ed6c5`, chain 43111)
- UnnamedContract (`0x22bdf9633f3e679785638db690b85dc0dc8b35b8`, chain 43114)
- UnnamedContract (`0x6ce9bf8cdab780416ad1fd87b318a077d2f50eac`, chain 43114)
- UnnamedContract (`0x8db623d439c8c4dfa1ca94e4cd3eb8b3aaff8331`, chain 43114)
- UnnamedContract (`0xc2b638cb5042c1b3c5d5c969361fb50569840583`, chain 43114)
- UnnamedContract (`0xdfc47dcef7e8f9ab19a1b8af3eecf000c7ea0b80`, chain 43114)
- UnnamedContract (`0x06eb48763f117c7be887296cdcdfad2e4092739c`, chain 55244)
- UnnamedContract (`0x4a364f8c717caad9a442737eb7b8a55cc6cf18d8`, chain 55244)
- UnnamedContract (`0x5c1a97c144a97e9b370f833a06c70ca8f2f30de5`, chain 55244)
- UnnamedContract (`0x8ee21165ecb7562ba716c9549c1de751282b9b33`, chain 55244)
- UnnamedContract (`0xafb39384cd5b7d84ed4d569b7cec294eb1dc5ee5`, chain 55244)
- UnnamedContract (`0xe7ec689f432f29383f217e36e680b5c855051f25`, chain 55244)
- UnnamedContract (`0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590`, chain 57073)
- UnnamedContract (`0x45a01e4e04f14f7a4a6702c74187c5f6222033cd`, chain 57073)
- UnnamedContract (`0x45f1a95a4d3f3836523f5c83673c797f4d4d263b`, chain 57073)
- UnnamedContract (`0x9d1b1669c73b033dfe47ae5a0164ab96df25b944`, chain 57073)
- UnnamedContract (`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`, chain 57073)
- UnnamedContract (`0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398`, chain 57073)
- UnnamedContract (`0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590`, chain 81224)
- UnnamedContract (`0x45a01e4e04f14f7a4a6702c74187c5f6222033cd`, chain 81224)
- UnnamedContract (`0x45f1a95a4d3f3836523f5c83673c797f4d4d263b`, chain 81224)
- UnnamedContract (`0x9d1b1669c73b033dfe47ae5a0164ab96df25b944`, chain 81224)
- UnnamedContract (`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`, chain 81224)
- UnnamedContract (`0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398`, chain 81224)
- UnnamedContract (`0x193564d8012a3fe2a2d886e5caeb8920af85cc85`, chain 98866)
- UnnamedContract (`0x2d870d17e640ed6c057afbaa0df56b8dea5cf2f6`, chain 98866)
- UnnamedContract (`0x3d07d5059004f494a5f075d23cb383359e5ac412`, chain 98866)
- UnnamedContract (`0x45d2cf18fd16090d180c23c6eaf9cd8541dbaadb`, chain 98866)
- UnnamedContract (`0x4683ce822272cd66cea73f5f1f9f5cbcaef4f066`, chain 98866)
- UnnamedContract (`0x5e3291174f9c07a9a73debe08954617a4d95e253`, chain 98866)
- UnnamedContract (`0x9909fa99b7f7ee7f1c0cbf133f411d43083631e6`, chain 98866)
- UnnamedContract (`0xabd218304aad937eea0822c598ffce59f4409e61`, chain 98866)
- UnnamedContract (`0xbbfab55b6c2ee954610cf92a750db332ba97dd60`, chain 98866)
- UnnamedContract (`0xca59ca09e5602fae8b629dee83ffa819741f14be`, chain 98866)
- UnnamedContract (`0xf26d57bbe1d99561b13003783b5e040b71adcb14`, chain 98866)
- UnnamedContract (`0x06d538690af257da524f25d0cd52fd85b1c2173e`, chain 666666666)
- UnnamedContract (`0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03`, chain 666666666)
- UnnamedContract (`0x296f55f8fb28e498b858d0bcda06d955b2cb3f97`, chain 666666666)
- UnnamedContract (`0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590`, chain 666666666)
- UnnamedContract (`0x45a01e4e04f14f7a4a6702c74187c5f6222033cd`, chain 666666666)
- UnnamedContract (`0x45f1a95a4d3f3836523f5c83673c797f4d4d263b`, chain 666666666)
- UnnamedContract (`0x808d7c71ad2ba3fa531b068a2417c63106bc0949`, chain 666666666)
- UnnamedContract (`0x8731d54e9d02c286767d56ac03e8037c07e01e98`, chain 666666666)
- UnnamedContract (`0x9d1b1669c73b033dfe47ae5a0164ab96df25b944`, chain 666666666)
- UnnamedContract (`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`, chain 666666666)
- UnnamedContract (`0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398`, chain 666666666)
- CreditMessaging (`0xef9ec60e186c8a1a0439af0aedb6deb9f34a2c88`, chain 50)
- CreditMessaging (`0xe1ad845d93853fff44990ae0dcecd8575293681e`, chain 100)
- CreditMessaging (`0xaf368c91793cb22739386dfcbbb2f1a9e4bcbebf`, chain 130)
- CreditMessaging (`0x3a1293bdb83bbbdd5ebf4fac96605ad2021bbc0f`, chain 146)
- CreditMessaging (`0x99e799cbd972362a84145d98498db4430a66a734`, chain 33139)
- CreditMessaging (`0x45a01e4e04f14f7a4a6702c74187c5f6222033cd`, chain 80094)
- FeeLibV1 (`0x3e368b6c95c6fefb7a16dcc0d756389f3c658a06`, chain 1)
- FeeLibV1 (`0x52b35406cb2fb5e0038edecfc129a152a1f74087`, chain 1)
- FeeLibV1 (`0x6d5521f46b2cba9443fefc09cbac3b15ae0f73eb`, chain 1)
- FeeLibV1 (`0xe171afcd1e0394b3312e68ca823d5bc87f3db311`, chain 1)
- FeeLibV1 (`0x1f605162282570dfa6255d27895587f4117f52fa`, chain 10)
- FeeLibV1 (`0x3da4f8e456ac648c489c286b99ca37b666be7c4c`, chain 10)
- FeeLibV1 (`0x80f755e3091b2ad99c08da8d13e9c7635c1b8161`, chain 10)
- FeeLibV1 (`0x29ee6138dd4c9815f46d34a4a1ed48f46758a402`, chain 50)
- FeeLibV1 (`0xa628bb551a3b98d4d3fd9c4c329005307b9557e9`, chain 50)
- FeeLibV1 (`0xd34e23b4509ff894fa939dc29bac987b7a5465c0`, chain 50)
- FeeLibV1 (`0x622244fff1328586d0754d67cc6ab77e7ab38b7d`, chain 56)
- FeeLibV1 (`0xdd002227d9bc27f10066ed9a17be89c43bcafc31`, chain 56)
- FeeLibV1 (`0x6d205337f45d6850c3c3006e28d5b52c8a432c35`, chain 100)
- FeeLibV1 (`0xd9492653457a69e9f4987db43d7fa0112e620cb4`, chain 100)
- FeeLibV1 (`0x3fc69cc4a842838bcdc9499178740226062b14e4`, chain 137)
- FeeLibV1 (`0x4e422b0acb2bd7e3ac70b5c0e5eb806e86a94038`, chain 137)
- FeeLibV1 (`0x88853d410299bcbfe5fcc9eef93c03115e908279`, chain 146)
- FeeLibV1 (`0x19cfce47ed54a88614648dc3f19a5980097007dd`, chain 1088)
- FeeLibV1 (`0xce8cca271ebc0533920c83d39f417ed6a0abb7d0`, chain 1088)
- FeeLibV1 (`0xe8cdf27acd73a434d661c84887215f7598e7d0d3`, chain 1088)
- FeeLibV1 (`0x711b5aafd4d0a5b7b863ca434a2678d086830d8e`, chain 1329)
- FeeLibV1 (`0xcd4302d950e7e6606b6910cd232758b5ad423311`, chain 1329)
- FeeLibV1 (`0xde48600aa18ae707f5d57e0faafec7c118abaeb2`, chain 1329)
- FeeLibV1 (`0x288968fff40543f168eaf29a54d5c0affd3c8df7`, chain 5000)
- FeeLibV1 (`0x2bc3141aaea1d84bcd557eeb543253fd9685c0c4`, chain 5000)
- FeeLibV1 (`0x6ec3efd27d8b1070fe96910ef416d54e845045c9`, chain 5000)
- FeeLibV1 (`0xa81274afac523d639dbca2c32c1470f1600ccebe`, chain 5000)
- FeeLibV1 (`0x08ed1d79d509a6f1020685535028ae60c144441e`, chain 8453)
- FeeLibV1 (`0x17e450be3ba9557f2378e20d64ad417e59ef9a34`, chain 8453)
- FeeLibV1 (`0x60f2a61f07a51874c37ad2ed741727ccfcdffd52`, chain 33139)
- FeeLibV1 (`0x897aaff731077c228d6ff6f2c9e7cfd8e985f29d`, chain 33139)
- FeeLibV1 (`0xb0b2391a32e066fdf354ef7f4199300f920789f0`, chain 33139)
- FeeLibV1 (`0x1f605162282570dfa6255d27895587f4117f52fa`, chain 42161)
- FeeLibV1 (`0x80f755e3091b2ad99c08da8d13e9c7635c1b8161`, chain 42161)
- FeeLibV1 (`0xda82a31df339bfdf0123661134b4db63cb1706f5`, chain 42161)
- FeeLibV1 (`0x6e3d884c96d640526f273c61dfcf08915ebd7e2b`, chain 59144)
- FeeLibV1 (`0x808d7c71ad2ba3fa531b068a2417c63106bc0949`, chain 80094)
- FeeLibV1 (`0x9d1b1669c73b033dfe47ae5a0164ab96df25b944`, chain 80094)
- FeeLibV1 (`0x711b5aafd4d0a5b7b863ca434a2678d086830d8e`, chain 167000)
- FeeLibV1 (`0xcd4302d950e7e6606b6910cd232758b5ad423311`, chain 167000)
- FeeLibV1 (`0x2a6c43e0dbdcde23d40c82f45682bc6d8a6db219`, chain 534352)
- FeeLibV1 (`0x503c5cfea3477e0a576c8cf5354023854b7a06ff`, chain 534352)
- FeeLibV1 (`0x6e3d884c96d640526f273c61dfcf08915ebd7e2b`, chain 1313161554)
- OFTTokenERC20 (`0xa7348290de5cf01772479c48d50dec791c3fc212`, chain 50)
- OFTTokenERC20 (`0x160345fc359604fc6e70e3c5facbde5f7a9342d8`, chain 1329)
- OFTTokenERC20 (`0xf4d9235269a96aadafc9adae454a0618ebe37949`, chain 33139)
- OFTTokenERC20 (`0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590`, chain 80094)
- OFTWrapper (`0x936ab8c674bcb567cd5deb85d8a216494704e9d8`, chain 50)
- OFTWrapper (`0x824d8fcdc36e81618377d140bec12c3b7e4e4cba`, chain 100)
- OFTWrapper (`0x2d93fbce4cffc15dd385a80b3f4cc1d4e76c38b3`, chain 146)
- OFTWrapper (`0xc6bc407706b7140ee8eef2f86f9504651b63e7f9`, chain 33139)
- OFTWrapper (`0x8731d54e9d02c286767d56ac03e8037c07e01e98`, chain 80094)
- RewardLib (`0x549943e04f40284185054145c6e4e9568c1d3241`, chain 146)
- RewardRegistryLib (`0xb0b2391a32e066fdf354ef7f4199300f920789f0`, chain 146)
- StargateMultiRewarder (`0x5871a7f88b0f3f5143bf599fd45f8c0dc237e881`, chain 1)
- StargateMultiRewarder (`0x146c8e409c113ed87c6183f4d25c50251dffbb3a`, chain 10)
- StargateMultiRewarder (`0x68d7877b16002ad34836ba55416bca9b92b55589`, chain 56)
- StargateMultiRewarder (`0xd240a859efc77b7455ad1b1402357784a2d72a1b`, chain 137)
- StargateMultiRewarder (`0x164a2de1bc5dc56f329909f7c97bae929cae557b`, chain 146)
- StargateMultiRewarder (`0x1f605162282570dfa6255d27895587f4117f52fa`, chain 1088)
- StargateMultiRewarder (`0xd69a3d88438f042a5a0b995b970f78fc8120ed67`, chain 1329)
- StargateMultiRewarder (`0x0184857631ddb3e9e230bca303f0ab1e516fc0c8`, chain 5000)
- StargateMultiRewarder (`0x9aa02d4fae7f58b8e8f34c66e756cc734dac7fe4`, chain 8453)
- StargateMultiRewarder (`0x957b12606690c7692ef92bb5c34a0e63baed99c7`, chain 42161)
- StargateMultiRewarder (`0xe89ca5c58e2978c031f7796ca8580bc88ea0b3dd`, chain 59144)
- StargateMultiRewarder (`0x4dcbfc0249e8d5032f89d6461218a9d2efff5125`, chain 534352)
- StargateMultiRewarder (`0xe89ca5c58e2978c031f7796ca8580bc88ea0b3dd`, chain 1313161554)
- StargateOFT (`0xa4272ad93ac5d2ff048dd6419c88eb4c1002ec6b`, chain 50)
- StargateOFT (`0xb0d27478a40223e427697da523c6a3daf29aaffb`, chain 50)
- StargateOFT (`0x5c386d85b1b82fd9db681b9176c8a4248bb6345b`, chain 1329)
- StargateOFT (`0x28e0f0eed8d6a6a96033feee8b2d7f32eb5ccc48`, chain 33139)
- StargateOFT (`0xeb8d955d8ae221e5b502851ddd78e6c4498db4f6`, chain 33139)
- StargateOFT (`0x45f1a95a4d3f3836523f5c83673c797f4d4d263b`, chain 80094)
- StargateOFT (`0x1c10cc06dc6d35970d1d53b2a23c76ef370d4135`, chain 167000)
- StargateOFTUSDC (`0x8e2e38711080bf8aab9c74f434d2bae70e67ae44`, chain 50)
- StargateOFTUSDC (`0x2086f755a6d9254045c257ea3d382ef854849b0f`, chain 33139)
- StargateOFTUSDC (`0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398`, chain 80094)
- StargateOFTUSDC (`0x77c71633c34c3784ede189d74223122422492a0f`, chain 167000)
- StargatePool (`0x268ca24daeff1fac2ed883c598200ccbb79e931d`, chain 1)
- StargatePool (`0xe9aba835f813ca05e50a6c0ce65d0d74390f7de7`, chain 100)
- StargatePool (`0x36ed193dc7160d3858ec250e69d12b03ca087d08`, chain 1088)
- StargatePool (`0x4c1d3fc3fc3c177c3b633427c2f769276c547463`, chain 5000)
- StargatePool (`0xf7628d84a2bbd9bb9c8e686ac95bb5d55169f3f1`, chain 5000)
- StargatePoolMigratable (`0x933597a323eb81cae705c5bc29985172fd5a3973`, chain 1)
- StargatePoolMigratable (`0x19cfce47ed54a88614648dc3f19a5980097007dd`, chain 10)
- StargatePoolMigratable (`0x138eb30f73bc423c6455c53df6d89cb01d9ebc63`, chain 56)
- StargatePoolMigratable (`0xd47b03ee6d86cf251ee7860fb2acf9f91b9fd4d7`, chain 137)
- StargatePoolMigratable (`0x4dcbfc0249e8d5032f89d6461218a9d2efff5125`, chain 1088)
- StargatePoolMigratable (`0x0db9afb4c33be43a0a0e396fd1383b4ea97ab10a`, chain 1329)
- StargatePoolMigratable (`0xb715b85682b731db9d5063187c450095c91c57fc`, chain 5000)
- StargatePoolMigratable (`0xce8cca271ebc0533920c83d39f417ed6a0abb7d0`, chain 42161)
- StargatePoolMigratable (`0x12dc9256acc9895b076f6638d628382881e62cee`, chain 43114)
- StargatePoolNative (`0x77b2043768d28e9c9ab44e1abfc95944bce57931`, chain 1)
- StargatePoolNative (`0xe8cdf27acd73a434d661c84887215f7598e7d0d3`, chain 10)
- StargatePoolNative (`0xe9aba835f813ca05e50a6c0ce65d0d74390f7de7`, chain 130)
- StargatePoolNative (`0xdc181bd607330aeebef6ea62e03e5e1fb4b6f7c7`, chain 8453)
- StargatePoolNative (`0xa45b5130f36cdca45667738e2a258ab09f4a5f7f`, chain 42161)
- StargatePoolNative (`0x81f6138153d473e8c5ecebd3dc8cd4903506b075`, chain 59144)
- StargatePoolNative (`0xc2b638cb5042c1b3c5d5c969361fb50569840583`, chain 534352)
- StargatePoolUSDC (`0xc026395860db2d07ee33e05fe50ed7bd583189c7`, chain 1)
- StargatePoolUSDC (`0xce8cca271ebc0533920c83d39f417ed6a0abb7d0`, chain 10)
- StargatePoolUSDC (`0x962bd449e630b0d928f308ce63f1a21f02576057`, chain 56)
- StargatePoolUSDC (`0xb1eead6959cb5bb9b20417d6689922523b2b86c3`, chain 100)
- StargatePoolUSDC (`0x9aa02d4fae7f58b8e8f34c66e756cc734dac7fe4`, chain 137)
- StargatePoolUSDC (`0xa272ffe20cffe769cdfc4b63088dcd2c82a2d8f9`, chain 146)
- StargatePoolUSDC (`0x45d417612e177672958dc0537c45a8f8d754ac2e`, chain 1329)
- StargatePoolUSDC (`0xac290ad4e0c891fdc295ca4f0a6214cf6dc6acdc`, chain 5000)
- StargatePoolUSDC (`0x27a16dc786820b16e5c9028b75b99f6f604b5d26`, chain 8453)
- StargatePoolUSDC (`0xe8cdf27acd73a434d661c84887215f7598e7d0d3`, chain 42161)
- StargatePoolUSDC (`0x5634c4a5fed09819e3c46d86a965dd9447d86e47`, chain 43114)
- StargatePoolUSDC (`0x3fc69cc4a842838bcdc9499178740226062b14e4`, chain 534352)
- StargatePoolUSDC (`0x81f6138153d473e8c5ecebd3dc8cd4903506b075`, chain 1313161554)
- StargateStaking (`0xff551feddbedc0aee764139ccd9cb644bb04a6bd`, chain 1)
- StargateStaking (`0xfbb5a71025bef1a8166c9bcb904a120aa17d6443`, chain 10)
- StargateStaking (`0x26727c78b0209d9e787b2f9ac8f0238b122a3098`, chain 56)
- StargateStaking (`0x4694900bdba99edf07a2e46c4093f88f9106a90d`, chain 137)
- StargateStaking (`0xbba60da06c2c5424f03f7434542280fcad453d10`, chain 146)
- StargateStaking (`0xf1fcb4cbd57b67d683972a59b6a7b1e2e8bf27e6`, chain 1088)
- StargateStaking (`0x8c1014b5936dd88baa5f4db0423c3003615e03a0`, chain 1329)
- StargateStaking (`0x02dc1042e623a8677b002981164ccc05d25d486a`, chain 5000)
- StargateStaking (`0xdfc47dcef7e8f9ab19a1b8af3eecf000c7ea0b80`, chain 8453)
- StargateStaking (`0x3da4f8e456ac648c489c286b99ca37b666be7c4c`, chain 42161)
- StargateStaking (`0x25bbf59ef9246dc65bfac8385d55c5e524a7b9ea`, chain 59144)
- StargateStaking (`0xd240a859efc77b7455ad1b1402357784a2d72a1b`, chain 534352)
- StargateStaking (`0x25bbf59ef9246dc65bfac8385d55c5e524a7b9ea`, chain 1313161554)
- TokenMessaging (`0x2761c39102bcf7fc6365580d94cd1882f9cc2650`, chain 50)
- TokenMessaging (`0xb1eead6959cb5bb9b20417d6689922523b2b86c3`, chain 130)
- TokenMessaging (`0xcbe78230cca58b9ef4c3c5d1bc0d7e4b3206588a`, chain 1088)
- TokenMessaging (`0xbe574b6219c6d985d08712e90c21a88fd55f1ae8`, chain 33139)
- TokenMessaging (`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`, chain 80094)
- TokenMessaging (`0x45d417612e177672958dc0537c45a8f8d754ac2e`, chain 167000)
- TokenMessaging (`0x4e422b0acb2bd7e3ac70b5c0e5eb806e86a94038`, chain 534352)
- TokenMessaging (`0x5f688f563dc16590e570f97b542fa87931af2fed`, chain 1313161554)
- Treasurer (`0x1041d127b2d4bc700f0f563883bc689502606918`, chain 1)
- Treasurer (`0x644abb1e17291b4403966119d15ab081e4a487e9`, chain 10)
- Treasurer (`0x67b302e35aef5eee8c32d934f5856869ef428330`, chain 50)
- Treasurer (`0x0a6a15964fee494a881338d65940430797f0d97c`, chain 56)
- Treasurer (`0xf1815bd50389c46847f0bda824ec8da914045d14`, chain 100)
- Treasurer (`0x36ed193dc7160d3858ec250e69d12b03ca087d08`, chain 137)
- Treasurer (`0xa7f3e26df31abcb20a6fe6be35ddc60702a32455`, chain 146)
- Treasurer (`0x3da4f8e456ac648c489c286b99ca37b666be7c4c`, chain 1088)
- Treasurer (`0x873cfb4bae1ab6a5de753400e9d0616e10dced22`, chain 1329)
- Treasurer (`0x4e8c9bac25cef251352ace831270d564615b9ce1`, chain 5000)
- Treasurer (`0xd47b03ee6d86cf251ee7860fb2acf9f91b9fd4d7`, chain 8453)
- Treasurer (`0xa4bbddefaee27cd778c4ced30c0535ec06a8502e`, chain 33139)
- Treasurer (`0x146c8e409c113ed87c6183f4d25c50251dffbb3a`, chain 42161)
- Treasurer (`0xf5f74d2508e97a3a7cca2ccb75c8325d66b46152`, chain 59144)
- Treasurer (`0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03`, chain 80094)
- Treasurer (`0x8c1014b5936dd88baa5f4db0423c3003615e03a0`, chain 167000)
- Treasurer (`0xcbe78230cca58b9ef4c3c5d1bc0d7e4b3206588a`, chain 534352)
- Treasurer (`0xf5f74d2508e97a3a7cca2ccb75c8325d66b46152`, chain 1313161554)
- UnnamedContract (`0x41a5b0470d96656fb3e8f68a218b39adbca3420b`, chain 2222)

## Contract Surface Quality

- Logic-topography rows: 139; live-surface rows included: 139 (139 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 451/457 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/169 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 451 own, 6 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 531 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 451 of 988 unique; 537 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/202
- Verified + Unaudited implementations: 202
- Verified by bytecode match: 0
- Unverified implementations: 786
- Unique implementations: 988
- Raw deployments: 1087
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

### ⚠️ Verified + Unaudited (202)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BabyPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd397a40884ce00e662b419673e0b15cae628877f` | ⚠️ Unaudited |
| Bridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97`; polygon `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944`; arbitrum `0x352d8275aae3e0c2404d9f68f6cee084b5beb3dd` | ⚠️ Unaudited |
| ConfluxOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc16977205c53cd854136031bd2128f75d6ff63c9` | ⚠️ Unaudited |
| CreditMessaging | unknown | project_anchor | own_supporting | 0 | xdc | unit-396997 | `0xef9ec60e186c8a1a0439af0aedb6deb9f34a2c88` | ⚠️ Unaudited |
| CreditMessaging | unknown | project_anchor | own_supporting | 0 | gnosis | unit-396706 | `0xe1ad845d93853fff44990ae0dcecd8575293681e` | ⚠️ Unaudited |
| CreditMessaging | unknown | project_anchor | own_supporting | 0 | unichain | unit-396742 | `0xaf368c91793cb22739386dfcbbb2f1a9e4bcbebf` | ⚠️ Unaudited |
| CreditMessaging | unknown | project_anchor | own_supporting | 0 | sonic | unit-396801 | `0x3a1293bdb83bbbdd5ebf4fac96605ad2021bbc0f` | ⚠️ Unaudited |
| CreditMessaging | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 12 deployments: ethereum `0x6b8ad17795d89b283e6d0362a87a403f3544bb9d`; optimism `0xda82a31df339bfdf0123661134b4db63cb1706f5`; polygon `0xc2b638cb5042c1b3c5d5c969361fb50569840583`; manta-pacific `0x102d758f688a4c1c5a80b116bd945d4455460282`; metis `0x0535d19ca4ef74119c31e1347d5f85232955cd31`; metis `0xa45b5130f36cdca45667738e2a258ab09f4a5f7f`; metis `0xd47b03ee6d86cf251ee7860fb2acf9f91b9fd4d7`; sei `0x13379b489fb2e76cedf96bceaa2441e5930d75e1`; mantle `0x4141eb977a8646ec60c4c2891aea645118183221`; base `0x12dc9256acc9895b076f6638d628382881e62cee`; arbitrum `0xf1fcb4cbd57b67d683972a59b6a7b1e2e8bf27e6`; linea `0x138eb30f73bc423c6455c53df6d89cb01d9ebc63` | ⚠️ Unaudited |
| CreditMessaging | unknown | project_anchor | own_supporting | 0 | apechain | unit-396917 | `0x99e799cbd972362a84145d98498db4430a66a734` | ⚠️ Unaudited |
| CreditMessaging | unknown | project_anchor | own_supporting | 0 | berachain | unit-397079 | `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` | ⚠️ Unaudited |
| CreditMessagingMintableBurnable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x807026a12e1a782426b538b98ca358a914cf07aa`; ethereum `0x9b4d17b45d60b8173a5904b85a7baaec291e9173` | ⚠️ Unaudited |
| EnumerableSet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 8 deployments: manta-pacific `0xda6087e69c51e7d31b6dbad276a3c44703dfdcad`; metis `0x0eb74491493e9722cd876ada671ff8a62650ad83`; metis `0x2a6c43e0dbdcde23d40c82f45682bc6d8a6db219`; metis `0x4315ba8863891035b5cb5594cd1a6c32eb6ae863`; metis `0x4694900bdba99edf07a2e46c4093f88f9106a90d`; metis `0x80f755e3091b2ad99c08da8d13e9c7635c1b8161`; metis `0x873cfb4bae1ab6a5de753400e9d0616e10dced22`; metis `0xbbb097f94b416d39c562870a407cb0656a76e800` | ⚠️ Unaudited |
| ERC20Mock | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1815bd50389c46847f0bda824ec8da914045d14` | ⚠️ Unaudited |
| Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` | ⚠️ Unaudited |
| FeeLibV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 18 deployments: ethereum `0x0829f361a05d993d5ceb035ca6df3446b060970b`; ethereum `0x0a06ac031bf6e3d7593c7566e49d28659a6381f4`; ethereum `0x0f3273ea5d8b182cd87c8630dc436a6133b9be39`; ethereum `0x31eef89d5215c305304a2fa5376a1f1b6c5dc477`; ethereum `0x564770837ef8bbf077cfe54e5f6106538c815b22`; ethereum `0x6dd69717b1194b81a92105b7e0f94cb40f68a3e3`; ethereum `0x9fbbafc2ad79af2b57ed23c60dff79ef5c2b0fb5`; ethereum `0xd027afcc69ffa2bcb288ba68da6b71ec90d7b1d2`; manta-pacific `0x43f2376d5d03553ae72f4a8093bbe9de4336eb08`; metis `0x13379b489fb2e76cedf96bceaa2441e5930d75e1`; metis `0x1502fa4be69d526124d453619276faccab275d3d`; metis `0x17d65bf79e77b6ab21d8a0afed3bc8657d8ee0b2`; metis `0x24576fe78583e3618079890557cf18b96779fb6d`; metis `0x3fc69cc4a842838bcdc9499178740226062b14e4`; metis `0x585138287a60ae9ee232238f31e8613ffd7e8c81`; metis `0x5eb3bbd97f8e0b612733f11c9eb33356ecf874b5`; metis `0x6ce9bf8cdab780416ad1fd87b318a077d2f50eac`; metis `0xc2b638cb5042c1b3c5d5c969361fb50569840583` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396681 | `0x3e368b6c95c6fefb7a16dcc0d756389f3c658a06` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396682 | `0x52b35406cb2fb5e0038edecfc129a152a1f74087` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396684 | `0x6d5521f46b2cba9443fefc09cbac3b15ae0f73eb` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396689 | `0xe171afcd1e0394b3312e68ca823d5bc87f3db311` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | optimism | unit-396693 | `0x1f605162282570dfa6255d27895587f4117f52fa` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | optimism | unit-396694 | `0x3da4f8e456ac648c489c286b99ca37b666be7c4c` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | optimism | unit-396696 | `0x80f755e3091b2ad99c08da8d13e9c7635c1b8161` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | xdc | unit-396988 | `0x29ee6138dd4c9815f46d34a4a1ed48f46758a402` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | xdc | unit-396993 | `0xa628bb551a3b98d4d3fd9c4c329005307b9557e9` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | xdc | unit-396996 | `0xd34e23b4509ff894fa939dc29bac987b7a5465c0` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | bsc | unit-397027 | `0x622244fff1328586d0754d67cc6ab77e7ab38b7d` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | bsc | unit-397031 | `0xdd002227d9bc27f10066ed9a17be89c43bcafc31` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | gnosis | unit-396701 | `0x6d205337f45d6850c3c3006e28d5b52c8a432c35` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | gnosis | unit-396705 | `0xd9492653457a69e9f4987db43d7fa0112e620cb4` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | polygon | unit-396776 | `0x3fc69cc4a842838bcdc9499178740226062b14e4` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | polygon | unit-396778 | `0x4e422b0acb2bd7e3ac70b5c0e5eb806e86a94038` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | sonic | unit-396803 | `0x88853d410299bcbfe5fcc9eef93c03115e908279` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | metis | unit-396709 | `0x19cfce47ed54a88614648dc3f19a5980097007dd` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | metis | unit-396715 | `0xce8cca271ebc0533920c83d39f417ed6a0abb7d0` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | metis | unit-396716 | `0xe8cdf27acd73a434d661c84887215f7598e7d0d3` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | sei | unit-396769 | `0x711b5aafd4d0a5b7b863ca434a2678d086830d8e` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | sei | unit-396772 | `0xcd4302d950e7e6606b6910cd232758b5ad423311` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | sei | unit-396774 | `0xde48600aa18ae707f5d57e0faafec7c118abaeb2` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | mantle | unit-397000 | `0x288968fff40543f168eaf29a54d5c0affd3c8df7` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | mantle | unit-397001 | `0x2bc3141aaea1d84bcd557eeb543253fd9685c0c4` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | mantle | unit-397005 | `0x6ec3efd27d8b1070fe96910ef416d54e845045c9` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | mantle | unit-397006 | `0xa81274afac523d639dbca2c32c1470f1600ccebe` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | base | unit-397101 | `0x08ed1d79d509a6f1020685535028ae60c144441e` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | base | unit-397102 | `0x17e450be3ba9557f2378e20d64ad417e59ef9a34` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | apechain | unit-396915 | `0x60f2a61f07a51874c37ad2ed741727ccfcdffd52` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | apechain | unit-396916 | `0x897aaff731077c228d6ff6f2c9e7cfd8e985f29d` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | apechain | unit-396919 | `0xb0b2391a32e066fdf354ef7f4199300f920789f0` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-396957 | `0x1f605162282570dfa6255d27895587f4117f52fa` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-396959 | `0x80f755e3091b2ad99c08da8d13e9c7635c1b8161` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-396963 | `0xda82a31df339bfdf0123661134b4db63cb1706f5` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | linea | unit-397040 | `0x6e3d884c96d640526f273c61dfcf08915ebd7e2b` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | berachain | unit-397081 | `0x808d7c71ad2ba3fa531b068a2417c63106bc0949` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | berachain | unit-397083 | `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | taiko | unit-396841 | `0x711b5aafd4d0a5b7b863ca434a2678d086830d8e` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | taiko | unit-396844 | `0xcd4302d950e7e6606b6910cd232758b5ad423311` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | scroll | unit-397010 | `0x2a6c43e0dbdcde23d40c82f45682bc6d8a6db219` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | scroll | unit-397014 | `0x503c5cfea3477e0a576c8cf5354023854b7a06ff` | ⚠️ Unaudited |
| FeeLibV1 | unknown | project_anchor | own_supporting | 0 | aurora | unit-396760 | `0x6e3d884c96d640526f273c61dfcf08915ebd7e2b` | ⚠️ Unaudited |
| LPStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 6 deployments: ethereum `0xb0d502e938ed5f4df2e681fe6e419ff29631d62b`; optimism `0x4a364f8c717caad9a442737eb7b8a55cc6cf18d8`; polygon `0x8731d54e9d02c286767d56ac03e8037c07e01e98`; arbitrum `0x8731d54e9d02c286767d56ac03e8037c07e01e98`; arbitrum `0xea8dfee1898a7e0a59f7527f076106d7e44c2176`; avalanche `0x8731d54e9d02c286767d56ac03e8037c07e01e98` | ⚠️ Unaudited |
| LPStakingTime | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0x1c3000b8f475a958b87c73a5cc5780ab763122fc`; optimism `0x4dea9e918c6289a52cd469cac652727b7b412cd2`; base `0x06eb48763f117c7be887296cdcdfad2e4092739c`; arbitrum `0x9774558534036ff2e236331546691b4eb70594b1`; linea `0x4a364f8c717caad9a442737eb7b8a55cc6cf18d8` | ⚠️ Unaudited |
| MultiCallUtils | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x0e81579b25c9c458a2030824b7fdbd0194900803` | ⚠️ Unaudited |
| OFTTokenERC20 | unknown | project_anchor | own_supporting | 0 | xdc | unit-396994 | `0xa7348290de5cf01772479c48d50dec791c3fc212` | ⚠️ Unaudited |
| OFTTokenERC20 | token | project_anchor | own_supporting | 0 | sei | unit-396766 | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | ⚠️ Unaudited |
| OFTTokenERC20 | unknown | project_anchor | own_supporting | 0 | apechain | unit-396923 | `0xf4d9235269a96aadafc9adae454a0618ebe37949` | ⚠️ Unaudited |
| OFTTokenERC20 | unknown | project_anchor | own_supporting | 0 | berachain | unit-397078 | `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | xdc | unit-396991 | `0x936ab8c674bcb567cd5deb85d8a216494704e9d8` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | gnosis | unit-396702 | `0x824d8fcdc36e81618377d140bec12c3b7e4e4cba` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | sonic | unit-396800 | `0x2d93fbce4cffc15dd385a80b3f4cc1d4e76c38b3` | ⚠️ Unaudited |
| OFTWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfccb355647cd13051eda808da7e524d5bad90615` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | apechain | unit-396921 | `0xc6bc407706b7140ee8eef2f86f9504651b63e7f9` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | berachain | unit-397082 | `0x8731d54e9d02c286767d56ac03e8037c07e01e98` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8ad82b29261a9657a89a299dac3bfe01880778d4`; ethereum `0x943ed40709dfd0c30f25c458c54fcbb3b01ca66e` | ⚠️ Unaudited |
| RewardLib | unknown | project_anchor | own_supporting | 0 | sonic | unit-396802 | `0x549943e04f40284185054145c6e4e9568c1d3241` | ⚠️ Unaudited |
| RewardLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 2 deployments: manta-pacific `0xca367694cdac8f152e33683bb36cc9d6a73f1ef2`; metis `0xda82a31df339bfdf0123661134b4db63cb1706f5` | ⚠️ Unaudited |
| RewardRegistryLib | unknown | project_anchor | own_supporting | 0 | sonic | unit-396806 | `0xb0b2391a32e066fdf354ef7f4199300f920789f0` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 7 deployments: ethereum `0x8731d54e9d02c286767d56ac03e8037c07e01e98`; optimism `0xb0d502e938ed5f4df2e681fe6e419ff29631d62b`; polygon `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd`; base `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b`; arbitrum `0x53bf833a5d6c4dda888f69c22c88c9f356a41614`; avalanche `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd`; linea `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590` | ⚠️ Unaudited |
| RouterETH | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x150f94b44927f078737562f0fcf3c95c01cc2376`; optimism `0xb49c4e680174e331cb0a7ff3ab58afc9738d5f8b`; base `0x50b6ebc2103bfec165949cc946d739d5650d7ae4`; arbitrum `0xbf22f0f184bccbea268df387a49ff5238dd23e40`; linea `0x8731d54e9d02c286767d56ac03e8037c07e01e98` | ⚠️ Unaudited |
| SGTERC20Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x141381f07fa31432243113cda2f617d5d255d39a` | ⚠️ Unaudited |
| StargateEthVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0x72e2f4830b9e45d52f80ac08cb2bec0fef72ed9c`; optimism `0xb69c8cbcd90a39d8d3d3ccf0a3e968511c3856a0`; base `0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03`; arbitrum `0x82cbecf39bee528b5476fe6d1550af59a9db6fc0`; linea `0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03` | ⚠️ Unaudited |
| StargateMerkleDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x108f4c02c9fcdf862e5f5131054c50f13703f916`; ethereum `0x12a272a581fee5577a5dfa371afeb4b2f3a8c2f8` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396683 | `0x5871a7f88b0f3f5143bf599fd45f8c0dc237e881` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | project_anchor | own_supporting | 0 | optimism | unit-396691 | `0x146c8e409c113ed87c6183f4d25c50251dffbb3a` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | project_anchor | own_supporting | 0 | bsc | unit-397028 | `0x68d7877b16002ad34836ba55416bca9b92b55589` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | project_anchor | own_supporting | 0 | polygon | unit-396781 | `0xd240a859efc77b7455ad1b1402357784a2d72a1b` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | project_anchor | own_supporting | 0 | sonic | unit-396798 | `0x164a2de1bc5dc56f329909f7c97bae929cae557b` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 4 deployments: manta-pacific `0x5b32c997211621d55a89cc5abaf1cc21f3a6ddf5`; metis `0x09d428a066e77806f9de48fe3a57e837ccd0912f`; metis `0x362fae9a75b27bbc550aac28a7c1f96c8d483120`; metis `0x503c5cfea3477e0a576c8cf5354023854b7a06ff` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | project_anchor | own_supporting | 0 | metis | unit-396710 | `0x1f605162282570dfa6255d27895587f4117f52fa` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | project_anchor | own_supporting | 0 | sei | unit-396773 | `0xd69a3d88438f042a5a0b995b970f78fc8120ed67` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | project_anchor | own_supporting | 0 | mantle | unit-396998 | `0x0184857631ddb3e9e230bca303f0ab1e516fc0c8` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | project_anchor | own_supporting | 0 | base | unit-397105 | `0x9aa02d4fae7f58b8e8f34c66e756cc734dac7fe4` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-396960 | `0x957b12606690c7692ef92bb5c34a0e63baed99c7` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | project_anchor | own_supporting | 0 | linea | unit-397042 | `0xe89ca5c58e2978c031f7796ca8580bc88ea0b3dd` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | project_anchor | own_supporting | 0 | scroll | unit-397012 | `0x4dcbfc0249e8d5032f89d6461218a9d2efff5125` | ⚠️ Unaudited |
| StargateMultiRewarder | unknown | project_anchor | own_supporting | 0 | aurora | unit-396762 | `0xe89ca5c58e2978c031f7796ca8580bc88ea0b3dd` | ⚠️ Unaudited |
| StargateOFT | unknown | project_anchor | own_supporting | 0 | xdc | unit-396992 | `0xa4272ad93ac5d2ff048dd6419c88eb4c1002ec6b` | ⚠️ Unaudited |
| StargateOFT | unknown | project_anchor | own_supporting | 0 | xdc | unit-396995 | `0xb0d27478a40223e427697da523c6a3daf29aaffb` | ⚠️ Unaudited |
| StargateOFT | unknown | project_anchor | own_supporting | 0 | sei | unit-396768 | `0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` | ⚠️ Unaudited |
| StargateOFT | unknown | project_anchor | own_supporting | 0 | apechain | unit-396914 | `0x28e0f0eed8d6a6a96033feee8b2d7f32eb5ccc48` | ⚠️ Unaudited |
| StargateOFT | unknown | project_anchor | own_supporting | 0 | apechain | unit-396922 | `0xeb8d955d8ae221e5b502851ddd78e6c4498db4f6` | ⚠️ Unaudited |
| StargateOFT | unknown | project_anchor | own_supporting | 0 | berachain | unit-397080 | `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` | ⚠️ Unaudited |
| StargateOFT | unknown | project_anchor | own_supporting | 0 | taiko | unit-396839 | `0x1c10cc06dc6d35970d1d53b2a23c76ef370d4135` | ⚠️ Unaudited |
| StargateOFTUSDC | unknown | project_anchor | own_supporting | 0 | xdc | unit-396990 | `0x8e2e38711080bf8aab9c74f434d2bae70e67ae44` | ⚠️ Unaudited |
| StargateOFTUSDC | unknown | project_anchor | own_supporting | 0 | apechain | unit-396913 | `0x2086f755a6d9254045c257ea3d382ef854849b0f` | ⚠️ Unaudited |
| StargateOFTUSDC | unknown | project_anchor | own_supporting | 0 | berachain | unit-397085 | `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` | ⚠️ Unaudited |
| StargateOFTUSDC | unknown | project_anchor | own_supporting | 0 | taiko | unit-396842 | `0x77c71633c34c3784ede189d74223122422492a0f` | ⚠️ Unaudited |
| StargatePool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-396680 | `0x268ca24daeff1fac2ed883c598200ccbb79e931d` | ⚠️ Unaudited |
| StargatePool | core_logic | project_anchor | own_supporting | 0 | gnosis | unit-396707 | `0xe9aba835f813ca05e50a6c0ce65d0d74390f7de7` | ⚠️ Unaudited |
| StargatePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 6 deployments: ethereum `0xcdafb1b2db43f366e48e6f614b8dccbfeefeecd3`; metis `0x22bdf9633f3e679785638db690b85dc0dc8b35b8`; metis `0x8899da8a3621708709feb9ee3991299769e96e25`; metis `0xd9050e7043102a0391f81462a3916326f86331f0`; metis `0xdfc47dcef7e8f9ab19a1b8af3eecf000c7ea0b80`; metis `0xf713529665cb904b48b8716cf305c41b1f61bc57` | ⚠️ Unaudited |
| StargatePool | core_logic | project_anchor | own_supporting | 0 | metis | unit-396711 | `0x36ed193dc7160d3858ec250e69d12b03ca087d08` | ⚠️ Unaudited |
| StargatePool | core_logic | project_anchor | own_supporting | 0 | mantle | unit-397003 | `0x4c1d3fc3fc3c177c3b633427c2f769276c547463` | ⚠️ Unaudited |
| StargatePool | core_logic | project_anchor | own_supporting | 0 | mantle | unit-397009 | `0xf7628d84a2bbd9bb9c8e686ac95bb5d55169f3f1` | ⚠️ Unaudited |
| StargatePoolEURC | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x783129e4d7ba0af0c896c239e57c06df379aae8c`; ethereum `0x8a2b28364102bea189d99a475c494330ef2bdd0b` | ⚠️ Unaudited |
| StargatePoolMigratable | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-396687 | `0x933597a323eb81cae705c5bc29985172fd5a3973` | ⚠️ Unaudited |
| StargatePoolMigratable | core_logic | project_anchor | own_supporting | 0 | optimism | unit-396692 | `0x19cfce47ed54a88614648dc3f19a5980097007dd` | ⚠️ Unaudited |
| StargatePoolMigratable | core_logic | project_anchor | own_supporting | 0 | bsc | unit-397025 | `0x138eb30f73bc423c6455c53df6d89cb01d9ebc63` | ⚠️ Unaudited |
| StargatePoolMigratable | core_logic | project_anchor | own_supporting | 0 | polygon | unit-396782 | `0xd47b03ee6d86cf251ee7860fb2acf9f91b9fd4d7` | ⚠️ Unaudited |
| StargatePoolMigratable | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 2 deployments: metis `0x3aa9fd32fc5c28e1e5f8725cff5c2a607b8303d3`; metis `0x8db623d439c8c4dfa1ca94e4cd3eb8b3aaff8331` | ⚠️ Unaudited |
| StargatePoolMigratable | core_logic | project_anchor | own_supporting | 0 | metis | unit-396713 | `0x4dcbfc0249e8d5032f89d6461218a9d2efff5125` | ⚠️ Unaudited |
| StargatePoolMigratable | core_logic | project_anchor | own_supporting | 0 | sei | unit-396764 | `0x0db9afb4c33be43a0a0e396fd1383b4ea97ab10a` | ⚠️ Unaudited |
| StargatePoolMigratable | core_logic | project_anchor | own_supporting | 0 | mantle | unit-397008 | `0xb715b85682b731db9d5063187c450095c91c57fc` | ⚠️ Unaudited |
| StargatePoolMigratable | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-396962 | `0xce8cca271ebc0533920c83d39f417ed6a0abb7d0` | ⚠️ Unaudited |
| StargatePoolMigratable | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-396979 | `0x12dc9256acc9895b076f6638d628382881e62cee` | ⚠️ Unaudited |
| StargatePoolNative | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-396686 | `0x77b2043768d28e9c9ab44e1abfc95944bce57931` | ⚠️ Unaudited |
| StargatePoolNative | core_logic | project_anchor | own_supporting | 0 | optimism | unit-396698 | `0xe8cdf27acd73a434d661c84887215f7598e7d0d3` | ⚠️ Unaudited |
| StargatePoolNative | core_logic | project_anchor | own_supporting | 0 | unichain | unit-396746 | `0xe9aba835f813ca05e50a6c0ce65d0d74390f7de7` | ⚠️ Unaudited |
| StargatePoolNative | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x9895d81bb462a195b4922ed7de0e3acd007c32cb` | ⚠️ Unaudited |
| StargatePoolNative | core_logic | project_anchor | own_supporting | 0 | base | unit-397107 | `0xdc181bd607330aeebef6ea62e03e5e1fb4b6f7c7` | ⚠️ Unaudited |
| StargatePoolNative | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-396961 | `0xa45b5130f36cdca45667738e2a258ab09f4a5f7f` | ⚠️ Unaudited |
| StargatePoolNative | core_logic | project_anchor | own_supporting | 0 | linea | unit-397041 | `0x81f6138153d473e8c5ecebd3dc8cd4903506b075` | ⚠️ Unaudited |
| StargatePoolNative | core_logic | project_anchor | own_supporting | 0 | scroll | unit-397015 | `0xc2b638cb5042c1b3c5d5c969361fb50569840583` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-396688 | `0xc026395860db2d07ee33e05fe50ed7bd583189c7` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | project_anchor | own_supporting | 0 | optimism | unit-396697 | `0xce8cca271ebc0533920c83d39f417ed6a0abb7d0` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | project_anchor | own_supporting | 0 | bsc | unit-397030 | `0x962bd449e630b0d928f308ce63f1a21f02576057` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | project_anchor | own_supporting | 0 | gnosis | unit-396704 | `0xb1eead6959cb5bb9b20417d6689922523b2b86c3` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | project_anchor | own_supporting | 0 | polygon | unit-396780 | `0x9aa02d4fae7f58b8e8f34c66e756cc734dac7fe4` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | project_anchor | own_supporting | 0 | sonic | unit-396804 | `0xa272ffe20cffe769cdfc4b63088dcd2c82a2d8f9` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | project_anchor | own_supporting | 0 | sei | unit-396767 | `0x45d417612e177672958dc0537c45a8f8d754ac2e` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | project_anchor | own_supporting | 0 | mantle | unit-397007 | `0xac290ad4e0c891fdc295ca4f0a6214cf6dc6acdc` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | project_anchor | own_supporting | 0 | base | unit-397103 | `0x27a16dc786820b16e5c9028b75b99f6f604b5d26` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-396964 | `0xe8cdf27acd73a434d661c84887215f7598e7d0d3` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-396982 | `0x5634c4a5fed09819e3c46d86a965dd9447d86e47` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | project_anchor | own_supporting | 0 | scroll | unit-397011 | `0x3fc69cc4a842838bcdc9499178740226062b14e4` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | project_anchor | own_supporting | 0 | aurora | unit-396761 | `0x81f6138153d473e8c5ecebd3dc8cd4903506b075` | ⚠️ Unaudited |
| StargateStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396690 | `0xff551feddbedc0aee764139ccd9cb644bb04a6bd` | ⚠️ Unaudited |
| StargateStaking | unknown | project_anchor | own_supporting | 0 | optimism | unit-396700 | `0xfbb5a71025bef1a8166c9bcb904a120aa17d6443` | ⚠️ Unaudited |
| StargateStaking | unknown | project_anchor | own_supporting | 0 | bsc | unit-397026 | `0x26727c78b0209d9e787b2f9ac8f0238b122a3098` | ⚠️ Unaudited |
| StargateStaking | unknown | project_anchor | own_supporting | 0 | polygon | unit-396777 | `0x4694900bdba99edf07a2e46c4093f88f9106a90d` | ⚠️ Unaudited |
| StargateStaking | unknown | project_anchor | own_supporting | 0 | sonic | unit-396807 | `0xbba60da06c2c5424f03f7434542280fcad453d10` | ⚠️ Unaudited |
| StargateStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 4 deployments: manta-pacific `0x1343994e136b6b15cbb2eb4075e0e73b8c4ebce0`; metis `0x4e422b0acb2bd7e3ac70b5c0e5eb806e86a94038`; metis `0xcc3633a02d2a9fa29e83cd205d37d186a12fea34`; metis `0xde48600aa18ae707f5d57e0faafec7c118abaeb2` | ⚠️ Unaudited |
| StargateStaking | unknown | project_anchor | own_supporting | 0 | metis | unit-396717 | `0xf1fcb4cbd57b67d683972a59b6a7b1e2e8bf27e6` | ⚠️ Unaudited |
| StargateStaking | unknown | project_anchor | own_supporting | 0 | sei | unit-396771 | `0x8c1014b5936dd88baa5f4db0423c3003615e03a0` | ⚠️ Unaudited |
| StargateStaking | unknown | project_anchor | own_supporting | 0 | mantle | unit-396999 | `0x02dc1042e623a8677b002981164ccc05d25d486a` | ⚠️ Unaudited |
| StargateStaking | unknown | project_anchor | own_supporting | 0 | base | unit-397108 | `0xdfc47dcef7e8f9ab19a1b8af3eecf000c7ea0b80` | ⚠️ Unaudited |
| StargateStaking | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-396958 | `0x3da4f8e456ac648c489c286b99ca37b666be7c4c` | ⚠️ Unaudited |
| StargateStaking | unknown | project_anchor | own_supporting | 0 | linea | unit-397038 | `0x25bbf59ef9246dc65bfac8385d55c5e524a7b9ea` | ⚠️ Unaudited |
| StargateStaking | unknown | project_anchor | own_supporting | 0 | scroll | unit-397017 | `0xd240a859efc77b7455ad1b1402357784a2d72a1b` | ⚠️ Unaudited |
| StargateStaking | unknown | project_anchor | own_supporting | 0 | aurora | unit-396758 | `0x25bbf59ef9246dc65bfac8385d55c5e524a7b9ea` | ⚠️ Unaudited |
| StargateToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 9 deployments: ethereum `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`; optimism `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97`; optimism `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590`; polygon `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590`; base `0xe3b53af74a4bf62ae5511055290838050bf764df`; arbitrum `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590`; arbitrum `0x6694340fc020c5e6b96567843da2df01b2ce1eb6`; avalanche `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590`; linea `0x808d7c71ad2ba3fa531b068a2417c63106bc0949` | ⚠️ Unaudited |
| TokenMessaging | token | project_anchor | own_supporting | 0 | ethereum | unit-396685 | `0x6d6620efa72948c5f68a3c8646d58c00d3f4a980` | ⚠️ Unaudited |
| TokenMessaging | token | project_anchor | own_supporting | 0 | optimism | unit-396699 | `0xf1fcb4cbd57b67d683972a59b6a7b1e2e8bf27e6` | ⚠️ Unaudited |
| TokenMessaging | unknown | project_anchor | own_supporting | 0 | xdc | unit-396987 | `0x2761c39102bcf7fc6365580d94cd1882f9cc2650` | ⚠️ Unaudited |
| TokenMessaging | token | project_anchor | own_supporting | 0 | bsc | unit-397029 | `0x6e3d884c96d640526f273c61dfcf08915ebd7e2b` | ⚠️ Unaudited |
| TokenMessaging | token | project_anchor | own_supporting | 0 | gnosis | unit-396703 | `0xaf368c91793cb22739386dfcbbb2f1a9e4bcbebf` | ⚠️ Unaudited |
| TokenMessaging | unknown | project_anchor | own_supporting | 0 | unichain | unit-396743 | `0xb1eead6959cb5bb9b20417d6689922523b2b86c3` | ⚠️ Unaudited |
| TokenMessaging | token | project_anchor | own_supporting | 0 | polygon | unit-396779 | `0x6ce9bf8cdab780416ad1fd87b318a077d2f50eac` | ⚠️ Unaudited |
| TokenMessaging | token | project_anchor | own_supporting | 0 | sonic | unit-396799 | `0x2086f755a6d9254045c257ea3d382ef854849b0f` | ⚠️ Unaudited |
| TokenMessaging | token | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 4 deployments: manta-pacific `0x0ceb237e109ee22374a567c6b09f373c73fa4cbb`; metis `0x10b4155e44226de51986d758087b90f6b7392771`; metis `0x9aa02d4fae7f58b8e8f34c66e756cc734dac7fe4`; arbitrum `0x3fc69cc4a842838bcdc9499178740226062b14e4` | ⚠️ Unaudited |
| TokenMessaging | token | project_anchor | own_supporting | 0 | metis | unit-396714 | `0xcbe78230cca58b9ef4c3c5d1bc0d7e4b3206588a` | ⚠️ Unaudited |
| TokenMessaging | token | project_anchor | own_supporting | 0 | sei | unit-396765 | `0x1502fa4be69d526124d453619276faccab275d3d` | ⚠️ Unaudited |
| TokenMessaging | token | project_anchor | own_supporting | 0 | mantle | unit-397002 | `0x41b491285a4f888f9f636cec8a363ab9770a0aef` | ⚠️ Unaudited |
| TokenMessaging | token | project_anchor | own_supporting | 0 | base | unit-397104 | `0x5634c4a5fed09819e3c46d86a965dd9447d86e47` | ⚠️ Unaudited |
| TokenMessaging | unknown | project_anchor | own_supporting | 0 | apechain | unit-396920 | `0xbe574b6219c6d985d08712e90c21a88fd55f1ae8` | ⚠️ Unaudited |
| TokenMessaging | token | project_anchor | own_supporting | 0 | arbitrum | unit-396956 | `0x19cfce47ed54a88614648dc3f19a5980097007dd` | ⚠️ Unaudited |
| TokenMessaging | token | project_anchor | own_supporting | 0 | avalanche | unit-396980 | `0x17e450be3ba9557f2378e20d64ad417e59ef9a34` | ⚠️ Unaudited |
| TokenMessaging | token | project_anchor | own_supporting | 0 | linea | unit-397039 | `0x5f688f563dc16590e570f97b542fa87931af2fed` | ⚠️ Unaudited |
| TokenMessaging | unknown | project_anchor | own_supporting | 0 | berachain | unit-397084 | `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` | ⚠️ Unaudited |
| TokenMessaging | unknown | project_anchor | own_supporting | 0 | taiko | unit-396840 | `0x45d417612e177672958dc0537c45a8f8d754ac2e` | ⚠️ Unaudited |
| TokenMessaging | unknown | project_anchor | own_supporting | 0 | scroll | unit-397013 | `0x4e422b0acb2bd7e3ac70b5c0e5eb806e86a94038` | ⚠️ Unaudited |
| TokenMessaging | unknown | project_anchor | own_supporting | 0 | aurora | unit-396759 | `0x5f688f563dc16590e570f97b542fa87931af2fed` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396679 | `0x1041d127b2d4bc700f0f563883bc689502606918` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | optimism | unit-396695 | `0x644abb1e17291b4403966119d15ab081e4a487e9` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | xdc | unit-396989 | `0x67b302e35aef5eee8c32d934f5856869ef428330` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | bsc | unit-397024 | `0x0a6a15964fee494a881338d65940430797f0d97c` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | gnosis | unit-396708 | `0xf1815bd50389c46847f0bda824ec8da914045d14` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | polygon | unit-396775 | `0x36ed193dc7160d3858ec250e69d12b03ca087d08` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | sonic | unit-396805 | `0xa7f3e26df31abcb20a6fe6be35ddc60702a32455` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | metis | unit-396712 | `0x3da4f8e456ac648c489c286b99ca37b666be7c4c` | ⚠️ Unaudited |
| Treasurer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 3 deployments: manta-pacific `0x8a2b28364102bea189d99a475c494330ef2bdd0b`; metis `0x749d57a943e738830064acfdc6d196a3f01b95ab`; metis `0xd240a859efc77b7455ad1b1402357784a2d72a1b` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | sei | unit-396770 | `0x873cfb4bae1ab6a5de753400e9d0616e10dced22` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | mantle | unit-397004 | `0x4e8c9bac25cef251352ace831270d564615b9ce1` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | base | unit-397106 | `0xd47b03ee6d86cf251ee7860fb2acf9f91b9fd4d7` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | apechain | unit-396918 | `0xa4bbddefaee27cd778c4ced30c0535ec06a8502e` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-396955 | `0x146c8e409c113ed87c6183f4d25c50251dffbb3a` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | linea | unit-397043 | `0xf5f74d2508e97a3a7cca2ccb75c8325d66b46152` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | berachain | unit-397077 | `0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | taiko | unit-396843 | `0x8c1014b5936dd88baa5f4db0423c3003615e03a0` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | scroll | unit-397016 | `0xcbe78230cca58b9ef4c3c5d1bc0d7e4b3206588a` | ⚠️ Unaudited |
| Treasurer | unknown | project_anchor | own_supporting | 0 | aurora | unit-396763 | `0xf5f74d2508e97a3a7cca2ccb75c8325d66b46152` | ⚠️ Unaudited |
| USDCOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67480c30ff8cc128cf0250e25616857302df647f` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0e42acbd23faee03249daff896b78d7e79fbd58e`; optimism `0x43d2761ed16c89a2c4342e2b16a3c61ccf88f05b`; polygon `0x3ab2da31bbd886a7edf68a6b60d3cde657d3a15d`; arbitrum `0xfbd849e6007f9bc3cc2d6eb159c045b8dc660268`; avalanche `0xca0f57d295bbce554da2c07b005b7d6565a58fce` | ⚠️ Unaudited |
| WhitelistAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dfcad285ef39fed84e77edf1b7dbc442565e55e` | ⚠️ Unaudited |
| WOFTAdapterFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69bfc7b0deb166aa4341a2c7437956b13ea74d9f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (786)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ceb237e109ee22374a567c6b09f373c73fa4cbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x102d758f688a4c1c5a80b116bd945d4455460282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13379b489fb2e76cedf96bceaa2441e5930d75e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1502fa4be69d526124d453619276faccab275d3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16e28b8fcb5a20c9ffe82dfb7ede0cde691edbcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a6437bef5b8615ef523d00ef7c9d58d66c0f246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bf53b4b70a6b40aa206a6a23e3cc8f6b5908db4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2088d9833b704c8b6edcbdbd417d25f0f6486263` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26e74ad004cb6883fb5f9240f6064be77cff19aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ff4db91799b1d501089c6b17e3b9faf802c08e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4aff12ce71afd06e7b20f50f2eaa365b8b4f779c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eeba4e168b23601eb7716a5d1ac243b8d375290` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5489ddab89609580835ee6d655cd9b3503e7f97d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b32c997211621d55a89cc5abaf1cc21f3a6ddf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d76f06f00b6a4018b84a038498c5e29066319ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5db42cddf2346c4ee9c62ed16ab25d4c24af14ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60e59b984cd0013a2d3b742918cfe5fc10517082` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62f5971d9ffefe195cc0a0bb943bafd04c97ae4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63c2a938650d7b3ea7926e9eee36533034942892` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x667b9cbe277ca713af86b1b47ba7ba55606f7da8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c7ba0d4ee7613ad2f5c9d37d18ed3920236638a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f0611a1858ce557d7fd6565a4425ff9aa555b46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77b2e51bec45bd7bca02b72273d8f2ff1063fa51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7916ac895d7180de50d1fca0eaeb6c7f6dfb8675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x822b6ebc4282b06b86f122edb74e71f4cb488895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83c618c0760281759bb5842e36fe43c66bbaaa6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8880083d9cd82ed74e77c702c4e18d284e2a4d90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9895d81bb462a195b4922ed7de0e3acd007c32cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f22c4b3dbe693a34f2af61a16a022f87d9499ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1438c6982849a2a30270ed32ee3779e3d05b024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa5b75d4fcdc9942a468b15142920b8b4f6d1815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb24fd55dc046d6e435ab28fa95611a5840b48ab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4292b2885c3fe813f16fea29bc89e0e4d425f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb87588947a2674fcce0f50f470654adac9496d2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8b1a96933e4721ab9d94d60682055ea60eae455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe2288d1fc37318370d2addeb9bea915b492da2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0441dc6179217af689e1c80b854420371def97f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1bc8b9001646ba0f87c1e493755972c625ace0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc252b5c25b6d0845b6679f1d15e7910d8ef7414f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6a281b90727fd77165f756690561c214786fba1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc946c11c35b8957bbc47d37391e4c0b95ddbeed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca7867b497b961b64231ee1cd270288f5cef0381` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf2eaf72ea49bd802a057dbae6e4cc8b7493b398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd41a61e01aca0541a02d30d68cb9f5bfab9de620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde48600aa18ae707f5d57e0faafec7c118abaeb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe520d724f0c4b72faeb9c0580281f6fe1f3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec4e073bfbd440fba4d6a4f3d2d3ea6fd1b66f56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5bba76476274762649bb22e08c6950dd681e202` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6f832466cd6c21967e0d954109403f36bc8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8c61c8f4fdd41dd444f7b582c9f440e1b1adcc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa54751cda1f98947c524fd9701c9dad84fcdcfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0535d19ca4ef74119c31e1347d5f85232955cd31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x06d538690af257da524f25d0cd52fd85b1c2173e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x09d428a066e77806f9de48fe3a57e837ccd0912f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0d05066bd154d03445d220a8433e458405fedad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0eb74491493e9722cd876ada671ff8a62650ad83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x10b4155e44226de51986d758087b90f6b7392771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x13379b489fb2e76cedf96bceaa2441e5930d75e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1502fa4be69d526124d453619276faccab275d3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x16419058f15a86795933f78dc624b384d09e3a4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x17d65bf79e77b6ab21d8a0afed3bc8657d8ee0b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x18ae6d4becae6cb6d2536ecce89871f27a8c1bb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1f29c7cd7448c9c6115d8bcb55952c1d2b51c71e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x24576fe78583e3618079890557cf18b96779fb6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2a6c43e0dbdcde23d40c82f45682bc6d8a6db219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x317d8bfc7f6d5f74ede9d9da3b7bbff9cbe90f14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x362fae9a75b27bbc550aac28a7c1f96c8d483120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x36ed193dc7160d3858ec250e69d12b03ca087d08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x389c106379acf1e127bf31fa1fdbe62dbfb55b9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3fc69cc4a842838bcdc9499178740226062b14e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4315ba8863891035b5cb5594cd1a6c32eb6ae863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4694900bdba99edf07a2e46c4093f88f9106a90d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x46bc16f76b0ae14abb820d3410843ba54d8ef6f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4839ff304dd3e38da9bc73f58e2999390e76b80d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4dcbfc0249e8d5032f89d6461218a9d2efff5125` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4e422b0acb2bd7e3ac70b5c0e5eb806e86a94038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x503c5cfea3477e0a576c8cf5354023854b7a06ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x505ecdf2f14cd4f1f413d04624b009a449d38d7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x53678e62af4dcdfc3bb5b72c9826ca9b60f28f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x585138287a60ae9ee232238f31e8613ffd7e8c81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5c1a97c144a97e9b370f833a06c70ca8f2f30de5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5eb3bbd97f8e0b612733f11c9eb33356ecf874b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6694340fc020c5e6b96567843da2df01b2ce1eb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x693604e757ac7e2c4a8263594a18d69c35562341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6ce9bf8cdab780416ad1fd87b318a077d2f50eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6fd8dd2d7ac59e41c3907f6ae4717b08d5b407cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x701a95707a0290ac8b90b3719e8ee5b210360883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x749d57a943e738830064acfdc6d196a3f01b95ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7a045193ade1e7013d8d19f3edd3f6cb8ae61275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x816e810f9f787d669fb71932deabf6c83781cd48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8731d54e9d02c286767d56ac03e8037c07e01e98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x873cfb4bae1ab6a5de753400e9d0616e10dced22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x875bee36739e7ce6b60e056451c556a88c59b086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x957b12606690c7692ef92bb5c34a0e63baed99c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa45b5130f36cdca45667738e2a258ab09f4a5f7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xae8d00e43adb49d14fa07c93b27cdb3ee94c4675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb083267307d53f1d3ba70e654671f0ab30a9a26e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbbb097f94b416d39c562870a407cb0656a76e800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc1b8045a6ef2934cf0f78b0dbd489969fa9be7e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc2b638cb5042c1b3c5d5c969361fb50569840583` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcbe78230cca58b9ef4c3c5d1bc0d7e4b3206588a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcbffca36cdc13c646f8391db55e4c13a7ce05f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcc3633a02d2a9fa29e83cd205d37d186a12fea34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd181c232efa6f8504ce7477dbc421da315be6ed8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd240a859efc77b7455ad1b1402357784a2d72a1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd4d039141fd179dc2e28bab79848c0c49455ab2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd9050e7043102a0391f81462a3916326f86331f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xde48600aa18ae707f5d57e0faafec7c118abaeb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe3b53af74a4bf62ae5511055290838050bf764df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe520d724f0c4b72faeb9c0580281f6fe1f3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf6f832466cd6c21967e0d954109403f36bc8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-396789 | `0x090194f1eedc134a680e3b488abb2d212dba8c01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-396790 | `0x1502fa4be69d526124d453619276faccab275d3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-396791 | `0x1c10cc06dc6d35970d1d53b2a23c76ef370d4135` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-396792 | `0x45d417612e177672958dc0537c45a8f8d754ac2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-396793 | `0x711b5aafd4d0a5b7b863ca434a2678d086830d8e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-396794 | `0x77c71633c34c3784ede189d74223122422492a0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-396795 | `0x8c1014b5936dd88baa5f4db0423c3003615e03a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-396796 | `0x8e8539e4ccd69123c623a106773f2b0cbbc58746` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-396797 | `0xcd4302d950e7e6606b6910cd232758b5ad423311` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | rootstock | unit-396902 | `0x06d538690af257da524f25d0cd52fd85b1c2173e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | rootstock | unit-396903 | `0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | rootstock | unit-396904 | `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | rootstock | unit-396905 | `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | rootstock | unit-396906 | `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | rootstock | unit-396907 | `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | rootstock | unit-396908 | `0x808d7c71ad2ba3fa531b068a2417c63106bc0949` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | rootstock | unit-396909 | `0x8731d54e9d02c286767d56ac03e8037c07e01e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | rootstock | unit-396910 | `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | rootstock | unit-396911 | `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | rootstock | unit-396912 | `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | telos-evm | unit-396944 | `0x164a2de1bc5dc56f329909f7c97bae929cae557b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | telos-evm | unit-396945 | `0x2086f755a6d9254045c257ea3d382ef854849b0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | telos-evm | unit-396946 | `0x3a1293bdb83bbbdd5ebf4fac96605ad2021bbc0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | telos-evm | unit-396947 | `0x549943e04f40284185054145c6e4e9568c1d3241` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | telos-evm | unit-396948 | `0x88853d410299bcbfe5fcc9eef93c03115e908279` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | telos-evm | unit-396949 | `0xa272ffe20cffe769cdfc4b63088dcd2c82a2d8f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | telos-evm | unit-396950 | `0xa4bbddefaee27cd778c4ced30c0535ec06a8502e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | telos-evm | unit-396951 | `0xa7f3e26df31abcb20a6fe6be35ddc60702a32455` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | telos-evm | unit-396952 | `0xb0b2391a32e066fdf354ef7f4199300f920789f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | telos-evm | unit-396953 | `0xbab93b7ad7fe8692a878b95a8e689423437cc500` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | telos-evm | unit-396954 | `0xbba60da06c2c5424f03f7434542280fcad453d10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x046ad0eac306b2d56c1c11066873dc686a3099a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ca3d94b3b83c97d4628a5250a71192c62769b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0cb0b86d8aa2a28334987009144c066774900512` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0eb74491493e9722cd876ada671ff8a62650ad83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13379b489fb2e76cedf96bceaa2441e5930d75e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1502fa4be69d526124d453619276faccab275d3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18d1d98e3f8bc4017d77b91020593128f50fca65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e9999bc6a5511e8bacd48e6bbc660d9db428da3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23204498cd1d50fa56769153a9284168ad5a4b50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25bbf59ef9246dc65bfac8385d55c5e524a7b9ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x28eacea7f18e4997fcaed6836db377d2517cdce4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f688f563dc16590e570f97b542fa87931af2fed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6013a927605fc5c415c5fddfce68ca9c0d43fd21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6934dff03e84949b8fd05e7d81ef2c1e2416bdaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73a755894394429a68ad2474981780e0e2429ece` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x74672e25b881618130c8a9a25a3312acfc6a4162` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x794fe59f3427b89271868c0e2da4e343a9680c32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7967d9b6190d6bf4f306a6888ec4d951ffd47e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81f6138153d473e8c5ecebd3dc8cd4903506b075` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x873cfb4bae1ab6a5de753400e9d0616e10dced22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x933c8ef7befb2ea7b90d7729d2ee81fd3bf927e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2b48ad28c09cc64cccf9ed73e1efced052877d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2f60ff6c6c2163519054a922e5b478863d07965` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf2d23d17238bfc60a9f226f1d87b738fe958305` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2e33c49444b9309f6c5d2a51d1e2609e758ba9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb82ac36e9df3c700f12ecf552f240bf4d7b7a212` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb833ff51d277065b1fd2d729835c2302fc2fe5d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd3735c138fab8883a9fbb1cdc762e5fcbec45ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbeff88671cfa710fd0e13d36f743711e2a50fe81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc4c85df97d6aa014da810bb0a4e83de68031d208` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xccf35d24bb47d894861b849010f29be4463f1823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd00d14b48ecc171eb8b3e8862c4efe6092592659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd45c0f6fc5082e8d3ffb81df26f9d2c83a3bf01e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd91d034bca99c410ea794f34b228df68fb092cb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd93b1f3456b760e47635d99188c74ed7e9f34206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd06743c82c2d8cad4e975487a8c02ac5fd9e1b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde48600aa18ae707f5d57e0faafec7c118abaeb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0867ae01d60b0b8b767967493fed4d21130b66c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1ae9d2933ff625b3449c947b377280ba9906c20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe520d724f0c4b72faeb9c0580281f6fe1f3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe72ee4edd7e1c0c1fe47a04f285465530a27e905` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe89ca5c58e2978c031f7796ca8580bc88ea0b3dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea2910d0c931e6a760e9ba7f9d0705c03940ca6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5f74d2508e97a3a7cca2ccb75c8325d66b46152` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6f832466cd6c21967e0d954109403f36bc8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff4a2802d6f6b6a9fe2c8ebfa10350617ddb539b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fuse | unit-396730 | `0x06d538690af257da524f25d0cd52fd85b1c2173e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fuse | unit-396731 | `0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fuse | unit-396732 | `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fuse | unit-396733 | `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fuse | unit-396734 | `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fuse | unit-396735 | `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fuse | unit-396736 | `0x808d7c71ad2ba3fa531b068a2417c63106bc0949` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fuse | unit-396737 | `0x8731d54e9d02c286767d56ac03e8037c07e01e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fuse | unit-396738 | `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fuse | unit-396739 | `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fuse | unit-396740 | `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-396741 | `0x6d205337f45d6850c3c3006e28d5b52c8a432c35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-396744 | `0xd9492653457a69e9f4987db43d7fa0112e620cb4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-396745 | `0xe1ad845d93853fff44990ae0dcecd8575293681e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0412cd2d9f333c68ca6d208b2aa846a5f2901787` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0535d19ca4ef74119c31e1347d5f85232955cd31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08ed1d79d509a6f1020685535028ae60c144441e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0920a77fe98709fe85c3a905f720acbaed1755e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0eb74491493e9722cd876ada671ff8a62650ad83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x10b4155e44226de51986d758087b90f6b7392771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x12dc9256acc9895b076f6638d628382881e62cee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x13379b489fb2e76cedf96bceaa2441e5930d75e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1502fa4be69d526124d453619276faccab275d3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x17e450be3ba9557f2378e20d64ad417e59ef9a34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ef98c187c3940e96080fa4e8a5b858e62bdee81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x212efc8dd3fff79dfc2c664fdcc8fbc9e00c75ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x22bdf9633f3e679785638db690b85dc0dc8b35b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x24576fe78583e3618079890557cf18b96779fb6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x27a16dc786820b16e5c9028b75b99f6f604b5d26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2a6c43e0dbdcde23d40c82f45682bc6d8a6db219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2eb9ea9df49bebb97e7750f231a32129a89b82ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x362fae9a75b27bbc550aac28a7c1f96c8d483120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3aa9fd32fc5c28e1e5f8725cff5c2a607b8303d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3af50362c08cdb450a41d2a2774c35011087ebbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x503c5cfea3477e0a576c8cf5354023854b7a06ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5634c4a5fed09819e3c46d86a965dd9447d86e47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x585138287a60ae9ee232238f31e8613ffd7e8c81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5eb3bbd97f8e0b612733f11c9eb33356ecf874b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x62207a4d054376052bfcede2c00d113e97d4d247` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x693604e757ac7e2c4a8263594a18d69c35562341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6ac7c7bb854e772d9eae3835ec0f1961d011b35d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x808d7c71ad2ba3fa531b068a2417c63106bc0949` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x816e810f9f787d669fb71932deabf6c83781cd48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x873cfb4bae1ab6a5de753400e9d0616e10dced22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8899da8a3621708709feb9ee3991299769e96e25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8db623d439c8c4dfa1ca94e4cd3eb8b3aaff8331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x941f7a582b644bdcf6ad79b5f1e5dd5ce21b13cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0732186f556f034cf9930b7796bc3a03e614750` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb279b324ea5648be6402abc727173a225383494c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb7a05a3a687ef09cc70e3f98b5f6a62f32e3ae58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbbb097f94b416d39c562870a407cb0656a76e800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc2a6a1a8accc8bd757bf4b34fbacb20fbea87f55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc3633a02d2a9fa29e83cd205d37d186a12fea34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd46ccf40d6dd371ade5c9d0e8f83354cf62285ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdc181bd607330aeebef6ea62e03e5e1fb4b6f7c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdc2716b92480225533abc3328c2ab961f2a9247d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xde48600aa18ae707f5d57e0faafec7c118abaeb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdfc47dcef7e8f9ab19a1b8af3eecf000c7ea0b80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe520d724f0c4b72faeb9c0580281f6fe1f3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf6f832466cd6c21967e0d954109403f36bc8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf713529665cb904b48b8716cf305c41b1f61bc57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x015fd589f4f1a33ce4487e12714e1b15129c9329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x674843c06ff83502ddb4d37c2e09c01cda38cbc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x74c9f2b00581f1b11aa7ff05aa9f608b7389de67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x824d8fcdc36e81618377d140bec12c3b7e4e4cba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb1eead6959cb5bb9b20417d6689922523b2b86c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe9aba835f813ca05e50a6c0ce65d0d74390f7de7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf1815bd50389c46847f0bda824ec8da914045d14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flow-evm | unit-397066 | `0x06d538690af257da524f25d0cd52fd85b1c2173e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flow-evm | unit-397067 | `0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flow-evm | unit-397068 | `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flow-evm | unit-397069 | `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flow-evm | unit-397070 | `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flow-evm | unit-397071 | `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flow-evm | unit-397072 | `0x808d7c71ad2ba3fa531b068a2417c63106bc0949` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flow-evm | unit-397073 | `0x8731d54e9d02c286767d56ac03e8037c07e01e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flow-evm | unit-397074 | `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flow-evm | unit-397075 | `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flow-evm | unit-397076 | `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4159ed21d3019bc2c59205b7a56cbf622ead5b68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x816e810f9f787d669fb71932deabf6c83781cd48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x875bee36739e7ce6b60e056451c556a88c59b086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xaca82f7a0df6f81cfb569740c564cca90e805d2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe520d724f0c4b72faeb9c0580281f6fe1f3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf6f832466cd6c21967e0d954109403f36bc8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-396718 | `0x06d538690af257da524f25d0cd52fd85b1c2173e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-396719 | `0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-396720 | `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-396721 | `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-396722 | `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-396723 | `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-396724 | `0x693604e757ac7e2c4a8263594a18d69c35562341` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-396725 | `0x808d7c71ad2ba3fa531b068a2417c63106bc0949` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-396726 | `0x8731d54e9d02c286767d56ac03e8037c07e01e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-396727 | `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-396728 | `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-396729 | `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | glue | unit-396747 | `0x06d538690af257da524f25d0cd52fd85b1c2173e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | glue | unit-396748 | `0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | glue | unit-396749 | `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | glue | unit-396750 | `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | glue | unit-396751 | `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | glue | unit-396752 | `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | glue | unit-396753 | `0x808d7c71ad2ba3fa531b068a2417c63106bc0949` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | glue | unit-396754 | `0x8731d54e9d02c286767d56ac03e8037c07e01e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | glue | unit-396755 | `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | glue | unit-396756 | `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | glue | unit-396757 | `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x090194f1eedc134a680e3b488abb2d212dba8c01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x77c71633c34c3784ede189d74223122422492a0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x7c2fc16384361fbfdca555d8f781bf65f85cf28c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x8e8539e4ccd69123c623a106773f2b0cbbc58746` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x9c2dc7377717603eb92b2655c5f2e7997a4945bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | vana | unit-396808 | `0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | vana | unit-396809 | `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | vana | unit-396810 | `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | vana | unit-396811 | `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | vana | unit-396812 | `0x693604e757ac7e2c4a8263594a18d69c35562341` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | vana | unit-396813 | `0x808d7c71ad2ba3fa531b068a2417c63106bc0949` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | vana | unit-396814 | `0x8731d54e9d02c286767d56ac03e8037c07e01e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | vana | unit-396815 | `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | vana | unit-396816 | `0xb0d502e938ed5f4df2e681fe6e419ff29631d62b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | vana | unit-396817 | `0xc53e6d7018e2d10ebed643302567f8de752804fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | vana | unit-396818 | `0xf2c0e57f48276112a596e141817d93be472ed6c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | story | unit-396819 | `0x164a2de1bc5dc56f329909f7c97bae929cae557b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | story | unit-396820 | `0x2086f755a6d9254045c257ea3d382ef854849b0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | story | unit-396821 | `0x3a1293bdb83bbbdd5ebf4fac96605ad2021bbc0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | story | unit-396822 | `0x549943e04f40284185054145c6e4e9568c1d3241` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | story | unit-396823 | `0x88853d410299bcbfe5fcc9eef93c03115e908279` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | story | unit-396824 | `0xa272ffe20cffe769cdfc4b63088dcd2c82a2d8f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | story | unit-396825 | `0xa4bbddefaee27cd778c4ced30c0535ec06a8502e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | story | unit-396826 | `0xa7f3e26df31abcb20a6fe6be35ddc60702a32455` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | story | unit-396827 | `0xb0b2391a32e066fdf354ef7f4199300f920789f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | story | unit-396828 | `0xbab93b7ad7fe8692a878b95a8e689423437cc500` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | story | unit-396829 | `0xbba60da06c2c5424f03f7434542280fcad453d10` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gravity | unit-396830 | `0x0b38e83b86d491735feaa0a791f65c2b99535396` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gravity | unit-396831 | `0x0db9afb4c33be43a0a0e396fd1383b4ea97ab10a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gravity | unit-396832 | `0x17d65bf79e77b6ab21d8a0afed3bc8657d8ee0b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gravity | unit-396833 | `0x1c10cc06dc6d35970d1d53b2a23c76ef370d4135` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gravity | unit-396834 | `0x45d417612e177672958dc0537c45a8f8d754ac2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gravity | unit-396835 | `0x77c71633c34c3784ede189d74223122422492a0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gravity | unit-396836 | `0x9c2dc7377717603eb92b2655c5f2e7997a4945bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gravity | unit-396837 | `0xc1b8045a6ef2934cf0f78b0dbd489969fa9be7e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gravity | unit-396838 | `0xf6f832466cd6c21967e0d954109403f36bc8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-396845 | `0x06d538690af257da524f25d0cd52fd85b1c2173e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-396846 | `0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-396847 | `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-396848 | `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-396849 | `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-396850 | `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-396851 | `0x693604e757ac7e2c4a8263594a18d69c35562341` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-396852 | `0x808d7c71ad2ba3fa531b068a2417c63106bc0949` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-396853 | `0x8731d54e9d02c286767d56ac03e8037c07e01e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-396854 | `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-396855 | `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-396856 | `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396857 | `0x06d538690af257da524f25d0cd52fd85b1c2173e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396858 | `0x06eb48763f117c7be887296cdcdfad2e4092739c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396859 | `0x3052a0f6ab15b4ae1df39962d5ddefaca86dab47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396860 | `0x4a364f8c717caad9a442737eb7b8a55cc6cf18d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396861 | `0x53bf833a5d6c4dda888f69c22c88c9f356a41614` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396862 | `0x5c1a97c144a97e9b370f833a06c70ca8f2f30de5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396863 | `0x6694340fc020c5e6b96567843da2df01b2ce1eb6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396864 | `0x693604e757ac7e2c4a8263594a18d69c35562341` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396865 | `0x6d5e6657ef23f3636af84ee9db5b51b4ad2cf129` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396866 | `0x701a95707a0290ac8b90b3719e8ee5b210360883` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396867 | `0x8731d54e9d02c286767d56ac03e8037c07e01e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396868 | `0x8ee21165ecb7562ba716c9549c1de751282b9b33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396869 | `0xb0d502e938ed5f4df2e681fe6e419ff29631d62b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lightlink | unit-396870 | `0xe7ec689f432f29383f217e36e680b5c855051f25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | swellchain | n/a | 6 deployments: fantom `0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03`; fantom `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`; swellchain `0x0829f361a05d993d5ceb035ca6df3446b060970b`; swellchain `0xcc0587aebda397146cc828b445db130a94486e74`; kava `0x88124ef4a9ec47e691f254f2e8e348fd1e341e9b`; kava `0xdd69db25f6d620a7bad3023c5d32761d353d3de9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-396871 | `0x10e28ba4d7fc9cf39f34e20bbc5c58694b2f1a92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-396872 | `0x41a5b0470d96656fb3e8f68a218b39adbca3420b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-396873 | `0x62207a4d054376052bfcede2c00d113e97d4d247` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-396874 | `0x6b73d3cbbb278ce2e8698e983aeccdd94dc4594b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-396875 | `0xa76cd3a43751090c40a35c37b38aa06973cc6184` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-396876 | `0xb7a05a3a687ef09cc70e3f98b5f6a62f32e3ae58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-396877 | `0x164a2de1bc5dc56f329909f7c97bae929cae557b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-396878 | `0x2d93fbce4cffc15dd385a80b3f4cc1d4e76c38b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-396879 | `0x370dc69d5b49e6844c867efa752b419eac49aba8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-396880 | `0x3a1293bdb83bbbdd5ebf4fac96605ad2021bbc0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-396881 | `0x4f5f42799d1e01662b629ede265baea223e9f9c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-396882 | `0x549943e04f40284185054145c6e4e9568c1d3241` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-396883 | `0x87c367a0522aeb8ad9f9660d2250f1eac403c70f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-396884 | `0x88853d410299bcbfe5fcc9eef93c03115e908279` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-396885 | `0xa7f3e26df31abcb20a6fe6be35ddc60702a32455` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-396886 | `0xb0b2391a32e066fdf354ef7f4199300f920789f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-396887 | `0xbba60da06c2c5424f03f7434542280fcad453d10` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396888 | `0x183d6b82680189bb4db826f739cdc9527d467b25` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396889 | `0x221f0e1280ec657503ca55c708105f1e1529527d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396890 | `0x583548d69d63f4d56a75b78c55a0ce1584d29bbe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396891 | `0x5f9c011dff285e76fa64c14301fd6493a2f3b671` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396892 | `0x79f51a560298740c764a487655f8fb94c42ab4fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396893 | `0x91a5fe991ccb876d22847967ced24dcd7a426e0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396894 | `0x943c484278b8be05d119dfc73cfaa4c9d8f11a76` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396895 | `0x945320436abd33d21c0d7d79290627293b3cc7bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396896 | `0x953519953fe196a0c8a031157c751fc732ea5599` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396897 | `0x9c7007501faea5011d2e04cbdd4f65b8890a3f40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396898 | `0xaff6d1e61feda42fefb77e70084e38f68b9a7646` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396899 | `0xbc6de829570780d1248adb5ac4ff35b92b293e97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396900 | `0xc0bdf9152e5fe7e29ac2de8072fa42a3565df751` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | abstract | unit-396901 | `0xdd46bf5693cdd732d09091794efcf3ba62920157` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | peaq | unit-396924 | `0x07cd5a2702394e512aaae54f7a250ea0576e5e8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | peaq | unit-396925 | `0x352d8275aae3e0c2404d9f68f6cee084b5beb3dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | peaq | unit-396926 | `0x4cc10835f7e5d2eec2e1c2c0afd239b41ac29e32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | peaq | unit-396927 | `0x53bf833a5d6c4dda888f69c22c88c9f356a41614` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | peaq | unit-396928 | `0x55bdb4164d28fbaf0898e0ef14a589ac09ac9970` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | peaq | unit-396929 | `0x5c1a97c144a97e9b370f833a06c70ca8f2f30de5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | peaq | unit-396930 | `0x6694340fc020c5e6b96567843da2df01b2ce1eb6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | peaq | unit-396931 | `0x6d5e6657ef23f3636af84ee9db5b51b4ad2cf129` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | peaq | unit-396932 | `0x8943cb63eef1b3dba5f455bfb704477436e31c1a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | peaq | unit-396933 | `0xe7ec689f432f29383f217e36e680b5c855051f25` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | peaq | unit-396934 | `0xf2c0e57f48276112a596e141817d93be472ed6c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | botanix | unit-396935 | `0x118b37e3f8dc911bbc707abc8a1980f8357faf2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | botanix | unit-396936 | `0x3292c42e8e9ab3c6a12cfda556bbcb6f113b1e28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | botanix | unit-396937 | `0x3a1e3062414165a15d4cae4a6cbff6d83f60be55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | botanix | unit-396938 | `0x5e37084162504da9aaa8f441d5f9360d1fe9ad40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | botanix | unit-396939 | `0x714533808f5c4a8c3734998e7c53f477cc50d9ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | botanix | unit-396940 | `0xad41342a260b6b147d8cc4184326cb1140c1593e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | botanix | unit-396941 | `0xb0987cc8b9e2521e2234da21be9d01afb0544b6c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | botanix | unit-396942 | `0xdf43c9242b61d8a048a937063662d98da126a886` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | botanix | unit-396943 | `0xf785a6bcc6a2d5522d27a1fd11099a84e3710bb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x09d428a066e77806f9de48fe3a57e837ccd0912f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0b38e83b86d491735feaa0a791f65c2b99535396` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0d05066bd154d03445d220a8433e458405fedad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0eb74491493e9722cd876ada671ff8a62650ad83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x13379b489fb2e76cedf96bceaa2441e5930d75e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x146c8e409c113ed87c6183f4d25c50251dffbb3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1502fa4be69d526124d453619276faccab275d3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x17d65bf79e77b6ab21d8a0afed3bc8657d8ee0b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x19cfce47ed54a88614648dc3f19a5980097007dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1f605162282570dfa6255d27895587f4117f52fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2737d5331be90a5a2a3283f8b6aa6c427b5396b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x317d8bfc7f6d5f74ede9d9da3b7bbff9cbe90f14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x362fae9a75b27bbc550aac28a7c1f96c8d483120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3da4f8e456ac648c489c286b99ca37b666be7c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4315ba8863891035b5cb5594cd1a6c32eb6ae863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x44e255a15a8437d43613c41065dcf23b71c544ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4a23fed6807805861e10393fb85f508291c7adfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x644abb1e17291b4403966119d15ab081e4a487e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6503334b14ff08ed510d7216cfa0d7495114f5de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x694d8ddc304032b7348932a40acc0626d5ab58dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6eec9edb54666a85949e0d05feaff36bde21ce1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x749d57a943e738830064acfdc6d196a3f01b95ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x80f755e3091b2ad99c08da8d13e9c7635c1b8161` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x816e810f9f787d669fb71932deabf6c83781cd48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x873cfb4bae1ab6a5de753400e9d0616e10dced22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x875bee36739e7ce6b60e056451c556a88c59b086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x92caa67a41f967f16fdc570b54ad2e5f6de3344e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x957b12606690c7692ef92bb5c34a0e63baed99c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x95bba4c0dfc0f6bb4eb1dff570e4e6ac54573d7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9dda183deb4b3a8ae41253d384927ba654ffc5ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb083267307d53f1d3ba70e654671f0ab30a9a26e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xbaf88247907b2bdb6cde5321f4592782a9213276` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc1b8045a6ef2934cf0f78b0dbd489969fa9be7e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc86ff8a02fe7dda5de537d7341bcce6cf62d4373` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc8769abcf78584b5997ba4207a4ec72bf6b6962e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xce8cca271ebc0533920c83d39f417ed6a0abb7d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd29de5463f354b42c7a0a51253db7c45475868d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd4d039141fd179dc2e28bab79848c0c49455ab2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xda82a31df339bfdf0123661134b4db63cb1706f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xde48600aa18ae707f5d57e0faafec7c118abaeb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe520d724f0c4b72faeb9c0580281f6fe1f3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xeba85e362428ff1bcf0c26161c57227b7816ade4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xed73cfad9990e4a3d647fa216630d1493356324c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf066e864516c0103625938b4f004d2c1a143fde4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf1fcb4cbd57b67d683972a59b6a7b1e2e8bf27e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf6f832466cd6c21967e0d954109403f36bc8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf85b57136aea835ff4123133052e8461825a11f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xfbb5a71025bef1a8166c9bcb904a120aa17d6443` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | nibiru | unit-397055 | `0x01500764dd66079eab0c2881149bdf93f9cf394d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | nibiru | unit-397056 | `0x08c49257767c1f92634a9cdbf0663af0356a472a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | nibiru | unit-397057 | `0x108f4c02c9fcdf862e5f5131054c50f13703f916` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | nibiru | unit-397058 | `0x12a272a581fee5577a5dfa371afeb4b2f3a8c2f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | nibiru | unit-397059 | `0x28bec7e30e6faee657a03e19bf1128aad7632a00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | nibiru | unit-397060 | `0x6bebd4bddff9478cf8dddfc54278f805be9c51b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | nibiru | unit-397061 | `0x851c9d74bf5cfaeb4a0082a55a65a8f2718b337f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | nibiru | unit-397062 | `0xc16977205c53cd854136031bd2128f75d6ff63c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | nibiru | unit-397063 | `0xc7616b08ffec8b4ba47188bfd1a814316f3e3d79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | nibiru | unit-397064 | `0xcc0587aebda397146cc828b445db130a94486e74` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | nibiru | unit-397065 | `0xcda5b77e2e2268d9e09c874c1b9a4c3f07b37555` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-397092 | `0x01a7c805cc47abdb254cd8aad29de5e447f59224` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-397093 | `0x16f3f98d82d965988e6853681fd578f4d719a1c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-397094 | `0x259ef40ebe42073bd70966519b53791f03a9212f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-397095 | `0x55acee547df909cf844e32dd66ee55a6f81dc71b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-397096 | `0x6effa1afe190a652a8204d318fec03d3dd9402d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-397097 | `0x8619ba1b324e099cb2227060c4bc5bdee14456c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-397098 | `0x8d92105ae654f494ce10b3b3e4c58186e3e0da00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-397099 | `0xb83ab1ff56ccd2b9e9914c68c182135c3a7ecfcd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-397100 | `0xbb4957e44401a31ed81cab33539d9e8993fa13ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0412cd2d9f333c68ca6d208b2aa846a5f2901787` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x06d538690af257da524f25d0cd52fd85b1c2173e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08bacc0ba73681af12e3df616010032422ae75d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0a6a15964fee494a881338d65940430797f0d97c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0eb74491493e9722cd876ada671ff8a62650ad83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10e28ba4d7fc9cf39f34e20bbc5c58694b2f1a92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x13379b489fb2e76cedf96bceaa2441e5930d75e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1502fa4be69d526124d453619276faccab275d3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x15efb7850aa5b7a05184579b0aab501091e7b389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x19b2217721c33daffe9c576289cff174fe61dcb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x21e6738985aea7d8c547616ffb52d4fe56d92b9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x22bdf9633f3e679785638db690b85dc0dc8b35b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2a63ced56acfaf53187cfbddd4b9649f2808ccfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x362fae9a75b27bbc550aac28a7c1f96c8d483120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x41a5b0470d96656fb3e8f68a218b39adbca3420b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x430102caac989c9259edb9a80a772ce547ef0f4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5177a8bf01842fd5b47f3bafee098f46b561a95b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x579d29810c8e5b84c18d9ae2e47219ce028536d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x62207a4d054376052bfcede2c00d113e97d4d247` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x647fd4d817e395616f2eb57b75ab49210cde5cc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x693604e757ac7e2c4a8263594a18d69c35562341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6b25bd29496ef5280f5c6b097733b52735088c41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6b73d3cbbb278ce2e8698e983aeccdd94dc4594b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x701a95707a0290ac8b90b3719e8ee5b210360883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7eb97441c0c637377a441599412434e554cb3f72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x816e810f9f787d669fb71932deabf6c83781cd48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8731d54e9d02c286767d56ac03e8037c07e01e98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x873cfb4bae1ab6a5de753400e9d0616e10dced22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8899da8a3621708709feb9ee3991299769e96e25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8db623d439c8c4dfa1ca94e4cd3eb8b3aaff8331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa76cd3a43751090c40a35c37b38aa06973cc6184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb0d502e938ed5f4df2e681fe6e419ff29631d62b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb7a05a3a687ef09cc70e3f98b5f6a62f32e3ae58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcdb3ad3d8f873a9a1c35e36f4545b15e293ed570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd433efa0ef993b14fe67ca92fcd555e95486f184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd6a291aaeeab8d118fa07b649760bb84a693e26e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xde48600aa18ae707f5d57e0faafec7c118abaeb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe520d724f0c4b72faeb9c0580281f6fe1f3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf6f832466cd6c21967e0d954109403f36bc8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf713529665cb904b48b8716cf305c41b1f61bc57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf78ea70b81946b746c79e4bea38924089e33808c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | iota-evm | unit-397109 | `0x0db9afb4c33be43a0a0e396fd1383b4ea97ab10a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | iota-evm | unit-397110 | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | iota-evm | unit-397111 | `0x1c10cc06dc6d35970d1d53b2a23c76ef370d4135` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | iota-evm | unit-397112 | `0x711b5aafd4d0a5b7b863ca434a2678d086830d8e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | iota-evm | unit-397113 | `0x77c71633c34c3784ede189d74223122422492a0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | iota-evm | unit-397114 | `0x8c1014b5936dd88baa5f4db0423c3003615e03a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | iota-evm | unit-397115 | `0x8e8539e4ccd69123c623a106773f2b0cbbc58746` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | iota-evm | unit-397116 | `0x9c2dc7377717603eb92b2655c5f2e7997a4945bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | iota-evm | unit-397117 | `0xcd4302d950e7e6606b6910cd232758b5ad423311` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-397118 | `0x0ceb237e109ee22374a567c6b09f373c73fa4cbb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-397119 | `0x102d758f688a4c1c5a80b116bd945d4455460282` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-397120 | `0x1343994e136b6b15cbb2eb4075e0e73b8c4ebce0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-397121 | `0x43f2376d5d03553ae72f4a8093bbe9de4336eb08` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-397122 | `0x9895d81bb462a195b4922ed7de0e3acd007c32cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-397123 | `0xca367694cdac8f152e33683bb36cc9d6a73f1ef2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-397124 | `0xda6087e69c51e7d31b6dbad276a3c44703dfdcad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0535d19ca4ef74119c31e1347d5f85232955cd31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09d428a066e77806f9de48fe3a57e837ccd0912f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d05066bd154d03445d220a8433e458405fedad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0eb74491493e9722cd876ada671ff8a62650ad83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10b4155e44226de51986d758087b90f6b7392771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13379b489fb2e76cedf96bceaa2441e5930d75e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13e1b6c2fa4ead33b04b40a0d58d367243ae6e9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1502fa4be69d526124d453619276faccab275d3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x165a45083f43bf3d0df756bd51e3855bdef45250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17d65bf79e77b6ab21d8a0afed3bc8657d8ee0b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1cf31666c06ac3401ed0c1c6346c4a9425dd7de4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f29c7cd7448c9c6115d8bcb55952c1d2b51c71e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x24576fe78583e3618079890557cf18b96779fb6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a6c43e0dbdcde23d40c82f45682bc6d8a6db219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3052a0f6ab15b4ae1df39962d5ddefaca86dab47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x362fae9a75b27bbc550aac28a7c1f96c8d483120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x36ed193dc7160d3858ec250e69d12b03ca087d08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x389c106379acf1e127bf31fa1fdbe62dbfb55b9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3aa9fd32fc5c28e1e5f8725cff5c2a607b8303d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4315ba8863891035b5cb5594cd1a6c32eb6ae863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4694900bdba99edf07a2e46c4093f88f9106a90d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x47f361d821af70178afac11742bed5a823717644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4dcbfc0249e8d5032f89d6461218a9d2efff5125` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4e422b0acb2bd7e3ac70b5c0e5eb806e86a94038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x503c5cfea3477e0a576c8cf5354023854b7a06ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x55bdb4164d28fbaf0898e0ef14a589ac09ac9970` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x585138287a60ae9ee232238f31e8613ffd7e8c81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c1a97c144a97e9b370f833a06c70ca8f2f30de5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5eb3bbd97f8e0b612733f11c9eb33356ecf874b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x693604e757ac7e2c4a8263594a18d69c35562341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c33a7b29c8b012d060f3a5046f3ee5ac48f4780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6ce9bf8cdab780416ad1fd87b318a077d2f50eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x749d57a943e738830064acfdc6d196a3f01b95ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ed75072d5e21901ec140fcb3f53aa5c8ded92af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x808d7c71ad2ba3fa531b068a2417c63106bc0949` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x816e810f9f787d669fb71932deabf6c83781cd48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x873cfb4bae1ab6a5de753400e9d0616e10dced22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x875bee36739e7ce6b60e056451c556a88c59b086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8943cb63eef1b3dba5f455bfb704477436e31c1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x962f92cee9a559d705f8999c92752ebcdd550616` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9e216659f3292aa3259a3b9433a1f73f92f2041d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb083267307d53f1d3ba70e654671f0ab30a9a26e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb1641d94684225b72f97e52b2b02ad07f7ba9089` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbbb097f94b416d39c562870a407cb0656a76e800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2b638cb5042c1b3c5d5c969361fb50569840583` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc53e6d7018e2d10ebed643302567f8de752804fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcbe78230cca58b9ef4c3c5d1bc0d7e4b3206588a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc3633a02d2a9fa29e83cd205d37d186a12fea34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd240a859efc77b7455ad1b1402357784a2d72a1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd47b03ee6d86cf251ee7860fb2acf9f91b9fd4d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd4d039141fd179dc2e28bab79848c0c49455ab2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9050e7043102a0391f81462a3916326f86331f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde48600aa18ae707f5d57e0faafec7c118abaeb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe520d724f0c4b72faeb9c0580281f6fe1f3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe7ec689f432f29383f217e36e680b5c855051f25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf406f7cd82abfdedf8f718d48912ee40a210a655` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf53ca2fb2302c6aa3f443c8041adfb7caecd84aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf6f832466cd6c21967e0d954109403f36bc8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfbb5a71025bef1a8166c9bcb904a120aa17d6443` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396965 | `0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396966 | `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396967 | `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396968 | `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396969 | `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396970 | `0x808d7c71ad2ba3fa531b068a2417c63106bc0949` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396971 | `0x8731d54e9d02c286767d56ac03e8037c07e01e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396972 | `0x8943cb63eef1b3dba5f455bfb704477436e31c1a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396973 | `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396974 | `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396975 | `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396976 | `0xc53e6d7018e2d10ebed643302567f8de752804fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396977 | `0xe4111e53f1b59bbee7dd88394ee995f058b404ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-396978 | `0xf2c0e57f48276112a596e141817d93be472ed6c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0412cd2d9f333c68ca6d208b2aa846a5f2901787` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x063920c5f0734528a99644a1f8a42bd88eed7a13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x08bacc0ba73681af12e3df616010032422ae75d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x08ed1d79d509a6f1020685535028ae60c144441e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0cff9acef65a64b5d76e83b70787b27f7416644c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0eb74491493e9722cd876ada671ff8a62650ad83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10e28ba4d7fc9cf39f34e20bbc5c58694b2f1a92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x13379b489fb2e76cedf96bceaa2441e5930d75e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1502fa4be69d526124d453619276faccab275d3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x15efb7850aa5b7a05184579b0aab501091e7b389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19b2217721c33daffe9c576289cff174fe61dcb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c32cab35865d81fba1bb74d7575e2f7a8646cfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x20293edd4f52f81234b3997b9ae4742c48005858` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x21e6738985aea7d8c547616ffb52d4fe56d92b9e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-396981 | `0x22bdf9633f3e679785638db690b85dc0dc8b35b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x27a16dc786820b16e5c9028b75b99f6f604b5d26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x362fae9a75b27bbc550aac28a7c1f96c8d483120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3aa9fd32fc5c28e1e5f8725cff5c2a607b8303d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x411c77b163653044dbeb7a42e5b1b9e60b24ab67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x41a5b0470d96656fb3e8f68a218b39adbca3420b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5177a8bf01842fd5b47f3bafee098f46b561a95b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x53b41a010ba094a22c2bc0c0c05bac9312aad576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x579d29810c8e5b84c18d9ae2e47219ce028536d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e8ec15acb5aa94d5f0589e54441b31c5e0b992d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x62207a4d054376052bfcede2c00d113e97d4d247` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x693604e757ac7e2c4a8263594a18d69c35562341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b25bd29496ef5280f5c6b097733b52735088c41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b73d3cbbb278ce2e8698e983aeccdd94dc4594b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-396983 | `0x6ce9bf8cdab780416ad1fd87b318a077d2f50eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7eb97441c0c637377a441599412434e554cb3f72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f0369206d8a700514574daaa0634b8a1f7149d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x808d7c71ad2ba3fa531b068a2417c63106bc0949` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x816e810f9f787d669fb71932deabf6c83781cd48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x82bb122e9a665f3c6fd51186594800a6cfa1beda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x873cfb4bae1ab6a5de753400e9d0616e10dced22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8899da8a3621708709feb9ee3991299769e96e25` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-396984 | `0x8db623d439c8c4dfa1ca94e4cd3eb8b3aaff8331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9aa02d4fae7f58b8e8f34c66e756cc734dac7fe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa73a052e4701734f6a95a89fb3a38f2294150d28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa76cd3a43751090c40a35c37b38aa06973cc6184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb7a05a3a687ef09cc70e3f98b5f6a62f32e3ae58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-396985 | `0xc2b638cb5042c1b3c5d5c969361fb50569840583` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd47b03ee6d86cf251ee7860fb2acf9f91b9fd4d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd6a291aaeeab8d118fa07b649760bb84a693e26e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdbebef074f472da5ee7e46ab404c91e0e5798ea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc181bd607330aeebef6ea62e03e5e1fb4b6f7c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde48600aa18ae707f5d57e0faafec7c118abaeb2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-396986 | `0xdfc47dcef7e8f9ab19a1b8af3eecf000c7ea0b80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe520d724f0c4b72faeb9c0580281f6fe1f3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf6f832466cd6c21967e0d954109403f36bc8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf713529665cb904b48b8716cf305c41b1f61bc57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf78ea70b81946b746c79e4bea38924089e33808c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xff2eeeae68bca3e448babca20e64dfde44b25217` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | superposition | unit-397018 | `0x06eb48763f117c7be887296cdcdfad2e4092739c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | superposition | unit-397019 | `0x4a364f8c717caad9a442737eb7b8a55cc6cf18d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | superposition | unit-397020 | `0x5c1a97c144a97e9b370f833a06c70ca8f2f30de5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | superposition | unit-397021 | `0x8ee21165ecb7562ba716c9549c1de751282b9b33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | superposition | unit-397022 | `0xafb39384cd5b7d84ed4d569b7cec294eb1dc5ee5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | superposition | unit-397023 | `0xe7ec689f432f29383f217e36e680b5c855051f25` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-397032 | `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-397033 | `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-397034 | `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-397035 | `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-397036 | `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-397037 | `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x06d538690af257da524f25d0cd52fd85b1c2173e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0cb0b86d8aa2a28334987009144c066774900512` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0eb74491493e9722cd876ada671ff8a62650ad83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1041d127b2d4bc700f0f563883bc689502606918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x13379b489fb2e76cedf96bceaa2441e5930d75e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1502fa4be69d526124d453619276faccab275d3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x18d1d98e3f8bc4017d77b91020593128f50fca65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1e9999bc6a5511e8bacd48e6bbc660d9db428da3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x26727c78b0209d9e787b2f9ac8f0238b122a3098` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x38ad194962c4f18114751c5857cbf6080dec0041` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4f579e60f4c0e5e1400c3dfee696d71d625246fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5871a7f88b0f3f5143bf599fd45f8c0dc237e881` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6013a927605fc5c415c5fddfce68ca9c0d43fd21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x73a755894394429a68ad2474981780e0e2429ece` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x794fe59f3427b89271868c0e2da4e343a9680c32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7967d9b6190d6bf4f306a6888ec4d951ffd47e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x873cfb4bae1ab6a5de753400e9d0616e10dced22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x933c8ef7befb2ea7b90d7729d2ee81fd3bf927e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9361dd367c582ccf872a4838c4fc689952217c58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa2f60ff6c6c2163519054a922e5b478863d07965` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc4c85df97d6aa014da810bb0a4e83de68031d208` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd00d14b48ecc171eb8b3e8862c4efe6092592659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd91d034bca99c410ea794f34b228df68fb092cb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdd002227d9bc27f10066ed9a17be89c43bcafc31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xde48600aa18ae707f5d57e0faafec7c118abaeb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe3a3d6c0ed264f6e143e254225301f32ccdc1633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe520d724f0c4b72faeb9c0580281f6fe1f3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe72ee4edd7e1c0c1fe47a04f285465530a27e905` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xea2910d0c931e6a760e9ba7f9d0705c03940ca6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf6f832466cd6c21967e0d954109403f36bc8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xff4a2802d6f6b6a9fe2c8ebfa10350617ddb539b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | codex | unit-397086 | `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | codex | unit-397087 | `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | codex | unit-397088 | `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | codex | unit-397089 | `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | codex | unit-397090 | `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | codex | unit-397091 | `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plume | unit-397125 | `0x193564d8012a3fe2a2d886e5caeb8920af85cc85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plume | unit-397126 | `0x2d870d17e640ed6c057afbaa0df56b8dea5cf2f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plume | unit-397127 | `0x3d07d5059004f494a5f075d23cb383359e5ac412` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plume | unit-397128 | `0x45d2cf18fd16090d180c23c6eaf9cd8541dbaadb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plume | unit-397129 | `0x4683ce822272cd66cea73f5f1f9f5cbcaef4f066` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plume | unit-397130 | `0x5e3291174f9c07a9a73debe08954617a4d95e253` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plume | unit-397131 | `0x9909fa99b7f7ee7f1c0cbf133f411d43083631e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plume | unit-397132 | `0xabd218304aad937eea0822c598ffce59f4409e61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plume | unit-397133 | `0xbbfab55b6c2ee954610cf92a750db332ba97dd60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plume | unit-397134 | `0xca59ca09e5602fae8b629dee83ffa819741f14be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plume | unit-397135 | `0xf26d57bbe1d99561b13003783b5e040b71adcb14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | degen | unit-397044 | `0x06d538690af257da524f25d0cd52fd85b1c2173e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | degen | unit-397045 | `0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | degen | unit-397046 | `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | degen | unit-397047 | `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | degen | unit-397048 | `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | degen | unit-397049 | `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | degen | unit-397050 | `0x808d7c71ad2ba3fa531b068a2417c63106bc0949` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | degen | unit-397051 | `0x8731d54e9d02c286767d56ac03e8037c07e01e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | degen | unit-397052 | `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | degen | unit-397053 | `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | degen | unit-397054 | `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | rari-chain | unit-396783 | `0x17d65bf79e77b6ab21d8a0afed3bc8657d8ee0b2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | rari-chain | unit-396784 | `0x77c71633c34c3784ede189d74223122422492a0f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | rari-chain | unit-396785 | `0x875bee36739e7ce6b60e056451c556a88c59b086` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | rari-chain | unit-396786 | `0x8e8539e4ccd69123c623a106773f2b0cbbc58746` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | rari-chain | unit-396787 | `0x9c2dc7377717603eb92b2655c5f2e7997a4945bd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | rari-chain | unit-396788 | `0xc1b8045a6ef2934cf0f78b0dbd489969fa9be7e4` | ❓ Unverified |

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
| Stargate V2 - Zellic FINAL Audit Report.pdf | StargateOFT | ambiguous — not counted | StargateOFT (alternative) `0x1c10cc06dc6d35970d1d53b2a23c76ef370d4135` — liveness: live (code_present_context)<br>StargateOFT (alternative) `0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` — deployed 2024-06-14 03:24:38+03 — liveness: live (code_present_context)<br>StargateOFT (alternative) `0xeb8d955d8ae221e5b502851ddd78e6c4498db4f6` — liveness: live (code_present_context)<br>StargateOFT (alternative) `0xa4272ad93ac5d2ff048dd6419c88eb4c1002ec6b` — liveness: live (current_address_book_code)<br>StargateOFT (alternative) `0xb0d27478a40223e427697da523c6a3daf29aaffb` — liveness: live (current_address_book_code)<br>StargateOFT (alternative) `0x28e0f0eed8d6a6a96033feee8b2d7f32eb5ccc48` — liveness: live (code_present_context)<br>StargateOFT (alternative) `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | StargatePool | ambiguous — not counted | StargatePool (alternative) `0xf7628d84a2bbd9bb9c8e686ac95bb5d55169f3f1` — deployed 2024-05-27 22:10:26+03 — liveness: live (code_present_context)<br>StargatePool (alternative) `0x268ca24daeff1fac2ed883c598200ccbb79e931d` — deployed 2024-05-27 22:15:23+03 — liveness: live (code_present_context)<br>StargatePool (alternative) `0x4c1d3fc3fc3c177c3b633427c2f769276c547463` — deployed 2024-05-27 22:10:14+03 — liveness: live (code_present_context)<br>StargatePool (alternative) `0xe9aba835f813ca05e50a6c0ce65d0d74390f7de7` — deployed 2025-02-03 23:50:05+03 — liveness: live (code_present_context)<br>StargatePool (alternative) `0x36ed193dc7160d3858ec250e69d12b03ca087d08` — deployed 2024-05-27 22:10:10+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | StargatePoolNative | ambiguous — not counted | StargatePoolNative (alternative) `0xc2b638cb5042c1b3c5d5c969361fb50569840583` — deployed 2024-05-27 22:10:11+03 — liveness: live (code_present_context)<br>StargatePoolNative (alternative) `0x81f6138153d473e8c5ecebd3dc8cd4903506b075` — deployed 2024-05-27 22:10:11+03 — liveness: live (code_present_context)<br>StargatePoolNative (alternative) `0xe9aba835f813ca05e50a6c0ce65d0d74390f7de7` — deployed 2025-02-12 03:10:28+03 — liveness: live (current_address_book_code)<br>0x2f6f07… (alternative) `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590` — liveness: live (current_address_book_code)<br>0x2f6f07… (alternative) `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590` — liveness: live (current_address_book_code)<br>StargatePoolNative (alternative) `0x77b2043768d28e9c9ab44e1abfc95944bce57931` — deployed 2024-05-27 22:14:59+03 — liveness: live (code_present_context)<br>StargatePoolNative (alternative) `0xa45b5130f36cdca45667738e2a258ab09f4a5f7f` — deployed 2024-05-27 22:10:08+03 — liveness: live (code_present_context)<br>0x221f0e… (alternative) `0x221f0e1280ec657503ca55c708105f1e1529527d` — liveness: live (current_address_book_code)<br>StargatePoolNative (alternative) `0xdc181bd607330aeebef6ea62e03e5e1fb4b6f7c7` — deployed 2024-05-27 22:10:09+03 — liveness: live (code_present_context)<br>StargatePoolNative (alternative) `0xe8cdf27acd73a434d661c84887215f7598e7d0d3` — deployed 2024-05-27 22:10:09+03 — liveness: live (code_present_context)<br>0x8731d5… (alternative) `0x8731d54e9d02c286767d56ac03e8037c07e01e98` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | StargatePoolUSDC | ambiguous — not counted | StargatePoolUSDC (alternative) `0x5634c4a5fed09819e3c46d86a965dd9447d86e47` — deployed 2024-05-27 22:10:09+03 — liveness: live (current_address_book_code)<br>StargatePoolUSDC (alternative) `0xb1eead6959cb5bb9b20417d6689922523b2b86c3` — deployed 2025-02-03 23:50:15+03 — liveness: live (code_present_context)<br>StargatePoolUSDC (alternative) `0xac290ad4e0c891fdc295ca4f0a6214cf6dc6acdc` — deployed 2024-05-27 22:10:36+03 — liveness: live (code_present_context)<br>StargatePoolUSDC (alternative) `0xce8cca271ebc0533920c83d39f417ed6a0abb7d0` — deployed 2024-05-27 22:10:17+03 — liveness: live (code_present_context)<br>0x2f6f07… (alternative) `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590` — liveness: live (current_address_book_code)<br>StargatePoolUSDC (alternative) `0x81f6138153d473e8c5ecebd3dc8cd4903506b075` — deployed 2024-05-27 22:10:16+03 — liveness: live (code_present_context)<br>StargatePoolUSDC (alternative) `0x45d417612e177672958dc0537c45a8f8d754ac2e` — deployed 2024-08-01 03:40:44+03 — liveness: live (code_present_context)<br>StargatePoolUSDC (alternative) `0xe8cdf27acd73a434d661c84887215f7598e7d0d3` — deployed 2024-05-27 22:10:16+03 — liveness: live (code_present_context)<br>StargatePoolUSDC (alternative) `0x27a16dc786820b16e5c9028b75b99f6f604b5d26` — deployed 2024-05-27 22:10:17+03 — liveness: live (code_present_context)<br>StargatePoolUSDC (alternative) `0x3fc69cc4a842838bcdc9499178740226062b14e4` — deployed 2024-05-27 22:10:20+03 — liveness: live (code_present_context)<br>StargatePoolUSDC (alternative) `0xc026395860db2d07ee33e05fe50ed7bd583189c7` — deployed 2024-05-27 22:15:47+03 — liveness: live (code_present_context)<br>StargatePoolUSDC (alternative) `0x962bd449e630b0d928f308ce63f1a21f02576057` — deployed 2024-08-01 03:40:46+03 — liveness: live (current_address_book_code)<br>StargatePoolUSDC (alternative) `0xa272ffe20cffe769cdfc4b63088dcd2c82a2d8f9` — deployed 2025-02-19 04:11:26+03 — liveness: live (code_present_context)<br>0x45f1a9… (alternative) `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` — liveness: live (current_address_book_code)<br>StargatePoolUSDC (alternative) `0x9aa02d4fae7f58b8e8f34c66e756cc734dac7fe4` — deployed 2024-05-27 22:15:00+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | TokenMessaging | ambiguous — not counted | 0x45a01e… (alternative) `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` — liveness: live (current_address_book_code)<br>0x53bf83… (alternative) `0x53bf833a5d6c4dda888f69c22c88c9f356a41614` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` — liveness: live (current_address_book_code)<br>0x45f1a9… (alternative) `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` — liveness: live (current_address_book_code)<br>0x3a1e30… (alternative) `0x3a1e3062414165a15d4cae4a6cbff6d83f60be55` — liveness: live (current_address_book_code)<br>0x9c2dc7… (alternative) `0x9c2dc7377717603eb92b2655c5f2e7997a4945bd` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x4e422b0acb2bd7e3ac70b5c0e5eb806e86a94038` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0xcbe78230cca58b9ef4c3c5d1bc0d7e4b3206588a` — deployed 2024-05-27 22:10:30+03 — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x6e3d884c96d640526f273c61dfcf08915ebd7e2b` — deployed 2024-05-27 22:10:19+03 — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0xb1eead6959cb5bb9b20417d6689922523b2b86c3` — deployed 2025-02-12 03:10:35+03 — liveness: live (current_address_book_code)<br>0xaf54be… (alternative) `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x2086f755a6d9254045c257ea3d382ef854849b0f` — deployed 2025-02-19 04:11:31+03 — liveness: live (current_address_book_code)<br>0x45d417… (alternative) `0x45d417612e177672958dc0537c45a8f8d754ac2e` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0xbe574b6219c6d985d08712e90c21a88fd55f1ae8` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x19cfce47ed54a88614648dc3f19a5980097007dd` — deployed 2024-05-27 22:10:25+03 — liveness: live (current_address_book_code)<br>0x45a01e… (alternative) `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` — liveness: live (current_address_book_code)<br>0x88853d… (alternative) `0x88853d410299bcbfe5fcc9eef93c03115e908279` — liveness: live (current_address_book_code)<br>0xf26d57… (alternative) `0xf26d57bbe1d99561b13003783b5e040b71adcb14` — liveness: live (current_address_book_code)<br>0x183d6b… (alternative) `0x183d6b82680189bb4db826f739cdc9527d467b25` — liveness: live (current_address_book_code)<br>0x16f3f9… (alternative) `0x16f3f98d82d965988e6853681fd578f4d719a1c0` — liveness: live (current_address_book_code)<br>0x102d75… (alternative) `0x102d758f688a4c1c5a80b116bd945d4455460282` — deployed 2025-09-11 20:38:30+03 — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x6d6620efa72948c5f68a3c8646d58c00d3f4a980` — deployed 2024-05-27 22:16:11+03 — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x41b491285a4f888f9f636cec8a363ab9770a0aef` — deployed 2024-05-27 22:10:58+03 — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0xf1fcb4cbd57b67d683972a59b6a7b1e2e8bf27e6` — deployed 2024-05-27 22:10:31+03 — liveness: live (current_address_book_code)<br>0x88853d… (alternative) `0x88853d410299bcbfe5fcc9eef93c03115e908279` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x1502fa4be69d526124d453619276faccab275d3d` — deployed 2024-06-14 03:24:40+03 — liveness: live (current_address_book_code)<br>0x45a01e… (alternative) `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x2761c39102bcf7fc6365580d94cd1882f9cc2650` — liveness: live (current_address_book_code)<br>0x45a01e… (alternative) `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0xaf368c91793cb22739386dfcbbb2f1a9e4bcbebf` — deployed 2025-02-03 23:50:20+03 — liveness: live (current_address_book_code)<br>0xb0b239… (alternative) `0xb0b2391a32e066fdf354ef7f4199300f920789f0` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x45d417612e177672958dc0537c45a8f8d754ac2e` — liveness: live (current_address_book_code)<br>0x06eb48… (alternative) `0x06eb48763f117c7be887296cdcdfad2e4092739c` — liveness: live (current_address_book_code)<br>0xaf5191… (alternative) `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x6ce9bf8cdab780416ad1fd87b318a077d2f50eac` — deployed 2024-05-27 22:15:16+03 — liveness: live (current_address_book_code)<br>0x808d7c… (alternative) `0x808d7c71ad2ba3fa531b068a2417c63106bc0949` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x5f688f563dc16590e570f97b542fa87931af2fed` — deployed 2024-05-27 22:10:17+03 — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x17e450be3ba9557f2378e20d64ad417e59ef9a34` — deployed 2024-05-27 22:10:26+03 — liveness: live (current_address_book_code)<br>0x6b73d3… (alternative) `0x6b73d3cbbb278ce2e8698e983aeccdd94dc4594b` — liveness: live (current_address_book_code)<br>0x693604… (alternative) `0x693604e757ac7e2c4a8263594a18d69c35562341` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x5634c4a5fed09819e3c46d86a965dd9447d86e47` — deployed 2024-05-27 22:10:23+03 — liveness: live (current_address_book_code)<br>0x08c492… (alternative) `0x08c49257767c1f92634a9cdbf0663af0356a472a` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x5f688f563dc16590e570f97b542fa87931af2fed` — liveness: live (current_address_book_code)<br>0x45a01e… (alternative) `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` — liveness: live (current_address_book_code)<br>0x1c10cc… (alternative) `0x1c10cc06dc6d35970d1d53b2a23c76ef370d4135` — liveness: live (current_address_book_code)<br>0x45f1a9… (alternative) `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` — liveness: live (current_address_book_code)<br>0xaf54be… (alternative) `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | TokenMessagingOptions | unmatched — not counted | — | listed in scope programs | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | CreditMessaging | ambiguous — not counted | 0xad4134… (alternative) `0xad41342a260b6b147d8cc4184326cb1140c1593e` — liveness: live (current_address_book_code)<br>0xb0d502… (alternative) `0xb0d502e938ed5f4df2e681fe6e419ff29631d62b` — liveness: live (current_address_book_code)<br>0xbba60d… (alternative) `0xbba60da06c2c5424f03f7434542280fcad453d10` — liveness: live (current_address_book_code)<br>0xc0bdf9… (alternative) `0xc0bdf9152e5fe7e29ac2de8072fa42a3565df751` — liveness: live (current_address_book_code)<br>0x5e3291… (alternative) `0x5e3291174f9c07a9a73debe08954617a4d95e253` — liveness: live (current_address_book_code)<br>0xaf54be… (alternative) `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` — liveness: live (current_address_book_code)<br>0xc7616b… (alternative) `0xc7616b08ffec8b4ba47188bfd1a814316f3e3d79` — liveness: live (current_address_book_code)<br>0x352d82… (alternative) `0x352d8275aae3e0c2404d9f68f6cee084b5beb3dd` — liveness: live (current_address_book_code)<br>CreditMessaging (alternative) `0xef9ec60e186c8a1a0439af0aedb6deb9f34a2c88` — liveness: live (current_address_book_code)<br>0x9d1b16… (alternative) `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` — liveness: live (current_address_book_code)<br>CreditMessaging (alternative) `0x99e799cbd972362a84145d98498db4430a66a734` — liveness: live (current_address_book_code)<br>0x9d1b16… (alternative) `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` — liveness: live (current_address_book_code)<br>CreditMessaging (alternative) `0xaf368c91793cb22739386dfcbbb2f1a9e4bcbebf` — deployed 2025-02-12 03:10:41+03 — liveness: live (current_address_book_code)<br>0x164a2d… (alternative) `0x164a2de1bc5dc56f329909f7c97bae929cae557b` — liveness: live (current_address_book_code)<br>0x9d1b16… (alternative) `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` — liveness: live (current_address_book_code)<br>0xbba60d… (alternative) `0xbba60da06c2c5424f03f7434542280fcad453d10` — liveness: live (current_address_book_code)<br>CreditMessaging (alternative) `0x3a1293bdb83bbbdd5ebf4fac96605ad2021bbc0f` — deployed 2025-02-19 04:11:36+03 — liveness: live (current_address_book_code)<br>0x224d8f… (alternative) `0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03` — liveness: live (current_address_book_code)<br>CreditMessaging (alternative) `0xe1ad845d93853fff44990ae0dcecd8575293681e` — deployed 2025-02-03 23:50:30+03 — liveness: live (current_address_book_code)<br>0xaf5191… (alternative) `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` — liveness: live (current_address_book_code)<br>0x4a364f… (alternative) `0x4a364f8c717caad9a442737eb7b8a55cc6cf18d8` — liveness: live (current_address_book_code)<br>0x9d1b16… (alternative) `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` — liveness: live (current_address_book_code)<br>0x9d1b16… (alternative) `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` — liveness: live (current_address_book_code)<br>0xaf54be… (alternative) `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` — liveness: live (current_address_book_code)<br>CreditMessaging (alternative) `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` — liveness: live (current_address_book_code)<br>0x43f237… (alternative) `0x43f2376d5d03553ae72f4a8093bbe9de4336eb08` — deployed 2025-09-11 20:38:34+03 — liveness: live (current_address_book_code)<br>0x45a01e… (alternative) `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` — liveness: live (current_address_book_code)<br>0xaf5191… (alternative) `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | CreditMessagingOptions | unmatched — not counted | — | listed in scope programs | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | StargateMultiRewarder | ambiguous — not counted | 0x62207a… (alternative) `0x62207a4d054376052bfcede2c00d113e97d4d247` — liveness: live (current_address_book_code)<br>StargateMultiRewarder (alternative) `0xe89ca5c58e2978c031f7796ca8580bc88ea0b3dd` — deployed 2024-05-27 22:10:50+03 — liveness: live (current_address_book_code)<br>StargateMultiRewarder (alternative) `0x957b12606690c7692ef92bb5c34a0e63baed99c7` — deployed 2024-05-27 22:10:43+03 — liveness: live (current_address_book_code)<br>0x5c1a97… (alternative) `0x5c1a97c144a97e9b370f833a06c70ca8f2f30de5` — liveness: live (current_address_book_code)<br>StargateMultiRewarder (alternative) `0x4dcbfc0249e8d5032f89d6461218a9d2efff5125` — liveness: live (current_address_book_code)<br>StargateMultiRewarder (alternative) `0xd240a859efc77b7455ad1b1402357784a2d72a1b` — deployed 2024-05-27 22:16:02+03 — liveness: live (current_address_book_code)<br>StargateMultiRewarder (alternative) `0x5871a7f88b0f3f5143bf599fd45f8c0dc237e881` — deployed 2024-05-27 22:18:11+03 — liveness: live (current_address_book_code)<br>0xe4111e… (alternative) `0xe4111e53f1b59bbee7dd88394ee995f058b404ea` — liveness: live (current_address_book_code)<br>0x6ce9bf… (alternative) `0x6ce9bf8cdab780416ad1fd87b318a077d2f50eac` — deployed 2024-05-27 22:11:06+03 — liveness: live (current_address_book_code)<br>StargateMultiRewarder (alternative) `0xe89ca5c58e2978c031f7796ca8580bc88ea0b3dd` — liveness: live (current_address_book_code)<br>StargateMultiRewarder (alternative) `0x164a2de1bc5dc56f329909f7c97bae929cae557b` — deployed 2025-02-19 04:12:01+03 — liveness: live (current_address_book_code)<br>StargateMultiRewarder (alternative) `0xd69a3d88438f042a5a0b995b970f78fc8120ed67` — deployed 2024-08-01 03:41:06+03 — liveness: live (current_address_book_code)<br>0x5f9c01… (alternative) `0x5f9c011dff285e76fa64c14301fd6493a2f3b671` — liveness: live (current_address_book_code)<br>StargateMultiRewarder (alternative) `0x0184857631ddb3e9e230bca303f0ab1e516fc0c8` — deployed 2024-05-27 22:12:20+03 — liveness: live (current_address_book_code)<br>0x296f55… (alternative) `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97` — liveness: live (current_address_book_code)<br>StargateMultiRewarder (alternative) `0x1f605162282570dfa6255d27895587f4117f52fa` — deployed 2024-05-27 22:11:28+03 — liveness: live (current_address_book_code)<br>StargateMultiRewarder (alternative) `0x68d7877b16002ad34836ba55416bca9b92b55589` — deployed 2024-05-27 22:15:10+03 — liveness: live (current_address_book_code)<br>0x296f55… (alternative) `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97` — liveness: live (current_address_book_code)<br>StargateMultiRewarder (alternative) `0x146c8e409c113ed87c6183f4d25c50251dffbb3a` — deployed 2024-05-27 22:11:21+03 — liveness: live (current_address_book_code)<br>StargateMultiRewarder (alternative) `0x9aa02d4fae7f58b8e8f34c66e756cc734dac7fe4` — deployed 2024-05-27 22:11:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | StargateStaking | ambiguous — not counted | 0x8943cb… (alternative) `0x8943cb63eef1b3dba5f455bfb704477436e31c1a` — liveness: live (current_address_book_code)<br>StargateStaking (alternative) `0xfbb5a71025bef1a8166c9bcb904a120aa17d6443` — deployed 2024-05-27 22:11:03+03 — liveness: live (current_address_book_code)<br>StargateStaking (alternative) `0x25bbf59ef9246dc65bfac8385d55c5e524a7b9ea` — liveness: live (code_present_context)<br>0x4a364f… (alternative) `0x4a364f8c717caad9a442737eb7b8a55cc6cf18d8` — liveness: live (current_address_book_code)<br>0x808d7c… (alternative) `0x808d7c71ad2ba3fa531b068a2417c63106bc0949` — liveness: live (current_address_book_code)<br>StargateStaking (alternative) `0x25bbf59ef9246dc65bfac8385d55c5e524a7b9ea` — deployed 2024-05-27 22:10:32+03 — liveness: live (current_address_book_code)<br>StargateStaking (alternative) `0x3da4f8e456ac648c489c286b99ca37b666be7c4c` — deployed 2024-05-27 22:10:39+03 — liveness: live (current_address_book_code)<br>0x10e28b… (alternative) `0x10e28ba4d7fc9cf39f34e20bbc5c58694b2f1a92` — liveness: live (current_address_book_code)<br>StargateStaking (alternative) `0xff551feddbedc0aee764139ccd9cb644bb04a6bd` — deployed 2024-05-27 22:17:35+03 — liveness: live (current_address_book_code)<br>0x808d7c… (alternative) `0x808d7c71ad2ba3fa531b068a2417c63106bc0949` — liveness: live (current_address_book_code)<br>StargateStaking (alternative) `0xf1fcb4cbd57b67d683972a59b6a7b1e2e8bf27e6` — deployed 2024-05-27 22:11:06+03 — liveness: live (code_present_context)<br>StargateStaking (alternative) `0xdfc47dcef7e8f9ab19a1b8af3eecf000c7ea0b80` — deployed 2024-05-27 22:10:47+03 — liveness: live (current_address_book_code)<br>StargateStaking (alternative) `0x26727c78b0209d9e787b2f9ac8f0238b122a3098` — deployed 2024-05-27 22:10:34+03 — liveness: live (current_address_book_code)<br>StargateStaking (alternative) `0xbba60da06c2c5424f03f7434542280fcad453d10` — deployed 2025-02-19 04:11:46+03 — liveness: live (current_address_book_code)<br>StargateStaking (alternative) `0x8c1014b5936dd88baa5f4db0423c3003615e03a0` — deployed 2024-08-01 03:40:58+03 — liveness: live (current_address_book_code)<br>StargateStaking (alternative) `0xd240a859efc77b7455ad1b1402357784a2d72a1b` — liveness: live (code_present_context)<br>StargateStaking (alternative) `0x02dc1042e623a8677b002981164ccc05d25d486a` — deployed 2024-05-27 22:11:58+03 — liveness: live (current_address_book_code)<br>StargateStaking (alternative) `0x4694900bdba99edf07a2e46c4093f88f9106a90d` — deployed 2024-05-27 22:15:42+03 — liveness: live (current_address_book_code)<br>0x945320… (alternative) `0x945320436abd33d21c0d7d79290627293b3cc7bd` — liveness: live (current_address_book_code)<br>0x8db623… (alternative) `0x8db623d439c8c4dfa1ca94e4cd3eb8b3aaff8331` — deployed 2024-05-27 22:10:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | StargateZapperV1 | unmatched — not counted | — | listed in scope programs | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | Treasurer | ambiguous — not counted | 0xe7ec68… (alternative) `0xe7ec689f432f29383f217e36e680b5c855051f25` — liveness: live (current_address_book_code)<br>0x370dc6… (alternative) `0x370dc69d5b49e6844c867efa752b419eac49aba8` — liveness: live (current_address_book_code)<br>0x45a01e… (alternative) `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0x8c1014b5936dd88baa5f4db0423c3003615e03a0` — liveness: live (current_address_book_code)<br>0x6d2053… (alternative) `0x6d205337f45d6850c3c3006e28d5b52c8a432c35` — deployed 2025-02-12 03:10:52+03 — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0xa4bbddefaee27cd778c4ced30c0535ec06a8502e` — liveness: live (current_address_book_code)<br>0x296f55… (alternative) `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0xd47b03ee6d86cf251ee7860fb2acf9f91b9fd4d7` — deployed 2024-05-27 22:11:11+03 — liveness: live (current_address_book_code)<br>0x296f55… (alternative) `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0x36ed193dc7160d3858ec250e69d12b03ca087d08` — deployed 2024-05-27 22:16:10+03 — liveness: live (current_address_book_code)<br>0xa7f3e2… (alternative) `0xa7f3e26df31abcb20a6fe6be35ddc60702a32455` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0x146c8e409c113ed87c6183f4d25c50251dffbb3a` — deployed 2024-05-27 22:10:46+03 — liveness: live (current_address_book_code)<br>0x3052a0… (alternative) `0x3052a0f6ab15b4ae1df39962d5ddefaca86dab47` — liveness: live (current_address_book_code)<br>0x851c9d… (alternative) `0x851c9d74bf5cfaeb4a0082a55a65a8f2718b337f` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0x3da4f8e456ac648c489c286b99ca37b666be7c4c` — deployed 2024-05-27 22:11:38+03 — liveness: live (current_address_book_code)<br>0x8731d5… (alternative) `0x8731d54e9d02c286767d56ac03e8037c07e01e98` — liveness: live (current_address_book_code)<br>0x296f55… (alternative) `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97` — liveness: live (current_address_book_code)<br>0x06d538… (alternative) `0x06d538690af257da524f25d0cd52fd85b1c2173e` — liveness: live (current_address_book_code)<br>0xb7a05a… (alternative) `0xb7a05a3a687ef09cc70e3f98b5f6a62f32e3ae58` — liveness: live (current_address_book_code)<br>0xc2b638… (alternative) `0xc2b638cb5042c1b3c5d5c969361fb50569840583` — deployed 2024-05-27 22:11:12+03 — liveness: live (current_address_book_code)<br>0x693604… (alternative) `0x693604e757ac7e2c4a8263594a18d69c35562341` — liveness: live (current_address_book_code)<br>0x953519… (alternative) `0x953519953fe196a0c8a031157c751fc732ea5599` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0xf5f74d2508e97a3a7cca2ccb75c8325d66b46152` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0x1041d127b2d4bc700f0f563883bc689502606918` — deployed 2024-05-27 22:18:23+03 — liveness: live (current_address_book_code)<br>0x296f55… (alternative) `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97` — liveness: live (current_address_book_code)<br>0x296f55… (alternative) `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03` — liveness: live (current_address_book_code)<br>0x090194… (alternative) `0x090194f1eedc134a680e3b488abb2d212dba8c01` — liveness: live (current_address_book_code)<br>0xa7f3e2… (alternative) `0xa7f3e26df31abcb20a6fe6be35ddc60702a32455` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0x644abb1e17291b4403966119d15ab081e4a487e9` — deployed 2024-05-27 22:11:27+03 — liveness: live (current_address_book_code)<br>0x8c1014… (alternative) `0x8c1014b5936dd88baa5f4db0423c3003615e03a0` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0xf1815bd50389c46847f0bda824ec8da914045d14` — deployed 2025-02-03 23:51:05+03 — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0xcbe78230cca58b9ef4c3c5d1bc0d7e4b3206588a` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0xf5f74d2508e97a3a7cca2ccb75c8325d66b46152` — deployed 2024-05-27 22:10:56+03 — liveness: live (current_address_book_code)<br>0x8943cb… (alternative) `0x8943cb63eef1b3dba5f455bfb704477436e31c1a` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0x873cfb4bae1ab6a5de753400e9d0616e10dced22` — deployed 2024-06-14 03:24:45+03 — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0x0a6a15964fee494a881338d65940430797f0d97c` — deployed 2024-05-27 22:15:13+03 — liveness: live (current_address_book_code)<br>0xbbfab5… (alternative) `0xbbfab55b6c2ee954610cf92a750db332ba97dd60` — liveness: live (current_address_book_code)<br>0x259ef4… (alternative) `0x259ef40ebe42073bd70966519b53791f03a9212f` — liveness: live (current_address_book_code)<br>0xca3676… (alternative) `0xca367694cdac8f152e33683bb36cc9d6a73f1ef2` — deployed 2025-09-11 20:38:44+03 — liveness: live (current_address_book_code)<br>0x714533… (alternative) `0x714533808f5c4a8c3734998e7c53f477cc50d9ce` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0xa7f3e26df31abcb20a6fe6be35ddc60702a32455` — deployed 2025-02-19 04:12:06+03 — liveness: live (current_address_book_code)<br>0x45a01e… (alternative) `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` — liveness: live (current_address_book_code)<br>0x06d538… (alternative) `0x06d538690af257da524f25d0cd52fd85b1c2173e` — liveness: live (current_address_book_code)<br>0x0db9af… (alternative) `0x0db9afb4c33be43a0a0e396fd1383b4ea97ab10a` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0x67b302e35aef5eee8c32d934f5856869ef428330` — liveness: live (current_address_book_code)<br>Treasurer (alternative) `0x4e8c9bac25cef251352ace831270d564615b9ce1` — deployed 2024-05-27 22:12:28+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | OFTTokenERC20 | ambiguous — not counted | OFTTokenERC20 (alternative) `0xf4d9235269a96aadafc9adae454a0618ebe37949` — liveness: live (code_present_context)<br>OFTTokenERC20 (alternative) `0xa7348290de5cf01772479c48d50dec791c3fc212` — liveness: live (current_address_book_code)<br>OFTTokenERC20 (alternative) `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590` — liveness: live (code_present_context)<br>OFTTokenERC20 (alternative) `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` — deployed 2024-06-14 03:24:36+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | LPToken | unmatched — not counted | — | listed in scope programs | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | RewardLib | ambiguous — not counted | 0xbc6de8… (alternative) `0xbc6de829570780d1248adb5ac4ff35b92b293e97` — liveness: live (current_address_book_code)<br>0xf2c0e5… (alternative) `0xf2c0e57f48276112a596e141817d93be472ed6c5` — liveness: live (current_address_book_code)<br>0x224d8f… (alternative) `0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03` — liveness: live (current_address_book_code)<br>0x669434… (alternative) `0x6694340fc020c5e6b96567843da2df01b2ce1eb6` — liveness: live (current_address_book_code)<br>RewardLib (alternative) `0x549943e04f40284185054145c6e4e9568c1d3241` — deployed 2025-02-19 04:11:51+03 — liveness: live (current_address_book_code)<br>0x224d8f… (alternative) `0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | StakingLib | unmatched — not counted | — | listed in scope programs | no |
| Stargate V2 - Zellic FINAL Audit Report.pdf | FeeLibV1 | ambiguous — not counted | FeeLibV1 (alternative) `0x897aaff731077c228d6ff6f2c9e7cfd8e985f29d` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x08ed1d79d509a6f1020685535028ae60c144441e` — deployed 2024-05-27 22:10:41+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x2bc3141aaea1d84bcd557eeb543253fd9685c0c4` — deployed 2024-05-27 22:11:24+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x6e3d884c96d640526f273c61dfcf08915ebd7e2b` — deployed 2024-05-27 22:10:29+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x52b35406cb2fb5e0038edecfc129a152a1f74087` — deployed 2024-05-27 22:17:11+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x1f605162282570dfa6255d27895587f4117f52fa` — deployed 2024-05-27 22:10:49+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x6d205337f45d6850c3c3006e28d5b52c8a432c35` — deployed 2025-02-03 23:50:35+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x4e422b0acb2bd7e3ac70b5c0e5eb806e86a94038` — deployed 2024-05-27 22:15:36+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x80f755e3091b2ad99c08da8d13e9c7635c1b8161` — deployed 2024-05-27 22:10:35+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xe8cdf27acd73a434d661c84887215f7598e7d0d3` — deployed 2024-05-27 22:10:46+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x19cfce47ed54a88614648dc3f19a5980097007dd` — deployed 2024-05-27 22:11:00+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xe171afcd1e0394b3312e68ca823d5bc87f3db311` — deployed 2024-05-27 22:17:23+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x6ec3efd27d8b1070fe96910ef416d54e845045c9` — deployed 2024-05-27 22:11:30+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xde48600aa18ae707f5d57e0faafec7c118abaeb2` — deployed 2024-06-14 03:24:42+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x622244fff1328586d0754d67cc6ab77e7ab38b7d` — deployed 2024-08-01 03:40:52+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x29ee6138dd4c9815f46d34a4a1ed48f46758a402` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xd34e23b4509ff894fa939dc29bac987b7a5465c0` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xcd4302d950e7e6606b6910cd232758b5ad423311` — deployed 2024-08-01 03:40:52+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x80f755e3091b2ad99c08da8d13e9c7635c1b8161` — deployed 2024-05-27 22:10:43+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x6d5521f46b2cba9443fefc09cbac3b15ae0f73eb` — deployed 2024-05-27 22:16:47+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x503c5cfea3477e0a576c8cf5354023854b7a06ff` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xa81274afac523d639dbca2c32c1470f1600ccebe` — deployed 2024-05-27 22:11:50+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xce8cca271ebc0533920c83d39f417ed6a0abb7d0` — deployed 2024-05-27 22:10:54+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xa628bb551a3b98d4d3fd9c4c329005307b9557e9` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x711b5aafd4d0a5b7b863ca434a2678d086830d8e` — deployed 2024-08-01 03:40:57+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xb0b2391a32e066fdf354ef7f4199300f920789f0` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x60f2a61f07a51874c37ad2ed741727ccfcdffd52` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x808d7c71ad2ba3fa531b068a2417c63106bc0949` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x1f605162282570dfa6255d27895587f4117f52fa` — deployed 2024-05-27 22:10:36+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xdd002227d9bc27f10066ed9a17be89c43bcafc31` — deployed 2024-05-27 22:10:28+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x288968fff40543f168eaf29a54d5c0affd3c8df7` — deployed 2024-05-27 22:11:38+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x2a6c43e0dbdcde23d40c82f45682bc6d8a6db219` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x17e450be3ba9557f2378e20d64ad417e59ef9a34` — deployed 2024-05-27 22:10:35+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x3e368b6c95c6fefb7a16dcc0d756389f3c658a06` — deployed 2024-05-27 22:16:35+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x3fc69cc4a842838bcdc9499178740226062b14e4` — deployed 2024-05-27 22:15:28+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xcd4302d950e7e6606b6910cd232758b5ad423311` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x88853d410299bcbfe5fcc9eef93c03115e908279` — deployed 2025-02-19 04:11:41+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x711b5aafd4d0a5b7b863ca434a2678d086830d8e` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x6e3d884c96d640526f273c61dfcf08915ebd7e2b` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xda82a31df339bfdf0123661134b4db63cb1706f5` — deployed 2024-05-27 22:10:33+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xd9492653457a69e9f4987db43d7fa0112e620cb4` — deployed 2025-02-03 23:50:55+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x3da4f8e456ac648c489c286b99ca37b666be7c4c` — deployed 2024-05-27 22:10:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate_V2_Ottersec_Final.pdf | StargatePool | ambiguous — not counted | StargatePool (alternative) `0xf7628d84a2bbd9bb9c8e686ac95bb5d55169f3f1` — deployed 2024-05-27 22:10:26+03 — liveness: live (code_present_context)<br>StargatePool (alternative) `0x268ca24daeff1fac2ed883c598200ccbb79e931d` — deployed 2024-05-27 22:15:23+03 — liveness: live (code_present_context)<br>StargatePool (alternative) `0x4c1d3fc3fc3c177c3b633427c2f769276c547463` — deployed 2024-05-27 22:10:14+03 — liveness: live (code_present_context)<br>StargatePool (alternative) `0xe9aba835f813ca05e50a6c0ce65d0d74390f7de7` — deployed 2025-02-03 23:50:05+03 — liveness: live (code_present_context)<br>StargatePool (alternative) `0x36ed193dc7160d3858ec250e69d12b03ca087d08` — deployed 2024-05-27 22:10:10+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate_V2_Ottersec_Final.pdf | StargatePoolNative | ambiguous — not counted | StargatePoolNative (alternative) `0xc2b638cb5042c1b3c5d5c969361fb50569840583` — deployed 2024-05-27 22:10:11+03 — liveness: live (code_present_context)<br>StargatePoolNative (alternative) `0x81f6138153d473e8c5ecebd3dc8cd4903506b075` — deployed 2024-05-27 22:10:11+03 — liveness: live (code_present_context)<br>StargatePoolNative (alternative) `0xe9aba835f813ca05e50a6c0ce65d0d74390f7de7` — deployed 2025-02-12 03:10:28+03 — liveness: live (current_address_book_code)<br>0x2f6f07… (alternative) `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590` — liveness: live (current_address_book_code)<br>0x2f6f07… (alternative) `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590` — liveness: live (current_address_book_code)<br>StargatePoolNative (alternative) `0x77b2043768d28e9c9ab44e1abfc95944bce57931` — deployed 2024-05-27 22:14:59+03 — liveness: live (code_present_context)<br>StargatePoolNative (alternative) `0xa45b5130f36cdca45667738e2a258ab09f4a5f7f` — deployed 2024-05-27 22:10:08+03 — liveness: live (code_present_context)<br>0x221f0e… (alternative) `0x221f0e1280ec657503ca55c708105f1e1529527d` — liveness: live (current_address_book_code)<br>StargatePoolNative (alternative) `0xdc181bd607330aeebef6ea62e03e5e1fb4b6f7c7` — deployed 2024-05-27 22:10:09+03 — liveness: live (code_present_context)<br>StargatePoolNative (alternative) `0xe8cdf27acd73a434d661c84887215f7598e7d0d3` — deployed 2024-05-27 22:10:09+03 — liveness: live (code_present_context)<br>0x8731d5… (alternative) `0x8731d54e9d02c286767d56ac03e8037c07e01e98` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate_V2_Ottersec_Final.pdf | FeeLibV1 | ambiguous — not counted | FeeLibV1 (alternative) `0x897aaff731077c228d6ff6f2c9e7cfd8e985f29d` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x08ed1d79d509a6f1020685535028ae60c144441e` — deployed 2024-05-27 22:10:41+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x2bc3141aaea1d84bcd557eeb543253fd9685c0c4` — deployed 2024-05-27 22:11:24+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x6e3d884c96d640526f273c61dfcf08915ebd7e2b` — deployed 2024-05-27 22:10:29+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x52b35406cb2fb5e0038edecfc129a152a1f74087` — deployed 2024-05-27 22:17:11+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x1f605162282570dfa6255d27895587f4117f52fa` — deployed 2024-05-27 22:10:49+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x6d205337f45d6850c3c3006e28d5b52c8a432c35` — deployed 2025-02-03 23:50:35+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x4e422b0acb2bd7e3ac70b5c0e5eb806e86a94038` — deployed 2024-05-27 22:15:36+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x80f755e3091b2ad99c08da8d13e9c7635c1b8161` — deployed 2024-05-27 22:10:35+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xe8cdf27acd73a434d661c84887215f7598e7d0d3` — deployed 2024-05-27 22:10:46+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x19cfce47ed54a88614648dc3f19a5980097007dd` — deployed 2024-05-27 22:11:00+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xe171afcd1e0394b3312e68ca823d5bc87f3db311` — deployed 2024-05-27 22:17:23+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x6ec3efd27d8b1070fe96910ef416d54e845045c9` — deployed 2024-05-27 22:11:30+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xde48600aa18ae707f5d57e0faafec7c118abaeb2` — deployed 2024-06-14 03:24:42+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x622244fff1328586d0754d67cc6ab77e7ab38b7d` — deployed 2024-08-01 03:40:52+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x29ee6138dd4c9815f46d34a4a1ed48f46758a402` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xd34e23b4509ff894fa939dc29bac987b7a5465c0` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xcd4302d950e7e6606b6910cd232758b5ad423311` — deployed 2024-08-01 03:40:52+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x80f755e3091b2ad99c08da8d13e9c7635c1b8161` — deployed 2024-05-27 22:10:43+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x6d5521f46b2cba9443fefc09cbac3b15ae0f73eb` — deployed 2024-05-27 22:16:47+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x503c5cfea3477e0a576c8cf5354023854b7a06ff` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xa81274afac523d639dbca2c32c1470f1600ccebe` — deployed 2024-05-27 22:11:50+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xce8cca271ebc0533920c83d39f417ed6a0abb7d0` — deployed 2024-05-27 22:10:54+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xa628bb551a3b98d4d3fd9c4c329005307b9557e9` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x711b5aafd4d0a5b7b863ca434a2678d086830d8e` — deployed 2024-08-01 03:40:57+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xb0b2391a32e066fdf354ef7f4199300f920789f0` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x60f2a61f07a51874c37ad2ed741727ccfcdffd52` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x808d7c71ad2ba3fa531b068a2417c63106bc0949` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x1f605162282570dfa6255d27895587f4117f52fa` — deployed 2024-05-27 22:10:36+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xdd002227d9bc27f10066ed9a17be89c43bcafc31` — deployed 2024-05-27 22:10:28+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x288968fff40543f168eaf29a54d5c0affd3c8df7` — deployed 2024-05-27 22:11:38+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x2a6c43e0dbdcde23d40c82f45682bc6d8a6db219` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x17e450be3ba9557f2378e20d64ad417e59ef9a34` — deployed 2024-05-27 22:10:35+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x3e368b6c95c6fefb7a16dcc0d756389f3c658a06` — deployed 2024-05-27 22:16:35+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x3fc69cc4a842838bcdc9499178740226062b14e4` — deployed 2024-05-27 22:15:28+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xcd4302d950e7e6606b6910cd232758b5ad423311` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x88853d410299bcbfe5fcc9eef93c03115e908279` — deployed 2025-02-19 04:11:41+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x711b5aafd4d0a5b7b863ca434a2678d086830d8e` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x6e3d884c96d640526f273c61dfcf08915ebd7e2b` — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xda82a31df339bfdf0123661134b4db63cb1706f5` — deployed 2024-05-27 22:10:33+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0xd9492653457a69e9f4987db43d7fa0112e620cb4` — deployed 2025-02-03 23:50:55+03 — liveness: live (current_address_book_code)<br>FeeLibV1 (alternative) `0x3da4f8e456ac648c489c286b99ca37b666be7c4c` — deployed 2024-05-27 22:10:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Stargate_V2_Ottersec_Final.pdf | BusLib | unmatched — not counted | — | mentioned in finding OS-STG-ADV-01 | no |
| Stargate_V2_Ottersec_Final.pdf | TokenMessaging | ambiguous — not counted | 0x45a01e… (alternative) `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` — liveness: live (current_address_book_code)<br>0x53bf83… (alternative) `0x53bf833a5d6c4dda888f69c22c88c9f356a41614` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` — liveness: live (current_address_book_code)<br>0x45f1a9… (alternative) `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` — liveness: live (current_address_book_code)<br>0x3a1e30… (alternative) `0x3a1e3062414165a15d4cae4a6cbff6d83f60be55` — liveness: live (current_address_book_code)<br>0x9c2dc7… (alternative) `0x9c2dc7377717603eb92b2655c5f2e7997a4945bd` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x4e422b0acb2bd7e3ac70b5c0e5eb806e86a94038` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0xcbe78230cca58b9ef4c3c5d1bc0d7e4b3206588a` — deployed 2024-05-27 22:10:30+03 — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x6e3d884c96d640526f273c61dfcf08915ebd7e2b` — deployed 2024-05-27 22:10:19+03 — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0xb1eead6959cb5bb9b20417d6689922523b2b86c3` — deployed 2025-02-12 03:10:35+03 — liveness: live (current_address_book_code)<br>0xaf54be… (alternative) `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x2086f755a6d9254045c257ea3d382ef854849b0f` — deployed 2025-02-19 04:11:31+03 — liveness: live (current_address_book_code)<br>0x45d417… (alternative) `0x45d417612e177672958dc0537c45a8f8d754ac2e` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0xbe574b6219c6d985d08712e90c21a88fd55f1ae8` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x19cfce47ed54a88614648dc3f19a5980097007dd` — deployed 2024-05-27 22:10:25+03 — liveness: live (current_address_book_code)<br>0x45a01e… (alternative) `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` — liveness: live (current_address_book_code)<br>0x88853d… (alternative) `0x88853d410299bcbfe5fcc9eef93c03115e908279` — liveness: live (current_address_book_code)<br>0xf26d57… (alternative) `0xf26d57bbe1d99561b13003783b5e040b71adcb14` — liveness: live (current_address_book_code)<br>0x183d6b… (alternative) `0x183d6b82680189bb4db826f739cdc9527d467b25` — liveness: live (current_address_book_code)<br>0x16f3f9… (alternative) `0x16f3f98d82d965988e6853681fd578f4d719a1c0` — liveness: live (current_address_book_code)<br>0x102d75… (alternative) `0x102d758f688a4c1c5a80b116bd945d4455460282` — deployed 2025-09-11 20:38:30+03 — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x6d6620efa72948c5f68a3c8646d58c00d3f4a980` — deployed 2024-05-27 22:16:11+03 — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x41b491285a4f888f9f636cec8a363ab9770a0aef` — deployed 2024-05-27 22:10:58+03 — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0xf1fcb4cbd57b67d683972a59b6a7b1e2e8bf27e6` — deployed 2024-05-27 22:10:31+03 — liveness: live (current_address_book_code)<br>0x88853d… (alternative) `0x88853d410299bcbfe5fcc9eef93c03115e908279` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x1502fa4be69d526124d453619276faccab275d3d` — deployed 2024-06-14 03:24:40+03 — liveness: live (current_address_book_code)<br>0x45a01e… (alternative) `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x2761c39102bcf7fc6365580d94cd1882f9cc2650` — liveness: live (current_address_book_code)<br>0x45a01e… (alternative) `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0xaf368c91793cb22739386dfcbbb2f1a9e4bcbebf` — deployed 2025-02-03 23:50:20+03 — liveness: live (current_address_book_code)<br>0xb0b239… (alternative) `0xb0b2391a32e066fdf354ef7f4199300f920789f0` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x45d417612e177672958dc0537c45a8f8d754ac2e` — liveness: live (current_address_book_code)<br>0x06eb48… (alternative) `0x06eb48763f117c7be887296cdcdfad2e4092739c` — liveness: live (current_address_book_code)<br>0xaf5191… (alternative) `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x6ce9bf8cdab780416ad1fd87b318a077d2f50eac` — deployed 2024-05-27 22:15:16+03 — liveness: live (current_address_book_code)<br>0x808d7c… (alternative) `0x808d7c71ad2ba3fa531b068a2417c63106bc0949` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x5f688f563dc16590e570f97b542fa87931af2fed` — deployed 2024-05-27 22:10:17+03 — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x17e450be3ba9557f2378e20d64ad417e59ef9a34` — deployed 2024-05-27 22:10:26+03 — liveness: live (current_address_book_code)<br>0x6b73d3… (alternative) `0x6b73d3cbbb278ce2e8698e983aeccdd94dc4594b` — liveness: live (current_address_book_code)<br>0x693604… (alternative) `0x693604e757ac7e2c4a8263594a18d69c35562341` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x5634c4a5fed09819e3c46d86a965dd9447d86e47` — deployed 2024-05-27 22:10:23+03 — liveness: live (current_address_book_code)<br>0x08c492… (alternative) `0x08c49257767c1f92634a9cdbf0663af0356a472a` — liveness: live (current_address_book_code)<br>TokenMessaging (alternative) `0x5f688f563dc16590e570f97b542fa87931af2fed` — liveness: live (current_address_book_code)<br>0x45a01e… (alternative) `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` — liveness: live (current_address_book_code)<br>0x1c10cc… (alternative) `0x1c10cc06dc6d35970d1d53b2a23c76ef370d4135` — liveness: live (current_address_book_code)<br>0x45f1a9… (alternative) `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` — liveness: live (current_address_book_code)<br>0xaf54be… (alternative) `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| gnosis | `0xe1ad845d93853fff44990ae0dcecd8575293681e` | CreditMessaging | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xaf368c91793cb22739386dfcbbb2f1a9e4bcbebf` | CreditMessaging | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x3a1293bdb83bbbdd5ebf4fac96605ad2021bbc0f` | CreditMessaging | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3e368b6c95c6fefb7a16dcc0d756389f3c658a06` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x52b35406cb2fb5e0038edecfc129a152a1f74087` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6d5521f46b2cba9443fefc09cbac3b15ae0f73eb` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe171afcd1e0394b3312e68ca823d5bc87f3db311` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x1f605162282570dfa6255d27895587f4117f52fa` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x3da4f8e456ac648c489c286b99ca37b666be7c4c` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x80f755e3091b2ad99c08da8d13e9c7635c1b8161` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x6d205337f45d6850c3c3006e28d5b52c8a432c35` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xd9492653457a69e9f4987db43d7fa0112e620cb4` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x3fc69cc4a842838bcdc9499178740226062b14e4` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x4e422b0acb2bd7e3ac70b5c0e5eb806e86a94038` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x88853d410299bcbfe5fcc9eef93c03115e908279` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x19cfce47ed54a88614648dc3f19a5980097007dd` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0xce8cca271ebc0533920c83d39f417ed6a0abb7d0` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0xe8cdf27acd73a434d661c84887215f7598e7d0d3` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x711b5aafd4d0a5b7b863ca434a2678d086830d8e` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0xcd4302d950e7e6606b6910cd232758b5ad423311` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0xde48600aa18ae707f5d57e0faafec7c118abaeb2` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x288968fff40543f168eaf29a54d5c0affd3c8df7` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x2bc3141aaea1d84bcd557eeb543253fd9685c0c4` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x6ec3efd27d8b1070fe96910ef416d54e845045c9` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xa81274afac523d639dbca2c32c1470f1600ccebe` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x08ed1d79d509a6f1020685535028ae60c144441e` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x17e450be3ba9557f2378e20d64ad417e59ef9a34` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1f605162282570dfa6255d27895587f4117f52fa` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x80f755e3091b2ad99c08da8d13e9c7635c1b8161` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xda82a31df339bfdf0123661134b4db63cb1706f5` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x6e3d884c96d640526f273c61dfcf08915ebd7e2b` | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | OFTTokenERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x1f605162282570dfa6255d27895587f4117f52fa` | StargateMultiRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` | StargateOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x268ca24daeff1fac2ed883c598200ccbb79e931d` | StargatePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xe9aba835f813ca05e50a6c0ce65d0d74390f7de7` | StargatePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x36ed193dc7160d3858ec250e69d12b03ca087d08` | StargatePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x4c1d3fc3fc3c177c3b633427c2f769276c547463` | StargatePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xf7628d84a2bbd9bb9c8e686ac95bb5d55169f3f1` | StargatePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x933597a323eb81cae705c5bc29985172fd5a3973` | StargatePoolMigratable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x19cfce47ed54a88614648dc3f19a5980097007dd` | StargatePoolMigratable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x138eb30f73bc423c6455c53df6d89cb01d9ebc63` | StargatePoolMigratable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xd47b03ee6d86cf251ee7860fb2acf9f91b9fd4d7` | StargatePoolMigratable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x4dcbfc0249e8d5032f89d6461218a9d2efff5125` | StargatePoolMigratable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x0db9afb4c33be43a0a0e396fd1383b4ea97ab10a` | StargatePoolMigratable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xb715b85682b731db9d5063187c450095c91c57fc` | StargatePoolMigratable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xce8cca271ebc0533920c83d39f417ed6a0abb7d0` | StargatePoolMigratable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x12dc9256acc9895b076f6638d628382881e62cee` | StargatePoolMigratable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x77b2043768d28e9c9ab44e1abfc95944bce57931` | StargatePoolNative | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xe8cdf27acd73a434d661c84887215f7598e7d0d3` | StargatePoolNative | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xe9aba835f813ca05e50a6c0ce65d0d74390f7de7` | StargatePoolNative | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xdc181bd607330aeebef6ea62e03e5e1fb4b6f7c7` | StargatePoolNative | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa45b5130f36cdca45667738e2a258ab09f4a5f7f` | StargatePoolNative | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x81f6138153d473e8c5ecebd3dc8cd4903506b075` | StargatePoolNative | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xc2b638cb5042c1b3c5d5c969361fb50569840583` | StargatePoolNative | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc026395860db2d07ee33e05fe50ed7bd583189c7` | StargatePoolUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xce8cca271ebc0533920c83d39f417ed6a0abb7d0` | StargatePoolUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x962bd449e630b0d928f308ce63f1a21f02576057` | StargatePoolUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xb1eead6959cb5bb9b20417d6689922523b2b86c3` | StargatePoolUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x9aa02d4fae7f58b8e8f34c66e756cc734dac7fe4` | StargatePoolUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xa272ffe20cffe769cdfc4b63088dcd2c82a2d8f9` | StargatePoolUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x45d417612e177672958dc0537c45a8f8d754ac2e` | StargatePoolUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xac290ad4e0c891fdc295ca4f0a6214cf6dc6acdc` | StargatePoolUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x27a16dc786820b16e5c9028b75b99f6f604b5d26` | StargatePoolUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe8cdf27acd73a434d661c84887215f7598e7d0d3` | StargatePoolUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x5634c4a5fed09819e3c46d86a965dd9447d86e47` | StargatePoolUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x3fc69cc4a842838bcdc9499178740226062b14e4` | StargatePoolUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | `0x81f6138153d473e8c5ecebd3dc8cd4903506b075` | StargatePoolUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xff551feddbedc0aee764139ccd9cb644bb04a6bd` | StargateStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xfbb5a71025bef1a8166c9bcb904a120aa17d6443` | StargateStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x4694900bdba99edf07a2e46c4093f88f9106a90d` | StargateStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0xf1fcb4cbd57b67d683972a59b6a7b1e2e8bf27e6` | StargateStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x8c1014b5936dd88baa5f4db0423c3003615e03a0` | StargateStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x02dc1042e623a8677b002981164ccc05d25d486a` | StargateStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xdfc47dcef7e8f9ab19a1b8af3eecf000c7ea0b80` | StargateStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3da4f8e456ac648c489c286b99ca37b666be7c4c` | StargateStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x25bbf59ef9246dc65bfac8385d55c5e524a7b9ea` | StargateStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6d6620efa72948c5f68a3c8646d58c00d3f4a980` | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xf1fcb4cbd57b67d683972a59b6a7b1e2e8bf27e6` | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6e3d884c96d640526f273c61dfcf08915ebd7e2b` | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xaf368c91793cb22739386dfcbbb2f1a9e4bcbebf` | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x6ce9bf8cdab780416ad1fd87b318a077d2f50eac` | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x2086f755a6d9254045c257ea3d382ef854849b0f` | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0xcbe78230cca58b9ef4c3c5d1bc0d7e4b3206588a` | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x1502fa4be69d526124d453619276faccab275d3d` | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x41b491285a4f888f9f636cec8a363ab9770a0aef` | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5634c4a5fed09819e3c46d86a965dd9447d86e47` | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x19cfce47ed54a88614648dc3f19a5980097007dd` | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x17e450be3ba9557f2378e20d64ad417e59ef9a34` | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x5f688f563dc16590e570f97b542fa87931af2fed` | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x3da4f8e456ac648c489c286b99ca37b666be7c4c` | Treasurer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 123 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 864 |

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
