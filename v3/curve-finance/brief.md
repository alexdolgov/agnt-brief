# Agentic Audit Brief: Curve Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 26 across 12 audit(s)
- Eligible audit results: 22 (12 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Curve Finance (`curve-finance`)
- Website: [https://curve.finance](https://curve.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, aurora, avalanche, base, bsc, celo, ethereum, etherlink, fantom, fraxtal, gnosis, harmony, hyperliquid, ink, kava, mantle, monad, moonbeam, optimism, plasma, polygon, sonic, unichain, x-layer
- Contract surface: 1112 unique implementations (1112 raw deployments)
- Coverage basis: 19/119 confirmed own live verified implementations (16.0%); conservative 16.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,618,703,513.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Curve Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 119 contract row(s) across arbitrum, aurora, avalanche, base, bsc, celo, ethereum, etherlink, fantom, fraxtal, gnosis, hyperliquid, ink, kava, mantle, monad, moonbeam, optimism, plasma, polygon, sonic, unichain, x-layer. Structural roles: 94 unclassified, 19 supporting, 6 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 119
- Structural roles: unclassified (94), supporting (19), core (6)
- Contract kinds: unclassified (100), contract (19)
- Detected standards: erc165 (3), erc20 (3), erc1967proxy (1), erc20permit (1)
- Frameworks: openzeppelin (5)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 990 contracts are derived from known codebases. 990 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x064253...691a31`, chain 1)
- UnnamedContract (`0x0a92fd...db4d4f`, chain 1)
- UnnamedContract (`0x14139e...49881e`, chain 1)
- UnnamedContract (`0x19010d...d643d3`, chain 1)
- UnnamedContract (`0x1c4e45...7b83fc`, chain 1)
- UnnamedContract (`0x1d788b...c4c867`, chain 1)
- UnnamedContract (`0x26d01c...e7d7e2`, chain 1)
- UnnamedContract (`0x26e91b...6b99b8`, chain 1)
- UnnamedContract (`0x2b7e62...60d3e9`, chain 1)
- UnnamedContract (`0x2f50d5...5846bb`, chain 1)
- UnnamedContract (`0x329451...90b687`, chain 1)
- UnnamedContract (`0x38d9bd...7f8325`, chain 1)
- UnnamedContract (`0x409075...0b9968`, chain 1)
- UnnamedContract (`0x4863c6...87f2d3`, chain 1)
- UnnamedContract (`0x4a10d0...04b44f`, chain 1)
- UnnamedContract (`0x4eeb3b...948c5f`, chain 1)
- UnnamedContract (`0x56c526...0d0cd7`, chain 1)
- UnnamedContract (`0x584b0f...46fbbf`, chain 1)
- UnnamedContract (`0x5a537a...3177ba`, chain 1)
- UnnamedContract (`0x5cc014...d1cfd6`, chain 1)
- UnnamedContract (`0x5f3b5d...94e2a2`, chain 1)
- UnnamedContract (`0x5fc124...4e9233`, chain 1)
- UnnamedContract (`0x5ffe7f...e35e98`, chain 1)
- UnnamedContract (`0x66442b...b19a6f`, chain 1)
- UnnamedContract (`0x6a8cbe...ae21bf`, chain 1)
- UnnamedContract (`0x6f8012...bf666c`, chain 1)
- UnnamedContract (`0x76eafd...3827d8`, chain 1)
- UnnamedContract (`0x79d584...35874d`, chain 1)
- UnnamedContract (`0x7ce8af...ac3e42`, chain 1)
- UnnamedContract (`0x845f4e...ee28aa`, chain 1)
- UnnamedContract (`0x90fe73...f3922c`, chain 1)
- UnnamedContract (`0x9116ed...5723e7`, chain 1)
- UnnamedContract (`0x9201da...2de340`, chain 1)
- UnnamedContract (`0x934791...d14c52`, chain 1)
- UnnamedContract (`0x94d8e4...47bc3d`, chain 1)
- UnnamedContract (`0x97d024...c8e937`, chain 1)
- UnnamedContract (`0xa464e6...8922dc`, chain 1)
- UnnamedContract (`0xa72c85...d551cc`, chain 1)
- UnnamedContract (`0xa834f3...ca0ed7`, chain 1)
- UnnamedContract (`0xadb10d...b7843d`, chain 1)
- UnnamedContract (`0xae0666...dd999c`, chain 1)
- UnnamedContract (`0xb57a95...ff049a`, chain 1)
- UnnamedContract (`0xbbfe8c...914e7d`, chain 1)
- UnnamedContract (`0xbfddf5...53ea13`, chain 1)
- UnnamedContract (`0xc014f3...805085`, chain 1)
- UnnamedContract (`0xc0fc3d...f44f8b`, chain 1)
- UnnamedContract (`0xc455e6...44d3f8`, chain 1)
- UnnamedContract (`0xc58986...0aa873`, chain 1)
- UnnamedContract (`0xc8e843...c23e18`, chain 1)
- UnnamedContract (`0xc91113...840355`, chain 1)
- UnnamedContract (`0xc9cbc5...bb3e5e`, chain 1)
- UnnamedContract (`0xca8d07...36e4b4`, chain 1)
- UnnamedContract (`0xcbff30...0fd6ee`, chain 1)
- UnnamedContract (`0xd061d6...c2fce0`, chain 1)
- UnnamedContract (`0xd533a9...34cd52`, chain 1)
- UnnamedContract (`0xdcc91f...58b202`, chain 1)
- UnnamedContract (`0xdfef17...425fe0`, chain 1)
- UnnamedContract (`0xe1834a...344d4e`, chain 1)
- UnnamedContract (`0xe39972...513267`, chain 1)
- UnnamedContract (`0xe3e3fb...790415`, chain 1)
- UnnamedContract (`0xe478de...db3356`, chain 1)
- UnnamedContract (`0xe5afcf...62dfe7`, chain 1)
- UnnamedContract (`0xea6876...3205e0`, chain 1)
- UnnamedContract (`0xec0e1c...75870f`, chain 1)
- UnnamedContract (`0xecb456...e9b347`, chain 1)
- UnnamedContract (`0xede71f...75f0f7`, chain 1)
- UnnamedContract (`0xf6f07b...a0472e`, chain 1)
- UnnamedContract (`0xf98b45...e379fc`, chain 1)
- UnnamedContract (`0xfb726f...1ef9f3`, chain 1)
- UnnamedContract (`0xff5304...439ccf`, chain 1)
- UnnamedContract (`0x07cdeb...045b80`, chain 10)
- UnnamedContract (`0x19bd1a...f6c7d2`, chain 10)
- UnnamedContract (`0x1fd8af...cdf4a1`, chain 10)
- UnnamedContract (`0x1fe2a0...976369`, chain 10)
- UnnamedContract (`0x227c9a...a92b7d`, chain 10)
- UnnamedContract (`0x273e44...ffe9da`, chain 10)
- UnnamedContract (`0x289f63...89335b`, chain 10)
- UnnamedContract (`0x28c4a1...a98267`, chain 10)
- UnnamedContract (`0x3b1df1...8d2411`, chain 10)
- UnnamedContract (`0x3f4a2b...55a8ae`, chain 10)
- UnnamedContract (`0x40b8c0...fcfbc1`, chain 10)
- UnnamedContract (`0x4eee0d...78f97f`, chain 10)
- UnnamedContract (`0x56c526...0d0cd7`, chain 10)
- UnnamedContract (`0x5702bd...b07499`, chain 10)
- UnnamedContract (`0x5ea8f3...798bef`, chain 10)
- UnnamedContract (`0x5eee30...e31f6e`, chain 10)
- UnnamedContract (`0x5ffe7f...e35e98`, chain 10)
- UnnamedContract (`0x635742...2eafbd`, chain 10)
- UnnamedContract (`0x6a8cbe...ae21bf`, chain 10)
- UnnamedContract (`0x7a1f2f...8d8837`, chain 10)
- UnnamedContract (`0x863740...09550e`, chain 10)
- UnnamedContract (`0x871fbd...64dba4`, chain 10)
- UnnamedContract (`0x8e1e50...6153ff`, chain 10)
- UnnamedContract (`0x934791...d14c52`, chain 10)
- UnnamedContract (`0x98ee85...eaaf7f`, chain 10)
- UnnamedContract (`0x9dee3f...92f749`, chain 10)
- UnnamedContract (`0x9ff1dd...3d881b`, chain 10)
- UnnamedContract (`0xa22947...21677b`, chain 10)
- UnnamedContract (`0xa6e2e6...fc103d`, chain 10)
- UnnamedContract (`0xa72c85...d551cc`, chain 10)
- UnnamedContract (`0xa7b9d8...fdac26`, chain 10)
- UnnamedContract (`0xbc7654...f96443`, chain 10)
- UnnamedContract (`0xbf7e49...20ca41`, chain 10)
- UnnamedContract (`0xbfab8e...9a1855`, chain 10)
- UnnamedContract (`0xc52d7f...ddcbf6`, chain 10)
- UnnamedContract (`0xc65cb3...5a1647`, chain 10)
- UnnamedContract (`0xc6c094...f9ab53`, chain 10)
- UnnamedContract (`0xca8d07...36e4b4`, chain 10)
- UnnamedContract (`0xcc65f4...edb5b4`, chain 10)
- UnnamedContract (`0xd166ee...9185d5`, chain 10)
- UnnamedContract (`0xd16d5e...027914`, chain 10)
- UnnamedContract (`0xd36c59...6e5bec`, chain 10)
- UnnamedContract (`0xdbebda...38584a`, chain 10)
- UnnamedContract (`0xe7f2b7...027b9b`, chain 10)
- UnnamedContract (`0xf1946d...55176d`, chain 10)
- UnnamedContract (`0x07920e...161ea0`, chain 56)
- UnnamedContract (`0x07cdeb...045b80`, chain 56)
- UnnamedContract (`0x0ce651...3ade05`, chain 56)
- UnnamedContract (`0x1fd8af...cdf4a1`, chain 56)
- UnnamedContract (`0x38f8d9...b20f7d`, chain 56)
- UnnamedContract (`0x3b519a...d5087b`, chain 56)
- UnnamedContract (`0x47ca04...677ee4`, chain 56)
- UnnamedContract (`0x4ba1f6...403271`, chain 56)
- UnnamedContract (`0x4c62ac...2128bd`, chain 56)
- UnnamedContract (`0x4c7a5a...f82227`, chain 56)
- UnnamedContract (`0x4f37a9...cffc1f`, chain 56)
- UnnamedContract (`0x505d66...d2be44`, chain 56)
- UnnamedContract (`0x5a8c93...d5cfcc`, chain 56)
- UnnamedContract (`0x5c57bd...a0ee30`, chain 56)
- UnnamedContract (`0x5ffe7f...e35e98`, chain 56)
- UnnamedContract (`0x6055df...28fa33`, chain 56)
- UnnamedContract (`0x60dcc2...9efd18`, chain 56)
- UnnamedContract (`0x645e12...2ece15`, chain 56)
- UnnamedContract (`0x6a8cbe...ae21bf`, chain 56)
- UnnamedContract (`0x6d447e...cfffed`, chain 56)
- UnnamedContract (`0x817b8b...ca4b90`, chain 56)
- UnnamedContract (`0x85c447...6a84d6`, chain 56)
- UnnamedContract (`0x934791...d14c52`, chain 56)
- UnnamedContract (`0x98b402...2ec0b6`, chain 56)
- UnnamedContract (`0x98ee85...eaaf7f`, chain 56)
- UnnamedContract (`0x9996d0...d7355b`, chain 56)
- UnnamedContract (`0xa3ea43...4a4e64`, chain 56)
- UnnamedContract (`0xa588cf...adfa30`, chain 56)
- UnnamedContract (`0xa72c85...d551cc`, chain 56)
- UnnamedContract (`0xae0666...dd999c`, chain 56)
- UnnamedContract (`0xb10cde...b83385`, chain 56)
- UnnamedContract (`0xb10cfa...bd86b8`, chain 56)
- UnnamedContract (`0xb9ea06...560eb8`, chain 56)
- UnnamedContract (`0xbc7654...f96443`, chain 56)
- UnnamedContract (`0xc417e9...ce513a`, chain 56)
- UnnamedContract (`0xc6c094...f9ab53`, chain 56)
- UnnamedContract (`0xc91113...840355`, chain 56)
- UnnamedContract (`0xd41f7c...4cacb6`, chain 56)
- UnnamedContract (`0xd6681e...ab6320`, chain 56)
- UnnamedContract (`0xd7454a...9975bc`, chain 56)
- UnnamedContract (`0xd7e72f...12988b`, chain 56)
- UnnamedContract (`0xe2fb3f...2bdef4`, chain 56)
- UnnamedContract (`0xe35a87...096bd8`, chain 56)
- UnnamedContract (`0xf2e810...1cff06`, chain 56)
- UnnamedContract (`0xfacefe...d31752`, chain 56)
- UnnamedContract (`0xfb37b8...f49a81`, chain 56)
- UnnamedContract (`0x015fd9...78d1b8`, chain 100)
- UnnamedContract (`0x07cdeb...045b80`, chain 100)
- UnnamedContract (`0x08390c...1bd388`, chain 100)
- UnnamedContract (`0x0de101...45280f`, chain 100)
- UnnamedContract (`0x121a54...4f3695`, chain 100)
- UnnamedContract (`0x149ff1...808851`, chain 100)
- UnnamedContract (`0x1f0b0d...f5c51c`, chain 100)
- UnnamedContract (`0x1fd8af...cdf4a1`, chain 100)
- UnnamedContract (`0x206871...629c21`, chain 100)
- UnnamedContract (`0x37c5ab...6614fd`, chain 100)
- UnnamedContract (`0x39eb03...168524`, chain 100)
- UnnamedContract (`0x3d6cb2...d8796a`, chain 100)
- UnnamedContract (`0x3f445d...930f61`, chain 100)
- UnnamedContract (`0x45d43e...fbb4c9`, chain 100)
- UnnamedContract (`0x5dfafd...9b9bd3`, chain 100)
- UnnamedContract (`0x5ffe7f...e35e98`, chain 100)
- UnnamedContract (`0x6d447e...cfffed`, chain 100)
- UnnamedContract (`0x7da608...18fe15`, chain 100)
- UnnamedContract (`0x81147a...c16286`, chain 100)
- UnnamedContract (`0x934791...d14c52`, chain 100)
- UnnamedContract (`0x98ee85...eaaf7f`, chain 100)
- UnnamedContract (`0xa0ec67...e2b785`, chain 100)
- UnnamedContract (`0xa54f3c...d26ae2`, chain 100)
- UnnamedContract (`0xa72c85...d551cc`, chain 100)
- UnnamedContract (`0xa7f15a...f60e6e`, chain 100)
- UnnamedContract (`0xabef65...5f058d`, chain 100)
- UnnamedContract (`0xb055eb...6ab49b`, chain 100)
- UnnamedContract (`0xb10cde...b83385`, chain 100)
- UnnamedContract (`0xb10cfa...bd86b8`, chain 100)
- UnnamedContract (`0xb47988...1445c8`, chain 100)
- UnnamedContract (`0xb62656...5e1429`, chain 100)
- UnnamedContract (`0xbb7404...9aa4c5`, chain 100)
- UnnamedContract (`0xbc0797...9fbee8`, chain 100)
- UnnamedContract (`0xc1b393...973228`, chain 100)
- UnnamedContract (`0xca8d07...36e4b4`, chain 100)
- UnnamedContract (`0xe0a1d8...ed32d0`, chain 100)
- UnnamedContract (`0xe54859...fc4b53`, chain 100)
- UnnamedContract (`0xe89889...9ff178`, chain 100)
- UnnamedContract (`0xfabc42...c94ceb`, chain 100)
- UnnamedContract (`0xfacefe...d31752`, chain 100)
- UnnamedContract (`0xff02cb...0b8b61`, chain 100)
- UnnamedContract (`0x0c59d3...03baef`, chain 130)
- UnnamedContract (`0x5a8c93...d5cfcc`, chain 130)
- UnnamedContract (`0x5eee30...e31f6e`, chain 130)
- UnnamedContract (`0x64379c...84db80`, chain 130)
- UnnamedContract (`0x6d447e...cfffed`, chain 130)
- UnnamedContract (`0xc9fe0c...2b665f`, chain 130)
- UnnamedContract (`0xd20023...1ce712`, chain 130)
- UnnamedContract (`0xd3b17f...856e1e`, chain 130)
- UnnamedContract (`0xe61fb9...2de66b`, chain 130)
- UnnamedContract (`0xf3a431...0874ef`, chain 130)
- UnnamedContract (`0xf3a6aa...5a390a`, chain 130)
- UnnamedContract (`0xfabc42...c94ceb`, chain 130)
- UnnamedContract (`0x07cdeb...045b80`, chain 137)
- UnnamedContract (`0x0dcded...45d983`, chain 137)
- UnnamedContract (`0x1e0d92...b98dce`, chain 137)
- UnnamedContract (`0x1fd8af...cdf4a1`, chain 137)
- UnnamedContract (`0x242f51...aca105`, chain 137)
- UnnamedContract (`0x296d2b...f90ddd`, chain 137)
- UnnamedContract (`0x2b786b...ebc828`, chain 137)
- UnnamedContract (`0x3195a3...5767f7`, chain 137)
- UnnamedContract (`0x36f610...7a4494`, chain 137)
- UnnamedContract (`0x37c5ab...6614fd`, chain 137)
- UnnamedContract (`0x3d6cb2...d8796a`, chain 137)
- UnnamedContract (`0x43dac0...7a6043`, chain 137)
- UnnamedContract (`0x478296...f66994`, chain 137)
- UnnamedContract (`0x47ca04...677ee4`, chain 137)
- UnnamedContract (`0x4a8cc5...1c462a`, chain 137)
- UnnamedContract (`0x4c7a5a...f82227`, chain 137)
- UnnamedContract (`0x55a1c2...25e01e`, chain 137)
- UnnamedContract (`0x59f1c5...a2c072`, chain 137)
- UnnamedContract (`0x5a8c93...d5cfcc`, chain 137)
- UnnamedContract (`0x5af791...ebee35`, chain 137)
- UnnamedContract (`0x5de4ef...76c895`, chain 137)
- UnnamedContract (`0x5ffe7f...e35e98`, chain 137)
- UnnamedContract (`0x663cff...929f24`, chain 137)
- UnnamedContract (`0x6d447e...cfffed`, chain 137)
- UnnamedContract (`0x708ea7...6fc6cc`, chain 137)
- UnnamedContract (`0x74d6aa...e8e66d`, chain 137)
- UnnamedContract (`0x774d1d...7c48f9`, chain 137)
- UnnamedContract (`0x832732...6eea69`, chain 137)
- UnnamedContract (`0x934791...d14c52`, chain 137)
- UnnamedContract (`0x98ee85...eaaf7f`, chain 137)
- UnnamedContract (`0xa092a3...4eaa5a`, chain 137)
- UnnamedContract (`0xa3ea43...4a4e64`, chain 137)
- UnnamedContract (`0xa5a1d8...caa193`, chain 137)
- UnnamedContract (`0xa72c85...d551cc`, chain 137)
- UnnamedContract (`0xa7b9d8...fdac26`, chain 137)
- UnnamedContract (`0xb10cde...b83385`, chain 137)
- UnnamedContract (`0xb10cfa...bd86b8`, chain 137)
- UnnamedContract (`0xba7cbf...7b90aa`, chain 137)
- UnnamedContract (`0xc1b393...973228`, chain 137)
- UnnamedContract (`0xc4ce1d...6cb5d6`, chain 137)
- UnnamedContract (`0xca8d07...36e4b4`, chain 137)
- UnnamedContract (`0xd7e72f...12988b`, chain 137)
- UnnamedContract (`0xdcbd86...b4bd62`, chain 137)
- UnnamedContract (`0xe0b158...26e1fa`, chain 137)
- UnnamedContract (`0xe265fc...da2ce3`, chain 137)
- UnnamedContract (`0xeee35c...a66d04`, chain 137)
- UnnamedContract (`0xf2eff2...1db1da`, chain 137)
- UnnamedContract (`0xf823f2...02a0bb`, chain 137)
- UnnamedContract (`0xfabc42...c94ceb`, chain 137)
- UnnamedContract (`0xfacefe...d31752`, chain 137)
- UnnamedContract (`0x129578...3cc11d`, chain 143)
- UnnamedContract (`0x17c67c...b6c271`, chain 143)
- UnnamedContract (`0x193110...fc310d`, chain 143)
- UnnamedContract (`0x286182...beac1f`, chain 143)
- UnnamedContract (`0x2af432...d21295`, chain 143)
- UnnamedContract (`0x2fe4a2...2876eb`, chain 143)
- UnnamedContract (`0x41d2c5...9548b7`, chain 143)
- UnnamedContract (`0x457492...bc3648`, chain 143)
- UnnamedContract (`0x5f870c...544f94`, chain 143)
- UnnamedContract (`0x6d447e...cfffed`, chain 143)
- UnnamedContract (`0x6e2849...0015fb`, chain 143)
- UnnamedContract (`0x8271e0...90e8ad`, chain 143)
- UnnamedContract (`0x845b94...2921bf`, chain 143)
- UnnamedContract (`0x95249d...8a3d4b`, chain 143)
- UnnamedContract (`0xa4a2e7...566a96`, chain 143)
- UnnamedContract (`0xb2be76...41f872`, chain 143)
- UnnamedContract (`0xc9459a...7993c0`, chain 143)
- UnnamedContract (`0xe460de...923650`, chain 143)
- UnnamedContract (`0xe6da14...a0fb42`, chain 143)
- UnnamedContract (`0xe7fbd7...48c88c`, chain 143)
- UnnamedContract (`0xfc687e...97c2df`, chain 143)
- UnnamedContract (`0xff5cb2...a6e8d1`, chain 143)
- UnnamedContract (`0x1764ee...594585`, chain 146)
- UnnamedContract (`0x271ea5...be8ed9`, chain 146)
- UnnamedContract (`0x361aa6...1c201d`, chain 146)
- UnnamedContract (`0x3c0a40...9c4d11`, chain 146)
- UnnamedContract (`0x505d66...d2be44`, chain 146)
- UnnamedContract (`0x5552b6...c9d1f7`, chain 146)
- UnnamedContract (`0x5a537a...3177ba`, chain 146)
- UnnamedContract (`0x5af791...ebee35`, chain 146)
- UnnamedContract (`0x5de4ef...76c895`, chain 146)
- UnnamedContract (`0x635742...2eafbd`, chain 146)
- UnnamedContract (`0x686bdb...ac78b4`, chain 146)
- UnnamedContract (`0x6c9578...8e9c30`, chain 146)
- UnnamedContract (`0x6d447e...cfffed`, chain 146)
- UnnamedContract (`0x6f8012...bf666c`, chain 146)
- UnnamedContract (`0x74d6aa...e8e66d`, chain 146)
- UnnamedContract (`0x7c2085...c463d8`, chain 146)
- UnnamedContract (`0x837fd0...09e0f2`, chain 146)
- UnnamedContract (`0x87fe17...fdd617`, chain 146)
- UnnamedContract (`0x97223d...fe1b6e`, chain 146)
- UnnamedContract (`0x98c391...efbcf7`, chain 146)
- UnnamedContract (`0xa73edc...b2c4b6`, chain 146)
- UnnamedContract (`0xa7ba18...abd9c2`, chain 146)
- UnnamedContract (`0xb10cde...b83385`, chain 146)
- UnnamedContract (`0xb10cfa...bd86b8`, chain 146)
- UnnamedContract (`0xb5f0ed...186fac`, chain 146)
- UnnamedContract (`0xc0b338...95feea`, chain 146)
- UnnamedContract (`0xc29229...82f4a7`, chain 146)
- UnnamedContract (`0xd20023...1ce712`, chain 146)
- UnnamedContract (`0xd3b17f...856e1e`, chain 146)
- UnnamedContract (`0xda3989...b494db`, chain 146)
- UnnamedContract (`0xe265fc...da2ce3`, chain 146)
- UnnamedContract (`0xe61fb9...2de66b`, chain 146)
- UnnamedContract (`0xec5afc...80908d`, chain 146)
- UnnamedContract (`0xefaddd...43f7ce`, chain 146)
- UnnamedContract (`0xf3a431...0874ef`, chain 146)
- UnnamedContract (`0xf3a6aa...5a390a`, chain 146)
- UnnamedContract (`0xf3dad3...185cbf`, chain 146)
- UnnamedContract (`0xf6f07b...a0472e`, chain 146)
- UnnamedContract (`0xf830b9...050bb8`, chain 146)
- UnnamedContract (`0xfabc42...c94ceb`, chain 146)
- UnnamedContract (`0xfacefe...d31752`, chain 146)
- UnnamedContract (`0x046207...3685cc`, chain 196)
- UnnamedContract (`0x0848f3...740cb9`, chain 196)
- UnnamedContract (`0x0c59d3...03baef`, chain 196)
- UnnamedContract (`0x0c9d8c...650953`, chain 196)
- UnnamedContract (`0x0fe38d...1300cf`, chain 196)
- UnnamedContract (`0x13dff1...20a846`, chain 196)
- UnnamedContract (`0x1764ee...594585`, chain 196)
- UnnamedContract (`0x1fd8af...cdf4a1`, chain 196)
- UnnamedContract (`0x3d5320...246f89`, chain 196)
- UnnamedContract (`0x5a8c93...d5cfcc`, chain 196)
- UnnamedContract (`0x5bca7d...7262bc`, chain 196)
- UnnamedContract (`0x5eee30...e31f6e`, chain 196)
- UnnamedContract (`0x5ffe7f...e35e98`, chain 196)
- UnnamedContract (`0x604388...e2ae22`, chain 196)
- UnnamedContract (`0x64379c...84db80`, chain 196)
- UnnamedContract (`0x6628b9...32cd8f`, chain 196)
- UnnamedContract (`0x69522f...0adb4f`, chain 196)
- UnnamedContract (`0x6d447e...cfffed`, chain 196)
- UnnamedContract (`0x7ca46a...6dc66a`, chain 196)
- UnnamedContract (`0x87dd13...eabcad`, chain 196)
- UnnamedContract (`0x87fe17...fdd617`, chain 196)
- UnnamedContract (`0x8b3efb...3f57a6`, chain 196)
- UnnamedContract (`0x934791...d14c52`, chain 196)
- UnnamedContract (`0x9d9e70...519ade`, chain 196)
- UnnamedContract (`0x9ffc6f...6d467f`, chain 196)
- UnnamedContract (`0xb10cde...b83385`, chain 196)
- UnnamedContract (`0xb10cfa...bd86b8`, chain 196)
- UnnamedContract (`0xb47988...1445c8`, chain 196)
- UnnamedContract (`0xb6845b...e5a1cb`, chain 196)
- UnnamedContract (`0xbfab8e...9a1855`, chain 196)
- UnnamedContract (`0xccc486...04ebb5`, chain 196)
- UnnamedContract (`0xd3b17f...856e1e`, chain 196)
- UnnamedContract (`0xd5c3e0...eb94df`, chain 196)
- UnnamedContract (`0xda8f4e...a846f6`, chain 196)
- UnnamedContract (`0xe35a87...096bd8`, chain 196)
- UnnamedContract (`0xf3a431...0874ef`, chain 196)
- UnnamedContract (`0xfacefe...d31752`, chain 196)
- UnnamedContract (`0x004a47...402f13`, chain 250)
- UnnamedContract (`0x01689f...968e41`, chain 250)
- UnnamedContract (`0x046207...3685cc`, chain 250)
- UnnamedContract (`0x07cdeb...045b80`, chain 250)
- UnnamedContract (`0x08132e...e638e8`, chain 250)
- UnnamedContract (`0x0dcded...45d983`, chain 250)
- UnnamedContract (`0x1fd8af...cdf4a1`, chain 250)
- UnnamedContract (`0x21688e...269d30`, chain 250)
- UnnamedContract (`0x297a53...a0869f`, chain 250)
- UnnamedContract (`0x2b0395...36b950`, chain 250)
- UnnamedContract (`0x2c152d...414eaa`, chain 250)
- UnnamedContract (`0x33e723...2c5915`, chain 250)
- UnnamedContract (`0x37c5ab...6614fd`, chain 250)
- UnnamedContract (`0x3d6cb2...d8796a`, chain 250)
- UnnamedContract (`0x440231...c00ea1`, chain 250)
- UnnamedContract (`0x444d6b...db70c6`, chain 250)
- UnnamedContract (`0x519194...2961d9`, chain 250)
- UnnamedContract (`0x5702bd...b07499`, chain 250)
- UnnamedContract (`0x5ffe7f...e35e98`, chain 250)
- UnnamedContract (`0x6d447e...cfffed`, chain 250)
- UnnamedContract (`0x72dfd9...2fc00e`, chain 250)
- UnnamedContract (`0x76303e...431f1d`, chain 250)
- UnnamedContract (`0x76eafd...3827d8`, chain 250)
- UnnamedContract (`0x7ce8af...ac3e42`, chain 250)
- UnnamedContract (`0x7fa0a0...d87054`, chain 250)
- UnnamedContract (`0x803de4...38ab9a`, chain 250)
- UnnamedContract (`0x898cd2...9f0f46`, chain 250)
- UnnamedContract (`0x8fb3ec...3b2124`, chain 250)
- UnnamedContract (`0x934791...d14c52`, chain 250)
- UnnamedContract (`0x98ee85...eaaf7f`, chain 250)
- UnnamedContract (`0x9af14d...46167b`, chain 250)
- UnnamedContract (`0xa72c85...d551cc`, chain 250)
- UnnamedContract (`0xa78863...7ebc0b`, chain 250)
- UnnamedContract (`0xab0ab3...082a9d`, chain 250)
- UnnamedContract (`0xb10cde...b83385`, chain 250)
- UnnamedContract (`0xb10cfa...bd86b8`, chain 250)
- UnnamedContract (`0xc0b338...95feea`, chain 250)
- UnnamedContract (`0xc1b393...973228`, chain 250)
- UnnamedContract (`0xc6452f...dbabda`, chain 250)
- UnnamedContract (`0xca8d07...36e4b4`, chain 250)
- UnnamedContract (`0xd125e7...7be6dc`, chain 250)
- UnnamedContract (`0xd823d2...a003a6`, chain 250)
- UnnamedContract (`0xe55b70...1a2f56`, chain 250)
- UnnamedContract (`0xe61fb9...2de66b`, chain 250)
- UnnamedContract (`0xe6c259...6232c3`, chain 250)
- UnnamedContract (`0xf179d4...db8267`, chain 250)
- UnnamedContract (`0xf3a6aa...5a390a`, chain 250)
- UnnamedContract (`0xf5c39a...b66b6c`, chain 250)
- UnnamedContract (`0xf830b9...050bb8`, chain 250)
- UnnamedContract (`0xfacefe...d31752`, chain 250)
- UnnamedContract (`0x07cdeb...045b80`, chain 252)
- UnnamedContract (`0x0b8d6b...2e1c52`, chain 252)
- UnnamedContract (`0x1a8334...7fe495`, chain 252)
- UnnamedContract (`0x1fd8af...cdf4a1`, chain 252)
- UnnamedContract (`0x37c5ab...6614fd`, chain 252)
- UnnamedContract (`0x3fe593...0631a6`, chain 252)
- UnnamedContract (`0x4bbdfe...5cdc57`, chain 252)
- UnnamedContract (`0x4d1af9...c9bb61`, chain 252)
- UnnamedContract (`0x506f59...df9f7f`, chain 252)
- UnnamedContract (`0x50ed95...318a6c`, chain 252)
- UnnamedContract (`0x56c526...0d0cd7`, chain 252)
- UnnamedContract (`0x59cffd...020e8a`, chain 252)
- UnnamedContract (`0x5eee30...e31f6e`, chain 252)
- UnnamedContract (`0x5ffe7f...e35e98`, chain 252)
- UnnamedContract (`0x61e052...b361ff`, chain 252)
- UnnamedContract (`0x64379c...84db80`, chain 252)
- UnnamedContract (`0x672c38...54c6fc`, chain 252)
- UnnamedContract (`0x6d447e...cfffed`, chain 252)
- UnnamedContract (`0x7002b7...fae9d1`, chain 252)
- UnnamedContract (`0x852f32...6d75d5`, chain 252)
- UnnamedContract (`0x86d347...6996f0`, chain 252)
- UnnamedContract (`0x934791...d14c52`, chain 252)
- UnnamedContract (`0x98ee85...eaaf7f`, chain 252)
- UnnamedContract (`0xa7a4bb...5b299b`, chain 252)
- UnnamedContract (`0xb102f7...48caf3`, chain 252)
- UnnamedContract (`0xb10cde...b83385`, chain 252)
- UnnamedContract (`0xb10cfa...bd86b8`, chain 252)
- UnnamedContract (`0xc1db00...7cde4e`, chain 252)
- UnnamedContract (`0xc9fe0c...2b665f`, chain 252)
- UnnamedContract (`0xca8d07...36e4b4`, chain 252)
- UnnamedContract (`0xd125e7...7be6dc`, chain 252)
- UnnamedContract (`0xd20023...1ce712`, chain 252)
- UnnamedContract (`0xd3b17f...856e1e`, chain 252)
- UnnamedContract (`0xe61fb9...2de66b`, chain 252)
- UnnamedContract (`0xeeccd0...ccffb1`, chain 252)
- UnnamedContract (`0xef3d6b...4d1301`, chain 252)
- UnnamedContract (`0xf0d4c1...c58b8d`, chain 252)
- UnnamedContract (`0xf3c9bd...93ac66`, chain 252)
- UnnamedContract (`0xf3dad3...185cbf`, chain 252)
- UnnamedContract (`0xfacefe...d31752`, chain 252)
- UnnamedContract (`0x0c59d3...03baef`, chain 999)
- UnnamedContract (`0x13dff1...20a846`, chain 999)
- UnnamedContract (`0x1764ee...594585`, chain 999)
- UnnamedContract (`0x1a8334...7fe495`, chain 999)
- UnnamedContract (`0x2641ed...efdf3a`, chain 999)
- UnnamedContract (`0x4f172b...4bfea2`, chain 999)
- UnnamedContract (`0x5702bd...b07499`, chain 999)
- UnnamedContract (`0x5a8c93...d5cfcc`, chain 999)
- UnnamedContract (`0x5bca7d...7262bc`, chain 999)
- UnnamedContract (`0x5eee30...e31f6e`, chain 999)
- UnnamedContract (`0x604388...e2ae22`, chain 999)
- UnnamedContract (`0x635742...2eafbd`, chain 999)
- UnnamedContract (`0x64379c...84db80`, chain 999)
- UnnamedContract (`0x686bdb...ac78b4`, chain 999)
- UnnamedContract (`0x6d447e...cfffed`, chain 999)
- UnnamedContract (`0x7c2085...c463d8`, chain 999)
- UnnamedContract (`0x8b3efb...3f57a6`, chain 999)
- UnnamedContract (`0xa7b9d8...fdac26`, chain 999)
- UnnamedContract (`0xa7ba18...abd9c2`, chain 999)
- UnnamedContract (`0xb0261f...b9712b`, chain 999)
- UnnamedContract (`0xb10cde...b83385`, chain 999)
- UnnamedContract (`0xb10cfa...bd86b8`, chain 999)
- UnnamedContract (`0xc9fe0c...2b665f`, chain 999)
- UnnamedContract (`0xd20023...1ce712`, chain 999)
- UnnamedContract (`0xd3b17f...856e1e`, chain 999)
- UnnamedContract (`0xe35a87...096bd8`, chain 999)
- UnnamedContract (`0xe5de15...983a69`, chain 999)
- UnnamedContract (`0xe61fb9...2de66b`, chain 999)
- UnnamedContract (`0xf3a431...0874ef`, chain 999)
- UnnamedContract (`0xf3a6aa...5a390a`, chain 999)
- UnnamedContract (`0xfabc42...c94ceb`, chain 999)
- UnnamedContract (`0xfacefe...d31752`, chain 999)
- UnnamedContract (`0x114c40...2f678a`, chain 1284)
- UnnamedContract (`0x2eb4cd...98f155`, chain 1284)
- UnnamedContract (`0x3c0a40...9c4d11`, chain 1284)
- UnnamedContract (`0x3d8ead...7c69c1`, chain 1284)
- UnnamedContract (`0x527cbd...2ef8af`, chain 1284)
- UnnamedContract (`0x549de2...587b96`, chain 1284)
- UnnamedContract (`0x6a2691...8baef5`, chain 1284)
- UnnamedContract (`0xb10cde...b83385`, chain 1284)
- UnnamedContract (`0xb10cfa...bd86b8`, chain 1284)
- UnnamedContract (`0xe35a87...096bd8`, chain 1284)
- UnnamedContract (`0xe5de15...983a69`, chain 1284)
- UnnamedContract (`0xfacefe...d31752`, chain 1284)
- UnnamedContract (`0x0458ea...b3116c`, chain 2222)
- UnnamedContract (`0x05d4e2...ef3ef7`, chain 2222)
- UnnamedContract (`0x070a5c...611b16`, chain 2222)
- UnnamedContract (`0x0c59d3...03baef`, chain 2222)
- UnnamedContract (`0x0c9d8c...650953`, chain 2222)
- UnnamedContract (`0x0dcded...45d983`, chain 2222)
- UnnamedContract (`0x1764ee...594585`, chain 2222)
- UnnamedContract (`0x1c4e45...7b83fc`, chain 2222)
- UnnamedContract (`0x1e7b1b...afe27a`, chain 2222)
- UnnamedContract (`0x1fd8af...cdf4a1`, chain 2222)
- UnnamedContract (`0x37c5ab...6614fd`, chain 2222)
- UnnamedContract (`0x3c8d2a...7311cc`, chain 2222)
- UnnamedContract (`0x3d6cb2...d8796a`, chain 2222)
- UnnamedContract (`0x3d8ead...7c69c1`, chain 2222)
- UnnamedContract (`0x505d66...d2be44`, chain 2222)
- UnnamedContract (`0x5373e1...2f18e3`, chain 2222)
- UnnamedContract (`0x5a8c93...d5cfcc`, chain 2222)
- UnnamedContract (`0x5ffe7f...e35e98`, chain 2222)
- UnnamedContract (`0x64ed8c...86456b`, chain 2222)
- UnnamedContract (`0x65a0b0...f21107`, chain 2222)
- UnnamedContract (`0x6a2691...8baef5`, chain 2222)
- UnnamedContract (`0x6d447e...cfffed`, chain 2222)
- UnnamedContract (`0x7736c6...1ef5dd`, chain 2222)
- UnnamedContract (`0x8a28d2...2d7322`, chain 2222)
- UnnamedContract (`0x934791...d14c52`, chain 2222)
- UnnamedContract (`0x98b402...2ec0b6`, chain 2222)
- UnnamedContract (`0xa72c85...d551cc`, chain 2222)
- UnnamedContract (`0xa7b9d8...fdac26`, chain 2222)
- UnnamedContract (`0xb10cde...b83385`, chain 2222)
- UnnamedContract (`0xb10cfa...bd86b8`, chain 2222)
- UnnamedContract (`0xb406dd...850efa`, chain 2222)
- UnnamedContract (`0xb6845b...e5a1cb`, chain 2222)
- UnnamedContract (`0xc2cd39...7c01bc`, chain 2222)
- UnnamedContract (`0xca8d07...36e4b4`, chain 2222)
- UnnamedContract (`0xd3b17f...856e1e`, chain 2222)
- UnnamedContract (`0xd7e72f...12988b`, chain 2222)
- UnnamedContract (`0xde4513...6bbac4`, chain 2222)
- UnnamedContract (`0xe265fc...da2ce3`, chain 2222)
- UnnamedContract (`0xe35a87...096bd8`, chain 2222)
- UnnamedContract (`0xeef94c...91c9ba`, chain 2222)
- UnnamedContract (`0xefde22...975810`, chain 2222)
- UnnamedContract (`0xf2eff2...1db1da`, chain 2222)
- UnnamedContract (`0xfabc42...c94ceb`, chain 2222)
- UnnamedContract (`0xfacefe...d31752`, chain 2222)
- UnnamedContract (`0x024d36...fc527e`, chain 5000)
- UnnamedContract (`0x046207...3685cc`, chain 5000)
- UnnamedContract (`0x07cdeb...045b80`, chain 5000)
- UnnamedContract (`0x0b8d6b...2e1c52`, chain 5000)
- UnnamedContract (`0x0c9d8c...650953`, chain 5000)
- UnnamedContract (`0x0fe38d...1300cf`, chain 5000)
- UnnamedContract (`0x1df9ce...e84905`, chain 5000)
- UnnamedContract (`0x1fd8af...cdf4a1`, chain 5000)
- UnnamedContract (`0x3f445d...930f61`, chain 5000)
- UnnamedContract (`0x4339b5...244429`, chain 5000)
- UnnamedContract (`0x5702bd...b07499`, chain 5000)
- UnnamedContract (`0x5eee30...e31f6e`, chain 5000)
- UnnamedContract (`0x5ffe7f...e35e98`, chain 5000)
- UnnamedContract (`0x635742...2eafbd`, chain 5000)
- UnnamedContract (`0x6d447e...cfffed`, chain 5000)
- UnnamedContract (`0x77a214...546ecf`, chain 5000)
- UnnamedContract (`0x7ca46a...6dc66a`, chain 5000)
- UnnamedContract (`0x820945...c6ae85`, chain 5000)
- UnnamedContract (`0x852f32...6d75d5`, chain 5000)
- UnnamedContract (`0x87fe17...fdd617`, chain 5000)
- UnnamedContract (`0x8b3efb...3f57a6`, chain 5000)
- UnnamedContract (`0x934791...d14c52`, chain 5000)
- UnnamedContract (`0x98ee85...eaaf7f`, chain 5000)
- UnnamedContract (`0xb10cde...b83385`, chain 5000)
- UnnamedContract (`0xb10cfa...bd86b8`, chain 5000)
- UnnamedContract (`0xb50b9a...6d86df`, chain 5000)
- UnnamedContract (`0xd6681e...ab6320`, chain 5000)
- UnnamedContract (`0xe265fc...eb8f75`, chain 5000)
- UnnamedContract (`0xe54859...fc4b53`, chain 5000)
- UnnamedContract (`0xf0d4c1...c58b8d`, chain 5000)
- UnnamedContract (`0xf3a431...0874ef`, chain 5000)
- UnnamedContract (`0xfacefe...d31752`, chain 5000)
- UnnamedContract (`0xfe87a6...f5f2b0`, chain 5000)
- UnnamedContract (`0xff02cb...0b8b61`, chain 5000)
- UnnamedContract (`0x0c59d3...03baef`, chain 8453)
- UnnamedContract (`0x1fd8af...cdf4a1`, chain 8453)
- UnnamedContract (`0x33e723...2c5915`, chain 8453)
- UnnamedContract (`0x3f445d...930f61`, chain 8453)
- UnnamedContract (`0x3fe593...0631a6`, chain 8453)
- UnnamedContract (`0x417ac0...60af93`, chain 8453)
- UnnamedContract (`0x4f37a9...cffc1f`, chain 8453)
- UnnamedContract (`0x5373e1...2f18e3`, chain 8453)
- UnnamedContract (`0x5b7da0...4e3925`, chain 8453)
- UnnamedContract (`0x5ffe7f...e35e98`, chain 8453)
- UnnamedContract (`0x635742...2eafbd`, chain 8453)
- UnnamedContract (`0x646a73...b5160c`, chain 8453)
- UnnamedContract (`0x69522f...0adb4f`, chain 8453)
- UnnamedContract (`0x6d447e...cfffed`, chain 8453)
- UnnamedContract (`0x6ee54b...bb25e8`, chain 8453)
- UnnamedContract (`0x7ea4b7...df457f`, chain 8453)
- UnnamedContract (`0x87dd13...eabcad`, chain 8453)
- UnnamedContract (`0x8ee73c...dd0415`, chain 8453)
- UnnamedContract (`0x934791...d14c52`, chain 8453)
- UnnamedContract (`0x95f0f7...c2ce5c`, chain 8453)
- UnnamedContract (`0xa274c8...a1f65a`, chain 8453)
- UnnamedContract (`0xa4c0ea...a78aa8`, chain 8453)
- UnnamedContract (`0xa54f3c...d26ae2`, chain 8453)
- UnnamedContract (`0xa59618...016bcb`, chain 8453)
- UnnamedContract (`0xaeb976...4983c8`, chain 8453)
- UnnamedContract (`0xb10cde...b83385`, chain 8453)
- UnnamedContract (`0xb10cfa...bd86b8`, chain 8453)
- UnnamedContract (`0xc6a535...1294c6`, chain 8453)
- UnnamedContract (`0xc9fe0c...2b665f`, chain 8453)
- UnnamedContract (`0xcb8432...7c48c9`, chain 8453)
- UnnamedContract (`0xd20023...1ce712`, chain 8453)
- UnnamedContract (`0xd3b17f...856e1e`, chain 8453)
- UnnamedContract (`0xe265fc...da2ce3`, chain 8453)
- UnnamedContract (`0xe35a87...096bd8`, chain 8453)
- UnnamedContract (`0xe8269b...a8bbd6`, chain 8453)
- UnnamedContract (`0xeb896f...3e2412`, chain 8453)
- UnnamedContract (`0xf3a6aa...5a390a`, chain 8453)
- UnnamedContract (`0xfacefe...d31752`, chain 8453)
- UnnamedContract (`0x129578...3cc11d`, chain 9745)
- UnnamedContract (`0x13dff1...20a846`, chain 9745)
- UnnamedContract (`0x17c67c...b6c271`, chain 9745)
- UnnamedContract (`0x193110...fc310d`, chain 9745)
- UnnamedContract (`0x2641ed...efdf3a`, chain 9745)
- UnnamedContract (`0x286182...beac1f`, chain 9745)
- UnnamedContract (`0x2af432...d21295`, chain 9745)
- UnnamedContract (`0x2fe4a2...2876eb`, chain 9745)
- UnnamedContract (`0x3d8ead...7c69c1`, chain 9745)
- UnnamedContract (`0x41d2c5...9548b7`, chain 9745)
- UnnamedContract (`0x457492...bc3648`, chain 9745)
- UnnamedContract (`0x4f172b...4bfea2`, chain 9745)
- UnnamedContract (`0x5bca7d...7262bc`, chain 9745)
- UnnamedContract (`0x5f870c...544f94`, chain 9745)
- UnnamedContract (`0x6a2691...8baef5`, chain 9745)
- UnnamedContract (`0x6e2849...0015fb`, chain 9745)
- UnnamedContract (`0x8271e0...90e8ad`, chain 9745)
- UnnamedContract (`0x845b94...2921bf`, chain 9745)
- UnnamedContract (`0x95249d...8a3d4b`, chain 9745)
- UnnamedContract (`0xa4a2e7...566a96`, chain 9745)
- UnnamedContract (`0xb0261f...b9712b`, chain 9745)
- UnnamedContract (`0xb2be76...41f872`, chain 9745)
- UnnamedContract (`0xbb8a5e...5a2902`, chain 9745)
- UnnamedContract (`0xc2cd39...7c01bc`, chain 9745)
- UnnamedContract (`0xc9459a...7993c0`, chain 9745)
- UnnamedContract (`0xe35a87...096bd8`, chain 9745)
- UnnamedContract (`0xe460de...923650`, chain 9745)
- UnnamedContract (`0xe5de15...983a69`, chain 9745)
- UnnamedContract (`0xe6da14...a0fb42`, chain 9745)
- UnnamedContract (`0xe7fbd7...48c88c`, chain 9745)
- UnnamedContract (`0xfc687e...97c2df`, chain 9745)
- UnnamedContract (`0xff5cb2...a6e8d1`, chain 9745)
- UnnamedContract (`0x06452f...9198a3`, chain 42161)
- UnnamedContract (`0x07cdeb...045b80`, chain 42161)
- UnnamedContract (`0x104e15...b04d7a`, chain 42161)
- UnnamedContract (`0x135262...7ad3e0`, chain 42161)
- UnnamedContract (`0x1f7c86...31c1bd`, chain 42161)
- UnnamedContract (`0x1fd8af...cdf4a1`, chain 42161)
- UnnamedContract (`0x227d2f...4d6560`, chain 42161)
- UnnamedContract (`0x25877b...5fef82`, chain 42161)
- UnnamedContract (`0x2cb6e1...991ec3`, chain 42161)
- UnnamedContract (`0x37c5ab...6614fd`, chain 42161)
- UnnamedContract (`0x452030...9c2b32`, chain 42161)
- UnnamedContract (`0x498bf2...99c1e5`, chain 42161)
- UnnamedContract (`0x4d1af9...c9bb61`, chain 42161)
- UnnamedContract (`0x57390a...d8dff8`, chain 42161)
- UnnamedContract (`0x59afcd...744906`, chain 42161)
- UnnamedContract (`0x5ccbb2...2f6839`, chain 42161)
- UnnamedContract (`0x5ffe7f...e35e98`, chain 42161)
- UnnamedContract (`0x604388...e2ae22`, chain 42161)
- UnnamedContract (`0x6d447e...cfffed`, chain 42161)
- UnnamedContract (`0x820945...c6ae85`, chain 42161)
- UnnamedContract (`0x852f32...6d75d5`, chain 42161)
- UnnamedContract (`0x934791...d14c52`, chain 42161)
- UnnamedContract (`0x988d10...a3bce7`, chain 42161)
- UnnamedContract (`0x98ee85...eaaf7f`, chain 42161)
- UnnamedContract (`0x9af14d...46167b`, chain 42161)
- UnnamedContract (`0xa72c85...d551cc`, chain 42161)
- UnnamedContract (`0xaa2377...c65a6a`, chain 42161)
- UnnamedContract (`0xb10cde...b83385`, chain 42161)
- UnnamedContract (`0xb10cfa...bd86b8`, chain 42161)
- UnnamedContract (`0xb7b0ff...323830`, chain 42161)
- UnnamedContract (`0xb7b240...59a117`, chain 42161)
- UnnamedContract (`0xbc0797...9fbee8`, chain 42161)
- UnnamedContract (`0xca8d07...36e4b4`, chain 42161)
- UnnamedContract (`0xcaec11...922dea`, chain 42161)
- UnnamedContract (`0xcbc1be...75c5a4`, chain 42161)
- UnnamedContract (`0xd4a8bd...619b34`, chain 42161)
- UnnamedContract (`0xd4f94d...81a88e`, chain 42161)
- UnnamedContract (`0xd7e72f...12988b`, chain 42161)
- UnnamedContract (`0xefb660...a8809d`, chain 42161)
- UnnamedContract (`0xf6841c...afd7ff`, chain 42161)
- UnnamedContract (`0xfacefe...d31752`, chain 42161)
- UnnamedContract (`0xfe0255...4b9ae2`, chain 42161)
- UnnamedContract (`0xff02cb...0b8b61`, chain 42161)
- UnnamedContract (`0x004a47...402f13`, chain 42220)
- UnnamedContract (`0x070a5c...611b16`, chain 42220)
- UnnamedContract (`0x07cdeb...045b80`, chain 42220)
- UnnamedContract (`0x0c59d3...03baef`, chain 42220)
- UnnamedContract (`0x1764ee...594585`, chain 42220)
- UnnamedContract (`0x19bd1a...f6c7d2`, chain 42220)
- UnnamedContract (`0x1fd8af...cdf4a1`, chain 42220)
- UnnamedContract (`0x2eb4cd...98f155`, chain 42220)
- UnnamedContract (`0x3c0a40...9c4d11`, chain 42220)
- UnnamedContract (`0x3d8ead...7c69c1`, chain 42220)
- UnnamedContract (`0x3f445d...930f61`, chain 42220)
- UnnamedContract (`0x505d66...d2be44`, chain 42220)
- UnnamedContract (`0x527cbd...2ef8af`, chain 42220)
- UnnamedContract (`0x549de2...587b96`, chain 42220)
- UnnamedContract (`0x56bc95...b380a4`, chain 42220)
- UnnamedContract (`0x5a8c93...d5cfcc`, chain 42220)
- UnnamedContract (`0x5ffe7f...e35e98`, chain 42220)
- UnnamedContract (`0x64afa9...b64edd`, chain 42220)
- UnnamedContract (`0x6a2691...8baef5`, chain 42220)
- UnnamedContract (`0x6d447e...cfffed`, chain 42220)
- UnnamedContract (`0x75184c...067fdc`, chain 42220)
- UnnamedContract (`0x934791...d14c52`, chain 42220)
- UnnamedContract (`0x98ee85...eaaf7f`, chain 42220)
- UnnamedContract (`0xa54f3c...d26ae2`, chain 42220)
- UnnamedContract (`0xa72c85...d551cc`, chain 42220)
- UnnamedContract (`0xa7b9d8...fdac26`, chain 42220)
- UnnamedContract (`0xb10cde...b83385`, chain 42220)
- UnnamedContract (`0xb10cfa...bd86b8`, chain 42220)
- UnnamedContract (`0xbd2775...e51882`, chain 42220)
- UnnamedContract (`0xca8d07...36e4b4`, chain 42220)
- UnnamedContract (`0xd7e72f...12988b`, chain 42220)
- UnnamedContract (`0xe265fc...da2ce3`, chain 42220)
- UnnamedContract (`0xe35a87...096bd8`, chain 42220)
- UnnamedContract (`0xe5de15...983a69`, chain 42220)
- UnnamedContract (`0xfabc42...c94ceb`, chain 42220)
- UnnamedContract (`0xfacefe...d31752`, chain 42220)
- UnnamedContract (`0x004a47...402f13`, chain 42793)
- UnnamedContract (`0x129578...3cc11d`, chain 42793)
- UnnamedContract (`0x17c67c...b6c271`, chain 42793)
- UnnamedContract (`0x193110...fc310d`, chain 42793)
- UnnamedContract (`0x22adeb...653123`, chain 42793)
- UnnamedContract (`0x286182...beac1f`, chain 42793)
- UnnamedContract (`0x2af432...d21295`, chain 42793)
- UnnamedContract (`0x2fe4a2...2876eb`, chain 42793)
- UnnamedContract (`0x3195a3...5767f7`, chain 42793)
- UnnamedContract (`0x41d2c5...9548b7`, chain 42793)
- UnnamedContract (`0x457492...bc3648`, chain 42793)
- UnnamedContract (`0x5de4ef...76c895`, chain 42793)
- UnnamedContract (`0x5f870c...544f94`, chain 42793)
- UnnamedContract (`0x6495d3...d196ea`, chain 42793)
- UnnamedContract (`0x66184f...f57ee9`, chain 42793)
- UnnamedContract (`0x6d447e...cfffed`, chain 42793)
- UnnamedContract (`0x6e2849...0015fb`, chain 42793)
- UnnamedContract (`0x74d6aa...e8e66d`, chain 42793)
- UnnamedContract (`0x8271e0...90e8ad`, chain 42793)
- UnnamedContract (`0x845b94...2921bf`, chain 42793)
- UnnamedContract (`0x8fb3ec...3b2124`, chain 42793)
- UnnamedContract (`0x95249d...8a3d4b`, chain 42793)
- UnnamedContract (`0x988d10...a3bce7`, chain 42793)
- UnnamedContract (`0xa4a2e7...566a96`, chain 42793)
- UnnamedContract (`0xb10cde...b83385`, chain 42793)
- UnnamedContract (`0xb10cfa...bd86b8`, chain 42793)
- UnnamedContract (`0xb2be76...41f872`, chain 42793)
- UnnamedContract (`0xba7cbf...7b90aa`, chain 42793)
- UnnamedContract (`0xc77206...a1ae42`, chain 42793)
- UnnamedContract (`0xc9459a...7993c0`, chain 42793)
- UnnamedContract (`0xe460de...923650`, chain 42793)
- UnnamedContract (`0xe6da14...a0fb42`, chain 42793)
- UnnamedContract (`0xe7fbd7...48c88c`, chain 42793)
- UnnamedContract (`0xfacefe...d31752`, chain 42793)
- UnnamedContract (`0xfc687e...97c2df`, chain 42793)
- UnnamedContract (`0xff5cb2...a6e8d1`, chain 42793)
- UnnamedContract (`0x06534b...15fa35`, chain 43114)
- UnnamedContract (`0x07cdeb...045b80`, chain 43114)
- UnnamedContract (`0x0c59d3...03baef`, chain 43114)
- UnnamedContract (`0x0dcded...45d983`, chain 43114)
- UnnamedContract (`0x0dd6c1...a80783`, chain 43114)
- UnnamedContract (`0x1764ee...594585`, chain 43114)
- UnnamedContract (`0x1db36d...742155`, chain 43114)
- UnnamedContract (`0x26d01c...e7d7e2`, chain 43114)
- UnnamedContract (`0x26e91b...6b99b8`, chain 43114)
- UnnamedContract (`0x2c152d...414eaa`, chain 43114)
- UnnamedContract (`0x3261ca...23cafc`, chain 43114)
- UnnamedContract (`0x37c5ab...6614fd`, chain 43114)
- UnnamedContract (`0x3b519a...d5087b`, chain 43114)
- UnnamedContract (`0x3d6cb2...d8796a`, chain 43114)
- UnnamedContract (`0x47ca04...677ee4`, chain 43114)
- UnnamedContract (`0x505d66...d2be44`, chain 43114)
- UnnamedContract (`0x5a8c93...d5cfcc`, chain 43114)
- UnnamedContract (`0x5c57bd...a0ee30`, chain 43114)
- UnnamedContract (`0x5cc014...d1cfd6`, chain 43114)
- UnnamedContract (`0x5ffe7f...e35e98`, chain 43114)
- UnnamedContract (`0x6a8cbe...ae21bf`, chain 43114)
- UnnamedContract (`0x6d447e...cfffed`, chain 43114)
- UnnamedContract (`0x97adc0...9b0267`, chain 43114)
- UnnamedContract (`0x98ee85...eaaf7f`, chain 43114)
- UnnamedContract (`0xa3ea43...4a4e64`, chain 43114)
- UnnamedContract (`0xa54f3c...d26ae2`, chain 43114)
- UnnamedContract (`0xa72c85...d551cc`, chain 43114)
- UnnamedContract (`0xa7b9d8...fdac26`, chain 43114)
- UnnamedContract (`0xb10cde...b83385`, chain 43114)
- UnnamedContract (`0xb10cfa...bd86b8`, chain 43114)
- UnnamedContract (`0xb1b9fb...01accf`, chain 43114)
- UnnamedContract (`0xc10656...f4df86`, chain 43114)
- UnnamedContract (`0xc6452f...dbabda`, chain 43114)
- UnnamedContract (`0xc9882d...2ddea1`, chain 43114)
- UnnamedContract (`0xca56f8...7edfaa`, chain 43114)
- UnnamedContract (`0xca8d07...36e4b4`, chain 43114)
- UnnamedContract (`0xcaf496...58fe3e`, chain 43114)
- UnnamedContract (`0xcb7c16...6d855d`, chain 43114)
- UnnamedContract (`0xd5cf10...3a63d0`, chain 43114)
- UnnamedContract (`0xd7e72f...12988b`, chain 43114)
- UnnamedContract (`0xd823d2...a003a6`, chain 43114)
- UnnamedContract (`0xe265fc...da2ce3`, chain 43114)
- UnnamedContract (`0xe54859...fc4b53`, chain 43114)
- UnnamedContract (`0xeebc56...e42a1b`, chain 43114)
- UnnamedContract (`0xfabc42...c94ceb`, chain 43114)
- UnnamedContract (`0xfacefe...d31752`, chain 43114)
- UnnamedContract (`0x046207...3685cc`, chain 57073)
- UnnamedContract (`0x06452f...9198a3`, chain 57073)
- UnnamedContract (`0x070a5c...611b16`, chain 57073)
- UnnamedContract (`0x0c59d3...03baef`, chain 57073)
- UnnamedContract (`0x13dff1...20a846`, chain 57073)
- UnnamedContract (`0x166c40...0d45c5`, chain 57073)
- UnnamedContract (`0x19bd1a...f6c7d2`, chain 57073)
- UnnamedContract (`0x1a8334...7fe495`, chain 57073)
- UnnamedContract (`0x39fec5...f2344d`, chain 57073)
- UnnamedContract (`0x3c0a40...9c4d11`, chain 57073)
- UnnamedContract (`0x3d6cb2...d8796a`, chain 57073)
- UnnamedContract (`0x3e3b5f...663181`, chain 57073)
- UnnamedContract (`0x4221ee...26a3b1`, chain 57073)
- UnnamedContract (`0x5702bd...b07499`, chain 57073)
- UnnamedContract (`0x5bca7d...7262bc`, chain 57073)
- UnnamedContract (`0x5ea9dd...61427a`, chain 57073)
- UnnamedContract (`0x604388...e2ae22`, chain 57073)
- UnnamedContract (`0x686bdb...ac78b4`, chain 57073)
- UnnamedContract (`0x6a2691...8baef5`, chain 57073)
- UnnamedContract (`0x6d447e...cfffed`, chain 57073)
- UnnamedContract (`0x76303e...431f1d`, chain 57073)
- UnnamedContract (`0x87dd13...eabcad`, chain 57073)
- UnnamedContract (`0x9ec094...94c874`, chain 57073)
- UnnamedContract (`0xa7b9d8...fdac26`, chain 57073)
- UnnamedContract (`0xac7367...c2ccb3`, chain 57073)
- UnnamedContract (`0xb10cde...b83385`, chain 57073)
- UnnamedContract (`0xb10cfa...bd86b8`, chain 57073)
- UnnamedContract (`0xb9e905...7621fa`, chain 57073)
- UnnamedContract (`0xbc0797...9fbee8`, chain 57073)
- UnnamedContract (`0xc2cd39...7c01bc`, chain 57073)
- UnnamedContract (`0xc9fe0c...2b665f`, chain 57073)
- UnnamedContract (`0xd125e7...7be6dc`, chain 57073)
- UnnamedContract (`0xd7e72f...12988b`, chain 57073)
- UnnamedContract (`0xe265fc...da2ce3`, chain 57073)
- UnnamedContract (`0xe5de15...983a69`, chain 57073)
- UnnamedContract (`0xe61fb9...2de66b`, chain 57073)
- UnnamedContract (`0xfacefe...d31752`, chain 57073)
- UnnamedContract (`0x004a47...402f13`, chain 1313161554)
- UnnamedContract (`0x070a5c...611b16`, chain 1313161554)
- UnnamedContract (`0x1fd8af...cdf4a1`, chain 1313161554)
- UnnamedContract (`0x21688e...269d30`, chain 1313161554)
- UnnamedContract (`0x2eb4cd...98f155`, chain 1313161554)
- UnnamedContract (`0x3c0a40...9c4d11`, chain 1313161554)
- UnnamedContract (`0x3d8ead...7c69c1`, chain 1313161554)
- UnnamedContract (`0x527cbd...2ef8af`, chain 1313161554)
- UnnamedContract (`0x549de2...587b96`, chain 1313161554)
- UnnamedContract (`0x5ffe7f...e35e98`, chain 1313161554)
- UnnamedContract (`0x6600e9...b86afb`, chain 1313161554)
- UnnamedContract (`0x6a2691...8baef5`, chain 1313161554)
- UnnamedContract (`0x6d447e...cfffed`, chain 1313161554)
- UnnamedContract (`0x934791...d14c52`, chain 1313161554)
- UnnamedContract (`0x98ee85...eaaf7f`, chain 1313161554)
- UnnamedContract (`0xa72c85...d551cc`, chain 1313161554)
- UnnamedContract (`0xa7b9d8...fdac26`, chain 1313161554)
- UnnamedContract (`0xb10cde...b83385`, chain 1313161554)
- UnnamedContract (`0xb10cfa...bd86b8`, chain 1313161554)
- UnnamedContract (`0xbc0797...9fbee8`, chain 1313161554)
- UnnamedContract (`0xbd2775...e51882`, chain 1313161554)
- UnnamedContract (`0xd4a8bd...619b34`, chain 1313161554)
- UnnamedContract (`0xe5de15...983a69`, chain 1313161554)
- UnnamedContract (`0xf3a431...0874ef`, chain 1313161554)
- UnnamedContract (`0xf3a6aa...5a390a`, chain 1313161554)
- UnnamedContract (`0xfacefe...d31752`, chain 1313161554)
- UnnamedContract (`0xff02cb...0b8b61`, chain 1313161554)
- Agent (`0x2c163f...4c8b80`, chain 8453)
- AggregatorStablePrice-aggregatorofstablecoinpricesforcrvUSD (`0x18672b...0e4e62`, chain 1)
- Block Hash Oracle (`0x7cde6e...62ba37`, chain 56)
- Block Header Verifier (`0xb10cde...b83385`, chain 10)
- Block Oracle (`0xb10cfa...bd86b8`, chain 10)
- CCIPBlockHashSender (`0x51a00f...5d9e61`, chain 1)
- Child Liquidity Gauge Factory (`0x06471e...7b004f`, chain 100)
- CowSwapBurner (`0x566b9f...7eda83`, chain 100)
- crvUSD Controller (`0x2287b7...920775`, chain 42161)
- crvUSD FlashLender (`0x26de78...0e9ee1`, chain 1)
- crvUSDControllerFactory (`0xc9332f...0738bc`, chain 1)
- crvUSDStablecoin (`0xf939e0...ac1b4e`, chain 1)
- CryptoFromPool (`0x0cd5a1...37155b`, chain 252)
- Curve Fee Distribution (`0xd16d5e...027914`, chain 1)
- CurveAddressProvider (`0x1764ee...594585`, chain 130)
- CurveCryptoCalc (`0xefaddd...43f7ce`, chain 8453)
- CurveCryptoCalcZap (`0x69522f...0adb4f`, chain 252)
- CurveCryptoViews2Optimized (`0x07cdeb...045b80`, chain 1)
- CurveCryptoViews3Optimized (`0x05d4e2...ef3ef7`, chain 8453)
- CurveDeposit&amp;StakeZap (`0x37c5ab...6614fd`, chain 10)
- CurveFactory (`0x5eee30...e31f6e`, chain 1313161554)
- CurveL2TricryptoFactory (`0x3d6cb2...d8796a`, chain 42220)
- CurveMetaRegistry (`0x0c59d3...03baef`, chain 5000)
- CurveMetaZap (`0x5a8c93...d5cfcc`, chain 146)
- CurveRateProvider (`0x07920e...161ea0`, chain 252)
- CurveRouter (`0x5eee30...e31f6e`, chain 146)
- CurveRouter v1.1 (`0x16c652...265353`, chain 1)
- CurveRouter v1.2 (`0x45312e...c8cd4e`, chain 1)
- CurveRouterNgPoolsOnly v1.1 (`0x4f37a9...cffc1f`, chain 5000)
- CurveRouterOptimism v1.1 (`0x0dcded...45d983`, chain 10)
- CurveRouterSidechain v1.1 (`0x219171...9a0a0d`, chain 42161)
- CurveRouterSidechainTricryptoMeta v1.1 (`0x0dcded...45d983`, chain 100)
- CurveStableCalc (`0x5552b6...c9d1f7`, chain 8453)
- CurveStableCalcZap (`0x0fe38d...1300cf`, chain 56)
- CurveStableSwap (`0xa7ba18...abd9c2`, chain 130)
- CurveStableSwapFactory (`0x604388...e2ae22`, chain 130)
- CurveStableswapFactoryNG (`0x1764ee...594585`, chain 137)
- CurveStableSwapMath (`0x686bdb...ac78b4`, chain 130)
- CurveStableSwapMeta (`0x7c2085...c463d8`, chain 130)
- CurveStableSwapMetaNG (`0x1764ee...594585`, chain 5000)
- CurveStableSwapNG (`0x1764ee...594585`, chain 252)
- CurveStableSwapNGMath (`0x166c40...0d45c5`, chain 56)
- CurveStableSwapNGViews (`0x3bba97...f26e95`, chain 42161)
- CurveTricryptoFactory (`0x0c0e5f...4b4963`, chain 1)
- CurveTricryptoMath (`0xa7b9d8...fdac26`, chain 130)
- CurveTricryptoMathOptimized (`0x0c9d8c...650953`, chain 252)
- CurveTricryptoOptimized (`0x0458ea...b3116c`, chain 10)
- CurveTricryptoOptimizedWETH (`0x0c59d3...03baef`, chain 137)
- CurveTricryptoSwap (`0x635742...2eafbd`, chain 130)
- CurveTricryptoSwapFactory (`0x5702bd...b07499`, chain 130)
- CurveTricryptoViews (`0xa7b9d8...fdac26`, chain 146)
- CurveTwocryptoFactory (`0x98ee85...eaaf7f`, chain 1)
- CurveTwocryptoMath (`0x0c9d8c...650953`, chain 146)
- CurveTwocryptoMathOptimized (`0x1fd8af...cdf4a1`, chain 1)
- CurveTwocryptoSwap (`0x1a8334...7fe495`, chain 130)
- CurveTwocryptoSwapFactory (`0x1a8334...7fe495`, chain 146)
- CurveTwocryptoViews (`0x64379c...84db80`, chain 146)
- CurveXChainLiquidityGauge (`0x506f59...df9f7f`, chain 130)
- CurveXChainLiquidityGaugeFactory (`0x8b3efb...3f57a6`, chain 130)
- DelegationVerifier (`0x1d04fc...2e6841`, chain 10)
- DonationStreamer (`0x2b786b...ebc828`, chain 1)
- ERC1967Proxy (`0x7fff4c...ccd270`, chain 146)
- ERC20 (`0x331b91...aecc56`, chain 252)
- FastBridgeL2 (`0x1f2af2...80dae1`, chain 42161)
- FastBridgeVault (`0x5ef620...21b9ec`, chain 1)
- FeeCollector (`0xa2bcd1...bcce00`, chain 1)
- FeeSplitter (`0x2dfd89...c064f2`, chain 1)
- Gauge Type Oracle (`0x01689f...968e41`, chain 43114)
- GaugeTypeProver (`0x0b2584...defe62`, chain 43114)
- GaugeTypeVerifier (`0x47ca04...677ee4`, chain 146)
- GnosisBridger (`0xc4aa2f...659449`, chain 100)
- GnosisSafe (`0x467947...6b1e0c`, chain 1)
- GnosisSafeProxy (`0x6d447e...cfffed`, chain 1)
- GnosisSafeProxy (`0x6d447e...cfffed`, chain 10)
- Hooker (`0x9a9df3...f6f69d`, chain 1)
- KittyViewOptimized2 (`0x07cdeb...045b80`, chain 1313161554)
- L2 Voting Escrow Oracle (`0x2fa3cb...470334`, chain 100)
- L2MessengerLZ (`0x14e11c...cf79ff`, chain 42161)
- L2StandardERC20 (`0x099420...05fb53`, chain 10)
- Layer Zero Block Hash Sender (`0x49cdec...c2ab61`, chain 1)
- Layer Zero Bridge (`0x0a92fd...db4d4f`, chain 56)
- Layer Zero Bridge - Curve DAO Token (`0x3c8d2a...7311cc`, chain 1)
- Layer Zero Bridge (Ethereum Version) (`0x08132e...e638e8`, chain 1)
- LayerZero Block Relay (`0xfacefe...d31752`, chain 10)
- LlamaLend Factory (`0x5f9407...3b3640`, chain 10)
- LlamaLendLeverageZap (`0x0fe38d...1300cf`, chain 146)
- LlamaLendOdosLeverageZap (`0x329451...90b687`, chain 252)
- MessageDigestProver (`0xbff1f5...9f1825`, chain 56)
- MessageDigestVerifier (`0x22d490...f81e64`, chain 56)
- MetaZap NG (`0x9293f0...16019d`, chain 1313161554)
- MetaZapNG (`0x07920e...161ea0`, chain 10)
- Minter (`0x458599...3726bf`, chain 56)
- Minter Proxy (`0x476528...f005a5`, chain 43114)
- OneWayLendingFactory (`0x30d185...933993`, chain 146)
- Optimism Relayer (`0x7be6bd...2b6f96`, chain 252)
- OptimismMintableERC20 (`0x099420...05fb53`, chain 5000)
- OptimismMintablePermitERC20 (`0xab94c7...836ed0`, chain 252)
- Peg Keeper Regulator (`0x36a04c...dd855f`, chain 1)
- Peg Keeper V2 (`0x3fa20e...2fe09c`, chain 1)
- PermittableToken (`0x712b3d...bdd0bd`, chain 100)
- ProxyAdmin (`0x8b3efb...3f57a6`, chain 252)
- Rewards Handler (`0xe8d1e2...736f56`, chain 1)
- Root Liquidity Gauge Factory (`0x306a45...d9dcd6`, chain 1)
- SafeProxy (`0x6d447e...cfffed`, chain 9745)
- SemiLog monetary policy (`0x0b3536...c8f5c1`, chain 42161)
- Sonic Block Hash oracle (`0xe35a87...096bd8`, chain 146)
- StableCalc (`0xca8d07...36e4b4`, chain 1313161554)
- StablecoinLens (`0xe24e2d...01ecd7`, chain 1)
- StandardArbERC20 (`0x11cdb4...034978`, chain 42161)
- StreamExecutor (`0x4a8cc5...1c462a`, chain 1)
- Token (`0x0094ad...5fe0e5`, chain 56)
- Treasury (`0x6508ef...2d290b`, chain 1)
- UChildERC20Proxy (`0x172370...a610af`, chain 137)
- VaultMessengerLZ (`0x159455...e3e6d9`, chain 1)
- VecrvVerifier (`0x38334e...7a6abc`, chain 146)
- Voting (`0xbcff8b...330399`, chain 1)
- XYZ Broadcaster (`0x7ba334...4cc2cc`, chain 1)
- XYZ Relayer (`0xe5de15...983a69`, chain 146)
- Yearn V3 Vault (`0x065597...b84367`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 119; live-surface rows included: 119 (119 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 990/1058 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 19/119 (16.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 990 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 122 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 4 standard proxy/library)
- Proxy deployments represented within implementation groups: 18
- Confirmed-live implementations: 990 of 1112 unique; 122 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 19/241
- Verified + Unaudited implementations: 222
- Verified by bytecode match: 0
- Unverified implementations: 871
- Unique implementations: 1112
- Raw deployments: 1112
- Audits discovered: 21 (21 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 11
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 2 fresh, 4 aging, 14 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 17 match-unverified
- Tier 1 coverage: 9.2% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 11 | 4.6% | 2025-09 |
| yAudit | Tier 2 | 8 | 3.3% | 2023-11 |
| StateMind | Tier 2 | 2 | 0.8% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (19)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| crvUSDControllerFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235545 | `0xc9332f...0738bc` | ✅ Audited |
| crvUSDStablecoin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235569 | `0xf939e0...ac1b4e` | ✅ Audited |
| CryptoFromPool | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236016 | `0x0cd5a1...37155b` | ✅ Audited |
| CurveStableswapFactoryNG | unknown | project_anchor | own_supporting | 0 | polygon | unit-235748 | `0x1764ee...594585` | ✅ Audited |
| CurveStableSwapMetaNG | unknown | project_anchor | own_supporting | 0 | mantle | unit-236248 | `0x1764ee...594585` | ✅ Audited |
| CurveStableSwapNG | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236017 | `0x1764ee...594585` | ✅ Audited |
| CurveStableSwapNGMath | unknown | project_anchor | own_supporting | 0 | bsc | unit-236285 | `0x166c40...0d45c5` | ✅ Audited |
| CurveStableSwapNGViews | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236078 | `0x3bba97...f26e95` | ✅ Audited |
| CurveTricryptoFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235458 | `0x0c0e5f...4b4963` | ✅ Audited |
| CurveTricryptoOptimizedWETH | unknown | project_anchor | own_supporting | 0 | polygon | unit-235746 | `0x0c59d3...03baef` | ✅ Audited |
| FastBridgeL2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236069 | `0x1f2af2...80dae1` | ✅ Audited |
| FastBridgeVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235496 | `0x5ef620...21b9ec` | ✅ Audited |
| FeeSplitter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235473 | `0x2dfd89...c064f2` | ✅ Audited |
| L2MessengerLZ | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236068 | `0x14e11c...cf79ff` | ✅ Audited |
| MessageDigestVerifier | unknown | project_anchor | own_supporting | 0 | bsc | unit-236287 | `0x22d490...f81e64` | ✅ Audited |
| OneWayLendingFactory | unknown | project_anchor | own_supporting | 0 | sonic | unit-235828 | `0x30d185...933993` | ✅ Audited |
| StablecoinLens | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235556 | `0xe24e2d...01ecd7` | ✅ Audited |
| VaultMessengerLZ | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235460 | `0x159455...e3e6d9` | ✅ Audited |
| Voting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-236504 | `0xbcff8b...330399` | ✅ Audited |

### ⚠️ Verified + Unaudited (222)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressQueueStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44e319...e2ebd8` | ⚠️ Unaudited |
| AddressSetStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4ae25...1c6a16` | ⚠️ Unaudited |
| Agent | unknown | project_anchor | own_supporting | 0 | base | unit-236375 | `0x2c163f...4c8b80` | ⚠️ Unaudited |
| AggregatorStablePrice-aggregatorofstablecoinpricesforcrvUSD | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235462 | `0x18672b...0e4e62` | ⚠️ Unaudited |
| AirdropDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e6d5c...f1baa4` | ⚠️ Unaudited |
| AlToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc6da0...3660e9` | ⚠️ Unaudited |
| AssetRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfa23b...0d1873` | ⚠️ Unaudited |
| AuraBalStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b0987...ee5077` | ⚠️ Unaudited |
| AuraBalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77e5bb...af7328` | ⚠️ Unaudited |
| AuraBalZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06ee5f...947363` | ⚠️ Unaudited |
| AuraHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09ee25...85940e` | ⚠️ Unaudited |
| BBUSDHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d2fc9...6c8e37` | ⚠️ Unaudited |
| BBUSDHandlerv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe33ed4...98d4a8` | ⚠️ Unaudited |
| Block Hash Oracle | unknown | project_anchor | own_supporting | 0 | bsc | unit-236306 | `0x7cde6e...62ba37` | ⚠️ Unaudited |
| Block Header Verifier | unknown | project_anchor | own_supporting | 0 | optimism | unit-235612 | `0xb10cde...b83385` | ⚠️ Unaudited |
| Block Oracle | unknown | project_anchor | own_supporting | 0 | optimism | unit-235613 | `0xb10cfa...bd86b8` | ⚠️ Unaudited |
| CCIPBlockHashSender | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235490 | `0x51a00f...5d9e61` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x48759f...e4166a` | ⚠️ Unaudited |
| CErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39aa39...5e7563` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5d3a53...8e3643` | ⚠️ Unaudited |
| CErc20Immutable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc528b0...dd7760` | ⚠️ Unaudited |
| Child Liquidity Gauge Factory | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235630 | `0x06471e...7b004f` | ⚠️ Unaudited |
| cow_harvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0a21a...d6acd3` | ⚠️ Unaudited |
| CowSwapBurner | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235646 | `0x566b9f...7eda83` | ⚠️ Unaudited |
| crvUSD Controller | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236074 | `0x2287b7...920775` | ⚠️ Unaudited |
| crvUSD FlashLender | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235469 | `0x26de78...0e9ee1` | ⚠️ Unaudited |
| CrvUsdSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b62f9...6328de` | ⚠️ Unaudited |
| CryptoFromPoolsRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb08eb2...602cd9` | ⚠️ Unaudited |
| CryptoFromPoolVaultWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002688...1b09be` | ⚠️ Unaudited |
| Curve AddressProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x000000...fc4383` | ⚠️ Unaudited |
| Curve Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5ef722...83bbfd` | ⚠️ Unaudited |
| Curve Fee Distribution | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235550 | `0xd16d5e...027914` | ⚠️ Unaudited |
| Curve LP Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1337be...7963ec` | ⚠️ Unaudited |
| Curve Registry Address Provider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x000000...fc4383` | ⚠️ Unaudited |
| Curve Sidechain/L2 Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3093f9...78c336` | ⚠️ Unaudited |
| curve_harvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14b355...371631` | ⚠️ Unaudited |
| CurveAddressProvider | unknown | project_anchor | own_supporting | 0 | unichain | unit-235690 | `0x1764ee...594585` | ⚠️ Unaudited |
| CurveCryptoCalc | unknown | project_anchor | own_supporting | 0 | base | unit-236412 | `0xefaddd...43f7ce` | ⚠️ Unaudited |
| CurveCryptoCalcZap | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236035 | `0x69522f...0adb4f` | ⚠️ Unaudited |
| CurveCryptoViews2Optimized | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235455 | `0x07cdeb...045b80` | ⚠️ Unaudited |
| CurveCryptoViews3Optimized | unknown | project_anchor | own_supporting | 0 | base | unit-236372 | `0x05d4e2...ef3ef7` | ⚠️ Unaudited |
| CurveDeposit&amp;StakeZap | unknown | project_anchor | own_supporting | 0 | optimism | unit-235586 | `0x37c5ab...6614fd` | ⚠️ Unaudited |
| CurveFactory | unknown | project_anchor | own_supporting | 0 | aurora | unit-235723 | `0x5eee30...e31f6e` | ⚠️ Unaudited |
| CurveL2TricryptoFactory | unknown | project_anchor | own_supporting | 0 | celo | unit-236122 | `0x3d6cb2...d8796a` | ⚠️ Unaudited |
| CurveMetaRegistry | unknown | project_anchor | own_supporting | 0 | mantle | unit-236245 | `0x0c59d3...03baef` | ⚠️ Unaudited |
| CurveMetaZap | unknown | project_anchor | own_supporting | 0 | sonic | unit-235836 | `0x5a8c93...d5cfcc` | ⚠️ Unaudited |
| CurveRateProvider | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236012 | `0x07920e...161ea0` | ⚠️ Unaudited |
| CurveRouter | unknown | project_anchor | own_supporting | 0 | sonic | unit-235839 | `0x5eee30...e31f6e` | ⚠️ Unaudited |
| CurveRouter v1.1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235461 | `0x16c652...265353` | ⚠️ Unaudited |
| CurveRouter v1.2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235484 | `0x45312e...c8cd4e` | ⚠️ Unaudited |
| CurveRouterNgPoolsOnly v1.1 | unknown | project_anchor | own_supporting | 0 | mantle | unit-236253 | `0x4f37a9...cffc1f` | ⚠️ Unaudited |
| CurveRouterOptimism v1.1 | unknown | project_anchor | own_supporting | 0 | optimism | unit-235577 | `0x0dcded...45d983` | ⚠️ Unaudited |
| CurveRouterSidechain v1.1 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236072 | `0x219171...9a0a0d` | ⚠️ Unaudited |
| CurveRouterSidechainTricryptoMeta v1.1 | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235633 | `0x0dcded...45d983` | ⚠️ Unaudited |
| CurveStableCalc | unknown | project_anchor | own_supporting | 0 | base | unit-236382 | `0x5552b6...c9d1f7` | ⚠️ Unaudited |
| CurveStableCalcZap | unknown | project_anchor | own_supporting | 0 | bsc | unit-236284 | `0x0fe38d...1300cf` | ⚠️ Unaudited |
| CurveStableSwap | unknown | project_anchor | own_supporting | 0 | unichain | unit-235704 | `0xa7ba18...abd9c2` | ⚠️ Unaudited |
| CurveStableSwapFactory | unknown | project_anchor | own_supporting | 0 | unichain | unit-235696 | `0x604388...e2ae22` | ⚠️ Unaudited |
| CurveStableSwapMath | unknown | project_anchor | own_supporting | 0 | unichain | unit-235699 | `0x686bdb...ac78b4` | ⚠️ Unaudited |
| CurveStableSwapMeta | unknown | project_anchor | own_supporting | 0 | unichain | unit-235701 | `0x7c2085...c463d8` | ⚠️ Unaudited |
| CurveTricryptoMath | unknown | project_anchor | own_supporting | 0 | unichain | unit-235703 | `0xa7b9d8...fdac26` | ⚠️ Unaudited |
| CurveTricryptoMathOptimized | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236015 | `0x0c9d8c...650953` | ⚠️ Unaudited |
| CurveTricryptoOptimized | unknown | project_anchor | own_supporting | 0 | optimism | unit-235573 | `0x0458ea...b3116c` | ⚠️ Unaudited |
| CurveTricryptoSwap | unknown | project_anchor | own_supporting | 0 | unichain | unit-235697 | `0x635742...2eafbd` | ⚠️ Unaudited |
| CurveTricryptoSwapFactory | unknown | project_anchor | own_supporting | 0 | unichain | unit-235693 | `0x5702bd...b07499` | ⚠️ Unaudited |
| CurveTricryptoViews | unknown | project_anchor | own_supporting | 0 | sonic | unit-235854 | `0xa7b9d8...fdac26` | ⚠️ Unaudited |
| CurveTwocryptoFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235519 | `0x98ee85...eaaf7f` | ⚠️ Unaudited |
| CurveTwocryptoMath | unknown | project_anchor | own_supporting | 0 | sonic | unit-235823 | `0x0c9d8c...650953` | ⚠️ Unaudited |
| CurveTwocryptoMathOptimized | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235466 | `0x1fd8af...cdf4a1` | ⚠️ Unaudited |
| CurveTwocryptoOptimized | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f0985...5fb18c` | ⚠️ Unaudited |
| CurveTwocryptoSwap | unknown | project_anchor | own_supporting | 0 | unichain | unit-235691 | `0x1a8334...7fe495` | ⚠️ Unaudited |
| CurveTwocryptoSwapFactory | unknown | project_anchor | own_supporting | 0 | sonic | unit-235826 | `0x1a8334...7fe495` | ⚠️ Unaudited |
| CurveTwocryptoViews | unknown | project_anchor | own_supporting | 0 | sonic | unit-235841 | `0x64379c...84db80` | ⚠️ Unaudited |
| CurveXChainLiquidityGauge | unknown | project_anchor | own_supporting | 0 | unichain | unit-235692 | `0x506f59...df9f7f` | ⚠️ Unaudited |
| CurveXChainLiquidityGaugeFactory | unknown | project_anchor | own_supporting | 0 | unichain | unit-235702 | `0x8b3efb...3f57a6` | ⚠️ Unaudited |
| CvxFxsStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf761c0...badff8` | ⚠️ Unaudited |
| CvxFxsZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x374223...21944d` | ⚠️ Unaudited |
| CVXMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27a110...b0cb49` | ⚠️ Unaudited |
| Dai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b1754...271d0f` | ⚠️ Unaudited |
| DebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd4fe6e...10239f` | ⚠️ Unaudited |
| DelegationVerifier | unknown | project_anchor | own_supporting | 0 | optimism | unit-235579 | `0x1d04fc...2e6841` | ⚠️ Unaudited |
| DistributorZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56e9db...2ed944` | ⚠️ Unaudited |
| DonationStreamer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235471 | `0x2b786b...ebc828` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfdb631...17697d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x29b41f...0b9a33` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | sonic | unit-236508 | `0x7fff4c...ccd270` | ⚠️ Unaudited |
| ERC20 | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236021 | `0x331b91...aecc56` | ⚠️ Unaudited |
| ExtraZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d69b6...29838e` | ⚠️ Unaudited |
| FeeAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22530d...8eb468` | ⚠️ Unaudited |
| FeeCollector | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235523 | `0xa2bcd1...bcce00` | ⚠️ Unaudited |
| FeeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f1dc3...30d19c` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b869...06eb48` | ⚠️ Unaudited |
| FixedForex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95dfdc...538253` | ⚠️ Unaudited |
| FpisAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ca369...a9f460` | ⚠️ Unaudited |
| FXSMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11fe17...c1d4c7` | ⚠️ Unaudited |
| FXSSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dce36...ded929` | ⚠️ Unaudited |
| Gauge Type Oracle | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236188 | `0x01689f...968e41` | ⚠️ Unaudited |
| GaugeTypeProver | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236191 | `0x0b2584...defe62` | ⚠️ Unaudited |
| GaugeTypeVerifier | unknown | project_anchor | own_supporting | 0 | sonic | unit-235832 | `0x47ca04...677ee4` | ⚠️ Unaudited |
| GenericUnionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf964b0...89ce0e` | ⚠️ Unaudited |
| GnosisBridger | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235668 | `0xc4aa2f...659449` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-236503 | `0x467947...6b1e0c` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235503 | `0x6d447e...cfffed` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 1 | optimism | unit-236505 | `0x6d447e...cfffed` | ⚠️ Unaudited |
| Hooker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235520 | `0x9a9df3...f6f69d` | ⚠️ Unaudited |
| InitializableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f2277...e31417` | ⚠️ Unaudited |
| KittyViewOptimized2 | unknown | project_anchor | own_supporting | 0 | aurora | unit-235715 | `0x07cdeb...045b80` | ⚠️ Unaudited |
| L2 Voting Escrow Oracle | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235640 | `0x2fa3cb...470334` | ⚠️ Unaudited |
| L2StandardERC20 | unknown | project_anchor | own_supporting | 0 | optimism | unit-235576 | `0x099420...05fb53` | ⚠️ Unaudited |
| Layer Zero Block Hash Sender | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235486 | `0x49cdec...c2ab61` | ⚠️ Unaudited |
| Layer Zero Bridge | unknown | project_anchor | own_supporting | 0 | bsc | unit-236282 | `0x0a92fd...db4d4f` | ⚠️ Unaudited |
| Layer Zero Bridge - Curve DAO Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235480 | `0x3c8d2a...7311cc` | ⚠️ Unaudited |
| Layer Zero Bridge (Ethereum Version) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235456 | `0x08132e...e638e8` | ⚠️ Unaudited |
| LayerZero Block Relay | unknown | project_anchor | own_supporting | 0 | optimism | unit-235628 | `0xfacefe...d31752` | ⚠️ Unaudited |
| LiquidityGaugeV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00b71a...a2de99` | ⚠️ Unaudited |
| LiquidRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02dd79...a9440d` | ⚠️ Unaudited |
| LlamaLend Factory | unknown | project_anchor | own_supporting | 0 | optimism | unit-235595 | `0x5f9407...3b3640` | ⚠️ Unaudited |
| LlamaLendLeverageZap | unknown | project_anchor | own_supporting | 0 | sonic | unit-235824 | `0x0fe38d...1300cf` | ⚠️ Unaudited |
| LlamaLendOdosLeverageZap | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236020 | `0x329451...90b687` | ⚠️ Unaudited |
| LLAMMA - crvUSD AMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0167b8...b709e3` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba5602...fd8562` | ⚠️ Unaudited |
| MerkleDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa83043...956183` | ⚠️ Unaudited |
| MessageDigestProver | unknown | project_anchor | own_supporting | 0 | bsc | unit-236321 | `0xbff1f5...9f1825` | ⚠️ Unaudited |
| MetaZap NG | unknown | project_anchor | own_supporting | 0 | aurora | unit-235729 | `0x9293f0...16019d` | ⚠️ Unaudited |
| MetaZapNG | unknown | project_anchor | own_supporting | 0 | optimism | unit-235574 | `0x07920e...161ea0` | ⚠️ Unaudited |
| METH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd5f783...b0adfa` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aab73...1a7e85` | ⚠️ Unaudited |
| Minter | unknown | project_anchor | own_supporting | 0 | bsc | unit-236290 | `0x458599...3726bf` | ⚠️ Unaudited |
| Minter Proxy | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236205 | `0x476528...f005a5` | ⚠️ Unaudited |
| MultiMerkleStash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966a2f...fd4567` | ⚠️ Unaudited |
| OETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x856c4e...0b8dc3` | ⚠️ Unaudited |
| OETHBase | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xdbfefd...ea60a3` | ⚠️ Unaudited |
| OFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x179f38...cf7cad` | ⚠️ Unaudited |
| Optimism Relayer | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236039 | `0x7be6bd...2b6f96` | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | project_anchor | own_supporting | 0 | mantle | unit-236243 | `0x099420...05fb53` | ⚠️ Unaudited |
| OptimismMintablePermitERC20 | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236046 | `0xab94c7...836ed0` | ⚠️ Unaudited |
| PCvxZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6753f2...e48222` | ⚠️ Unaudited |
| Peg Keeper Regulator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235477 | `0x36a04c...dd855f` | ⚠️ Unaudited |
| Peg Keeper V2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235482 | `0x3fa20e...2fe09c` | ⚠️ Unaudited |
| PegKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ef89e...4dccae` | ⚠️ Unaudited |
| PermittableToken | unknown | project_anchor | own_supporting | 1 | gnosis | unit-236506 | `0x712b3d...bdd0bd` | ⚠️ Unaudited |
| PirexClaimAll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0037eb...8f8aca` | ⚠️ Unaudited |
| PirexClaims | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ac09d...5dee7a` | ⚠️ Unaudited |
| PirexDistributorZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49a805...b6e6b8` | ⚠️ Unaudited |
| PirexMigrationV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e705c...e686c2` | ⚠️ Unaudited |
| PirexMigrationV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8ec7d...5fd70a` | ⚠️ Unaudited |
| PrismaSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd94b07...422154` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236042 | `0x8b3efb...3f57a6` | ⚠️ Unaudited |
| RAAC CoW Harvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a893b...165787` | ⚠️ Unaudited |
| RAAC Curve Harvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x582776...9979d2` | ⚠️ Unaudited |
| RAAC Stable Vault Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10f6ef...740d4f` | ⚠️ Unaudited |
| RAAC Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7eef8f...75b879` | ⚠️ Unaudited |
| raac_vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a874...7288ba` | ⚠️ Unaudited |
| REUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x3aef26...939378` | ⚠️ Unaudited |
| ReUsdSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4174b1...8c132c` | ⚠️ Unaudited |
| Rewards Handler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235562 | `0xe8d1e2...736f56` | ⚠️ Unaudited |
| RocketTokenRETH | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xae7873...fc6393` | ⚠️ Unaudited |
| Root Liquidity Gauge Factory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235475 | `0x306a45...d9dcd6` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 0 | plasma | unit-236435 | `0x6d447e...cfffed` | ⚠️ Unaudited |
| sCrvUsdDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17ac69...367efc` | ⚠️ Unaudited |
| sdCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1b565...f6abb5` | ⚠️ Unaudited |
| sDola | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb45ad1...157305` | ⚠️ Unaudited |
| sdToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0879c1...122c66` | ⚠️ Unaudited |
| SemiLog monetary policy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236065 | `0x0b3536...c8f5c1` | ⚠️ Unaudited |
| Sonic Block Hash oracle | unknown | project_anchor | own_supporting | 0 | sonic | unit-235865 | `0xe35a87...096bd8` | ⚠️ Unaudited |
| sReUsdDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55b2b5...25690a` | ⚠️ Unaudited |
| StableCalc | unknown | project_anchor | own_supporting | 0 | aurora | unit-235738 | `0xca8d07...36e4b4` | ⚠️ Unaudited |
| StandardArbERC20 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-236509 | `0x11cdb4...034978` | ⚠️ Unaudited |
| stkCvxCrvDistributorZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b8b49...8dff7b` | ⚠️ Unaudited |
| stkCvxCrvHarvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e2cad...fe83d7` | ⚠️ Unaudited |
| stkCvxCrvMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ed7d0...696f17` | ⚠️ Unaudited |
| stkCvxCrvMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3074e3...07ac3c` | ⚠️ Unaudited |
| stkCvxCrvStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d2aee...0eb7f3` | ⚠️ Unaudited |
| stkCvxCrvVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ebad8...6b89b7` | ⚠️ Unaudited |
| stkCvxCrvZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x105ec4...87ee2b` | ⚠️ Unaudited |
| stkCvxFxsDistributorZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae12bf...dc7d7c` | ⚠️ Unaudited |
| stkCvxFxsHarvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35d28d...f5e906` | ⚠️ Unaudited |
| stkCvxFxsMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5682a2...7e398c` | ⚠️ Unaudited |
| stkCvxFxsMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab237f...c30fd9` | ⚠️ Unaudited |
| stkCvxFxsStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x110a88...fb70de` | ⚠️ Unaudited |
| stkCvxFxsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fdd9e...35386d` | ⚠️ Unaudited |
| stkCvxFxsZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f409e...a23908` | ⚠️ Unaudited |
| stkCvxPrismaDistributorZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0976b9...354480` | ⚠️ Unaudited |
| stkCvxPrismaHarvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f9409...54defb` | ⚠️ Unaudited |
| stkCvxPrismaMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf09320...6754d3` | ⚠️ Unaudited |
| stkCvxPrismaMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06c3b2...599ac5` | ⚠️ Unaudited |
| stkCvxPrismaStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88011c...e89e01` | ⚠️ Unaudited |
| stkCvxPrismaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bfd08...1464bd` | ⚠️ Unaudited |
| stkCvxPrismaZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167832...2dd5f4` | ⚠️ Unaudited |
| StreamExecutor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235488 | `0x4a8cc5...1c462a` | ⚠️ Unaudited |
| TBTCToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8daeba...815faa` | ⚠️ Unaudited |
| TetherToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdac17f...831ec7` | ⚠️ Unaudited |
| Token | unknown | project_anchor | own_supporting | 0 | bsc | unit-236279 | `0x0094ad...5fe0e5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xcacd6f...586e29` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xe3cbd0...489e8f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x82af49...3fbab1` | ⚠️ Unaudited |
| Treasury | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235500 | `0x6508ef...2d290b` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | project_anchor | own_supporting | 1 | polygon | unit-236507 | `0x172370...a610af` | ⚠️ Unaudited |
| UnionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83507c...884c81` | ⚠️ Unaudited |
| UnionZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a7f79...aa4925` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044ac5...ba5ced` | ⚠️ Unaudited |
| VecrvVerifier | unknown | project_anchor | own_supporting | 0 | sonic | unit-235830 | `0x38334e...7a6abc` | ⚠️ Unaudited |
| VeSDTFeeAngleProxyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x059f78...fcd1ac` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...fc4383` | ⚠️ Unaudited |
| WAVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb31f66...fd66c7` | ⚠️ Unaudited |
| WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x420000...000006` | ⚠️ Unaudited |
| WETH9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x420000...000006` | ⚠️ Unaudited |
| WMATIC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d500b...df1270` | ⚠️ Unaudited |
| WrappedSonic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x039e2f...94ad38` | ⚠️ Unaudited |
| WstETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f39c5...5e2ca0` | ⚠️ Unaudited |
| WXDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe91d15...63a97d` | ⚠️ Unaudited |
| WXPL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x6100e3...d19873` | ⚠️ Unaudited |
| XYZ Broadcaster | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235509 | `0x7ba334...4cc2cc` | ⚠️ Unaudited |
| XYZ Relayer | unknown | project_anchor | own_supporting | 0 | sonic | unit-235866 | `0xe5de15...983a69` | ⚠️ Unaudited |
| ycDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99d1fa...7041bc` | ⚠️ Unaudited |
| ycUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9777d7...4cb07e` | ⚠️ Unaudited |
| ycUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1be5d7...8a0a59` | ⚠️ Unaudited |
| yDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16de59...f0bd01` | ⚠️ Unaudited |
| Yearn V3 Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235454 | `0x065597...b84367` | ⚠️ Unaudited |
| yUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6ad7a...a3436e` | ⚠️ Unaudited |
| yUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83f798...f1707d` | ⚠️ Unaudited |
| ZaiStablecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69000d...182ced` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (871)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235453 | `0x064253...691a31` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235457 | `0x0a92fd...db4d4f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235459 | `0x14139e...49881e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235463 | `0x19010d...d643d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235464 | `0x1c4e45...7b83fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235465 | `0x1d788b...c4c867` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235468 | `0x26d01c...e7d7e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235470 | `0x26e91b...6b99b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235472 | `0x2b7e62...60d3e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235474 | `0x2f50d5...5846bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235476 | `0x329451...90b687` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235479 | `0x38d9bd...7f8325` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235483 | `0x409075...0b9968` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235485 | `0x4863c6...87f2d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235487 | `0x4a10d0...04b44f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235489 | `0x4eeb3b...948c5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235491 | `0x56c526...0d0cd7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235492 | `0x584b0f...46fbbf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235493 | `0x5a537a...3177ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235495 | `0x5cc014...d1cfd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235497 | `0x5f3b5d...94e2a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235498 | `0x5fc124...4e9233` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235499 | `0x5ffe7f...e35e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235501 | `0x66442b...b19a6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235502 | `0x6a8cbe...ae21bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235504 | `0x6f8012...bf666c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235507 | `0x76eafd...3827d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235508 | `0x79d584...35874d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235510 | `0x7ce8af...ac3e42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235511 | `0x845f4e...ee28aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235513 | `0x90fe73...f3922c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235514 | `0x9116ed...5723e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235515 | `0x9201da...2de340` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235516 | `0x934791...d14c52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235517 | `0x94d8e4...47bc3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235518 | `0x97d024...c8e937` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235524 | `0xa464e6...8922dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235526 | `0xa72c85...d551cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235527 | `0xa834f3...ca0ed7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235529 | `0xadb10d...b7843d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235530 | `0xae0666...dd999c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235532 | `0xb57a95...ff049a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235535 | `0xbbfe8c...914e7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235536 | `0xbfddf5...53ea13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235538 | `0xc014f3...805085` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235539 | `0xc0fc3d...f44f8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235541 | `0xc455e6...44d3f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235542 | `0xc58986...0aa873` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235543 | `0xc8e843...c23e18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235544 | `0xc91113...840355` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235546 | `0xc9cbc5...bb3e5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235547 | `0xca8d07...36e4b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235548 | `0xcbff30...0fd6ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235549 | `0xd061d6...c2fce0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235551 | `0xd533a9...34cd52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235552 | `0xdcc91f...58b202` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235554 | `0xdfef17...425fe0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235555 | `0xe1834a...344d4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235557 | `0xe39972...513267` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235558 | `0xe3e3fb...790415` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235559 | `0xe478de...db3356` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235560 | `0xe5afcf...62dfe7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235563 | `0xea6876...3205e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235564 | `0xec0e1c...75870f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235565 | `0xecb456...e9b347` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235566 | `0xede71f...75f0f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235568 | `0xf6f07b...a0472e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235570 | `0xf98b45...e379fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235571 | `0xfb726f...1ef9f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235572 | `0xff5304...439ccf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235575 | `0x07cdeb...045b80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235578 | `0x19bd1a...f6c7d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235580 | `0x1fd8af...cdf4a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235581 | `0x1fe2a0...976369` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235582 | `0x227c9a...a92b7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235583 | `0x273e44...ffe9da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235584 | `0x289f63...89335b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235585 | `0x28c4a1...a98267` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235587 | `0x3b1df1...8d2411` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235588 | `0x3f4a2b...55a8ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235589 | `0x40b8c0...fcfbc1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235590 | `0x4eee0d...78f97f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235591 | `0x56c526...0d0cd7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235592 | `0x5702bd...b07499` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235593 | `0x5ea8f3...798bef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235594 | `0x5eee30...e31f6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235596 | `0x5ffe7f...e35e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235597 | `0x635742...2eafbd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235598 | `0x6a8cbe...ae21bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235599 | `0x7a1f2f...8d8837` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235601 | `0x863740...09550e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235602 | `0x871fbd...64dba4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235603 | `0x8e1e50...6153ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235604 | `0x934791...d14c52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235605 | `0x98ee85...eaaf7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235606 | `0x9dee3f...92f749` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235607 | `0x9ff1dd...3d881b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235608 | `0xa22947...21677b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235609 | `0xa6e2e6...fc103d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235610 | `0xa72c85...d551cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235611 | `0xa7b9d8...fdac26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235614 | `0xbc7654...f96443` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235615 | `0xbf7e49...20ca41` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235616 | `0xbfab8e...9a1855` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235617 | `0xc52d7f...ddcbf6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235618 | `0xc65cb3...5a1647` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235619 | `0xc6c094...f9ab53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235620 | `0xca8d07...36e4b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235621 | `0xcc65f4...edb5b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235622 | `0xd166ee...9185d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235623 | `0xd16d5e...027914` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235624 | `0xd36c59...6e5bec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235625 | `0xdbebda...38584a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235626 | `0xe7f2b7...027b9b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235627 | `0xf1946d...55176d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236280 | `0x07920e...161ea0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236281 | `0x07cdeb...045b80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236283 | `0x0ce651...3ade05` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236286 | `0x1fd8af...cdf4a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236288 | `0x38f8d9...b20f7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236289 | `0x3b519a...d5087b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236291 | `0x47ca04...677ee4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236292 | `0x4ba1f6...403271` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236293 | `0x4c62ac...2128bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236294 | `0x4c7a5a...f82227` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236295 | `0x4f37a9...cffc1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236296 | `0x505d66...d2be44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236297 | `0x5a8c93...d5cfcc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236298 | `0x5c57bd...a0ee30` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236299 | `0x5ffe7f...e35e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236300 | `0x6055df...28fa33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236301 | `0x60dcc2...9efd18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236302 | `0x645e12...2ece15` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236303 | `0x6a8cbe...ae21bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236304 | `0x6d447e...cfffed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236307 | `0x817b8b...ca4b90` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236308 | `0x85c447...6a84d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236309 | `0x934791...d14c52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236310 | `0x98b402...2ec0b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236311 | `0x98ee85...eaaf7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236312 | `0x9996d0...d7355b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236313 | `0xa3ea43...4a4e64` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236314 | `0xa588cf...adfa30` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236315 | `0xa72c85...d551cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236316 | `0xae0666...dd999c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236317 | `0xb10cde...b83385` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236318 | `0xb10cfa...bd86b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236319 | `0xb9ea06...560eb8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236320 | `0xbc7654...f96443` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236322 | `0xc417e9...ce513a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236323 | `0xc6c094...f9ab53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236324 | `0xc91113...840355` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236325 | `0xd41f7c...4cacb6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236326 | `0xd6681e...ab6320` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236327 | `0xd7454a...9975bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236328 | `0xd7e72f...12988b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236329 | `0xe2fb3f...2bdef4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236330 | `0xe35a87...096bd8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236331 | `0xf2e810...1cff06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236332 | `0xfacefe...d31752` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236333 | `0xfb37b8...f49a81` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235629 | `0x015fd9...78d1b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235631 | `0x07cdeb...045b80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235632 | `0x08390c...1bd388` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235634 | `0x0de101...45280f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235635 | `0x121a54...4f3695` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235636 | `0x149ff1...808851` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235637 | `0x1f0b0d...f5c51c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235638 | `0x1fd8af...cdf4a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235639 | `0x206871...629c21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235641 | `0x37c5ab...6614fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235642 | `0x39eb03...168524` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235643 | `0x3d6cb2...d8796a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235644 | `0x3f445d...930f61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235645 | `0x45d43e...fbb4c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235647 | `0x5dfafd...9b9bd3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235648 | `0x5ffe7f...e35e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235649 | `0x6d447e...cfffed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235651 | `0x7da608...18fe15` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235652 | `0x81147a...c16286` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235653 | `0x934791...d14c52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235654 | `0x98ee85...eaaf7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235655 | `0xa0ec67...e2b785` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235656 | `0xa54f3c...d26ae2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235657 | `0xa72c85...d551cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235658 | `0xa7f15a...f60e6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235659 | `0xabef65...5f058d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235660 | `0xb055eb...6ab49b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235661 | `0xb10cde...b83385` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235662 | `0xb10cfa...bd86b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235663 | `0xb47988...1445c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235664 | `0xb62656...5e1429` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235665 | `0xbb7404...9aa4c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235666 | `0xbc0797...9fbee8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235667 | `0xc1b393...973228` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235669 | `0xca8d07...36e4b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235670 | `0xe0a1d8...ed32d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235671 | `0xe54859...fc4b53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235672 | `0xe89889...9ff178` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235673 | `0xfabc42...c94ceb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235674 | `0xfacefe...d31752` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235675 | `0xff02cb...0b8b61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-235689 | `0x0c59d3...03baef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-235694 | `0x5a8c93...d5cfcc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-235695 | `0x5eee30...e31f6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-235698 | `0x64379c...84db80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-235700 | `0x6d447e...cfffed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-235706 | `0xc9fe0c...2b665f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-235707 | `0xd20023...1ce712` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-235708 | `0xd3b17f...856e1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-235709 | `0xe61fb9...2de66b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-235710 | `0xf3a431...0874ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-235711 | `0xf3a6aa...5a390a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-235712 | `0xfabc42...c94ceb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235745 | `0x07cdeb...045b80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235747 | `0x0dcded...45d983` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235749 | `0x1e0d92...b98dce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235750 | `0x1fd8af...cdf4a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235751 | `0x242f51...aca105` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235752 | `0x296d2b...f90ddd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235753 | `0x2b786b...ebc828` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235754 | `0x3195a3...5767f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235755 | `0x36f610...7a4494` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235756 | `0x37c5ab...6614fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235757 | `0x3d6cb2...d8796a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235758 | `0x43dac0...7a6043` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235759 | `0x478296...f66994` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235760 | `0x47ca04...677ee4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235761 | `0x4a8cc5...1c462a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235762 | `0x4c7a5a...f82227` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235763 | `0x55a1c2...25e01e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235764 | `0x59f1c5...a2c072` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235765 | `0x5a8c93...d5cfcc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235766 | `0x5af791...ebee35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235767 | `0x5de4ef...76c895` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235768 | `0x5ffe7f...e35e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235769 | `0x663cff...929f24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235770 | `0x6d447e...cfffed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235771 | `0x708ea7...6fc6cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235772 | `0x74d6aa...e8e66d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235773 | `0x774d1d...7c48f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235775 | `0x832732...6eea69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235776 | `0x934791...d14c52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235777 | `0x98ee85...eaaf7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235778 | `0xa092a3...4eaa5a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235779 | `0xa3ea43...4a4e64` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235780 | `0xa5a1d8...caa193` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235781 | `0xa72c85...d551cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235782 | `0xa7b9d8...fdac26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235783 | `0xb10cde...b83385` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235784 | `0xb10cfa...bd86b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235785 | `0xba7cbf...7b90aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235786 | `0xc1b393...973228` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235787 | `0xc4ce1d...6cb5d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235788 | `0xca8d07...36e4b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235790 | `0xd7e72f...12988b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235791 | `0xdcbd86...b4bd62` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235792 | `0xe0b158...26e1fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235793 | `0xe265fc...da2ce3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235794 | `0xeee35c...a66d04` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235795 | `0xf2eff2...1db1da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235796 | `0xf823f2...02a0bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235797 | `0xfabc42...c94ceb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235798 | `0xfacefe...d31752` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-235799 | `0x129578...3cc11d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-235800 | `0x17c67c...b6c271` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-235801 | `0x193110...fc310d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-235802 | `0x286182...beac1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-235803 | `0x2af432...d21295` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-235804 | `0x2fe4a2...2876eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-235805 | `0x41d2c5...9548b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-235806 | `0x457492...bc3648` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-235807 | `0x5f870c...544f94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-235808 | `0x6d447e...cfffed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-235809 | `0x6e2849...0015fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-235811 | `0x8271e0...90e8ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-235812 | `0x845b94...2921bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-235813 | `0x95249d...8a3d4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-235814 | `0xa4a2e7...566a96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-235816 | `0xb2be76...41f872` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-235817 | `0xc9459a...7993c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-235818 | `0xe460de...923650` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-235819 | `0xe6da14...a0fb42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-235820 | `0xe7fbd7...48c88c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-235821 | `0xfc687e...97c2df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-235822 | `0xff5cb2...a6e8d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235825 | `0x1764ee...594585` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235827 | `0x271ea5...be8ed9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235829 | `0x361aa6...1c201d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235831 | `0x3c0a40...9c4d11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235833 | `0x505d66...d2be44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235834 | `0x5552b6...c9d1f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235835 | `0x5a537a...3177ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235837 | `0x5af791...ebee35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235838 | `0x5de4ef...76c895` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235840 | `0x635742...2eafbd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235842 | `0x686bdb...ac78b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235843 | `0x6c9578...8e9c30` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235844 | `0x6d447e...cfffed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235845 | `0x6f8012...bf666c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235846 | `0x74d6aa...e8e66d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235848 | `0x7c2085...c463d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235849 | `0x837fd0...09e0f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235850 | `0x87fe17...fdd617` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235851 | `0x97223d...fe1b6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235852 | `0x98c391...efbcf7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235853 | `0xa73edc...b2c4b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235855 | `0xa7ba18...abd9c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235856 | `0xb10cde...b83385` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235857 | `0xb10cfa...bd86b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235858 | `0xb5f0ed...186fac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235859 | `0xc0b338...95feea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235860 | `0xc29229...82f4a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235861 | `0xd20023...1ce712` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235862 | `0xd3b17f...856e1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235863 | `0xda3989...b494db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235864 | `0xe265fc...da2ce3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235867 | `0xe61fb9...2de66b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235868 | `0xec5afc...80908d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235869 | `0xefaddd...43f7ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235870 | `0xf3a431...0874ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235871 | `0xf3a6aa...5a390a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235872 | `0xf3dad3...185cbf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235873 | `0xf6f07b...a0472e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235874 | `0xf830b9...050bb8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235875 | `0xfabc42...c94ceb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235876 | `0xfacefe...d31752` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235877 | `0x046207...3685cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235878 | `0x0848f3...740cb9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235879 | `0x0c59d3...03baef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235880 | `0x0c9d8c...650953` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235881 | `0x0fe38d...1300cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235882 | `0x13dff1...20a846` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235883 | `0x1764ee...594585` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235884 | `0x1fd8af...cdf4a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235885 | `0x3d5320...246f89` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235886 | `0x5a8c93...d5cfcc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235887 | `0x5bca7d...7262bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235888 | `0x5eee30...e31f6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235889 | `0x5ffe7f...e35e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235890 | `0x604388...e2ae22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235891 | `0x64379c...84db80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235892 | `0x6628b9...32cd8f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235893 | `0x69522f...0adb4f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235894 | `0x6d447e...cfffed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235896 | `0x7ca46a...6dc66a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235897 | `0x87dd13...eabcad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235898 | `0x87fe17...fdd617` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235899 | `0x8b3efb...3f57a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235900 | `0x934791...d14c52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235901 | `0x9d9e70...519ade` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235902 | `0x9ffc6f...6d467f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235903 | `0xb10cde...b83385` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235904 | `0xb10cfa...bd86b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235905 | `0xb47988...1445c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235906 | `0xb6845b...e5a1cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235907 | `0xbfab8e...9a1855` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235908 | `0xccc486...04ebb5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235909 | `0xd3b17f...856e1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235910 | `0xd5c3e0...eb94df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235911 | `0xda8f4e...a846f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235912 | `0xe35a87...096bd8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235913 | `0xf3a431...0874ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-235914 | `0xfacefe...d31752` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235960 | `0x004a47...402f13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235962 | `0x01689f...968e41` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235963 | `0x046207...3685cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235964 | `0x07cdeb...045b80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235965 | `0x08132e...e638e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235966 | `0x0dcded...45d983` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235967 | `0x1fd8af...cdf4a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235968 | `0x21688e...269d30` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235969 | `0x297a53...a0869f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235970 | `0x2b0395...36b950` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235971 | `0x2c152d...414eaa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235972 | `0x33e723...2c5915` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235973 | `0x37c5ab...6614fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235974 | `0x3d6cb2...d8796a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235975 | `0x440231...c00ea1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235976 | `0x444d6b...db70c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235977 | `0x519194...2961d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235978 | `0x5702bd...b07499` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235979 | `0x5ffe7f...e35e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235980 | `0x6d447e...cfffed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235981 | `0x72dfd9...2fc00e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235982 | `0x76303e...431f1d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235983 | `0x76eafd...3827d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235985 | `0x7ce8af...ac3e42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235986 | `0x7fa0a0...d87054` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235987 | `0x803de4...38ab9a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235988 | `0x898cd2...9f0f46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235989 | `0x8fb3ec...3b2124` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235990 | `0x934791...d14c52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235991 | `0x98ee85...eaaf7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235992 | `0x9af14d...46167b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235993 | `0xa72c85...d551cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235994 | `0xa78863...7ebc0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235995 | `0xab0ab3...082a9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235996 | `0xb10cde...b83385` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235997 | `0xb10cfa...bd86b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235998 | `0xc0b338...95feea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235999 | `0xc1b393...973228` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-236000 | `0xc6452f...dbabda` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-236001 | `0xca8d07...36e4b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-236002 | `0xd125e7...7be6dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-236003 | `0xd823d2...a003a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-236004 | `0xe55b70...1a2f56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-236005 | `0xe61fb9...2de66b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-236006 | `0xe6c259...6232c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-236007 | `0xf179d4...db8267` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-236008 | `0xf3a6aa...5a390a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-236009 | `0xf5c39a...b66b6c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-236010 | `0xf830b9...050bb8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-236011 | `0xfacefe...d31752` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236013 | `0x07cdeb...045b80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236014 | `0x0b8d6b...2e1c52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236018 | `0x1a8334...7fe495` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236019 | `0x1fd8af...cdf4a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236022 | `0x37c5ab...6614fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236023 | `0x3fe593...0631a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236024 | `0x4bbdfe...5cdc57` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236025 | `0x4d1af9...c9bb61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236026 | `0x506f59...df9f7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236027 | `0x50ed95...318a6c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236028 | `0x56c526...0d0cd7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236029 | `0x59cffd...020e8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236030 | `0x5eee30...e31f6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236031 | `0x5ffe7f...e35e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236032 | `0x61e052...b361ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236033 | `0x64379c...84db80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236034 | `0x672c38...54c6fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236036 | `0x6d447e...cfffed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236037 | `0x7002b7...fae9d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236040 | `0x852f32...6d75d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236041 | `0x86d347...6996f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236043 | `0x934791...d14c52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236044 | `0x98ee85...eaaf7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236045 | `0xa7a4bb...5b299b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236047 | `0xb102f7...48caf3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236048 | `0xb10cde...b83385` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236049 | `0xb10cfa...bd86b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236050 | `0xc1db00...7cde4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236051 | `0xc9fe0c...2b665f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236052 | `0xca8d07...36e4b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236053 | `0xd125e7...7be6dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236054 | `0xd20023...1ce712` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236055 | `0xd3b17f...856e1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236056 | `0xe61fb9...2de66b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236057 | `0xeeccd0...ccffb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236058 | `0xef3d6b...4d1301` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236059 | `0xf0d4c1...c58b8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236060 | `0xf3c9bd...93ac66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236061 | `0xf3dad3...185cbf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236062 | `0xfacefe...d31752` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236470 | `0x0c59d3...03baef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236471 | `0x13dff1...20a846` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236472 | `0x1764ee...594585` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236473 | `0x1a8334...7fe495` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236474 | `0x2641ed...efdf3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236475 | `0x4f172b...4bfea2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236476 | `0x5702bd...b07499` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236477 | `0x5a8c93...d5cfcc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236478 | `0x5bca7d...7262bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236479 | `0x5eee30...e31f6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236480 | `0x604388...e2ae22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236481 | `0x635742...2eafbd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236482 | `0x64379c...84db80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236483 | `0x686bdb...ac78b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236484 | `0x6d447e...cfffed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236486 | `0x7c2085...c463d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236487 | `0x8b3efb...3f57a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236488 | `0xa7b9d8...fdac26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236489 | `0xa7ba18...abd9c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236490 | `0xb0261f...b9712b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236491 | `0xb10cde...b83385` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236492 | `0xb10cfa...bd86b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236493 | `0xc9fe0c...2b665f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236494 | `0xd20023...1ce712` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236495 | `0xd3b17f...856e1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236496 | `0xe35a87...096bd8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236497 | `0xe5de15...983a69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236498 | `0xe61fb9...2de66b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236499 | `0xf3a431...0874ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236500 | `0xf3a6aa...5a390a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236501 | `0xfabc42...c94ceb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-236502 | `0xfacefe...d31752` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-235676 | `0x114c40...2f678a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-235677 | `0x2eb4cd...98f155` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-235678 | `0x3c0a40...9c4d11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-235679 | `0x3d8ead...7c69c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-235680 | `0x527cbd...2ef8af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-235681 | `0x549de2...587b96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-235682 | `0x6a2691...8baef5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-235684 | `0xb10cde...b83385` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-235685 | `0xb10cfa...bd86b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-235686 | `0xe35a87...096bd8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-235687 | `0xe5de15...983a69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-235688 | `0xfacefe...d31752` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235915 | `0x0458ea...b3116c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235916 | `0x05d4e2...ef3ef7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235917 | `0x070a5c...611b16` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235918 | `0x0c59d3...03baef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235919 | `0x0c9d8c...650953` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235920 | `0x0dcded...45d983` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235921 | `0x1764ee...594585` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235922 | `0x1c4e45...7b83fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235923 | `0x1e7b1b...afe27a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235924 | `0x1fd8af...cdf4a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235925 | `0x37c5ab...6614fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235926 | `0x3c8d2a...7311cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235927 | `0x3d6cb2...d8796a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235928 | `0x3d8ead...7c69c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235929 | `0x505d66...d2be44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235930 | `0x5373e1...2f18e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235931 | `0x5a8c93...d5cfcc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235932 | `0x5ffe7f...e35e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235933 | `0x64ed8c...86456b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235934 | `0x65a0b0...f21107` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235935 | `0x6a2691...8baef5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235936 | `0x6d447e...cfffed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235937 | `0x7736c6...1ef5dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235939 | `0x8a28d2...2d7322` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235940 | `0x934791...d14c52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235941 | `0x98b402...2ec0b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235942 | `0xa72c85...d551cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235943 | `0xa7b9d8...fdac26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235944 | `0xb10cde...b83385` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235945 | `0xb10cfa...bd86b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235946 | `0xb406dd...850efa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235947 | `0xb6845b...e5a1cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235948 | `0xc2cd39...7c01bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235949 | `0xca8d07...36e4b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235950 | `0xd3b17f...856e1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235951 | `0xd7e72f...12988b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235952 | `0xde4513...6bbac4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235953 | `0xe265fc...da2ce3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235954 | `0xe35a87...096bd8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235955 | `0xeef94c...91c9ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235956 | `0xefde22...975810` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235957 | `0xf2eff2...1db1da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235958 | `0xfabc42...c94ceb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-235959 | `0xfacefe...d31752` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236240 | `0x024d36...fc527e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236241 | `0x046207...3685cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236242 | `0x07cdeb...045b80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236244 | `0x0b8d6b...2e1c52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236246 | `0x0c9d8c...650953` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236247 | `0x0fe38d...1300cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236249 | `0x1df9ce...e84905` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236250 | `0x1fd8af...cdf4a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236251 | `0x3f445d...930f61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236252 | `0x4339b5...244429` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236254 | `0x5702bd...b07499` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236255 | `0x5eee30...e31f6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236256 | `0x5ffe7f...e35e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236257 | `0x635742...2eafbd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236258 | `0x6d447e...cfffed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236259 | `0x77a214...546ecf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236261 | `0x7ca46a...6dc66a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236262 | `0x820945...c6ae85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236263 | `0x852f32...6d75d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236264 | `0x87fe17...fdd617` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236265 | `0x8b3efb...3f57a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236266 | `0x934791...d14c52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236267 | `0x98ee85...eaaf7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236268 | `0xb10cde...b83385` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236269 | `0xb10cfa...bd86b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236270 | `0xb50b9a...6d86df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236271 | `0xd6681e...ab6320` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236272 | `0xe265fc...eb8f75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236273 | `0xe54859...fc4b53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236274 | `0xf0d4c1...c58b8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236275 | `0xf3a431...0874ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236276 | `0xfacefe...d31752` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236277 | `0xfe87a6...f5f2b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236278 | `0xff02cb...0b8b61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236373 | `0x0c59d3...03baef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236374 | `0x1fd8af...cdf4a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236376 | `0x33e723...2c5915` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236377 | `0x3f445d...930f61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236378 | `0x3fe593...0631a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236379 | `0x417ac0...60af93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236380 | `0x4f37a9...cffc1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236381 | `0x5373e1...2f18e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236383 | `0x5b7da0...4e3925` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236384 | `0x5ffe7f...e35e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236385 | `0x635742...2eafbd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236386 | `0x646a73...b5160c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236387 | `0x69522f...0adb4f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236388 | `0x6d447e...cfffed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236389 | `0x6ee54b...bb25e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236391 | `0x7ea4b7...df457f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236392 | `0x87dd13...eabcad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236393 | `0x8ee73c...dd0415` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236394 | `0x934791...d14c52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236395 | `0x95f0f7...c2ce5c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236396 | `0xa274c8...a1f65a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236397 | `0xa4c0ea...a78aa8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236398 | `0xa54f3c...d26ae2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236399 | `0xa59618...016bcb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236400 | `0xaeb976...4983c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236401 | `0xb10cde...b83385` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236402 | `0xb10cfa...bd86b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236403 | `0xc6a535...1294c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236404 | `0xc9fe0c...2b665f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236405 | `0xcb8432...7c48c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236406 | `0xd20023...1ce712` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236407 | `0xd3b17f...856e1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236408 | `0xe265fc...da2ce3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236409 | `0xe35a87...096bd8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236410 | `0xe8269b...a8bbd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236411 | `0xeb896f...3e2412` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236413 | `0xf3a6aa...5a390a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-236414 | `0xfacefe...d31752` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236416 | `0x129578...3cc11d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236417 | `0x13dff1...20a846` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236418 | `0x17c67c...b6c271` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236419 | `0x193110...fc310d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236421 | `0x2641ed...efdf3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236422 | `0x286182...beac1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236423 | `0x2af432...d21295` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236424 | `0x2fe4a2...2876eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236426 | `0x3d8ead...7c69c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236428 | `0x41d2c5...9548b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236429 | `0x457492...bc3648` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236430 | `0x4f172b...4bfea2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236432 | `0x5bca7d...7262bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236433 | `0x5f870c...544f94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236434 | `0x6a2691...8baef5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236436 | `0x6e2849...0015fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236440 | `0x8271e0...90e8ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236441 | `0x845b94...2921bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236443 | `0x95249d...8a3d4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236447 | `0xa4a2e7...566a96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236450 | `0xb0261f...b9712b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236451 | `0xb2be76...41f872` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236455 | `0xbb8a5e...5a2902` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236457 | `0xc2cd39...7c01bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236458 | `0xc9459a...7993c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236461 | `0xe35a87...096bd8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236462 | `0xe460de...923650` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236463 | `0xe5de15...983a69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236464 | `0xe6da14...a0fb42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236465 | `0xe7fbd7...48c88c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236468 | `0xfc687e...97c2df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-236469 | `0xff5cb2...a6e8d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236063 | `0x06452f...9198a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236064 | `0x07cdeb...045b80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236066 | `0x104e15...b04d7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236067 | `0x135262...7ad3e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236070 | `0x1f7c86...31c1bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236071 | `0x1fd8af...cdf4a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236073 | `0x227d2f...4d6560` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236075 | `0x25877b...5fef82` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236076 | `0x2cb6e1...991ec3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236077 | `0x37c5ab...6614fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236079 | `0x452030...9c2b32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236080 | `0x498bf2...99c1e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236081 | `0x4d1af9...c9bb61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236082 | `0x57390a...d8dff8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236083 | `0x59afcd...744906` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236084 | `0x5ccbb2...2f6839` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236085 | `0x5ffe7f...e35e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236086 | `0x604388...e2ae22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236087 | `0x6d447e...cfffed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236089 | `0x820945...c6ae85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236090 | `0x852f32...6d75d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236091 | `0x934791...d14c52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236092 | `0x988d10...a3bce7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236093 | `0x98ee85...eaaf7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236094 | `0x9af14d...46167b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236095 | `0xa72c85...d551cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236096 | `0xaa2377...c65a6a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236097 | `0xb10cde...b83385` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236098 | `0xb10cfa...bd86b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236099 | `0xb7b0ff...323830` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236100 | `0xb7b240...59a117` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236101 | `0xbc0797...9fbee8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236102 | `0xca8d07...36e4b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236103 | `0xcaec11...922dea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236104 | `0xcbc1be...75c5a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236105 | `0xd4a8bd...619b34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236106 | `0xd4f94d...81a88e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236107 | `0xd7e72f...12988b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236108 | `0xefb660...a8809d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236109 | `0xf6841c...afd7ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236110 | `0xfacefe...d31752` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236111 | `0xfe0255...4b9ae2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236112 | `0xff02cb...0b8b61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236113 | `0x004a47...402f13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236114 | `0x070a5c...611b16` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236115 | `0x07cdeb...045b80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236116 | `0x0c59d3...03baef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236117 | `0x1764ee...594585` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236118 | `0x19bd1a...f6c7d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236119 | `0x1fd8af...cdf4a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236120 | `0x2eb4cd...98f155` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236121 | `0x3c0a40...9c4d11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236123 | `0x3d8ead...7c69c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236124 | `0x3f445d...930f61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236125 | `0x505d66...d2be44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236126 | `0x527cbd...2ef8af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236127 | `0x549de2...587b96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236128 | `0x56bc95...b380a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236129 | `0x5a8c93...d5cfcc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236130 | `0x5ffe7f...e35e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236131 | `0x64afa9...b64edd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236132 | `0x6a2691...8baef5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236133 | `0x6d447e...cfffed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236134 | `0x75184c...067fdc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236136 | `0x934791...d14c52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236137 | `0x98ee85...eaaf7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236138 | `0xa54f3c...d26ae2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236139 | `0xa72c85...d551cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236140 | `0xa7b9d8...fdac26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236141 | `0xb10cde...b83385` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236142 | `0xb10cfa...bd86b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236143 | `0xbd2775...e51882` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236144 | `0xca8d07...36e4b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236145 | `0xd7e72f...12988b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236146 | `0xe265fc...da2ce3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236147 | `0xe35a87...096bd8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236148 | `0xe5de15...983a69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236149 | `0xfabc42...c94ceb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-236150 | `0xfacefe...d31752` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236151 | `0x004a47...402f13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236152 | `0x129578...3cc11d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236153 | `0x17c67c...b6c271` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236154 | `0x193110...fc310d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236155 | `0x22adeb...653123` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236156 | `0x286182...beac1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236157 | `0x2af432...d21295` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236158 | `0x2fe4a2...2876eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236159 | `0x3195a3...5767f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236160 | `0x41d2c5...9548b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236161 | `0x457492...bc3648` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236162 | `0x5de4ef...76c895` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236163 | `0x5f870c...544f94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236164 | `0x6495d3...d196ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236165 | `0x66184f...f57ee9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236166 | `0x6d447e...cfffed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236167 | `0x6e2849...0015fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236168 | `0x74d6aa...e8e66d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236170 | `0x8271e0...90e8ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236171 | `0x845b94...2921bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236172 | `0x8fb3ec...3b2124` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236173 | `0x95249d...8a3d4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236174 | `0x988d10...a3bce7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236175 | `0xa4a2e7...566a96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236176 | `0xb10cde...b83385` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236177 | `0xb10cfa...bd86b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236178 | `0xb2be76...41f872` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236179 | `0xba7cbf...7b90aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236180 | `0xc77206...a1ae42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236181 | `0xc9459a...7993c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236182 | `0xe460de...923650` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236183 | `0xe6da14...a0fb42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236184 | `0xe7fbd7...48c88c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236185 | `0xfacefe...d31752` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236186 | `0xfc687e...97c2df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-236187 | `0xff5cb2...a6e8d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236189 | `0x06534b...15fa35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236190 | `0x07cdeb...045b80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236192 | `0x0c59d3...03baef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236193 | `0x0dcded...45d983` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236194 | `0x0dd6c1...a80783` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236195 | `0x1764ee...594585` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236196 | `0x1db36d...742155` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236198 | `0x26d01c...e7d7e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236199 | `0x26e91b...6b99b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236200 | `0x2c152d...414eaa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236201 | `0x3261ca...23cafc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236202 | `0x37c5ab...6614fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236203 | `0x3b519a...d5087b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236204 | `0x3d6cb2...d8796a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236206 | `0x47ca04...677ee4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236207 | `0x505d66...d2be44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236208 | `0x5a8c93...d5cfcc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236209 | `0x5c57bd...a0ee30` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236210 | `0x5cc014...d1cfd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236211 | `0x5ffe7f...e35e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236212 | `0x6a8cbe...ae21bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236213 | `0x6d447e...cfffed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236216 | `0x97adc0...9b0267` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236217 | `0x98ee85...eaaf7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236218 | `0xa3ea43...4a4e64` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236219 | `0xa54f3c...d26ae2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236220 | `0xa72c85...d551cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236221 | `0xa7b9d8...fdac26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236222 | `0xb10cde...b83385` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236223 | `0xb10cfa...bd86b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236224 | `0xb1b9fb...01accf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236225 | `0xc10656...f4df86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236226 | `0xc6452f...dbabda` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236227 | `0xc9882d...2ddea1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236228 | `0xca56f8...7edfaa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236229 | `0xca8d07...36e4b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236230 | `0xcaf496...58fe3e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236231 | `0xcb7c16...6d855d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236232 | `0xd5cf10...3a63d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236233 | `0xd7e72f...12988b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236234 | `0xd823d2...a003a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236235 | `0xe265fc...da2ce3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236236 | `0xe54859...fc4b53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236237 | `0xeebc56...e42a1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236238 | `0xfabc42...c94ceb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236239 | `0xfacefe...d31752` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236334 | `0x046207...3685cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236335 | `0x06452f...9198a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236336 | `0x070a5c...611b16` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236337 | `0x0c59d3...03baef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236338 | `0x13dff1...20a846` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236339 | `0x166c40...0d45c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236340 | `0x19bd1a...f6c7d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236341 | `0x1a8334...7fe495` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236342 | `0x39fec5...f2344d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236343 | `0x3c0a40...9c4d11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236344 | `0x3d6cb2...d8796a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236345 | `0x3e3b5f...663181` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236346 | `0x4221ee...26a3b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236347 | `0x5702bd...b07499` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236348 | `0x5bca7d...7262bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236349 | `0x5ea9dd...61427a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236350 | `0x604388...e2ae22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236351 | `0x686bdb...ac78b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236352 | `0x6a2691...8baef5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236353 | `0x6d447e...cfffed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236354 | `0x76303e...431f1d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236356 | `0x87dd13...eabcad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236357 | `0x9ec094...94c874` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236358 | `0xa7b9d8...fdac26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236359 | `0xac7367...c2ccb3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236360 | `0xb10cde...b83385` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236361 | `0xb10cfa...bd86b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236362 | `0xb9e905...7621fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236363 | `0xbc0797...9fbee8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236364 | `0xc2cd39...7c01bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236365 | `0xc9fe0c...2b665f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236366 | `0xd125e7...7be6dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236367 | `0xd7e72f...12988b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236368 | `0xe265fc...da2ce3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236369 | `0xe5de15...983a69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236370 | `0xe61fb9...2de66b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-236371 | `0xfacefe...d31752` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235713 | `0x004a47...402f13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235714 | `0x070a5c...611b16` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235716 | `0x1fd8af...cdf4a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235717 | `0x21688e...269d30` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235718 | `0x2eb4cd...98f155` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235719 | `0x3c0a40...9c4d11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235720 | `0x3d8ead...7c69c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235721 | `0x527cbd...2ef8af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235722 | `0x549de2...587b96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235724 | `0x5ffe7f...e35e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235725 | `0x6600e9...b86afb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235726 | `0x6a2691...8baef5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235727 | `0x6d447e...cfffed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235730 | `0x934791...d14c52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235731 | `0x98ee85...eaaf7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235732 | `0xa72c85...d551cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235733 | `0xa7b9d8...fdac26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235734 | `0xb10cde...b83385` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235735 | `0xb10cfa...bd86b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235736 | `0xbc0797...9fbee8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235737 | `0xbd2775...e51882` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235739 | `0xd4a8bd...619b34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235740 | `0xe5de15...983a69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235741 | `0xf3a431...0874ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235742 | `0xf3a6aa...5a390a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235743 | `0xfacefe...d31752` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-235744 | `0xff02cb...0b8b61` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [The source code was audited by [:logos-chainsecurity: ChainSecurity](https://www.chainsecurity.com/). The audit report is available on [GitHub](). (also discovered via alternate URL)](https://github.com/curvefi/scrvusd/blob/main/audits/ChainSecurity_Curve_scrvUSD_audit.pdf) | ChainSecurity | Audit | 2024-12 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 6 | high |
| [The source code was audited by [:logos-chainsecurity: ChainSecurity](https://www.chainsecurity.com/). The full audit report can be found [here]().](https://github.com/curvefi/fee-splitter/blob/main/audits/ChainSecurity.pdf) | ChainSecurity | Audit | 2024-09 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [Security audits and disclosure reports are available on [GitHub]()](https://github.com/curvefi/security-incident-reports) | yAudit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [View Full Report →](https://docs.curve.finance/pdf/audits/curve-dao-ToB-final.pdf) | TrailOfBits | Audit | 2020-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/Curve%20Finance%20DAO%20Voting%20Forwarder%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2020-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/Curve%20Finance%20DAO%20Voting%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2020-07 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 0 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/curve-dao-quantstamp.pdf) | Quantstamp | Audit | 2020-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/ChainSecurity_FeeSplitter.pdf) | ChainSecurity | Audit | 2024-09 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/ChainSecurity_Curve_Xgov_Audit.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/CurveMetapoolAudit.pdf) | Quantstamp | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/ChainSecurity_Curve_Finance_Curve_ETH_sETH_Smart_contract_audit.pdf) | ChainSecurity | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/Curve%20Finance%20StableSwapNG%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2023-11 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 1 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/ChainSecurity_Curve_Finance_Tricrypto_smart_contract_audit_September.pdf) | ChainSecurity | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/ChainSecurity_Curve_tricrypto-ng_audit.pdf) | ChainSecurity | Audit | 2023-06 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 1 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/private_ChainSecurity_Curve_CurveCryptoSwap2ETH_audit_draft.pdf) | ChainSecurity | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/ChainSecurity_Curve_Fast_Bridge_audit.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Direct | contract_name | matched | 4 | 0 | 0 | 3 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/Curve%20Stablecoin%20(crvUSD)%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2023-06 | stale | Direct | address | matched | 3 | 0 | 0 | 6 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/ChainSecurity_Curve_Curve_Stablecoin_audit-1.pdf) | ChainSecurity | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/ChainSecurity_Curve_Curve_Stablecoin_audit_250221.pdf) | ChainSecurity | Audit | 2025-02 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 21 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/ChainSecurity_Curve_PegKeeperV2_audit.pdf) | ChainSecurity | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/StateMind_Curve_Lending.pdf) | StateMind | Audit | 2024-02 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17143] The source code was audited by [:logos-chainsecurity: ChainSecurity](https://www.chainsecurity.com/). The audit report is available on [GitHub](). — matched: Extracted from the audit report of scrvUSD smart contracts by ChainSecurity. The scope includes all files in the contracts directory, with specific mention of VaultFactory, Vault, DepositLimitModule, StablecoinLens, RewardsHandler, and the TWA module. Accountant and FeeSplitter are also referenced as part of the system. The audit date is December 03, 2024.
- [17144] The source code was audited by [:logos-chainsecurity: ChainSecurity](https://www.chainsecurity.com/). The full audit report can be found [here](). — matched: Extracted contracts from scope table and version 2 file locations. Audit date from cover page.
- [17145] Security audits and disclosure reports are available on [GitHub]() — no match: The provided text is a GitHub repository page for Curve Finance security incident reports, not an audit report. No contracts in scope or audit date were found.
- [17149] View Full Report → — no match: Extracted from the 'Coverage' section and findings targets. The audit date is the end date of the engagement (July 10, 2020).
- [17150] View Full Report → — no match: Only one contract in scope: BalanceTimeForwarder.sol
- [17151] View Full Report → — matched: Only one contract (Voting.sol) is in scope. Date found in header: JULY 22 2020.
- [17152] View Full Report → — no match: Initial scope: LiquidityGauge.vy and GaugeController.vy. Additional scope on 2020-08-05: LiquidityGaugeReward.vy and VestingEscrow.vy.
- [17153] View Full Report → — matched: Extracted contracts from scope table and version 2 file paths. Audit date from cover page.
- [17154] View Full Report → — matched: Extracted 5 contracts from the scope table in section 2.1. Audit date from cover page: September 17, 2025.
- [17155] View Full Report → — no match: Two contracts in scope: DepositTemplateMeta.vy and SwapTemplateMeta.vy. Audit date from cover page.
- [17156] View Full Report → — no match: Only one contract in scope: StableSwapETH.vy. The sETH token and LP token are excluded from scope.
- [17157] View Full Report → — matched: Extracted 6 contracts from scope table and deployments. CurveStableSwapNGViews is not in the initial scope table but appears in deployments and findings, so included.
- [17158] View Full Report → — no match: Three contracts explicitly listed in scope. Audit date from cover page.
- [17159] View Full Report → — matched: Scope section explicitly lists three Vyper contracts. Audit date found on cover page: 'June 23, 2023'.
- [17160] View Full Report → — no match: Only one contract name explicitly mentioned in scope: CurveCryptoSwap2ETH. The report focuses on a single pool contract. No individual file paths or additional contract names provided.
- [17161] View Full Report → — matched: All contracts listed in the scope table on page 5 of the report.
- [17162] View Full Report → — matched: All contracts listed in the 'Project Scope' table and 'Deployments' table are included. PegKeeper has multiple deployed instances but is a single contract.
- [17163] View Full Report → — no match: Extracted 10 contracts from the scope table in section 2.1. Audit date from cover page.
- [17164] View Full Report → — matched: Extracted 23 contract names from the scope table and file paths in the audit report. The audit date is explicitly stated on the cover page as 'February 21, 2025'.
- [17165] View Full Report → — no match: Scope section explicitly lists two contracts: PegKeeperV2.vy and PegKeeperRegulator.vy. Audit date is December 12, 2023 from the cover page.
- [17166] View Full Report → — matched: Scope section explicitly lists Vault.vy, OneWayLendingFactory.vy, SemilogMonetaryPolicy.vy, CryptoFromPool.vy, Controller.vy. Audit date is end date of timeline: 02-02-2024.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| The source code was audited by [:logos-chainsecurity: ChainSecurity](https://www.chainsecurity.com/). The audit report is available on [GitHub](). | VaultFactory | unmatched — not counted | — | described in section 2.2.1 | no |
| The source code was audited by [:logos-chainsecurity: ChainSecurity](https://www.chainsecurity.com/). The audit report is available on [GitHub](). | Vault | ambiguous — not counted | 0x0848f3… (alternative) `0x0848f3...740cb9` — liveness: live (current_address_book_code)<br>0x72dfd9… (alternative) `0x72dfd9...2fc00e` — liveness: live (current_address_book_code)<br>0x3d8ead… (alternative) `0x3d8ead...7c69c1` — liveness: live (current_address_book_code)<br>0x77a214… (alternative) `0x77a214...546ecf` — liveness: live (current_address_book_code)<br>0xa4c0ea… (alternative) `0xa4c0ea...a78aa8` — liveness: live (current_address_book_code)<br>0xc2cd39… (alternative) `0xc2cd39...7c01bc` — liveness: live (current_address_book_code)<br>0xd41f7c… (alternative) `0xd41f7c...4cacb6` — liveness: live (current_address_book_code)<br>0xf3a431… (alternative) `0xf3a431...0874ef` — liveness: live (current_address_book_code)<br>0xd166ee… (alternative) `0xd166ee...9185d5` — liveness: live (current_address_book_code)<br>0x50ed95… (alternative) `0x50ed95...318a6c` — liveness: live (current_address_book_code)<br>0x3d8ead… (alternative) `0x3d8ead...7c69c1` — liveness: live (current_address_book_code)<br>0xa3ea43… (alternative) `0xa3ea43...4a4e64` — liveness: live (current_address_book_code)<br>0xe5de15… (alternative) `0xe5de15...983a69` — liveness: live (current_address_book_code)<br>0x193110… (alternative) `0x193110...fc310d` — liveness: live (current_address_book_code)<br>0x13dff1… (alternative) `0x13dff1...20a846` — liveness: live (current_address_book_code)<br>0xba7cbf… (alternative) `0xba7cbf...7b90aa` — liveness: live (current_address_book_code)<br>0x2c152d… (alternative) `0x2c152d...414eaa` — liveness: live (current_address_book_code)<br>0x015fd9… (alternative) `0x015fd9...78d1b8` — liveness: live (current_address_book_code)<br>0x25877b… (alternative) `0x25877b...5fef82` — liveness: live (current_address_book_code)<br>0x3c0a40… (alternative) `0x3c0a40...9c4d11` — liveness: live (current_address_book_code)<br>0x13dff1… (alternative) `0x13dff1...20a846` — liveness: live (current_address_book_code)<br>0x3d8ead… (alternative) `0x3d8ead...7c69c1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| The source code was audited by [:logos-chainsecurity: ChainSecurity](https://www.chainsecurity.com/). The audit report is available on [GitHub](). | DepositLimitModule | unmatched — not counted | — | described in section 2.2.3.1 | no |
| The source code was audited by [:logos-chainsecurity: ChainSecurity](https://www.chainsecurity.com/). The audit report is available on [GitHub](). | StablecoinLens | own contract | StablecoinLens (selected) `0xe24e2d...01ecd7` — deployed 2024-10-31 23:04:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| The source code was audited by [:logos-chainsecurity: ChainSecurity](https://www.chainsecurity.com/). The audit report is available on [GitHub](). | RewardsHandler | unmatched — not counted | — | described in section 2.2.3.3 | no |
| The source code was audited by [:logos-chainsecurity: ChainSecurity](https://www.chainsecurity.com/). The audit report is available on [GitHub](). | TWA | unmatched — not counted | — | mentioned in system overview as TWA module | no |
| The source code was audited by [:logos-chainsecurity: ChainSecurity](https://www.chainsecurity.com/). The audit report is available on [GitHub](). | Accountant | unmatched — not counted | — | mentioned in vault reporting management | no |
| The source code was audited by [:logos-chainsecurity: ChainSecurity](https://www.chainsecurity.com/). The audit report is available on [GitHub](). | FeeSplitter | own contract | FeeSplitter (selected) `0x2dfd89...c064f2` — deployed 2024-10-08 20:29:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| The source code was audited by [:logos-chainsecurity: ChainSecurity](https://www.chainsecurity.com/). The full audit report can be found [here](). | Controller | unmatched — not counted | — | listed in scope table | no |
| The source code was audited by [:logos-chainsecurity: ChainSecurity](https://www.chainsecurity.com/). The full audit report can be found [here](). | ControllerFactory | unmatched — not counted | — | listed in scope table | no |
| The source code was audited by [:logos-chainsecurity: ChainSecurity](https://www.chainsecurity.com/). The full audit report can be found [here](). | ControllerMulticlaim | unmatched — not counted | — | listed in scope table | no |
| The source code was audited by [:logos-chainsecurity: ChainSecurity](https://www.chainsecurity.com/). The full audit report can be found [here](). | DynamicWeight | unmatched — not counted | — | listed in scope table | no |
| The source code was audited by [:logos-chainsecurity: ChainSecurity](https://www.chainsecurity.com/). The full audit report can be found [here](). | FeeSplitter | own contract | FeeSplitter (selected) `0x2dfd89...c064f2` — deployed 2024-10-08 20:29:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| The source code was audited by [:logos-chainsecurity: ChainSecurity](https://www.chainsecurity.com/). The full audit report can be found [here](). | Ownable | unmatched — not counted | — | listed in scope table | no |
| The source code was audited by [:logos-chainsecurity: ChainSecurity](https://www.chainsecurity.com/). The full audit report can be found [here](). | IController | unmatched — not counted | — | listed in scope (version 2) | no |
| The source code was audited by [:logos-chainsecurity: ChainSecurity](https://www.chainsecurity.com/). The full audit report can be found [here](). | IControllerFactory | unmatched — not counted | — | listed in scope (version 2) | no |
| The source code was audited by [:logos-chainsecurity: ChainSecurity](https://www.chainsecurity.com/). The full audit report can be found [here](). | IDynamicWeight | unmatched — not counted | — | listed in scope (version 2) | no |
| View Full Report → | LiquidityGauge | unmatched — not counted | — | listed in scope and findings | no |
| View Full Report → | GaugeController | unmatched — not counted | — | listed in scope and findings | no |
| View Full Report → | VotingEscrow | unmatched — not counted | — | listed in scope and findings | no |
| View Full Report → | ERC20CRV | unmatched — not counted | — | listed in scope and findings | no |
| View Full Report → | PoolProxy | unmatched — not counted | — | listed in scope and findings | no |
| View Full Report → | Minter | ambiguous — not counted | 0xd061d6… (alternative) `0xd061d6...c2fce0` — liveness: live (current_address_book_code)<br>Minter (alternative) `0x458599...3726bf` — deployed 2024-01-13 20:44:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| View Full Report → | BalanceTimeForwarder | unmatched — not counted | — | listed in scope section | no |
| View Full Report → | Voting | own proxy deployment | Voting (proxy) (selected) `0xbcff8b...330399` — deployed 2020-08-13 07:46:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View Full Report → | LiquidityGauge | unmatched — not counted | — | listed in scope and findings | no |
| View Full Report → | GaugeController | unmatched — not counted | — | listed in scope and findings | no |
| View Full Report → | LiquidityGaugeReward | unmatched — not counted | — | mentioned in 2020-08-05 update as additional material | no |
| View Full Report → | VestingEscrow | unmatched — not counted | — | mentioned in 2020-08-05 update as additional material | no |
| View Full Report → | Controller | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | ControllerFactory | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | ControllerMulticlaim | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | DynamicWeight | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | FeeSplitter | own contract | FeeSplitter (selected) `0x2dfd89...c064f2` — deployed 2024-10-08 20:29:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View Full Report → | ownable | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | IController | unmatched — not counted | — | listed in scope table (version 2) | no |
| View Full Report → | IControllerFactory | unmatched — not counted | — | listed in scope table (version 2) | no |
| View Full Report → | IDynamicWeight | unmatched — not counted | — | listed in scope table (version 2) | no |
| View Full Report → | XYZBroadcaster | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | XYZRelayer | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | MessageDigestVerifier | own contract | MessageDigestVerifier (selected) `0x22d490...f81e64` — deployed 2025-10-06 12:00:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View Full Report → | MerklePatriciaProofVerifier | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | StateProofVerifier | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | DepositTemplateMeta | unmatched — not counted | — | listed in scope and file signatures | no |
| View Full Report → | SwapTemplateMeta | unmatched — not counted | — | listed in scope and file signatures | no |
| View Full Report → | StableSwapETH.vy | unmatched — not counted | — | Section 2.2: 'The reviewed project consists of one smart contract StableSwapETH.vy' | no |
| View Full Report → | CurveStableSwapFactoryNG | own contract | CurveStableswapFactoryNG (selected) `0x1764ee...594585` — deployed 2023-10-20 14:15:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View Full Report → | CurveStableSwapMetaNG | own contract | CurveStableSwapMetaNG (selected) `0x1764ee...594585` — deployed 2023-12-12 10:06:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View Full Report → | CurveStableSwapNGMath | own contract | CurveStableSwapNGMath (selected) `0x166c40...0d45c5` — deployed 2023-12-12 12:22:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View Full Report → | CurveStableSwapNG | own contract | CurveStableSwapNG (selected) `0x1764ee...594585` — deployed 2024-02-13 16:10:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View Full Report → | LiquidityGauge | unmatched — not counted | — | listed in scope | no |
| View Full Report → | CurveStableSwapNGViews | own contract | CurveStableSwapNGViews (selected) `0x3bba97...f26e95` — deployed 2024-06-19 16:52:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View Full Report → | CurveCryptoMath3 | unmatched — not counted | — | Listed in scope section: 'the three contracts CurveCryptoMath3, CurveCryptoSwap, CurveCryptoViews3' | no |
| View Full Report → | CurveCryptoSwap | unmatched — not counted | — | Listed in scope section: 'the three contracts CurveCryptoMath3, CurveCryptoSwap, CurveCryptoViews3' | no |
| View Full Report → | CurveCryptoViews3 | unmatched — not counted | — | Listed in scope section: 'the three contracts CurveCryptoMath3, CurveCryptoSwap, CurveCryptoViews3' | no |
| View Full Report → | CurveCryptoMathOptimized3 | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | CurveTricryptoFactory | own contract | CurveTricryptoFactory (selected) `0x0c0e5f...4b4963` — deployed 2023-05-30 14:26:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View Full Report → | CurveTricryptoOptimizedWETH | own contract | CurveTricryptoOptimizedWETH (selected) `0x0c59d3...03baef` — deployed 2024-01-15 16:41:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View Full Report → | CurveCryptoSwap2ETH | unmatched — not counted | — | Scope section: 'The assessment was performed on the source code files inside the CurveCryptoSwap2ETH repository' | no |
| View Full Report → | ArbitrumBridger | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | IBridger | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | OptimismBridger | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | FastBridgeL2 | own contract | FastBridgeL2 (selected) `0x1f2af2...80dae1` — deployed 2025-11-13 22:29:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View Full Report → | FastBridgeVault | own contract | FastBridgeVault (selected) `0x5ef620...21b9ec` — deployed 2025-11-13 21:03:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View Full Report → | L2MessengerLZ | own contract | L2MessengerLZ (selected) `0x14e11c...cf79ff` — deployed 2025-11-13 22:29:40+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View Full Report → | VaultMessengerLZ | own contract | VaultMessengerLZ (selected) `0x159455...e3e6d9` — deployed 2025-11-13 22:28:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View Full Report → | AggMonetaryPolicy | unmatched — not counted | — | Listed in scope table and deployment table | no |
| View Full Report → | AggregateStablePrice | own contract | 0xe5afcf… (selected) `0xe5afcf...62dfe7` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View Full Report → | CryptoWithStablePrice | unmatched — not counted | — | Listed in scope table | no |
| View Full Report → | EmaPriceOracle | unmatched — not counted | — | Listed in scope table | no |
| View Full Report → | PegKeeper | unmatched — not counted | — | Listed in scope table and deployment table (USDC, USDT, USDP, TUSD variants) | no |
| View Full Report → | AMM | unmatched — not counted | — | Listed in scope table and deployment table | no |
| View Full Report → | Controller | unmatched — not counted | — | Listed in scope table and deployment table | no |
| View Full Report → | ControllerFactory | own contract | crvUSDControllerFactory (selected) `0xc9332f...0738bc` — deployed 2023-05-14 14:58:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View Full Report → | Stablecoin | own contract | crvUSDStablecoin (selected) `0xf939e0...ac1b4e` — deployed 2023-05-14 14:57:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View Full Report → | AggMonetaryPolicy | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | AggMonetaryPolicy2 | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | AggregateStablePrice | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | AggregateStablePrice2 | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | CryptoWithStablePriceAndChainlinkFrxeth | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | PegKeeper | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | AMM | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | Controller | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | ControllerFactory | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | Stablecoin | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | Controller | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | ControllerFactory | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | AMM | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | Stablecoin | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | AggMonetaryPolicy | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | AggMonetaryPolicy2 | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | SemilogMonetaryPolicy | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | AggregateStablePrice | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | AggregateStablePrice2 | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | CryptoWithStablePriceAndChainlinkFrxeth | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | CryptoFromPool | own contract | CryptoFromPool (selected) `0x0cd5a1...37155b` — deployed 2024-09-08 00:00:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View Full Report → | CryptoFromPoolVault | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | CryptoFromPoolVault_noncurve | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | OracleVaultWrapper | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | PegKeeper | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | PegKeeperV2 | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | PegKeeperRegulator | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | OneWayLendingFactory | own contract | OneWayLendingFactory (selected) `0x30d185...933993` — deployed 2025-03-02 18:55:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View Full Report → | OneWayLendingFactoryL2 | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | TwoWayLendingFactory | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | Vault | ambiguous — not counted | 0x0848f3… (alternative) `0x0848f3...740cb9` — liveness: live (current_address_book_code)<br>0x72dfd9… (alternative) `0x72dfd9...2fc00e` — liveness: live (current_address_book_code)<br>0x3d8ead… (alternative) `0x3d8ead...7c69c1` — liveness: live (current_address_book_code)<br>0x77a214… (alternative) `0x77a214...546ecf` — liveness: live (current_address_book_code)<br>0xa4c0ea… (alternative) `0xa4c0ea...a78aa8` — liveness: live (current_address_book_code)<br>0xc2cd39… (alternative) `0xc2cd39...7c01bc` — liveness: live (current_address_book_code)<br>0xd41f7c… (alternative) `0xd41f7c...4cacb6` — liveness: live (current_address_book_code)<br>0xf3a431… (alternative) `0xf3a431...0874ef` — liveness: live (current_address_book_code)<br>0xd166ee… (alternative) `0xd166ee...9185d5` — liveness: live (current_address_book_code)<br>0x50ed95… (alternative) `0x50ed95...318a6c` — liveness: live (current_address_book_code)<br>0x3d8ead… (alternative) `0x3d8ead...7c69c1` — liveness: live (current_address_book_code)<br>0xa3ea43… (alternative) `0xa3ea43...4a4e64` — liveness: live (current_address_book_code)<br>0xe5de15… (alternative) `0xe5de15...983a69` — liveness: live (current_address_book_code)<br>0x193110… (alternative) `0x193110...fc310d` — liveness: live (current_address_book_code)<br>0x13dff1… (alternative) `0x13dff1...20a846` — liveness: live (current_address_book_code)<br>0xba7cbf… (alternative) `0xba7cbf...7b90aa` — liveness: live (current_address_book_code)<br>0x2c152d… (alternative) `0x2c152d...414eaa` — liveness: live (current_address_book_code)<br>0x015fd9… (alternative) `0x015fd9...78d1b8` — liveness: live (current_address_book_code)<br>0x25877b… (alternative) `0x25877b...5fef82` — liveness: live (current_address_book_code)<br>0x3c0a40… (alternative) `0x3c0a40...9c4d11` — liveness: live (current_address_book_code)<br>0x13dff1… (alternative) `0x13dff1...20a846` — liveness: live (current_address_book_code)<br>0x3d8ead… (alternative) `0x3d8ead...7c69c1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| View Full Report → | BoostedLMCallback | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | FlashLender | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | PegKeeperV2 | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | PegKeeperRegulator | unmatched — not counted | — | listed in scope table | no |
| View Full Report → | Vault | ambiguous — not counted | 0x0848f3… (alternative) `0x0848f3...740cb9` — liveness: live (current_address_book_code)<br>0x72dfd9… (alternative) `0x72dfd9...2fc00e` — liveness: live (current_address_book_code)<br>0x3d8ead… (alternative) `0x3d8ead...7c69c1` — liveness: live (current_address_book_code)<br>0x77a214… (alternative) `0x77a214...546ecf` — liveness: live (current_address_book_code)<br>0xa4c0ea… (alternative) `0xa4c0ea...a78aa8` — liveness: live (current_address_book_code)<br>0xc2cd39… (alternative) `0xc2cd39...7c01bc` — liveness: live (current_address_book_code)<br>0xd41f7c… (alternative) `0xd41f7c...4cacb6` — liveness: live (current_address_book_code)<br>0xf3a431… (alternative) `0xf3a431...0874ef` — liveness: live (current_address_book_code)<br>0xd166ee… (alternative) `0xd166ee...9185d5` — liveness: live (current_address_book_code)<br>0x50ed95… (alternative) `0x50ed95...318a6c` — liveness: live (current_address_book_code)<br>0x3d8ead… (alternative) `0x3d8ead...7c69c1` — liveness: live (current_address_book_code)<br>0xa3ea43… (alternative) `0xa3ea43...4a4e64` — liveness: live (current_address_book_code)<br>0xe5de15… (alternative) `0xe5de15...983a69` — liveness: live (current_address_book_code)<br>0x193110… (alternative) `0x193110...fc310d` — liveness: live (current_address_book_code)<br>0x13dff1… (alternative) `0x13dff1...20a846` — liveness: live (current_address_book_code)<br>0xba7cbf… (alternative) `0xba7cbf...7b90aa` — liveness: live (current_address_book_code)<br>0x2c152d… (alternative) `0x2c152d...414eaa` — liveness: live (current_address_book_code)<br>0x015fd9… (alternative) `0x015fd9...78d1b8` — liveness: live (current_address_book_code)<br>0x25877b… (alternative) `0x25877b...5fef82` — liveness: live (current_address_book_code)<br>0x3c0a40… (alternative) `0x3c0a40...9c4d11` — liveness: live (current_address_book_code)<br>0x13dff1… (alternative) `0x13dff1...20a846` — liveness: live (current_address_book_code)<br>0x3d8ead… (alternative) `0x3d8ead...7c69c1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| View Full Report → | OneWayLendingFactory | own contract | OneWayLendingFactory (selected) `0x30d185...933993` — deployed 2025-03-02 18:55:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View Full Report → | SemilogMonetaryPolicy | unmatched — not counted | — | listed in scope | no |
| View Full Report → | CryptoFromPool | own contract | CryptoFromPool (selected) `0x0cd5a1...37155b` — deployed 2024-09-08 00:00:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View Full Report → | Controller | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x2c163f...4c8b80` | Agent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x18672b...0e4e62` | AggregatorStablePrice-aggregatorofstablecoinpricesforcrvUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x7cde6e...62ba37` | Block Hash Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xb10cde...b83385` | Block Header Verifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xb10cfa...bd86b8` | Block Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x51a00f...5d9e61` | CCIPBlockHashSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x06471e...7b004f` | Child Liquidity Gauge Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x566b9f...7eda83` | CowSwapBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2287b7...920775` | crvUSD Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x26de78...0e9ee1` | crvUSD FlashLender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd16d5e...027914` | Curve Fee Distribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x1764ee...594585` | CurveAddressProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xefaddd...43f7ce` | CurveCryptoCalc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x69522f...0adb4f` | CurveCryptoCalcZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x07cdeb...045b80` | CurveCryptoViews2Optimized | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x05d4e2...ef3ef7` | CurveCryptoViews3Optimized | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x37c5ab...6614fd` | CurveDeposit&amp;StakeZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | `0x5eee30...e31f6e` | CurveFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x3d6cb2...d8796a` | CurveL2TricryptoFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x0c59d3...03baef` | CurveMetaRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5a8c93...d5cfcc` | CurveMetaZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x07920e...161ea0` | CurveRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5eee30...e31f6e` | CurveRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x16c652...265353` | CurveRouter v1.1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x45312e...c8cd4e` | CurveRouter v1.2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x4f37a9...cffc1f` | CurveRouterNgPoolsOnly v1.1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x0dcded...45d983` | CurveRouterOptimism v1.1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x219171...9a0a0d` | CurveRouterSidechain v1.1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x0dcded...45d983` | CurveRouterSidechainTricryptoMeta v1.1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5552b6...c9d1f7` | CurveStableCalc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0fe38d...1300cf` | CurveStableCalcZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xa7ba18...abd9c2` | CurveStableSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x604388...e2ae22` | CurveStableSwapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x686bdb...ac78b4` | CurveStableSwapMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x7c2085...c463d8` | CurveStableSwapMeta | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xa7b9d8...fdac26` | CurveTricryptoMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x0c9d8c...650953` | CurveTricryptoMathOptimized | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x0458ea...b3116c` | CurveTricryptoOptimized | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x635742...2eafbd` | CurveTricryptoSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x5702bd...b07499` | CurveTricryptoSwapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xa7b9d8...fdac26` | CurveTricryptoViews | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x98ee85...eaaf7f` | CurveTwocryptoFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x0c9d8c...650953` | CurveTwocryptoMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1fd8af...cdf4a1` | CurveTwocryptoMathOptimized | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x1a8334...7fe495` | CurveTwocryptoSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x1a8334...7fe495` | CurveTwocryptoSwapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x64379c...84db80` | CurveTwocryptoViews | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x506f59...df9f7f` | CurveXChainLiquidityGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x8b3efb...3f57a6` | CurveXChainLiquidityGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x1d04fc...2e6841` | DelegationVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2b786b...ebc828` | DonationStreamer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x331b91...aecc56` | ERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa2bcd1...bcce00` | FeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x01689f...968e41` | Gauge Type Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x0b2584...defe62` | GaugeTypeProver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x47ca04...677ee4` | GaugeTypeVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xc4aa2f...659449` | GnosisBridger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9a9df3...f6f69d` | Hooker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | `0x07cdeb...045b80` | KittyViewOptimized2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x2fa3cb...470334` | L2 Voting Escrow Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x099420...05fb53` | L2StandardERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0a92fd...db4d4f` | Layer Zero Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x5f9407...3b3640` | LlamaLend Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x0fe38d...1300cf` | LlamaLendLeverageZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x329451...90b687` | LlamaLendOdosLeverageZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xbff1f5...9f1825` | MessageDigestProver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | `0x9293f0...16019d` | MetaZap NG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x07920e...161ea0` | MetaZapNG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x458599...3726bf` | Minter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x476528...f005a5` | Minter Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x7be6bd...2b6f96` | Optimism Relayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x099420...05fb53` | OptimismMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0xab94c7...836ed0` | OptimismMintablePermitERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x36a04c...dd855f` | Peg Keeper Regulator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3fa20e...2fe09c` | Peg Keeper V2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x712b3d...bdd0bd` | PermittableToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe8d1e2...736f56` | Rewards Handler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x306a45...d9dcd6` | Root Liquidity Gauge Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0b3536...c8f5c1` | SemiLog monetary policy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xe35a87...096bd8` | Sonic Block Hash oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | `0xca8d07...36e4b4` | StableCalc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x11cdb4...034978` | StandardArbERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4a8cc5...1c462a` | StreamExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0094ad...5fe0e5` | Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6508ef...2d290b` | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x172370...a610af` | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x38334e...7a6abc` | VecrvVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7ba334...4cc2cc` | XYZ Broadcaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xe5de15...983a69` | XYZ Relayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 225 |
| upstream | 6 |
| standard_library | 10 |
| needs_review | 871 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Address-book scope dispositions: 24 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 4 ambiguous, 87 unmatched
- Matched-own operational status: 24 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=20, low=1
- Match method counts: address=3, unique_name=23

Zero-match audit list:

- [17145] Security audits and disclosure reports are available on [GitHub]()
- [17149] View Full Report →
- [17150] View Full Report →
- [17152] View Full Report →
- [17155] View Full Report →
- [17156] View Full Report →
- [17158] View Full Report →
- [17160] View Full Report →
- [17163] View Full Report →
- [17165] View Full Report →

Fork inheritance lineage and inherited audits are included when available.
