# Agentic Audit Brief: Hyperlane

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 18 (0 matched; 18 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Hyperlane (`hyperlane`)
- Website: [https://www.hyperlane.xyz/](https://www.hyperlane.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, arbitrum-sepolia, avalanche, avalanche-fuji, base, base-sepolia, berachain, bitlayer, blast, bob, boba, bsc, celo, ethereum, fraxtal, gnosis, hashkey, hyperliquid, ink, kaia, linea, lukso, manta-pacific, mantle, megaeth, metis, mode, monad, opbnb, optimism, optimism-sepolia, plasma, polygon, polygon-amoy, scroll, sei, sepolia, sonic, swellchain, unichain, x-layer, zksync-era, zora
- Contract surface: 218 unique implementations (218 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $95,364,597.33
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Hyperlane. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, arbitrum-sepolia, avalanche, avalanche-fuji, base, base-sepolia, berachain, bitlayer, blast, bob, boba, bsc, celo, ethereum, fraxtal, gnosis, hashkey, hyperliquid, ink, kaia, linea, lukso, manta-pacific, mantle, megaeth, metis, mode, monad, opbnb, optimism, optimism-sepolia, plasma, polygon, polygon-amoy, sei, sepolia, sonic, swellchain, unichain, x-layer, zksync-era. Structural roles: 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: layerzero (1), openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 127 contracts are derived from known codebases. 127 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x36fda966cffff8a9cdc814f546db0e6378bfef35`, chain 1)
- UnnamedContract (`0x48e6c30b97748d1e2e03bf3e9fbe3890ca5f8cca`, chain 1)
- UnnamedContract (`0xc005dc82818d67af737725bd4bf75435d065d239`, chain 1)
- UnnamedContract (`0xc00b94c115742f711a6f9ea90373c33e9b72a4a9`, chain 1)
- UnnamedContract (`0x36fda966cffff8a9cdc814f546db0e6378bfef35`, chain 10)
- UnnamedContract (`0x3e343d07d024e657ecf1f8ae8bb7a12f08652e75`, chain 10)
- UnnamedContract (`0x68ee9bec9b4dbb61f69d9d293ae26a5aacb2e28f`, chain 10)
- UnnamedContract (`0xd4c1905bb1d26bc93dac913e13cacc278cdcc80d`, chain 10)
- UnnamedContract (`0x062200d92df6bb7ba89ce4d6800110450f94784e`, chain 42)
- UnnamedContract (`0x2f2afae1139ce54fefc03593fee8ab2adf4a85a7`, chain 42)
- UnnamedContract (`0x4e55ada3ef1942049ea43e904eb01f4a0a9c39bd`, chain 42)
- UnnamedContract (`0x7e0956bfee5c4dead8ced283c934299998100362`, chain 42)
- UnnamedContract (`0x2971b9aec44be4eb673df1b88cdb57b96eefe8a4`, chain 56)
- UnnamedContract (`0x36fda966cffff8a9cdc814f546db0e6378bfef35`, chain 56)
- UnnamedContract (`0xf453b589f0166b90e050691eac281c01a8959897`, chain 56)
- UnnamedContract (`0xfdb9cd5f9daaa2e4474019405a328a88e7484f26`, chain 56)
- UnnamedContract (`0x2684c6f89e901987e1fdb7649dc5be0c57c61645`, chain 100)
- UnnamedContract (`0x36fda966cffff8a9cdc814f546db0e6378bfef35`, chain 100)
- UnnamedContract (`0xad09d78f4c6b9da2ae82b1d34107802d380bb74f`, chain 100)
- UnnamedContract (`0xef0adeb4103a7a1ace86371867202f2171126362`, chain 100)
- UnnamedContract (`0x3a464f746d23ab22155710f44db16dca53e0775e`, chain 130)
- UnnamedContract (`0x43320f6b410322bf5ca326a0deaaa6a2fc5a021b`, chain 130)
- UnnamedContract (`0x9eaac366bfd70430cfee6e70265fefff1cfc9e47`, chain 130)
- UnnamedContract (`0xbb88a31e4b709b645c06825c0e0b5cac906d97de`, chain 130)
- UnnamedContract (`0x36fda966cffff8a9cdc814f546db0e6378bfef35`, chain 137)
- UnnamedContract (`0x5d934f4e2f797775e53561bb72aca21ba36b96bb`, chain 137)
- UnnamedContract (`0x73fbd25c3e817dc4b4cd9d00eff6d83dcde2dff6`, chain 137)
- UnnamedContract (`0xd8b641feb587844854aec97544ccea426dff04a3`, chain 137)
- UnnamedContract (`0x284226f651eb5cbd696365bc27d333028fcc5d54`, chain 143)
- UnnamedContract (`0x3a464f746d23ab22155710f44db16dca53e0775e`, chain 143)
- UnnamedContract (`0x7947b7fe737b4bd1d3387153f32148974066e591`, chain 143)
- UnnamedContract (`0x8452363d5c78bf95538614441dc8b465e03a89ca`, chain 143)
- UnnamedContract (`0x3a464f746d23ab22155710f44db16dca53e0775e`, chain 146)
- UnnamedContract (`0x4ee9debb3046139661b51e17bdfd54fd63211de7`, chain 146)
- UnnamedContract (`0xdc1508844b99c606e16c2ae87f33c373edd4b0f6`, chain 146)
- UnnamedContract (`0xefad3f079048be2765b6bcfaa3e9d99e9a2c3df6`, chain 146)
- UnnamedContract (`0x3a867fcffec2b790970eebdc9023e75b0a172aa7`, chain 177)
- UnnamedContract (`0x5b7a808caa2c3f1378b07cdd46eb8cca52f67e3b`, chain 177)
- UnnamedContract (`0xd233433aec23f8382dad87d808f60557ea35399f`, chain 177)
- UnnamedContract (`0xd79a14ea21db52f130a57ea6e2af55949b00086e`, chain 177)
- UnnamedContract (`0x0054d19613f20dd72721a146ed408971a2cca9bd`, chain 196)
- UnnamedContract (`0x2f2afae1139ce54fefc03593fee8ab2adf4a85a7`, chain 196)
- UnnamedContract (`0x39d3c2cf646447ee302178edbe5a15e13b6f33ac`, chain 196)
- UnnamedContract (`0x4848d54987ffc732ad313827cdc25df2eedd79d8`, chain 196)
- UnnamedContract (`0x3a464f746d23ab22155710f44db16dca53e0775e`, chain 204)
- UnnamedContract (`0x76f2cc245882ceff209a61d75b9f0f1a3b7285fb`, chain 204)
- UnnamedContract (`0x8847a94861c299e6ad408923a604dee057bab5dc`, chain 204)
- UnnamedContract (`0xcdd89f19b2d00dcb9510bb3fbd5ececa761fe5ab`, chain 204)
- UnnamedContract (`0x2f9db5616fa3fad1ab06cb2c906830ba63d135e3`, chain 252)
- UnnamedContract (`0x62b7592c1b6d1e43f4630b8e37f4377097840c05`, chain 252)
- UnnamedContract (`0x8358d8291e3bedb04804975eea0fe9fe0fafb147`, chain 252)
- UnnamedContract (`0xd59a200ccec5b3b1bf544dd7439de452d718f594`, chain 252)
- UnnamedContract (`0x6bd0a2214797bc81e0b006f7b74d6221bcd8cb6e`, chain 324)
- UnnamedContract (`0x823500d69d77a52212dc93f8836e9c08581487ee`, chain 324)
- UnnamedContract (`0xd55078c54b0ceaa87ba5c3faeac89861c69f636d`, chain 324)
- UnnamedContract (`0x1cf975c9bf2df76c43a14405066007f8393142e9`, chain 999)
- UnnamedContract (`0x3862a9b1acd89245a59002c2a08658ec1d5690e3`, chain 999)
- UnnamedContract (`0x3a464f746d23ab22155710f44db16dca53e0775e`, chain 999)
- UnnamedContract (`0x4eb0d97b48711950ecb01871125c4523939c6fce`, chain 999)
- UnnamedContract (`0x2f2afae1139ce54fefc03593fee8ab2adf4a85a7`, chain 1329)
- UnnamedContract (`0xa70482d7359816809988ac4053d83f0c8c98d292`, chain 1329)
- UnnamedContract (`0xca1b69fa4c4a7c7fd839bc50867c589592bcfe49`, chain 1329)
- UnnamedContract (`0xdb670e1a1e312bf17425b08ce55bdf2cd8f8ed54`, chain 1329)
- UnnamedContract (`0x3a464f746d23ab22155710f44db16dca53e0775e`, chain 1923)
- UnnamedContract (`0x5c02157068a52cecfc98edb6115de6134ecb4764`, chain 1923)
- UnnamedContract (`0x95fb6ca1bbf441386b119ad097edcaca3b1c35b7`, chain 1923)
- UnnamedContract (`0xbc53dacd8c0ac0d2bac461479eaaf5519ecc8853`, chain 1923)
- UnnamedContract (`0x2ff6cf2651fec512d0618e33c9d1374aacd8b310`, chain 4326)
- UnnamedContract (`0xd233433aec23f8382dad87d808f60557ea35399f`, chain 4326)
- UnnamedContract (`0xe2ee936bea8e42671c400ac96de198e06f2ba2a6`, chain 4326)
- UnnamedContract (`0xf9ae87e9ace51aa16aed25ca38f17d258aecb73f`, chain 4326)
- UnnamedContract (`0x31e81982e98f5d321f839e82789b628aedb15751`, chain 5000)
- UnnamedContract (`0x398633d19f4371e1db5a8efe90468eb70b1176aa`, chain 5000)
- UnnamedContract (`0x5332d1ac0a626d265298c14ff681c0a8d28db86d`, chain 5000)
- UnnamedContract (`0x62b7592c1b6d1e43f4630b8e37f4377097840c05`, chain 5000)
- UnnamedContract (`0x3a867fcffec2b790970eebdc9023e75b0a172aa7`, chain 8217)
- UnnamedContract (`0x6963480b05eb58f4d624b014ab92e9ad4d21df6d`, chain 8217)
- UnnamedContract (`0xcda455dfd9c938451bfafc6ff0d497c8c0469c96`, chain 8217)
- UnnamedContract (`0xcfe6dbad47c3b8cf4fecbb28b53df4617f8538a7`, chain 8217)
- UnnamedContract (`0x19dc38aeae620380430c200a6e990d5af5480117`, chain 8453)
- UnnamedContract (`0x44647cd983e80558793780f9a0c7c2aa9f384d07`, chain 8453)
- UnnamedContract (`0xb7c9307fe90b9ab093c6d3edee3259f5378d5f03`, chain 8453)
- UnnamedContract (`0xea87ae93fa0019a82a727bfd3ebd1cfca8f64f1d`, chain 8453)
- UnnamedContract (`0x3a464f746d23ab22155710f44db16dca53e0775e`, chain 9745)
- UnnamedContract (`0x6d48135b7584e8bf828b6e23110bc0da4252704f`, chain 9745)
- UnnamedContract (`0x9fe454aa2b01fc7a2a777ae561bc58ce560cd5a9`, chain 9745)
- UnnamedContract (`0xa7d42b7a7603beb87f84a1f3d5c97a033dfd2cc9`, chain 9745)
- UnnamedContract (`0x12582c7b0f43c6a667cbaa7fa8b112f7fb1e69f0`, chain 34443)
- UnnamedContract (`0x2f2afae1139ce54fefc03593fee8ab2adf4a85a7`, chain 34443)
- UnnamedContract (`0x860ec58b115930ecbc53edb8585c1b16afff3c50`, chain 34443)
- UnnamedContract (`0xe2ee936bea8e42671c400ac96de198e06f2ba2a6`, chain 34443)
- UnnamedContract (`0x36fda966cffff8a9cdc814f546db0e6378bfef35`, chain 42161)
- UnnamedContract (`0x748040afb89b8fdbb992799808215419d36a0930`, chain 42161)
- UnnamedContract (`0x979ca5202784112f4738403dbec5d0f3b9daabb9`, chain 42161)
- UnnamedContract (`0xf90a3d406c6f8321fe118861a357f4d7107760d7`, chain 42161)
- UnnamedContract (`0x04db778f05854f26e67e0a66b740bbbe9070d366`, chain 42220)
- UnnamedContract (`0x1ea7ac243c398671194b7e2c51d76d1a1d312953`, chain 42220)
- UnnamedContract (`0x36fda966cffff8a9cdc814f546db0e6378bfef35`, chain 42220)
- UnnamedContract (`0x50da3b3907a08a24fe4999f4dcf337e8dc7954bb`, chain 42220)
- UnnamedContract (`0x2c58687fffcd5b7043a5bf256b196216a98a6587`, chain 43114)
- UnnamedContract (`0x36fda966cffff8a9cdc814f546db0e6378bfef35`, chain 43114)
- UnnamedContract (`0x84eea61d679f42d92145fa052c89900cbacce95a`, chain 43114)
- UnnamedContract (`0xff06afcaabaddd1fb08371f9cca15d73d51febd6`, chain 43114)
- UnnamedContract (`0x55ba00f1bac2a47e0a73584d7c900087642f9ae3`, chain 57073)
- UnnamedContract (`0x65dcf8f6b3f6a0ecedf3d0bdcb036aea47a1d615`, chain 57073)
- UnnamedContract (`0x7f50c5776722630a0024fae05fde8b47571d7b39`, chain 57073)
- UnnamedContract (`0xa8a311b69f688c1d9928259d872c31ca0d473642`, chain 57073)
- UnnamedContract (`0x273bc6b01d9e88c064b6e5e409bdf998246aef42`, chain 59144)
- UnnamedContract (`0xbfc8dcef3efabc064f5afff4ac875a82d2dc9e55`, chain 59144)
- UnnamedContract (`0xc077a0cc408173349b1c9870c667b40fe3c01dd7`, chain 59144)
- UnnamedContract (`0x781be492f1232e66990d83a9d3ac3ec26f56dafb`, chain 60808)
- UnnamedContract (`0x8358d8291e3bedb04804975eea0fe9fe0fafb147`, chain 60808)
- UnnamedContract (`0xa6f0a37dfde9c2c8f46f010989c47d9edb3a9fa8`, chain 60808)
- UnnamedContract (`0xe03dad16074bc5eea9a9311257bf02eb0b6aaa2b`, chain 60808)
- UnnamedContract (`0x7f50c5776722630a0024fae05fde8b47571d7b39`, chain 80094)
- UnnamedContract (`0x82540c4c1c6956fc4815e583ddc6d88a782e0f3e`, chain 80094)
- UnnamedContract (`0x84fcd67d2b723416e2afdd61484bd19bd9c32f27`, chain 80094)
- UnnamedContract (`0x8f23872dab3b166cef411eeb6c391ff6ce419532`, chain 80094)
- UnnamedContract (`0x17e216fbb22df4ef8a6640ae9cb147c92710ac84`, chain 81457)
- UnnamedContract (`0x3a867fcffec2b790970eebdc9023e75b0a172aa7`, chain 81457)
- UnnamedContract (`0x7d58d7f052792e54eeee91b2467c2a17a163227e`, chain 81457)
- UnnamedContract (`0xc9b8ea6230d6687a4b13fd3c0b8f0ec607b26465`, chain 81457)
- UnnamedContract (`0x3a464f746d23ab22155710f44db16dca53e0775e`, chain 200901)
- UnnamedContract (`0x441a01fca2ed731c0fc4633998332f9fedb17575`, chain 200901)
- UnnamedContract (`0xbb22547d1dc681fe925f568f637ff67ac06c20fc`, chain 200901)
- UnnamedContract (`0xe0208ddbe76c703eb3cd758a76e2c8c1ff9472fd`, chain 200901)
- TransparentUpgradeableProxy (`0x02d16bc51af6bfd153d67ca61754cf912e82c4d9`, chain 59144)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 127/152 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 127 own, 18 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 73 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Confirmed-live implementations: 127 of 218 unique; 91 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/67
- Verified + Unaudited implementations: 67
- Verified by bytecode match: 0
- Unverified implementations: 151
- Unique implementations: 218
- Raw deployments: 218
- Audits discovered: 17 (17 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 10 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (67)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AbacusConnectionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02d16bc51af6bfd153d67ca61754cf912e82c4d9` | ⚠️ Unaudited |
| AmountRoutingHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x08b446e5915519eda9aa0a19e4480b75de9f5dee` | ⚠️ Unaudited |
| AmountRoutingIsm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x016529e4b4fbc33a742834bbb478e897afa3c4a9` | ⚠️ Unaudited |
| CCIPHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x00acc2c04ef207a90425b0602234a760f25da583` | ⚠️ Unaudited |
| CCIPIsm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0e389a95ba8717a2dd38b85c4c29753d98b46659` | ⚠️ Unaudited |
| CircleBridgeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0bff79f395a73817df1d3c80d78bb3c57fbbc2ed` | ⚠️ Unaudited |
| DefaultFallbackRoutingIsm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00cff6a1e5450746158b8349bb99fa4803cbb476` | ⚠️ Unaudited |
| DefaultHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x004640d86f894df0147c21f107318138bb214bd3` | ⚠️ Unaudited |
| DistributionPoolProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x0d63128d887159d63de29497dfa45afc7c699ae4` | ⚠️ Unaudited |
| DomainRoutingHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00acc2c04ef207a90425b0602234a760f25da583` | ⚠️ Unaudited |
| DomainRoutingIsmFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b48a744698ba8dfa514742dfeb6728f52fd66f7` | ⚠️ Unaudited |
| ECDSAStakeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x272cf0bb70d3b4f79414e0823b426d2eafd48910` | ⚠️ Unaudited |
| EverclearEthBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02e058b48d6883a23a3f21f3d3e7fcb345c51260` | ⚠️ Unaudited |
| FallbackDomainRoutingHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x01e92de2e9c1fee3377eed4fac05ddacb4f6c0fd` | ⚠️ Unaudited |
| HelloWorld | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x00ecd1e858c9809df78f0843697265d93d927eaf` | ⚠️ Unaudited |
| HypERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x003fdf558a2166508911ba11f74d0c55c5c1147e` | ⚠️ Unaudited |
| HypERC20Collateral | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x01348f639d6e418a5a9673c08c0ddf6eccb80f37` | ⚠️ Unaudited |
| HypERC4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04b833d386e56ca0b899c1948e091bf0aff1a1dc` | ⚠️ Unaudited |
| HypERC721URICollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ff0fca64a89b5d8a26b6da6011fe5a8b9ba4f62` | ⚠️ Unaudited |
| HypERC721URIStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x426d6a6e1b55c0b6a83abd8ca5bee29357132b7d` | ⚠️ Unaudited |
| HyperlaneArbiter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088470910056221862d18ff2e65ffaec96ec6da4` | ⚠️ Unaudited |
| HyperlaneServiceManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x296af86bff91b23cf980f6a443bc15a3a5d30682` | ⚠️ Unaudited |
| HyperlaneTribunal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x339b234fdba8c5c77c43aa01a6ad38071b7984f1` | ⚠️ Unaudited |
| HyperToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ea7ae459a2d07711716080a1e42b8069f9d48fe` | ⚠️ Unaudited |
| HypMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36d2246e2299b3c50bb1fd9ba996e0c4135bd0c1` | ⚠️ Unaudited |
| HypNative | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x05a6740f4adbf55adb307868941e7a93700ddba0` | ⚠️ Unaudited |
| HypXERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x005c5b1fe75c66363d1d12cd283d80f60d31a5bc` | ⚠️ Unaudited |
| HypXERC20Lockbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x10ed03431193b04b3fa7c3e1f47bf853466aa053` | ⚠️ Unaudited |
| InboxValidatorManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x086ef95a2f74582ee30e7d698518a872fb18301f` | ⚠️ Unaudited |
| InterchainAccountIsm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0389facac114023c123e22f3e54394944cabcb48` | ⚠️ Unaudited |
| InterchainAccountRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x03d6cc17d45e9ea27ed757a8214d1f07f7d901ad` | ⚠️ Unaudited |
| LinearFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x01d89d803396e5085497bf337c15f8c89801471a` | ⚠️ Unaudited |
| LiquidityLayerRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x75fe1c9cf9cd1f49bd655f4a173fe5ca7c22d8e1` | ⚠️ Unaudited |
| ManagedXERC20Lockbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x07e437d73e9e43ceece6ea14085b26159e3f7f31` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a4e396843d7c0f05dd370603bd0a7c0269386bf` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x04c0ad606e14eaa099bb75fa1aad5f96afce1eeb` | ⚠️ Unaudited |
| MerkleTreeHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x005c5b1fe75c66363d1d12cd283d80f60d31a5bc` | ⚠️ Unaudited |
| MultisigIsm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32b92bd3e5045b67fdd8dbb7a58d25980836d04c` | ⚠️ Unaudited |
| Network | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d92e7d3a9aca6dc2e72399d88d4e131be5cd4de` | ⚠️ Unaudited |
| Outbox | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x0761b0827849abbf7b0cc09ce14e1c93d87f5004` | ⚠️ Unaudited |
| OutboxValidatorManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1ab68dc4f7b6cfcd00218d4b761b7f3b5a724555` | ⚠️ Unaudited |
| PausableHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x05318b5dba51490abe60bb6c29a8169a1a2546da` | ⚠️ Unaudited |
| PausableIsm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00e4017ec6177184f10f1727f6f5dee47c6c11ea` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0007b3c5765c2e8a115e07607ab9fa2852ab0627` | ⚠️ Unaudited |
| RoutingFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa24205d80a273927a1a3e1c12aa5de9f91239a01` | ⚠️ Unaudited |
| StagingToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x17736d5b4f57ecb6c6dba278873179961240f78d` | ⚠️ Unaudited |
| StaticAggregationHookFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x0761b0827849abbf7b0cc09ce14e1c93d87f5004` | ⚠️ Unaudited |
| StaticAggregationIsmFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x070d4f61b05ed9e20c9194f29df073f2110705fc` | ⚠️ Unaudited |
| StaticMerkleRootWeightedMultisigIsmFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x0a5d831c09204888b8791bf4e9c49445ad54f2c5` | ⚠️ Unaudited |
| StaticMessageIdMultisigIsmFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x113d00bab9efe06d61803837f07881a10a9fb189` | ⚠️ Unaudited |
| StaticMessageIdWeightedMultisigIsmFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x17736d5b4f57ecb6c6dba278873179961240f78d` | ⚠️ Unaudited |
| StaticMultisigIsmFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x21581de0cb0ce91e87b9d5124543c75fa01ed9cc` | ⚠️ Unaudited |
| StaticProtocolFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b05bf30f6247a90006c5837ea63c7905d79e6d8` | ⚠️ Unaudited |
| StorageGasOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03b2607ef8fd4ebc989115a0230fe7c7ea03c5af` | ⚠️ Unaudited |
| TestRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0071740bf129b05c4684abfbbed248d80971cce2` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x004640d86f894df0147c21f107318138bb214bd3` | ⚠️ Unaudited |
| TokenBridgeCctp | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x004879ead3c39fab28d396319932acd657c7f867` | ⚠️ Unaudited |
| TokenBridgeCctpV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x01bfbc80b32469c36db4c7fc564e75475dfc278c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | `0x018ee58c3668e5971e0f6e0ec7f693a3d1b39beb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | linea | unit-242870 | `0x02d16bc51af6bfd153d67ca61754cf912e82c4d9` | ⚠️ Unaudited |
| TrustedRelayerIsm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0cde890ec71d8c37485c91c3bf0cea647e26253b` | ⚠️ Unaudited |
| UpgradeBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d63128d887159d63de29497dfa45afc7c699ae4` | ⚠️ Unaudited |
| UpgradeBeaconController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02d16bc51af6bfd153d67ca61754cf912e82c4d9` | ⚠️ Unaudited |
| UpgradeBeaconProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x02d16bc51af6bfd153d67ca61754cf912e82c4d9` | ⚠️ Unaudited |
| UpgradeBeaconProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x02d16bc51af6bfd153d67ca61754cf912e82c4d9` | ⚠️ Unaudited |
| ValidatorAnnounce | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x062200d92df6bb7ba89ce4d6800110450f94784e` | ⚠️ Unaudited |
| XERC20Lockbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x271f31773706f06328aa75fa721acd811ded3858` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (151)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242716 | `0x36fda966cffff8a9cdc814f546db0e6378bfef35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242718 | `0x48e6c30b97748d1e2e03bf3e9fbe3890ca5f8cca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242722 | `0xc005dc82818d67af737725bd4bf75435d065d239` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242723 | `0xc00b94c115742f711a6f9ea90373c33e9b72a4a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-242724 | `0x36fda966cffff8a9cdc814f546db0e6378bfef35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-242725 | `0x3e343d07d024e657ecf1f8ae8bb7a12f08652e75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-242726 | `0x68ee9bec9b4dbb61f69d9d293ae26a5aacb2e28f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-242727 | `0xd4c1905bb1d26bc93dac913e13cacc278cdcc80d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lukso | unit-242789 | `0x062200d92df6bb7ba89ce4d6800110450f94784e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lukso | unit-242790 | `0x2f2afae1139ce54fefc03593fee8ab2adf4a85a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lukso | unit-242791 | `0x4e55ada3ef1942049ea43e904eb01f4a0a9c39bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lukso | unit-242792 | `0x7e0956bfee5c4dead8ced283c934299998100362` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-242825 | `0x2971b9aec44be4eb673df1b88cdb57b96eefe8a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-242826 | `0x36fda966cffff8a9cdc814f546db0e6378bfef35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-242827 | `0xf453b589f0166b90e050691eac281c01a8959897` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-242828 | `0xfdb9cd5f9daaa2e4474019405a328a88e7484f26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-242728 | `0x2684c6f89e901987e1fdb7649dc5be0c57c61645` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-242729 | `0x36fda966cffff8a9cdc814f546db0e6378bfef35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-242730 | `0xad09d78f4c6b9da2ae82b1d34107802d380bb74f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-242731 | `0xef0adeb4103a7a1ace86371867202f2171126362` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-242738 | `0x3a464f746d23ab22155710f44db16dca53e0775e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-242739 | `0x43320f6b410322bf5ca326a0deaaa6a2fc5a021b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-242740 | `0x9eaac366bfd70430cfee6e70265fefff1cfc9e47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-242741 | `0xbb88a31e4b709b645c06825c0e0b5cac906d97de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-242746 | `0x36fda966cffff8a9cdc814f546db0e6378bfef35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-242747 | `0x5d934f4e2f797775e53561bb72aca21ba36b96bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-242748 | `0x73fbd25c3e817dc4b4cd9d00eff6d83dcde2dff6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-242749 | `0xd8b641feb587844854aec97544ccea426dff04a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-242750 | `0x284226f651eb5cbd696365bc27d333028fcc5d54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-242751 | `0x3a464f746d23ab22155710f44db16dca53e0775e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-242752 | `0x7947b7fe737b4bd1d3387153f32148974066e591` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-242753 | `0x8452363d5c78bf95538614441dc8b465e03a89ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-242754 | `0x3a464f746d23ab22155710f44db16dca53e0775e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-242755 | `0x4ee9debb3046139661b51e17bdfd54fd63211de7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-242756 | `0xdc1508844b99c606e16c2ae87f33c373edd4b0f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-242757 | `0xefad3f079048be2765b6bcfaa3e9d99e9a2c3df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x149db7afd694722747035d5aec7007ccb6f8f112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x620ffeeb3359649dbe48278d3cffd00cc36976ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hashkey | unit-242758 | `0x3a867fcffec2b790970eebdc9023e75b0a172aa7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hashkey | unit-242759 | `0x5b7a808caa2c3f1378b07cdd46eb8cca52f67e3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hashkey | unit-242760 | `0xd233433aec23f8382dad87d808f60557ea35399f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hashkey | unit-242761 | `0xd79a14ea21db52f130a57ea6e2af55949b00086e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-242766 | `0x0054d19613f20dd72721a146ed408971a2cca9bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-242767 | `0x2f2afae1139ce54fefc03593fee8ab2adf4a85a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-242768 | `0x39d3c2cf646447ee302178edbe5a15e13b6f33ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-242769 | `0x4848d54987ffc732ad313827cdc25df2eedd79d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | opbnb | unit-242774 | `0x3a464f746d23ab22155710f44db16dca53e0775e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | opbnb | unit-242775 | `0x76f2cc245882ceff209a61d75b9f0f1a3b7285fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | opbnb | unit-242776 | `0x8847a94861c299e6ad408923a604dee057bab5dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | opbnb | unit-242777 | `0xcdd89f19b2d00dcb9510bb3fbd5ececa761fe5ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-242778 | `0x2f9db5616fa3fad1ab06cb2c906830ba63d135e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-242779 | `0x62b7592c1b6d1e43f4630b8e37f4377097840c05` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-242780 | `0x8358d8291e3bedb04804975eea0fe9fe0fafb147` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-242781 | `0xd59a200ccec5b3b1bf544dd7439de452d718f594` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | boba | n/a | `0x625324ebe9fe13fedd8ac3761f153b90aa35b404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | boba | n/a | `0x9eaac366bfd70430cfee6e70265fefff1cfc9e47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | boba | n/a | `0xbb88a31e4b709b645c06825c0e0b5cac906d97de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-242782 | `0x6bd0a2214797bc81e0b006f7b74d6221bcd8cb6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-242783 | `0x823500d69d77a52212dc93f8836e9c08581487ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-242784 | `0xd55078c54b0ceaa87ba5c3faeac89861c69f636d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-242866 | `0x1cf975c9bf2df76c43a14405066007f8393142e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-242867 | `0x3862a9b1acd89245a59002c2a08658ec1d5690e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-242868 | `0x3a464f746d23ab22155710f44db16dca53e0775e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-242869 | `0x4eb0d97b48711950ecb01871125c4523939c6fce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x04bd82ba84a165be5d555549ebb9890bb327336e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2c61cda929e4e2174cb10cd8e2724a9cead62e67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-242742 | `0x2f2afae1139ce54fefc03593fee8ab2adf4a85a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-242743 | `0xa70482d7359816809988ac4053d83f0c8c98d292` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-242744 | `0xca1b69fa4c4a7c7fd839bc50867c589592bcfe49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-242745 | `0xdb670e1a1e312bf17425b08ce55bdf2cd8f8ed54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | swellchain | unit-242762 | `0x3a464f746d23ab22155710f44db16dca53e0775e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | swellchain | unit-242763 | `0x5c02157068a52cecfc98edb6115de6134ecb4764` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | swellchain | unit-242764 | `0x95fb6ca1bbf441386b119ad097edcaca3b1c35b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | swellchain | unit-242765 | `0xbc53dacd8c0ac0d2bac461479eaaf5519ecc8853` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | megaeth | unit-242817 | `0x2ff6cf2651fec512d0618e33c9d1374aacd8b310` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | megaeth | unit-242818 | `0xd233433aec23f8382dad87d808f60557ea35399f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | megaeth | unit-242819 | `0xe2ee936bea8e42671c400ac96de198e06f2ba2a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | megaeth | unit-242820 | `0xf9ae87e9ace51aa16aed25ca38f17d258aecb73f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-242821 | `0x31e81982e98f5d321f839e82789b628aedb15751` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-242822 | `0x398633d19f4371e1db5a8efe90468eb70b1176aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-242823 | `0x5332d1ac0a626d265298c14ff681c0a8d28db86d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-242824 | `0x62b7592c1b6d1e43f4630b8e37f4377097840c05` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-242851 | `0x3a867fcffec2b790970eebdc9023e75b0a172aa7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-242852 | `0x6963480b05eb58f4d624b014ab92e9ad4d21df6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-242853 | `0xcda455dfd9c938451bfafc6ff0d497c8c0469c96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-242854 | `0xcfe6dbad47c3b8cf4fecbb28b53df4617f8538a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-242855 | `0x19dc38aeae620380430c200a6e990d5af5480117` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-242856 | `0x44647cd983e80558793780f9a0c7c2aa9f384d07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-242857 | `0xb7c9307fe90b9ab093c6d3edee3259f5378d5f03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-242858 | `0xea87ae93fa0019a82a727bfd3ebd1cfca8f64f1d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-242862 | `0x3a464f746d23ab22155710f44db16dca53e0775e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-242863 | `0x6d48135b7584e8bf828b6e23110bc0da4252704f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-242864 | `0x9fe454aa2b01fc7a2a777ae561bc58ce560cd5a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-242865 | `0xa7d42b7a7603beb87f84a1f3d5c97a033dfd2cc9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-242785 | `0x12582c7b0f43c6a667cbaa7fa8b112f7fb1e69f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-242786 | `0x2f2afae1139ce54fefc03593fee8ab2adf4a85a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-242787 | `0x860ec58b115930ecbc53edb8585c1b16afff3c50` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-242788 | `0xe2ee936bea8e42671c400ac96de198e06f2ba2a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-242793 | `0x36fda966cffff8a9cdc814f546db0e6378bfef35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-242794 | `0x748040afb89b8fdbb992799808215419d36a0930` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-242796 | `0x979ca5202784112f4738403dbec5d0f3b9daabb9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-242798 | `0xf90a3d406c6f8321fe118861a357f4d7107760d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-242803 | `0x04db778f05854f26e67e0a66b740bbbe9070d366` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-242805 | `0x1ea7ac243c398671194b7e2c51d76d1a1d312953` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-242806 | `0x36fda966cffff8a9cdc814f546db0e6378bfef35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-242807 | `0x50da3b3907a08a24fe4999f4dcf337e8dc7954bb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-242810 | `0x44a7e1d76fd8afa244ade7278336e3d5c658d398` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-242811 | `0x5b6cff85442b851a8e6eabd2a4e4507b5135b3b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-242812 | `0x9ff6ac3daf63103620bbf76136ea1aff43c2f612` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242813 | `0x2c58687fffcd5b7043a5bf256b196216a98a6587` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242814 | `0x36fda966cffff8a9cdc814f546db0e6378bfef35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242815 | `0x84eea61d679f42d92145fa052c89900cbacce95a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242816 | `0xff06afcaabaddd1fb08371f9cca15d73d51febd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-242829 | `0x55ba00f1bac2a47e0a73584d7c900087642f9ae3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-242830 | `0x65dcf8f6b3f6a0ecedf3d0bdcb036aea47a1d615` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-242831 | `0x7f50c5776722630a0024fae05fde8b47571d7b39` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-242832 | `0xa8a311b69f688c1d9928259d872c31ca0d473642` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-242833 | `0x273bc6b01d9e88c064b6e5e409bdf998246aef42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-242834 | `0xbfc8dcef3efabc064f5afff4ac875a82d2dc9e55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-242835 | `0xc077a0cc408173349b1c9870c667b40fe3c01dd7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-242836 | `0x781be492f1232e66990d83a9d3ac3ec26f56dafb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-242837 | `0x8358d8291e3bedb04804975eea0fe9fe0fafb147` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-242838 | `0xa6f0a37dfde9c2c8f46f010989c47d9edb3a9fa8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-242839 | `0xe03dad16074bc5eea9a9311257bf02eb0b6aaa2b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-242840 | `0x04438ef7622f5412f82915f59cad4f704c61ea48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-242841 | `0x54148470292c24345fb828b003461a9444414517` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-242842 | `0xddf4c3e791cacafd26d7fb275549739b38ae6e75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-242843 | `0x7f50c5776722630a0024fae05fde8b47571d7b39` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-242844 | `0x82540c4c1c6956fc4815e583ddc6d88a782e0f3e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-242845 | `0x84fcd67d2b723416e2afdd61484bd19bd9c32f27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-242846 | `0x8f23872dab3b166cef411eeb6c391ff6ce419532` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-242847 | `0x17e216fbb22df4ef8a6640ae9cb147c92710ac84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-242848 | `0x3a867fcffec2b790970eebdc9023e75b0a172aa7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-242849 | `0x7d58d7f052792e54eeee91b2467c2a17a163227e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-242850 | `0xc9b8ea6230d6687a4b13fd3c0b8f0ec607b26465` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-242859 | `0x6966b0e55883d49bfb24539356a2f8a673e02039` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-242860 | `0x783c4a0bb6663359281ad4a637d5af68f83ae213` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-242861 | `0x86fb9f1c124fb20ff130c41a79a432f770f67afd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-242770 | `0x3a464f746d23ab22155710f44db16dca53e0775e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-242771 | `0x441a01fca2ed731c0fc4633998332f9fedb17575` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-242772 | `0xbb22547d1dc681fe925f568f637ff67ac06c20fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-242773 | `0xe0208ddbe76c703eb3cd758a76e2c8c1ff9472fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-242800 | `0x598face78a4302f11e3de0bee1894da0b2cb71f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-242801 | `0x6c13643b3927c57db92c790e4e3e7ee81e13f78c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-242802 | `0xad34a66bf6db18e858f6b686557075568c6e031c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-242732 | `0x4917a9746a7b6e0a57159ccb7f5a6744247f2d0d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-242733 | `0xedc1a3edf87187085a3abb7a9a65e1e7ae370c07` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-242734 | `0xffaef09b3cd11d9b20d1a19becca54eec2884766` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-242735 | `0x6966b0e55883d49bfb24539356a2f8a673e02039` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-242736 | `0x783c4a0bb6663359281ad4a637d5af68f83ae213` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-242737 | `0x86fb9f1c124fb20ff130c41a79a432f770f67afd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [[Original]() (also discovered via alternate URL)](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/ChainLight_Hyperlane_2Q_2025_Security_Audit_v1.0.pdf) | ChainLight | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [[Original]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/ChainLight_Hyperlane_HyperToken_Security_Audit_v1.0.pdf) | ChainLight | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [[Original]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/ChainLight_Hyperlane_PR_5752_5757_Security_Audit_v1.0.pdf) | ChainLight | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [[Original]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/Offbeat_Security_Hyperlane_Compound_Staker_Rewards.pdf) | Offbeat Security | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [[Original]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/ChainSecurity_Hyperlane_Superchain_USDT_audit_draft.pdf) | ChainSecurity | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [[Original]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/ChainLight_Hyperlane_CCIP_Warp_Route_Security_Audit_v1.1.pdf) | ChainLight | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [[Mirror]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/chainlight-v3.1-protocol-audit.pdf) | ChainLight | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 26 | high |
| [[Original]()](https://github.com/trailofbits/publications/blob/master/reviews/2023-09-hyperlane-securityreview.pdf) | Trail of Bits | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [[Mirror]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/hyperlane-v3-protocol-audit.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [[Mirror]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/hyperlane-v2-protocol-audit.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 41 | high |
| [[Mirror]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/hyperlane-v1-protocol-audit.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 33 | high |
| [[Original]()](https://github.com/sec3-service/reports/blob/master/reports/sec3_hyperlane-sealevel.pdf) | Sec3 | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [[Mirror]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/sealevel-hyperlane-audit.pdf) | unknown | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [[Original]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/sealeval-audit-hyperlane-20250327.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [[Original]()](https://github.com/oak-security/audit-reports/blob/main/Hyperlane/2024-02-13%20Audit%20Report%20-%20cw-hyperlane%20v1.0.pdf) | Oak Security | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [[Mirror]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/cw-hyperlane-audit.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [[Original]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/starknet-hyperlane-audit-draft.pdf) | unknown | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 22 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20522] [Original]() — no match: Extracted contract names from findings and scope section. Audit date from revision history.
- [20523] [Original]() — no match: The audit report focuses on HyperToken, which extends HypERC20 and inherits ERC20PermitUpgradeable. The scope section lists the target as 'HyperToken Security Audit' and references a Git repository. The finding discusses HyperToken.initialize() and the missing __ERC20Permit_init call.
- [20524] [Original]() — no match: The scope section lists PRs #5752 and #5757 but does not enumerate specific contract files. Only HypERC4626 is explicitly named in the findings.
- [20525] [Original]() — no match: Only one contract in scope: CompoundStakerRewards.sol
- [20526] [Original]() — no match: Scope explicitly lists four contracts in src/xerc20/ folder. Audit date from cover page.
- [20527] [Original]() — no match: Extracted contract names from findings and scope section. Audit date from revision history (Feb 20, 2025).
- [20528] [Mirror]() — no match: Scope section on page 4 lists target as 'Hyperlane Security Audit' with git repository and commit hash. Contract names extracted from findings and file paths referenced in the report.
- [20529] [Original]() — no match: Extracted contract names from the report text, including those mentioned in scope, findings, and code quality recommendations. The audit date is from the cover page.
- [20530] [Mirror]() — no match: Extracted contract names from the report text, including those mentioned in scope, findings, and code quality recommendations. The audit date is from the cover page: 'November 6, 2023'.
- [20531] [Mirror]() — no match: Extracted contract names from the scope section listing files in both initial and second review. The audit date is from the cover page: 'Date: Apr 03, 2023'.
- [20532] [Mirror]() — no match: All contracts listed in the scope table (Table 1) are extracted. The audit date is from the cover page: 'September 2022' and the report version date '6 September 2022'.
- [20533] [Original]() — no match: Scope explicitly lists programs and libraries under rust/sealevel. Date from report header.
- [20534] [Mirror]() — no match: Extracted 14 contract/program names from the scope section of the report. The audit date is explicitly stated on the cover page.
- [20535] [Original]() — no match: Extracted contract names from the scope section listing files. The audit date is the end date of the audit period: February 6 - February 27, 2025.
- [20536] [Original]() — no match: Extracted contract names from scope description and detailed findings. Audit date from cover page.
- [20537] [Mirror]() — no match: Extracted contract names from scope section and detailed findings. Audit date from cover page.
- [20538] [Original]() — no match: Extracted 22 contract names from the scope table on page 10. Audit date is July 9, 2024 from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| [Original]() | InterchainAccountRouter | unmatched — not counted | — | Mentioned in findings #1, #2, #3, #7 as audited contract | no |
| [Original]() | OwnableMulticall | unmatched — not counted | — | Mentioned in findings #1, #6, #7 as audited contract | no |
| [Original]() | TokenBridge | unmatched — not counted | — | Mentioned in finding #4 as audited contract | no |
| [Original]() | HypERC20Collateral | unmatched — not counted | — | Mentioned in finding #4 as parent contract of TokenBridge | no |
| [Original]() | TokenBridgeCctp | unmatched — not counted | — | Mentioned in finding #5 as audited ISM | no |
| [Original]() | CommitmentReadIsm | unmatched — not counted | — | Mentioned in finding #5 as audited ISM | no |
| [Original]() | OPL2ToL1CcipReadIsm | unmatched — not counted | — | Mentioned in findings #5, #7 as audited ISM | no |
| [Original]() | OpL1NativeTokenBridge | unmatched — not counted | — | Mentioned in finding #5 as audited ISM | no |
| [Original]() | AbstractCcipReadIsm | unmatched — not counted | — | Mentioned in finding #7 as audited contract | no |
| [Original]() | InterchainAccountMessage | unmatched — not counted | — | Mentioned in findings #1, #7 as library | no |
| [Original]() | InterchainAccountMessageReveal | unmatched — not counted | — | Mentioned in finding #7 as library | no |
| [Original]() | Mailbox | unmatched — not counted | — | Mentioned in findings #2, #5, #6 as core contract | no |
| [Original]() | ArbL2ToL1ISM | unmatched — not counted | — | Mentioned in finding #5 as reference for proper verification | no |
| [Original]() | HyperToken | unmatched — not counted | — | mentioned as the main contract in scope and in finding HYPERTOKEN-001 | no |
| [Original]() | HypERC20 | unmatched — not counted | — | mentioned as parent contract of HyperToken | no |
| [Original]() | ERC20PermitUpgradeable | unmatched — not counted | — | mentioned as inherited contract | no |
| [Original]() | HypERC4626 | unmatched — not counted | — | mentioned in finding #1 as the contract with allowance accounting issue | no |
| [Original]() | CompoundStakerRewards | unmatched — not counted | — | listed in scope | no |
| [Original]() | MintLimits | unmatched — not counted | — | listed in scope table | no |
| [Original]() | XERC20 | unmatched — not counted | — | listed in scope table | no |
| [Original]() | XERC20Factory | unmatched — not counted | — | listed in scope table | no |
| [Original]() | XERC20Lockbox | unmatched — not counted | — | listed in scope table | no |
| [Original]() | DefaultHook | unmatched — not counted | — | mentioned in finding HL-250217-002 | no |
| [Original]() | AmountRoutingHook | unmatched — not counted | — | mentioned in finding HL-250217-002 | no |
| [Original]() | AbstractMessageIdAuthHook | unmatched — not counted | — | mentioned in finding HL-250217-001 | no |
| [Original]() | CCIPHook | unmatched — not counted | — | mentioned in finding HL-250217-004 | no |
| [Original]() | CCIPIsm | unmatched — not counted | — | mentioned in finding HL-250217-004 | no |
| [Original]() | AbstractPostDispatchHook | unmatched — not counted | — | mentioned in finding HL-250217-002 | no |
| [Original]() | RateLimitedHook | unmatched — not counted | — | mentioned in finding HL-250217-001 | no |
| [Mirror]() | AbstractMessageIdAuthorizedIsm | unmatched — not counted | — | Finding #1 and #3 reference this contract directly with file path. | no |
| [Mirror]() | OPL2ToL1Ism | unmatched — not counted | — | Finding #2 title and description reference OPL2ToL1Ism. | no |
| [Mirror]() | AbstractMessageIdAuthHook | unmatched — not counted | — | Finding #3 title references AbstractMessageIdAuthHook. | no |
| [Mirror]() | OPStackHook | unmatched — not counted | — | Finding #5 title references OPStackHook. | no |
| [Mirror]() | ArbL2ToL1Hook | unmatched — not counted | — | Finding #5 title references ArbL2ToL1Hook. | no |
| [Mirror]() | HypERC4626 | unmatched — not counted | — | Finding #6 title and description reference HypERC4626. | no |
| [Mirror]() | HypERC4626OwnerCollateral | unmatched — not counted | — | Finding #9 title references HypERC4626OwnerCollateral. | no |
| [Mirror]() | AbstractAggregationIsm | unmatched — not counted | — | Finding #10 title references AbstractAggregationIsm. | no |
| [Mirror]() | InterchainAccountRouter | unmatched — not counted | — | Finding #4 title and description reference InterchainAccountRouter. | no |
| [Mirror]() | Mailbox | unmatched — not counted | — | Finding #8 and #12 reference Mailbox. | no |
| [Mirror]() | MailboxClient | unmatched — not counted | — | Finding #12 references MailboxClient. | no |
| [Mirror]() | ProtocolFee | unmatched — not counted | — | Finding #12 references ProtocolFee. | no |
| [Mirror]() | RateLimited | unmatched — not counted | — | Finding #12 references RateLimited. | no |
| [Mirror]() | TrustedRelayerIsm | unmatched — not counted | — | Finding #12 references TrustedRelayerIsm. | no |
| [Mirror]() | AttributeCheckpointFraud | unmatched — not counted | — | Finding #12 references AttributeCheckpointFraud. | no |
| [Mirror]() | TypeCasts | unmatched — not counted | — | Finding #12 references TypeCasts. | no |
| [Mirror]() | LayerZeroV2Ism | unmatched — not counted | — | Finding #12 references LayerZeroV2Ism. | no |
| [Mirror]() | HypERC4626Collateral | unmatched — not counted | — | Finding #12 references HypERC4626Collateral. | no |
| [Mirror]() | HypERC20Collateral | unmatched — not counted | — | Finding #12 references HypERC20Collateral. | no |
| [Mirror]() | ECDSAStakeRegistry | unmatched — not counted | — | Finding #12 references ECDSAStakeRegistry. | no |
| [Mirror]() | ECDSAServiceManagerBase | unmatched — not counted | — | Finding #12 references ECDSAServiceManagerBase. | no |
| [Mirror]() | HyperlaneServiceManager | unmatched — not counted | — | Finding #12 references HyperlaneServiceManager. | no |
| [Mirror]() | GasRouter | unmatched — not counted | — | Finding #12 references GasRouter. | no |
| [Mirror]() | OwnableMulticall | unmatched — not counted | — | Finding #4 references OwnableMulticall. | no |
| [Mirror]() | InterchainAccountMessage | unmatched — not counted | — | Finding #4 references InterchainAccountMessage. | no |
| [Mirror]() | CallLib | unmatched — not counted | — | Finding #4 references CallLib. | no |
| [Original]() | Mailbox | unmatched — not counted | — | mentioned as core contract with heavy modification | no |
| [Original]() | Indexed | unmatched — not counted | — | mentioned in code quality recommendations | no |
| [Original]() | DestinationRecipientRoutingHook | unmatched — not counted | — | mentioned in code quality recommendations | no |
| [Original]() | DomainRoutingHook | unmatched — not counted | — | mentioned in code quality recommendations and finding target | no |
| [Original]() | ERC5164Hook | unmatched — not counted | — | mentioned in code quality recommendations | no |
| [Original]() | Router | unmatched — not counted | — | mentioned in fix review | no |
| [Original]() | DefaultFallbackRoutingIsm | unmatched — not counted | — | mentioned in fix review | no |
| [Original]() | DomainRoutingIsm | unmatched — not counted | — | mentioned in fix review | no |
| [Original]() | AbstractMessageIdAuthorizedIsm | unmatched — not counted | — | mentioned in fix review and supplementary review | no |
| [Original]() | MailboxClient | unmatched — not counted | — | finding target | no |
| [Original]() | IPostDispatchHook | unmatched — not counted | — | interface mentioned in finding | no |
| [Original]() | IInterchainSecurityModule | unmatched — not counted | — | interface mentioned in finding | no |
| [Original]() | ISpecifiesInterchainSecurityModule | unmatched — not counted | — | interface mentioned in finding | no |
| [Original]() | ERC5164Ism | unmatched — not counted | — | mentioned in supplementary review | no |
| [Original]() | MetaProxy | unmatched — not counted | — | mentioned in code maturity evaluation | no |
| [Mirror]() | Mailbox | unmatched — not counted | — | mentioned as core contract with heavy modification | no |
| [Mirror]() | Indexed | unmatched — not counted | — | mentioned in code quality recommendations | no |
| [Mirror]() | DestinationRecipientRoutingHook | unmatched — not counted | — | mentioned in code quality recommendations | no |
| [Mirror]() | DomainRoutingHook | unmatched — not counted | — | target in finding TOB-HYPERLANE-1 | no |
| [Mirror]() | ERC5164Hook | unmatched — not counted | — | mentioned in code quality recommendations | no |
| [Mirror]() | Router | unmatched — not counted | — | mentioned in fix review (PR #2760) | no |
| [Mirror]() | DefaultFallbackRoutingIsm | unmatched — not counted | — | mentioned in fix review (PR #2760) | no |
| [Mirror]() | DomainRoutingIsm | unmatched — not counted | — | mentioned in fix review (PR #2760) | no |
| [Mirror]() | AbstractMessageIdAuthorizedIsm | unmatched — not counted | — | mentioned in fix review (PR #2835) | no |
| [Mirror]() | MailboxClient | unmatched — not counted | — | target in finding TOB-HYPERLANE-1 | no |
| [Mirror]() | IPostDispatchHook | unmatched — not counted | — | interface mentioned in MailboxClient | no |
| [Mirror]() | IInterchainSecurityModule | unmatched — not counted | — | interface mentioned in MailboxClient | no |
| [Mirror]() | ISpecifiesInterchainSecurityModule | unmatched — not counted | — | interface mentioned in finding TOB-HYPERLANE-1 | no |
| [Mirror]() | ERC5164Ism | unmatched — not counted | — | mentioned in supplementary review (Slither false positive) | no |
| [Mirror]() | MetaProxy | unmatched — not counted | — | mentioned in code maturity evaluation (low-level manipulation) | no |
| [Mirror]() | Call | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | HyperlaneConnectionClient | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | InterchainGasPaymaster | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | MultisigIsm | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | EnumerableMapExtended | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | Merkle | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | Message | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | MinimalProxy | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | MultisigIsmMetadata | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | TypeCasts | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | Mailbox | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | InterchainAccountRouter | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | InterchainQueryRouter | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | CircleBridgeAdapter | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | ICircleBridge | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | ICircleMessageTransmitter | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | ILiquidityLayerAdapter | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | LiquidityLayerRouter | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | OwnableMulticall | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | PausableReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | Router | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | Versioned | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | IInterchainAccountRouter | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | IInterchainGasPaymaster | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | IInterchainQueryRouter | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | IInterchainSecurityModule | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | ILiquidityLayerMessageRecipient | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | ILiquidityLayerRouter | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | IMailbox | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | IMessageRecipient | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | IMultisigIsm | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | HypERC721URICollateral | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | HypERC721URIStorage | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | HypERC20 | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | HypERC20Collateral | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | HypERC721 | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | HypERC721Collateral | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | TokenRouter | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | ProxyAdmin | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | TransparentUpgradeableProxy | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x02d16bc51af6bfd153d67ca61754cf912e82c4d9` — deployed 2024-06-04 17:46:03+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| [Mirror]() | Create2Factory | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | Merkle | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | Message | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | TypeCasts | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | BadRecipient1 | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | BadRecipient2 | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | BadRecipient3 | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | BadRecipient5 | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | BadRecipient6 | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | MysteryMath | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | MysteryMathV1 | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | MysteryMathV2 | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | TestInbox | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | TestMailbox | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | TestMerkle | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | TestMessage | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | TestMultisigValidatorManager | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | TestOutbox | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | TestRecipient | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | TestSendReceiver | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | TestValidatorManager | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | UpgradeBeacon | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | UpgradeBeaconController | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | UpgradeBeaconProxy | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | InboxValidatorManager | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | MultisigValidatorManager | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | OutboxValidatorManager | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | AbacusConnectionManager | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | Inbox | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | InterchainGasPaymaster | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | Mailbox | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | MerkleTreeManager | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | Outbox | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | Version0 | unmatched — not counted | — | listed in scope table | no |
| [Original]() | mailbox | unmatched — not counted | — | listed in scope | no |
| [Original]() | ism | unmatched — not counted | — | listed in scope | no |
| [Original]() | ecdsa-signature | unmatched — not counted | — | listed in scope | no |
| [Original]() | multisig-ism | unmatched — not counted | — | listed in scope | no |
| [Original]() | hyperlane-sealevel-token | unmatched — not counted | — | listed in scope | no |
| [Original]() | hyperlane-sealevel-token-collateral | unmatched — not counted | — | listed in scope | no |
| [Original]() | hyperlane-sealevel-token-native | unmatched — not counted | — | listed in scope | no |
| [Original]() | validator-announce | unmatched — not counted | — | listed in scope | no |
| [Original]() | access-control | unmatched — not counted | — | listed in scope | no |
| [Original]() | account-utils | unmatched — not counted | — | listed in scope | no |
| [Original]() | hyperlane-sealevel-connection-client | unmatched — not counted | — | listed in scope | no |
| [Original]() | interchain-security-module-interface | unmatched — not counted | — | listed in scope | no |
| [Original]() | message-recipient-interface | unmatched — not counted | — | listed in scope | no |
| [Original]() | serializable-account-meta | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | mailbox | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | ism | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | ecdsa-signature | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | multisig-ism | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | hyperlane-sealevel-token | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | hyperlane-sealevel-token-collateral | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | hyperlane-sealevel-token-native | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | validator-announce | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | access-control | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | account-utils | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | hyperlane-sealevel-connection-client | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | interchain-security-module-interface | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | message-recipient-interface | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | serializable-account-meta | unmatched — not counted | — | listed in scope | no |
| [Original]() | access-control | unmatched — not counted | — | listed in scope | no |
| [Original]() | account-utils | unmatched — not counted | — | listed in scope | no |
| [Original]() | ecdsa-signature | unmatched — not counted | — | listed in scope | no |
| [Original]() | hyperlane-sealevel-connection-client | unmatched — not counted | — | listed in scope | no |
| [Original]() | hyperlane-sealevel-token | unmatched — not counted | — | listed in scope | no |
| [Original]() | interchain-security-module-interface | unmatched — not counted | — | listed in scope | no |
| [Original]() | message-recipient-interface | unmatched — not counted | — | listed in scope | no |
| [Original]() | multisig-ism | unmatched — not counted | — | listed in scope | no |
| [Original]() | serializable-account-meta | unmatched — not counted | — | listed in scope | no |
| [Original]() | hyperlane-sealevel-igp | unmatched — not counted | — | listed in scope | no |
| [Original]() | hyperlane-sealevel-token-collateral | unmatched — not counted | — | listed in scope | no |
| [Original]() | hyperlane-sealevel-token-native | unmatched — not counted | — | listed in scope | no |
| [Original]() | multisig-ism-message-id | unmatched — not counted | — | listed in scope | no |
| [Original]() | mailbox | unmatched — not counted | — | listed in scope | no |
| [Original]() | validator-announce | unmatched — not counted | — | listed in scope | no |
| [Original]() | Mailbox | unmatched — not counted | — | listed in scope and findings | no |
| [Original]() | MerkleHook | unmatched — not counted | — | listed in scope and findings | no |
| [Original]() | MultisigISM | unmatched — not counted | — | listed in scope and findings | no |
| [Original]() | AggregateISM | unmatched — not counted | — | listed in scope and findings | no |
| [Original]() | AggregateHook | unmatched — not counted | — | listed in scope and findings | no |
| [Original]() | RoutingISM | unmatched — not counted | — | listed in scope and findings | no |
| [Original]() | WarpNative | unmatched — not counted | — | listed in scope and findings | no |
| [Original]() | ValidatorAnnounce | unmatched — not counted | — | listed in scope and findings | no |
| [Original]() | IGP | unmatched — not counted | — | listed in scope and findings | no |
| [Original]() | OracleIGP | unmatched — not counted | — | listed in scope and findings | no |
| [Original]() | Router | unmatched — not counted | — | listed in scope and findings | no |
| [Mirror]() | Mailbox | unmatched — not counted | — | listed in scope and detailed findings | no |
| [Mirror]() | MerkleHook | unmatched — not counted | — | detailed findings | no |
| [Mirror]() | MultisigISM | unmatched — not counted | — | detailed findings | no |
| [Mirror]() | AggregateISM | unmatched — not counted | — | detailed findings | no |
| [Mirror]() | AggregateHook | unmatched — not counted | — | detailed findings | no |
| [Mirror]() | RoutingISM | unmatched — not counted | — | detailed findings | no |
| [Mirror]() | WarpNative | unmatched — not counted | — | detailed findings | no |
| [Mirror]() | ValidatorAnnounce | unmatched — not counted | — | detailed findings | no |
| [Mirror]() | IGPCore | unmatched — not counted | — | detailed findings | no |
| [Mirror]() | IGPOracle | unmatched — not counted | — | detailed findings | no |
| [Mirror]() | Router | unmatched — not counted | — | detailed findings | no |
| [Original]() | pausable_ism | unmatched — not counted | — | listed in scope table | no |
| [Original]() | trusted_relayer_ism | unmatched — not counted | — | listed in scope table | no |
| [Original]() | noop_ism | unmatched — not counted | — | listed in scope table | no |
| [Original]() | domain_routing_ism | unmatched — not counted | — | listed in scope table | no |
| [Original]() | default_fallback_routing_ism | unmatched — not counted | — | listed in scope table | no |
| [Original]() | merkleroot_multisig_ism | unmatched — not counted | — | listed in scope table | no |
| [Original]() | messageid_multisig_ism | unmatched — not counted | — | listed in scope table | no |
| [Original]() | validator_announce | unmatched — not counted | — | listed in scope table | no |
| [Original]() | aggregation | unmatched — not counted | — | listed in scope table | no |
| [Original]() | mailbox | unmatched — not counted | — | listed in scope table | no |
| [Original]() | message | unmatched — not counted | — | listed in scope table | no |
| [Original]() | message_id_ism_metadata | unmatched — not counted | — | listed in scope table | no |
| [Original]() | merkleroot_ism_metadata | unmatched — not counted | — | listed in scope table | no |
| [Original]() | checkpoint_lib | unmatched — not counted | — | listed in scope table | no |
| [Original]() | aggregation_ism_metadata | unmatched — not counted | — | listed in scope table | no |
| [Original]() | merkle_tree_hook | unmatched — not counted | — | listed in scope table | no |
| [Original]() | standard_hook_metadata | unmatched — not counted | — | listed in scope table | no |
| [Original]() | protocol_fee | unmatched — not counted | — | listed in scope table | no |
| [Original]() | mailboxclient_component | unmatched — not counted | — | listed in scope table | no |
| [Original]() | mailboxclient | unmatched — not counted | — | listed in scope table | no |
| [Original]() | keccak256 | unmatched — not counted | — | listed in scope table | no |
| [Original]() | store_arrays | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 63 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 151 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 17
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 245 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=16, medium=1
- Match method counts: n/a

Zero-match audit list:

- [20522] [Original]()
- [20523] [Original]()
- [20524] [Original]()
- [20525] [Original]()
- [20526] [Original]()
- [20527] [Original]()
- [20528] [Mirror]()
- [20529] [Original]()
- [20530] [Mirror]()
- [20531] [Mirror]()
- [20532] [Mirror]()
- [20533] [Original]()
- [20534] [Mirror]()
- [20535] [Original]()
- [20536] [Original]()
- [20537] [Mirror]()
- [20538] [Original]()

Fork inheritance lineage and inherited audits are included when available.
