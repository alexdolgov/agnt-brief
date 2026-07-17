# Agentic Audit Brief: Augur

## Project Overview

- Project: Augur (`augur`)
- Website: [https://augur.net/](https://augur.net/)
- Lifecycle: active (Tier 0, 90.5% below peak)
- Generated: 2026-07-04T14:53:04.267Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: ethereum
- Contract surface: 102 unique implementations (110 raw deployments)
- DeFi Llama TVL: $1,260,713.35
- On-chain TVL (included contracts): $4,454,398.26
- TVL by chain: Ethereum $4,454,398.26

## Project Description

Prediction Market. Structurally: 73 project-authored contract(s) across 1 chain(s); 9 ERC20 tokens, 1 ERC1155 multi-token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 5 functional families. Its contracts share 18 common project-authored base contract(s) (iownable, delegationtarget, controlled). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 145; live-surface contracts included: 110 (55 live, 55 unknown).
- Excluded by liveness: 35 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/44 (9.1%)
- Deployed-live implementations: 47 of 102 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/47
- Verified + Unaudited implementations: 43
- Verified by bytecode match: 0
- Unverified implementations: 55
- Unique implementations: 102
- Raw deployments: 110
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $4,454,398.26
- Latest audit: 2018-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 4.5% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zeppelin | Tier 2 | 4 | 8.5% | 2018-03 |
| LeastAuthority | Tier 2 | 3 | 6.4% | 2017-12 |
| ChainSecurity | Tier 1 | 2 | 4.3% | 2017-12 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CancelOrder | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3448209268e97652bb67ea12777d4dfba81e3aaf`](./contracts/ethereum-1/0x3448209268e97652bb67ea12777d4dfba81e3aaf/); ethereum `0x465bf82912497a424a4669e92319d9355dcfb0d0` | ✅ Audited |
| ClaimTradingProceeds | unknown | ethereum | n/a | [`0x4334477348222a986fc88a05410aa6b07507872a`](./contracts/ethereum-1/0x4334477348222a986fc88a05410aa6b07507872a/) | ✅ Audited |
| Market | unknown | ethereum | n/a | [`0x380070670fb427ae8070631eef6f2d0824d8ce01`](./contracts/ethereum-1/0x380070670fb427ae8070631eef6f2d0824d8ce01/) | ✅ Audited |
| Universe | unknown | ethereum | n/a | 2 deployments: ethereum [`0x49244bd018ca9fd1f06ecc07b9e9de773246e5aa`](./contracts/ethereum-1/0x49244bd018ca9fd1f06ecc07b9e9de773246e5aa/); ethereum `0xfbcd5e4dbf9e95ce56d55cb3a4fd72415ca400ff` | ✅ Audited |

### ⚠️ Verified + Unaudited (43)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ReputationToken | token | ethereum | n/a | 2 deployments: ethereum [`0x221657776846890989a759ba2973e427dff5c9bb`](./contracts/ethereum-1/0x221657776846890989a759ba2973e427dff5c9bb/); ethereum `0x6c114b96b7a0e679c2594e3884f11526797e43d1` | ⚠️ Unaudited |
| Augur | unknown | ethereum | n/a | [`0x75228dce4d82566d93068a8d5d49435216551599`](./contracts/ethereum-1/0x75228dce4d82566d93068a8d5d49435216551599/) | ⚠️ Unaudited |
| CaptureTheFlag | unknown | ethereum | n/a | [`0x2faf4460ff24799b4e999363f4060879f5006396`](./contracts/ethereum-1/0x2faf4460ff24799b4e999363f4060879f5006396/) | ⚠️ Unaudited |
| Cash | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9b4af4a3295cf476a2b00736f7332f35bbee960e`](./contracts/ethereum-1/0x9b4af4a3295cf476a2b00736f7332f35bbee960e/); ethereum `0xd5524179cb7ae012f5b642c1d6d700bbaa76b96b` | ⚠️ Unaudited |
| CompleteSets | unknown | ethereum | n/a | [`0xa6bff4f91016c2b4aac140b2d8d7317b36afe5ab`](./contracts/ethereum-1/0xa6bff4f91016c2b4aac140b2d8d7317b36afe5ab/) | ⚠️ Unaudited |
| Controlled | unknown | ethereum | n/a | [`0x6da4e67755fb48e26af50915991f57665f66759c`](./contracts/ethereum-1/0x6da4e67755fb48e26af50915991f57665f66759c/) | ⚠️ Unaudited |
| Controller | unknown | ethereum | n/a | [`0xb3337164e91b9f05c87c7662c7ac684e8e0ff3e7`](./contracts/ethereum-1/0xb3337164e91b9f05c87c7662c7ac684e8e0ff3e7/) | ⚠️ Unaudited |
| CreateOrder | unknown | ethereum | n/a | [`0x7f27b0598949dbf9e539bbd217f15bf3f5e97999`](./contracts/ethereum-1/0x7f27b0598949dbf9e539bbd217f15bf3f5e97999/) | ⚠️ Unaudited |
| Delegator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x10b5589fc6922f5c27061ac79ad9a4af35e15806`](./contracts/ethereum-1/0x10b5589fc6922f5c27061ac79ad9a4af35e15806/); ethereum `0xd7a14019aeeba25e676a1b596bb19b6f37db74d2` | ⚠️ Unaudited |
| DisputeCrowdsourcer | unknown | ethereum | n/a | [`0x183614d40cee16bf6fcd9dff51556f398ec8d360`](./contracts/ethereum-1/0x183614d40cee16bf6fcd9dff51556f398ec8d360/) | ⚠️ Unaudited |
| DisputeCrowdsourcerFactory | unknown | ethereum | n/a | [`0x1be98680ff697390cbc4cdc414a1be8add733bf7`](./contracts/ethereum-1/0x1be98680ff697390cbc4cdc414a1be8add733bf7/) | ⚠️ Unaudited |
| Exchange | unknown | ethereum | n/a | [`0x61935cbdd02287b511119ddb11aeb42f1593b7ef`](./contracts/ethereum-1/0x61935cbdd02287b511119ddb11aeb42f1593b7ef/) | ⚠️ Unaudited |
| Exchange | unknown | ethereum | n/a | [`0xb27f1db0a7e473304a5a06e54bdf035f671400c0`](./contracts/ethereum-1/0xb27f1db0a7e473304a5a06e54bdf035f671400c0/) | ⚠️ Unaudited |
| FeeToken | unknown | ethereum | n/a | [`0xe0dfed99988fcc9bdfa1f4fb0084942e1be6e2de`](./contracts/ethereum-1/0xe0dfed99988fcc9bdfa1f4fb0084942e1be6e2de/) | ⚠️ Unaudited |
| FeeTokenFactory | unknown | ethereum | n/a | [`0xe86a4beb10155a5bd7ebb430ce13438341e808a8`](./contracts/ethereum-1/0xe86a4beb10155a5bd7ebb430ce13438341e808a8/) | ⚠️ Unaudited |
| FeeWindow | unknown | ethereum | n/a | [`0x56cc82bbb3049dc3366bf26061d09ed3fd061881`](./contracts/ethereum-1/0x56cc82bbb3049dc3366bf26061d09ed3fd061881/) | ⚠️ Unaudited |
| FeeWindowFactory | unknown | ethereum | n/a | [`0x5b4140771615b25f22a4bf52f77e35cdccc5b663`](./contracts/ethereum-1/0x5b4140771615b25f22a4bf52f77e35cdccc5b663/) | ⚠️ Unaudited |
| FillOrder | unknown | ethereum | n/a | [`0x39c230f89981274177e79708c921582bd4bd0303`](./contracts/ethereum-1/0x39c230f89981274177e79708c921582bd4bd0303/) | ⚠️ Unaudited |
| Forwarder | unknown | ethereum | n/a | 3 deployments: ethereum [`0x132a04f3f6196b499a7ed512c15e002d5dcefa9a`](./contracts/ethereum-1/0x132a04f3f6196b499a7ed512c15e002d5dcefa9a/); ethereum `0x4699d5c42a3bc7dd9c72d218ccea45954af24f53`; ethereum `0x4ef40d1bf0983899892946830abf99eca2dbc5ce` | ⚠️ Unaudited |
| InitialReporter | unknown | ethereum | n/a | [`0x4fa2b609c19edf731ec33f54f54602a92dfcde6d`](./contracts/ethereum-1/0x4fa2b609c19edf731ec33f54f54602a92dfcde6d/) | ⚠️ Unaudited |
| InitialReporterFactory | unknown | ethereum | n/a | [`0xbca52c29b535fd63bdc7ca35efa56116550f4c59`](./contracts/ethereum-1/0xbca52c29b535fd63bdc7ca35efa56116550f4c59/) | ⚠️ Unaudited |
| Mailbox | unknown | ethereum | n/a | [`0x4dcb585b8c8c52c2d25d5a7c2672646bc24b3b66`](./contracts/ethereum-1/0x4dcb585b8c8c52c2d25d5a7c2672646bc24b3b66/) | ⚠️ Unaudited |
| MailboxFactory | unknown | ethereum | n/a | [`0xe33ca1ebb783343035b11a7e755c29c28b763540`](./contracts/ethereum-1/0xe33ca1ebb783343035b11a7e755c29c28b763540/) | ⚠️ Unaudited |
| Map | unknown | ethereum | n/a | [`0x94c01429d67a275de013e457eff6e028e10763d9`](./contracts/ethereum-1/0x94c01429d67a275de013e457eff6e028e10763d9/) | ⚠️ Unaudited |
| MapFactory | unknown | ethereum | n/a | [`0x67f53b749fe432274e3f53752a91da89ef86777e`](./contracts/ethereum-1/0x67f53b749fe432274e3f53752a91da89ef86777e/) | ⚠️ Unaudited |
| MarketFactory | unknown | ethereum | n/a | [`0x518530aca60154403012f17c7b8e26f88f7494ee`](./contracts/ethereum-1/0x518530aca60154403012f17c7b8e26f88f7494ee/) | ⚠️ Unaudited |
| Orders | unknown | ethereum | n/a | [`0xd0ba8692bc945efe0638313cab40ab8e4f83191a`](./contracts/ethereum-1/0xd0ba8692bc945efe0638313cab40ab8e4f83191a/) | ⚠️ Unaudited |
| OrdersFetcher | unknown | ethereum | n/a | [`0xa97a3e2ac932bc7a9c65393ee2c0f9d2f7b2e692`](./contracts/ethereum-1/0xa97a3e2ac932bc7a9c65393ee2c0f9d2f7b2e692/) | ⚠️ Unaudited |
| Penalizer | unknown | ethereum | n/a | [`0x67c6e83f247fa404708a09032475eda551e768fa`](./contracts/ethereum-1/0x67c6e83f247fa404708a09032475eda551e768fa/) | ⚠️ Unaudited |
| RelayHub | unknown | ethereum | n/a | [`0x5648b6306380689af8d2de7bdd23d916b9ee0db5`](./contracts/ethereum-1/0x5648b6306380689af8d2de7bdd23d916b9ee0db5/) | ⚠️ Unaudited |
| ReputationTokenFactory | unknown | ethereum | n/a | [`0x8fee0da3a35f612f88fb58d7028d14c7d99a3643`](./contracts/ethereum-1/0x8fee0da3a35f612f88fb58d7028d14c7d99a3643/) | ⚠️ Unaudited |
| ShareToken | unknown | ethereum | n/a | [`0x2a21d90745dfed999aa0b6e08d648855c5f14663`](./contracts/ethereum-1/0x2a21d90745dfed999aa0b6e08d648855c5f14663/) | ⚠️ Unaudited |
| ShareTokenFactory | unknown | ethereum | n/a | [`0x60a977354a6ba44310b2ee061bcf19632450e51d`](./contracts/ethereum-1/0x60a977354a6ba44310b2ee061bcf19632450e51d/) | ⚠️ Unaudited |
| StakeManager | unknown | ethereum | n/a | [`0x5ae81a75aa2ea4647a31f099c239bc76433141ea`](./contracts/ethereum-1/0x5ae81a75aa2ea4647a31f099c239bc76433141ea/) | ⚠️ Unaudited |
| TestPaymasterEverythingAccepted | unknown | ethereum | n/a | [`0xf50b17a7ca64447ae782dc6c4aabe992c37476c7`](./contracts/ethereum-1/0xf50b17a7ca64447ae782dc6c4aabe992c37476c7/) | ⚠️ Unaudited |
| Time | unknown | ethereum | n/a | [`0xe9f0e0ce26874aafc1de658b99dbf391ea2fc527`](./contracts/ethereum-1/0xe9f0e0ce26874aafc1de658b99dbf391ea2fc527/) | ⚠️ Unaudited |
| Trade | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0cd32f92e3ea33d81d8cf60e20dddfdef4915667`](./contracts/ethereum-1/0x0cd32f92e3ea33d81d8cf60e20dddfdef4915667/); ethereum `0x24e2b1d415e6e0d04042eaa45dc2a08fc33ca6cd` | ⚠️ Unaudited |
| TradingEscapeHatch | unknown | ethereum | n/a | [`0x9e130ec3b6fd96ac7db4076638bd5964ad9e0d13`](./contracts/ethereum-1/0x9e130ec3b6fd96ac7db4076638bd5964ad9e0d13/) | ⚠️ Unaudited |
| UniswapV2Factory | registry | ethereum | n/a | [`0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f`](./contracts/ethereum-1/0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0xa478c2975ab1ea89e8196811f51a7b7ade33eb11`](./contracts/ethereum-1/0xa478c2975ab1ea89e8196811f51a7b7ade33eb11/) | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | ethereum | n/a | [`0x7a250d5630b4cf539739df2c5dacb4c659f2488d`](./contracts/ethereum-1/0x7a250d5630b4cf539739df2c5dacb4c659f2488d/) | ⚠️ Unaudited |
| UniverseFactory | unknown | ethereum | n/a | [`0xe62e470c8fba49aea4e87779d536c5923d01bb95`](./contracts/ethereum-1/0xe62e470c8fba49aea4e87779d536c5923d01bb95/) | ⚠️ Unaudited |
| WarpSync | unknown | ethereum | n/a | [`0xe0c69aefaa7611de493bce9525abf2a2c3c7fc4d`](./contracts/ethereum-1/0xe0c69aefaa7611de493bce9525abf2a2c3c7fc4d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (55)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x061ba3b746641c24e2ceab7cabcddbbef829bc92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06eb3bb92121774753b58c735d989843a9eaacb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08d1708b659b2d5ffb4c08b7bdabafedcdb0b0b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16c0e70d497de975c930d44cef04f48ca80c14cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c36b06fc0d9354a96cf155b861b141ed10c3312` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1dd864ed6f291b31c86aaf228db387cd60a20e18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e8229e00ddcb78f5b4fd9b1aa6175dd89c5fcaf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2050190b9a0621680583708124956e46a5495d3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2518033d0f4520526d10d71236482c5de1974091` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d78ac6b1b29a6adddf46340dc3e3ac3d8cc3e05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38a795580d0f687e399913a00ddef6a17612c722` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3900f52ca55c3fc77a5b5bbea003f42bf8a15f72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x393a1ff5eb44f952bb55cb0bedc3dde4ed043088` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a1b0dde9bf5ff6c1c5d115b12b036edfd3bf32a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ba1f0dd1f9a5ca688dd2a7f066358a8f2e6471b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3fc45795726579de008309923014e737791664ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47b3361914b2a4491d545be41fe312b62c3960c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x533344cfdf2a3e911e2cf4c6f5ed08e791f5355f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55dc8f21d20d4c6ed3c82916a438a413ca68e335` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5836bedb48834474c8e11fbc005e7fb2c2a35d7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ff2c495055d4f6284f317a9c2edb7045497b14f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60c8803a8f3db8529f3d18db52c73fa9a2249a96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60f7f337fbc4af02ba7560a847ff3a6f2f117ed7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65d13619e4495665da113c1612b5bf0bcae4193d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a3b7c553d47c08651641ef00cb3befae97bf415` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6bc8cf67434cd449ba13a50ca7af22044c11eb37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6cb9a1e39a88623705e6b30ac3824140ff2d6751` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71995a3fc0236ed4d5d8ee04a23b727aea39caac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73961558c6d1e8c5df845975d4d49dca3db18887` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7fbb876589b680492a753cf830a16bc4cb73fd36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d69d77dfc40d0e2e3b17d883794dece7a8c6ead` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96ddba19b69d6ea2549f6a12d005595167414744` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c09063005d4dc794bb06fa128b8757a9ccb62dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ea309d4f96d6433c75a6b9c5a596cf19a87edb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa00703843435fbd75d907beb6ff5be30f8ecc5aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3ac9844514b96bb502627ca9dceb57c4be289e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac8ba65b222edc67d8681403346680b69e9dda9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaef4d02a22053f5b9d55e2af0a45393e6f1b606e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4fc3a60bb7f2333dd1ec4c9331ffbdcd1effb25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbae04c0fff1df607fd881740aa56ce9858069ee4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbcc9946143534e28c3bad116cea0f81b9b208799` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf1e3a8405906904b3692446e0fb4e309628a9fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbfe7b0afadcf420a32cb78a5ab9de40469deb8be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2930a5eb22e8d8812934d59508fe940e9f91c4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7612135356ba8f75dbf517b55d88a91977492dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xccc2431a7335f21d9268ba62f0b32b0f2efc463f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd53c634e93fa1214d028acaaf6a12912ba26a2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf0c58607e518d89d25083bccafe1576bd43c175` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd2a04e60a4b7f6077ac2a87a8cfd81722b75b9cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd5ac4d66bc75e64f9ef5d687f6557988b53b080e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd69769fa07c710c7b5b4c7f7f9189dbfd325976d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe35e720202f5313775831d62b09dbe3f113aa1db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe97ea901d034ba2e018155264f77c417ce7717f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeead9cf3d52492a30b262c4e985b1d3adb87b834` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf342f3a80fdc9b48713d58fe97e17f5cc764ee62` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ChainSecurity - Augur Core v1.pdf](https://github.com/AugurProject/augur-audits/blob/master/augur-core/ChainSecurity%20-%20Augur%20Core%20v1.pdf) | ChainSecurity | Audit | 2017-12 | stale | Direct | contract_name | 2 | n/a |
| [LeastAuthority - Augur Core v1.pdf](https://github.com/AugurProject/augur-audits/blob/master/augur-core/LeastAuthority%20-%20Augur%20Core%20v1.pdf) | LeastAuthority | Audit | 2017-12 | stale | Direct | contract_name | 3 | n/a |
| [Zeppelin - Augur Core v3.1.pdf](https://github.com/AugurProject/augur-audits/blob/master/augur-core/Zeppelin%20-%20Augur%20Core%20v3.1.pdf) | Zeppelin | Audit | 2018-03 | stale | Direct | contract_name | 4 | n/a |
| [Zeppelin - Augur Core v3.pdf](https://github.com/AugurProject/augur-audits/blob/master/augur-core/Zeppelin%20-%20Augur%20Core%20v3.pdf) | Zeppelin | Audit | 2018-03 | stale | Direct | contract_name | 4 | n/a |
| [keythereum-audit.md](https://github.com/AugurProject/augur-audits/blob/master/keythereum/keythereum-audit.md) | unknown | Audit | 2017-04 | stale | Direct | n/a | 0 | n/a |
| [Zeppelin Solutions - Serpent Compiler Audit v1.0.0.pdf](https://github.com/AugurProject/augur-audits/blob/master/serpent-compiler/Zeppelin%20Solutions%20-%20Serpent%20Compiler%20Audit%20v1.0.0.pdf) | Zeppelin Solutions | Audit | 2017-07 | stale | Direct | n/a | 0 | n/a |
| [Coinspect - Solidity Compiler Audit v1.0.pdf](https://github.com/AugurProject/augur-audits/blob/master/solidity-compiler/Coinspect%20-%20Solidity%20Compiler%20Audit%20v1.0.pdf) | Coinspect | Audit | 2017-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x221657776846890989a759ba2973e427dff5c9bb`](./contracts/ethereum-1/0x221657776846890989a759ba2973e427dff5c9bb/) | ReputationToken | token | $4,454,398.26 | Verified native implementation with $4,454,398.26 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75228dce4d82566d93068a8d5d49435216551599`](./contracts/ethereum-1/0x75228dce4d82566d93068a8d5d49435216551599/) | Augur | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2faf4460ff24799b4e999363f4060879f5006396`](./contracts/ethereum-1/0x2faf4460ff24799b4e999363f4060879f5006396/) | CaptureTheFlag | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b4af4a3295cf476a2b00736f7332f35bbee960e`](./contracts/ethereum-1/0x9b4af4a3295cf476a2b00736f7332f35bbee960e/) | Cash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6bff4f91016c2b4aac140b2d8d7317b36afe5ab`](./contracts/ethereum-1/0xa6bff4f91016c2b4aac140b2d8d7317b36afe5ab/) | CompleteSets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6da4e67755fb48e26af50915991f57665f66759c`](./contracts/ethereum-1/0x6da4e67755fb48e26af50915991f57665f66759c/) | Controlled | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3337164e91b9f05c87c7662c7ac684e8e0ff3e7`](./contracts/ethereum-1/0xb3337164e91b9f05c87c7662c7ac684e8e0ff3e7/) | Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f27b0598949dbf9e539bbd217f15bf3f5e97999`](./contracts/ethereum-1/0x7f27b0598949dbf9e539bbd217f15bf3f5e97999/) | CreateOrder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10b5589fc6922f5c27061ac79ad9a4af35e15806`](./contracts/ethereum-1/0x10b5589fc6922f5c27061ac79ad9a4af35e15806/) | Delegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x183614d40cee16bf6fcd9dff51556f398ec8d360`](./contracts/ethereum-1/0x183614d40cee16bf6fcd9dff51556f398ec8d360/) | DisputeCrowdsourcer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1be98680ff697390cbc4cdc414a1be8add733bf7`](./contracts/ethereum-1/0x1be98680ff697390cbc4cdc414a1be8add733bf7/) | DisputeCrowdsourcerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61935cbdd02287b511119ddb11aeb42f1593b7ef`](./contracts/ethereum-1/0x61935cbdd02287b511119ddb11aeb42f1593b7ef/) | Exchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb27f1db0a7e473304a5a06e54bdf035f671400c0`](./contracts/ethereum-1/0xb27f1db0a7e473304a5a06e54bdf035f671400c0/) | Exchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe0dfed99988fcc9bdfa1f4fb0084942e1be6e2de`](./contracts/ethereum-1/0xe0dfed99988fcc9bdfa1f4fb0084942e1be6e2de/) | FeeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe86a4beb10155a5bd7ebb430ce13438341e808a8`](./contracts/ethereum-1/0xe86a4beb10155a5bd7ebb430ce13438341e808a8/) | FeeTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56cc82bbb3049dc3366bf26061d09ed3fd061881`](./contracts/ethereum-1/0x56cc82bbb3049dc3366bf26061d09ed3fd061881/) | FeeWindow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b4140771615b25f22a4bf52f77e35cdccc5b663`](./contracts/ethereum-1/0x5b4140771615b25f22a4bf52f77e35cdccc5b663/) | FeeWindowFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39c230f89981274177e79708c921582bd4bd0303`](./contracts/ethereum-1/0x39c230f89981274177e79708c921582bd4bd0303/) | FillOrder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x132a04f3f6196b499a7ed512c15e002d5dcefa9a`](./contracts/ethereum-1/0x132a04f3f6196b499a7ed512c15e002d5dcefa9a/) | Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fa2b609c19edf731ec33f54f54602a92dfcde6d`](./contracts/ethereum-1/0x4fa2b609c19edf731ec33f54f54602a92dfcde6d/) | InitialReporter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbca52c29b535fd63bdc7ca35efa56116550f4c59`](./contracts/ethereum-1/0xbca52c29b535fd63bdc7ca35efa56116550f4c59/) | InitialReporterFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4dcb585b8c8c52c2d25d5a7c2672646bc24b3b66`](./contracts/ethereum-1/0x4dcb585b8c8c52c2d25d5a7c2672646bc24b3b66/) | Mailbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe33ca1ebb783343035b11a7e755c29c28b763540`](./contracts/ethereum-1/0xe33ca1ebb783343035b11a7e755c29c28b763540/) | MailboxFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x94c01429d67a275de013e457eff6e028e10763d9`](./contracts/ethereum-1/0x94c01429d67a275de013e457eff6e028e10763d9/) | Map | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67f53b749fe432274e3f53752a91da89ef86777e`](./contracts/ethereum-1/0x67f53b749fe432274e3f53752a91da89ef86777e/) | MapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x518530aca60154403012f17c7b8e26f88f7494ee`](./contracts/ethereum-1/0x518530aca60154403012f17c7b8e26f88f7494ee/) | MarketFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd0ba8692bc945efe0638313cab40ab8e4f83191a`](./contracts/ethereum-1/0xd0ba8692bc945efe0638313cab40ab8e4f83191a/) | Orders | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa97a3e2ac932bc7a9c65393ee2c0f9d2f7b2e692`](./contracts/ethereum-1/0xa97a3e2ac932bc7a9c65393ee2c0f9d2f7b2e692/) | OrdersFetcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67c6e83f247fa404708a09032475eda551e768fa`](./contracts/ethereum-1/0x67c6e83f247fa404708a09032475eda551e768fa/) | Penalizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fee0da3a35f612f88fb58d7028d14c7d99a3643`](./contracts/ethereum-1/0x8fee0da3a35f612f88fb58d7028d14c7d99a3643/) | ReputationTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a21d90745dfed999aa0b6e08d648855c5f14663`](./contracts/ethereum-1/0x2a21d90745dfed999aa0b6e08d648855c5f14663/) | ShareToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60a977354a6ba44310b2ee061bcf19632450e51d`](./contracts/ethereum-1/0x60a977354a6ba44310b2ee061bcf19632450e51d/) | ShareTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ae81a75aa2ea4647a31f099c239bc76433141ea`](./contracts/ethereum-1/0x5ae81a75aa2ea4647a31f099c239bc76433141ea/) | StakeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf50b17a7ca64447ae782dc6c4aabe992c37476c7`](./contracts/ethereum-1/0xf50b17a7ca64447ae782dc6c4aabe992c37476c7/) | TestPaymasterEverythingAccepted | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe9f0e0ce26874aafc1de658b99dbf391ea2fc527`](./contracts/ethereum-1/0xe9f0e0ce26874aafc1de658b99dbf391ea2fc527/) | Time | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cd32f92e3ea33d81d8cf60e20dddfdef4915667`](./contracts/ethereum-1/0x0cd32f92e3ea33d81d8cf60e20dddfdef4915667/) | Trade | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e130ec3b6fd96ac7db4076638bd5964ad9e0d13`](./contracts/ethereum-1/0x9e130ec3b6fd96ac7db4076638bd5964ad9e0d13/) | TradingEscapeHatch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe62e470c8fba49aea4e87779d536c5923d01bb95`](./contracts/ethereum-1/0xe62e470c8fba49aea4e87779d536c5923d01bb95/) | UniverseFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe0c69aefaa7611de493bce9525abf2a2c3c7fc4d`](./contracts/ethereum-1/0xe0c69aefaa7611de493bce9525abf2a2c3c7fc4d/) | WarpSync | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 44 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 55 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=13

Zero-match audit list:

- [2988] keythereum-audit.md
- [2989] Zeppelin Solutions - Serpent Compiler Audit v1.0.0.pdf
- [2990] Coinspect - Solidity Compiler Audit v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
