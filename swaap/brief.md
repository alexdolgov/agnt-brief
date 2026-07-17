# Agentic Audit Brief: Swaap

## Project Overview

- Project: Swaap (`swaap`)
- Website: [https://www.swaap.finance](https://www.swaap.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:59.157Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: arbitrum, avalanche, base, bsc, ethereum, linea, mode, optimism, polygon
- Contract surface: 107 unique implementations (150 raw deployments)
- DeFi Llama TVL: $5,574,725.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 12 project-authored contract(s) across 3 chain(s); 2 ERC20 tokens, 3 Chainlink feeds; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 10 common project-authored base contract(s) (authentication, signaturesafeguard, eoasignaturesvalidator). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 168; live-surface contracts included: 150 (30 live, 120 unknown).
- Excluded by liveness: 18 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/4 (50.0%)
- Deployed-live implementations: 4 of 107 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/5
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 102
- Unique implementations: 107
- Raw deployments: 150
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 50.0% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 2 | 40.0% | 2023-06 |
| Quantstamp | Tier 2 | 1 | 20.0% | 2023-07 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SafeguardFactory | registry | ethereum | n/a | 13 deployments: ethereum [`0x03c01acae3d0173a93d819efdc832c7c4f153b06`](./contracts/ethereum-1/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); ethereum `0xcc74bd5d8d2d333d14475e022325555eba3369b8`; optimism [`0x03c01acae3d0173a93d819efdc832c7c4f153b06`](./contracts/optimism-10/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); bsc `0x3f255ab675a18e199b417b7ca45012dd1d13e3e2`; bsc `0xcc74bd5d8d2d333d14475e022325555eba3369b8`; polygon [`0x03c01acae3d0173a93d819efdc832c7c4f153b06`](./contracts/polygon-137/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); polygon `0xcc74bd5d8d2d333d14475e022325555eba3369b8`; base `0xcc74bd5d8d2d333d14475e022325555eba3369b8`; mode [`0x03c01acae3d0173a93d819efdc832c7c4f153b06`](./contracts/mode-34443/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); arbitrum [`0x03c01acae3d0173a93d819efdc832c7c4f153b06`](./contracts/arbitrum-42161/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); arbitrum `0xcc74bd5d8d2d333d14475e022325555eba3369b8`; linea [`0x03c01acae3d0173a93d819efdc832c7c4f153b06`](./contracts/linea-59144/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); linea `0xcc74bd5d8d2d333d14475e022325555eba3369b8` | ✅ Audited |
| SafeguardPool | unknown | arbitrum | n/a | 10 deployments: ethereum `0x4342b77fe3417bcb09d0a4383301b0dc733c755b`; ethereum `0xa71f7665465c89b6e4571d70c1ff1527d08e0b0b`; ethereum `0xfc57bc97fb15598d8dde9a68bdb3f4248bb5e1b2`; base `0x7877b97c887dd3a3a1cea35822da07e11a25e7da`; arbitrum [`0x30985450cb225ec53fffb013171cadf6264b8b39`](./contracts/arbitrum-42161/0x30985450cb225ec53fffb013171cadf6264b8b39/); arbitrum `0x46d0c6f1e64664d366b4378a87bccfc61ad32796`; arbitrum `0x55e5695994857fa12162a17887241d53e7d1ca56`; arbitrum `0x98134802ef46c049f1c69bf87ee088be1a60137a`; arbitrum `0xbc0cb9521b592d7993a2d8a6c7b471c18b599c1d`; arbitrum `0xc54ba936c9e40e5c5d31c241e8e3cba90e0084e6` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Authorizer | unknown | mode | n/a | 2 deployments: mode [`0xca19ed3182e6e591207e959de633a14825cc123c`](./contracts/mode-34443/0xca19ed3182e6e591207e959de633a14825cc123c/); avalanche [`0xca19ed3182e6e591207e959de633a14825cc123c`](./contracts/avalanche-43114/0xca19ed3182e6e591207e959de633a14825cc123c/) | ⚠️ Unaudited |
| ProxyJoinViaAggregator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9574c8a1653717d2da71269c17ac28e891e88067`](./contracts/ethereum-1/0x9574c8a1653717d2da71269c17ac28e891e88067/); mode `0xbc0cb9521b592d7993a2d8a6c7b471c18b599c1d` | ⚠️ Unaudited |
| Vault | core_logic | bsc | n/a | 9 deployments: ethereum `0xd315a9c38ec871068fec378e4ce78af528c76293`; optimism `0xd315a9c38ec871068fec378e4ce78af528c76293`; bsc [`0x03c01acae3d0173a93d819efdc832c7c4f153b06`](./contracts/bsc-56/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); polygon `0xd315a9c38ec871068fec378e4ce78af528c76293`; base [`0x03c01acae3d0173a93d819efdc832c7c4f153b06`](./contracts/base-8453/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); mode `0xd315a9c38ec871068fec378e4ce78af528c76293`; arbitrum `0xd315a9c38ec871068fec378e4ce78af528c76293`; avalanche `0xd315a9c38ec871068fec378e4ce78af528c76293`; linea `0xd315a9c38ec871068fec378e4ce78af528c76293` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (102)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x2ff3ab5703c229691c609318a4cf8cca06ddba67) | unknown | ethereum | n/a | 2 deployments: ethereum `0x0444d9aa9f0951cf513d2704e8b8454fa5e02aee`; ethereum `0x2ff3ab5703c229691c609318a4cf8cca06ddba67` | ❓ Unverified |
| Proxy (impl: 0x46d0c6f1e64664d366b4378a87bccfc61ad32796) | unknown | base | n/a | 2 deployments: base `0x3d1a98b4e45c6f32f5c5b396abf5fd95bf30a4b9`; base `0x46d0c6f1e64664d366b4378a87bccfc61ad32796` | ❓ Unverified |
| Proxy (impl: 0x6e9359dd27980fb7027c179ae5e701e4bcb2f6b9) | unknown | ethereum | n/a | 2 deployments: ethereum `0x22863c875e6b7519141cb8394f2220fac7e6ade6`; ethereum `0x6e9359dd27980fb7027c179ae5e701e4bcb2f6b9` | ❓ Unverified |
| Proxy (impl: 0xcb2e1a46f1d0b7d97a11d5bf62d15120426ea5c2) | unknown | base | n/a | 2 deployments: base `0x0e2e77eaa606306bbc4933806faf811fcb9c8d90`; base `0xcb2e1a46f1d0b7d97a11d5bf62d15120426ea5c2` | ❓ Unverified |
| Proxy (impl: 0xd52309f6e491e44c532dde306f0869ab71f590cd) | unknown | optimism | n/a | 2 deployments: optimism `0x1d063e30c800d0165b3b2385c09fca8e96142deb`; optimism `0xd52309f6e491e44c532dde306f0869ab71f590cd` | ❓ Unverified |
| Proxy (impl: 0xd52309f6e491e44c532dde306f0869ab71f590cd) | unknown | polygon | n/a | 2 deployments: polygon `0x1d063e30c800d0165b3b2385c09fca8e96142deb`; polygon `0xd52309f6e491e44c532dde306f0869ab71f590cd` | ❓ Unverified |
| Proxy (impl: 0xd6ee0f90575c0fabdd0c17ea9b582edf77ff5506) | unknown | optimism | n/a | 2 deployments: optimism `0x825c9bac60efb01eaa1da44bc2fb356638840f2c`; optimism `0xd6ee0f90575c0fabdd0c17ea9b582edf77ff5506` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d063e30c800d0165b3b2385c09fca8e96142deb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x207063773125702100c27ad6b32a8704e0073ebc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26ca210041263a3b2f356c476c03c30476e86c53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2768babb15b30d2ee02be29519d264cf77252752` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33ddf3fae17447f895ca59e1eb27d3711da86b16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x360b094d484c2777258853f9e3d4c814c4b2f147` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ac745fb7aa39007de4de6eb4c93d6dead475973` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ebe623698b1544c6ae8e0eae789eaed08674a85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6330fd760bd922fcdf03b10bd32f48aa7e3d1ad9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c759a7a3fe43bae743a763f8b00d91a8fca7a44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7646eb8d8a117d35e33d46198dd5159033498100` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8338ec2f638da6abb08867a8144393574e1b4be3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x890dd87cbcf04259687b13e773d52f5db7068210` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8fca81afb82027b69c53c91b4a96b4c7385c9943` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d1ec08c3dec8ea95cf710cd80324df614b838c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb02016102e7ab27bce2c3087392098a09c2f0f2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4a42e785d0214a1feb09441b12657e54dd50003` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb55c7453e9f4dd0f34fb525392a6331930b27834` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8c67b538458d04268e5a58c409e9cecb43fa5bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9f91ff58bc2cbad34e736396264c294b32cf5e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8fd1bec4bc31e0c2ef1d125c5e3bc8b810e01a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb7eb338cada39b8516a03bac6513e2a561a5244` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8623647bfc4b52944bf5c3fac9ff13185127a72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdce4ad460de316e20ff0fc5f46882671eac2b83b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7683a98c8bde402cbddbb3120275f15089e01b9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x08113667299592f5cf28b041abe587e4873cfbde` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x16e13ffdc69ab55dc085b829c403549b210dc2c7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | 2 deployments: optimism `0x46f86d5f534627aa084dd0328fe03ffe5be38beb`; optimism `0xb53d0737ec9cd8e9e4f09ef3e154c1e4f05633b3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x55e5695994857fa12162a17887241d53e7d1ca56` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7a039a11ce644779c438b197a832562c61077e5f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9d1ec08c3dec8ea95cf710cd80324df614b838c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x08920ad4ff9a7dbd76e1ef2b47c7db6d412c7104` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c8b5f8c46f2b695a018bccb57e932d6669a4442` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x11683b8d9123dbb319333fac25167da43c27b703` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54985c88cf6acecd8b115e5b4798519d4d9c0afd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5dd64004dd320606aa77146c43e04f785fefdbd3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x825c9bac60efb01eaa1da44bc2fb356638840f2c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x916f006ae522769badf95cf6afdb90e162cb96e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x943c89e1fe0f8a507557d72d380e31ff01d19d88` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x962ed2aa967d96d04112663fea62c7cfd8d69257` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb4a42e785d0214a1feb09441b12657e54dd50003` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb8519b2261db09fb7cbd2411a1b474151f5e1053` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc8a5ffb4ae45c03f4b34d95dd8e87ddb1a0e8378` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6ee0f90575c0fabdd0c17ea9b582edf77ff5506` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x16e13ffdc69ab55dc085b829c403549b210dc2c7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x37ae224dba13480a823b942ede8219c8d75149d3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x441dee1fa4d0f62a0958bd4d06d4d19b41ddc9bb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | 2 deployments: polygon `0x8338ec2f638da6abb08867a8144393574e1b4be3`; polygon `0xfb5e781ebc1c9cae8b3a66593d4e7d3a5f55167f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb024150b7bb15440224312a742530de68a02dbbf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe18072ca1b6cf3f492ead8c7d0cf577017a4b1ce` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf383caf0d7379705e112af6ed6489c122a809564` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf496faf0c32998e6e3363e4a96a571d38db7491a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x022aa4ec5752ae0c4a1e1b5f4785165685551132` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x11683b8d9123dbb319333fac25167da43c27b703` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x142e5f1ce8ffe96694c25e4db4dc5c3487e4dedb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1e6354185660346d01cb92cc5b331f1ce530d2e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25257169676a487bb59bfb76e88b9fda7995f32a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x29fbaf61eb52172c3b46c56912f1d01c4bf8108b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x307d2a33a8054a7d7dadcf32eb204b0e208b0080` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x34ab4d551b9530c06120cc4d929ce17f87344607` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x372861d82a64dffc2b39e3049366e7a2761c1e87` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x48b8aeb1068be489d37a691479730087fbeb6180` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5258de40e061578c7c3ab4384225670d756a04ae` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x60abcc08083bd3f9c3f4f748d314a26ed5d353ab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x943c89e1fe0f8a507557d72d380e31ff01d19d88` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x971c6a453bda2997831af3705b59f247e6777918` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x973105bd539b2dbca5bd71ef9f74f761a150186c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa3c6367c8157845b3832fc13b63844794856e548` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb200268fad2c31a9e6a202c07bed81911c5acffa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb45f9ef4fbad91b8859bd6130fac84ea988674d5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xec580da12a3dd56de999049655fbec2fd27ab4cf` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xbc40a15ad216b3d969b305c7cf579d25d883263a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x11683b8d9123dbb319333fac25167da43c27b703` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x19cd923b9b3bd691ab9e2e83e7a29f8b13f661d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x25257169676a487bb59bfb76e88b9fda7995f32a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x307d2a33a8054a7d7dadcf32eb204b0e208b0080` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3729955da4ea0a1ec11202b4feda28940f4d3205` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x42fff9b9f76b3de5d0328420cee8cfde344df59b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x441dee1fa4d0f62a0958bd4d06d4d19b41ddc9bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7162ae0456ec4d6feab8be849f471c1916cd068f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x78993f354c592deeee05d62fed1a5c97ed6c4679` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x916f006ae522769badf95cf6afdb90e162cb96e6`; arbitrum `0xae091d7e1fed989522125be65172cc1ac2969e6e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xad1051349b309b690c9b99ce1b027a026bae4fc4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0xb024150b7bb15440224312a742530de68a02dbbf`; arbitrum `0xcdc43c82544bfadea3d48a7122c34aae672ec85e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb62286380e2d0f9b2d2fc9975765fd272275cd39` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbbd56103fd16422aa9905d88818c7eb67d8df14b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcd180b45ddbc4557d6d4b4e8220074af8f3cb9b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe331b9d0472ec7c39268ad4483a22f8db5d702dc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x03c01acae3d0173a93d819efdc832c7c4f153b06` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2d791e1869270bbc15ed89e9fb15b748bada51e3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x37d6c8d22b886949df865e8af5c29daee4bfaf11`; avalanche `0x76611019b5226d35eda561c8b8eff001b835eb26` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7a039a11ce644779c438b197a832562c61077e5f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcc74bd5d8d2d333d14475e022325555eba3369b8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2d791e1869270bbc15ed89e9fb15b748bada51e3` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x69dbe8f5f44013806b1b4a73f03322b142543c4b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [www.chainsecurity.com/security-audit/swaap-finance-safeguardpool](https://www.chainsecurity.com/security-audit/swaap-finance-safeguardpool) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | 10 | low |
| [ChainSecurity_Swaap_SafeguardPool_Audit.pdf](https://reports.chainsecurity.com/Swaap/ChainSecurity_Swaap_SafeguardPool_Audit.pdf) | ChainSecurity | Audit | 2023-06 | stale | Direct | contract_name | 1 | n/a |
| [runtimeverification.com/blog/runtime-verification-audits-swaap-s-pool-smart-contracts](https://runtimeverification.com/blog/runtime-verification-audits-swaap-s-pool-smart-contracts) | unknown | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [swaap-audit-report.pdf](https://github.com/runtimeverification/publications/blob/main/reports/smart-contracts/swaap-audit-report.pdf) | Runtime Verification | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [quantstamp_SafeguardPool_audit.pdf](https://github.com/swaap-labs/swaap-v2-monorepo/blob/main/audits/quantstamp/quantstamp_SafeguardPool_audit.pdf) | Quantstamp | Audit | 2023-07 | stale | Direct | contract_name | 1 | n/a |
| [audit.pdf](https://github.com/swaap-labs/swaap-core-v1/blob/main/audits/chainsecurity/audit.pdf) | ChainSecurity | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [audit.pdf](https://github.com/swaap-labs/swaap-core-v1/blob/main/audits/runtime-verification/audit.pdf) | Runtime Verification | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mode | [`0xca19ed3182e6e591207e959de633a14825cc123c`](./contracts/mode-34443/0xca19ed3182e6e591207e959de633a14825cc123c/) | Authorizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9574c8a1653717d2da71269c17ac28e891e88067`](./contracts/ethereum-1/0x9574c8a1653717d2da71269c17ac28e891e88067/) | ProxyJoinViaAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x03c01acae3d0173a93d819efdc832c7c4f153b06`](./contracts/bsc-56/0x03c01acae3d0173a93d819efdc832c7c4f153b06/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 102 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: low=1
- Match method counts: contract_name=2, extraction_exact=10

Zero-match audit list:

- [2591] runtimeverification.com/blog/runtime-verification-audits-swaap-s-pool-smart-contracts
- [2592] swaap-audit-report.pdf
- [14916] audit.pdf
- [14917] audit.pdf

Fork inheritance lineage and inherited audits are included when available.
