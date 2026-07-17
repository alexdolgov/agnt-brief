# Agentic Audit Brief: Gravity Bridge

## Project Overview

- Project: Gravity Bridge (`gravity-bridge`)
- Website: [https://www.gravitybridge.net](https://www.gravitybridge.net)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:20.993Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: ethereum
- Contract surface: 86 unique implementations (111 raw deployments)
- DeFi Llama TVL: $6,024,168.71
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 76 project-authored contract(s) across 1 chain(s); 53 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 15 common project-authored base contract(s) (erc20pausable, minterrole, erc20burnable). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Mellow Protocol** (`mellow-protocol`) in the KeepVault subsystem.
16 audits inherited from `mellow-protocol`, scoped to that subsystem.

Total inherited audits: 16. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 139; live-surface contracts included: 110 (78 live, 32 unknown).
- Excluded by liveness: 29 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/50 (0.0%)
- Deployed-live implementations: 54 of 86 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/54
- Verified + Unaudited implementations: 54
- Verified by bytecode match: 0
- Unverified implementations: 32
- Unique implementations: 86
- Raw deployments: 111
- Audits discovered: 16 (0 direct, 16 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 8 fresh, 0 aging, 1 stale, 7 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (54)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Address | unknown | ethereum | n/a | [`0xa325ad6d9c92b55a3fc5ad7e412b1518f96441c0`](./contracts/ethereum-1/0xa325ad6d9c92b55a3fc5ad7e412b1518f96441c0/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x407be32cb513d6984935123eb1d9129d1472ba85`](./contracts/ethereum-1/0x407be32cb513d6984935123eb1d9129d1472ba85/); ethereum `0xf6c20fb946f01ab573b4919ff1959b6e36f9d762` | ⚠️ Unaudited |
| AnyswapV6ERC20 | token | ethereum | n/a | [`0xd23ed8ca350ce2631f7ecdc5e6bf80d0a1debb7b`](./contracts/ethereum-1/0xd23ed8ca350ce2631f7ecdc5e6bf80d0a1debb7b/) | ⚠️ Unaudited |
| BandToken | token | ethereum | n/a | [`0xba11d00c5f74255f56a5e366f4f77f5a186d7f55`](./contracts/ethereum-1/0xba11d00c5f74255f56a5e366f4f77f5a186d7f55/) | ⚠️ Unaudited |
| BridgeBank | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2034c9194de45ffe5ba382868115daebe32c3f53`](./contracts/ethereum-1/0x2034c9194de45ffe5ba382868115daebe32c3f53/); ethereum `0xeca46baed9fbe8543b5963571aa93762343b7f9f` | ⚠️ Unaudited |
| BridgeBank | unknown | ethereum | n/a | [`0xb5f54ac4466f5ce7e0d8a5cb9fe7b8c0f35b7ba8`](./contracts/ethereum-1/0xb5f54ac4466f5ce7e0d8a5cb9fe7b8c0f35b7ba8/) | ⚠️ Unaudited |
| BridgeRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5c350c858035a5dc8a64faa52a13bb926b1dd0bd`](./contracts/ethereum-1/0x5c350c858035a5dc8a64faa52a13bb926b1dd0bd/); ethereum `0xaab00d9bdbd49257b01a7bf444acee5a8b87a4b3` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | ethereum | n/a | 13 deployments: ethereum [`0x07bac35846e5ed502aa91adf6a9e7aa210f2dcbe`](./contracts/ethereum-1/0x07bac35846e5ed502aa91adf6a9e7aa210f2dcbe/); ethereum `0x3de8006b2c571ebc19a5d3a85a0940a7a9339470`; ethereum `0x413e8196e7d6d2c02a6bccc46366f881017ea479`; ethereum `0x4c67b8392fc17892338d590e5ae1ab7be485be50`; ethereum `0x55e9d73f7bf359ab7c2e6f441f425e212ad615e8`; ethereum `0x56667705df047677a15d3d417a138b10b6ed62c4`; ethereum `0x714bfd06da6eb24fac379f0d9debfa85261bf439`; ethereum `0x7588fefd8d087a7ee3f568087190209f7b449b28`; ethereum `0x8ea2645cd39d5e0c901bca25df8d0998a6926cf2`; ethereum `0xa4bfc52b96531d2a3412089c04a5411c56f7c1d2`; ethereum `0xc81978862b6ce566400579a5f8975732d42bd410`; ethereum `0xcf9902b43d01d7c6cd5c12e0c1112cc2c4fc4ec5`; ethereum `0xeb5bea778339e5f0c8d9419cf9891445af823a29` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | ethereum | n/a | [`0x93581991f68dbae1ea105233b67f7fa0d6bdee7b`](./contracts/ethereum-1/0x93581991f68dbae1ea105233b67f7fa0d6bdee7b/) | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | token | ethereum | n/a | [`0x467719ad09025fcc6cf6f8311755809d45a5e5f3`](./contracts/ethereum-1/0x467719ad09025fcc6cf6f8311755809d45a5e5f3/) | ⚠️ Unaudited |
| CosmosBridge | unknown | ethereum | n/a | 2 deployments: ethereum [`0x72eb0df009b8ea2441de78f073338620b625adc3`](./contracts/ethereum-1/0x72eb0df009b8ea2441de78f073338620b625adc3/); ethereum `0x7e5b2a7a9f11e406c7cc38b5e2ddeafc8c5eaf65` | ⚠️ Unaudited |
| CosmosBridge | operational_periphery | ethereum | n/a | [`0xe1fa4a1f92276e21d1a358a03900a21663bb6b4a`](./contracts/ethereum-1/0xe1fa4a1f92276e21d1a358a03900a21663bb6b4a/) | ⚠️ Unaudited |
| CosmosERC20 | token | ethereum | n/a | 3 deployments: ethereum [`0xa670d7237398238de01267472c6f13e5b8010fd1`](./contracts/ethereum-1/0xa670d7237398238de01267472c6f13e5b8010fd1/); ethereum `0xc0a4df35568f116c370e6a6a6022ceb908eeddac`; ethereum `0xea5a82b35244d9e5e48781f00b11b14e627d2951` | ⚠️ Unaudited |
| CroToken | token | ethereum | n/a | [`0xa0b73e1ff0b80914ab6fe0444e65848c4c34450b`](./contracts/ethereum-1/0xa0b73e1ff0b80914ab6fe0444e65848c4c34450b/) | ⚠️ Unaudited |
| CudosAccessControls | unknown | ethereum | n/a | [`0xefb546ec7babc97af3791033cc3ca1cc1f680993`](./contracts/ethereum-1/0xefb546ec7babc97af3791033cc3ca1cc1f680993/) | ⚠️ Unaudited |
| CudosToken | token | ethereum | n/a | [`0x817bbdbc3e8a1204f3691d14bb44992841e3db35`](./contracts/ethereum-1/0x817bbdbc3e8a1204f3691d14bb44992841e3db35/) | ⚠️ Unaudited |
| FetchToken | token | ethereum | n/a | [`0xaea46a60368a7bd060eec7df8cba43b7ef41ad85`](./contracts/ethereum-1/0xaea46a60368a7bd060eec7df8cba43b7ef41ad85/) | ⚠️ Unaudited |
| GeoToken | token | ethereum | n/a | [`0x147faf8de9d8d8daae129b187f0d02d819126750`](./contracts/ethereum-1/0x147faf8de9d8d8daae129b187f0d02d819126750/) | ⚠️ Unaudited |
| Gravity | unknown | ethereum | n/a | [`0xa4108aa1ec4967f8b52220a4f7e94a8201f2d906`](./contracts/ethereum-1/0xa4108aa1ec4967f8b52220a4f7e94a8201f2d906/) | ⚠️ Unaudited |
| IbcToken | token | ethereum | n/a | 4 deployments: ethereum [`0x0c356b7fd36a5357e5a017ef11887ba100c9ab76`](./contracts/ethereum-1/0x0c356b7fd36a5357e5a017ef11887ba100c9ab76/); ethereum `0x76c4a2b59523eae19594c630aab43288dbb1463f`; ethereum `0x8d983cb9388eac77af0474fa441c4815500cb7bb`; ethereum `0xc727f87871ee12bbcedd2973746d1deb7529aad6` | ⚠️ Unaudited |
| InjectiveToken | token | ethereum | n/a | [`0xe28b3b32b6c345a34ff64674606124dd5aceca30`](./contracts/ethereum-1/0xe28b3b32b6c345a34ff64674606124dd5aceca30/) | ⚠️ Unaudited |
| MNW | unknown | ethereum | n/a | [`0xd3e4ba569045546d09cf021ecc5dfe42b1d7f6e4`](./contracts/ethereum-1/0xd3e4ba569045546d09cf021ecc5dfe42b1d7f6e4/) | ⚠️ Unaudited |
| NGM | unknown | ethereum | n/a | [`0xed0d5747a9ab03a75fbfec3228cd55848245b75d`](./contracts/ethereum-1/0xed0d5747a9ab03a75fbfec3228cd55848245b75d/) | ⚠️ Unaudited |
| OraiToken | token | ethereum | n/a | [`0x4c11249814f11b9346808179cf06e71ac328c1b5`](./contracts/ethereum-1/0x4c11249814f11b9346808179cf06e71ac328c1b5/) | ⚠️ Unaudited |
| PepeToken | token | ethereum | n/a | [`0x6982508145454ce325ddbe47a25d4ec3d2311933`](./contracts/ethereum-1/0x6982508145454ce325ddbe47a25d4ec3d2311933/) | ⚠️ Unaudited |
| Pluton | unknown | ethereum | n/a | [`0xd8912c10681d8b21fd3742244f44658dba12264e`](./contracts/ethereum-1/0xd8912c10681d8b21fd3742244f44658dba12264e/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8d121094fd25a48aff882e3f6406645ad94fae1b`](./contracts/ethereum-1/0x8d121094fd25a48aff882e3f6406645ad94fae1b/); ethereum `0xd60500f92b59b4d02664442e023408bad3725133` | ⚠️ Unaudited |
| pStake | unknown | ethereum | n/a | [`0xfb5c6815ca3ac72ce9f5006869ae67f18bf77006`](./contracts/ethereum-1/0xfb5c6815ca3ac72ce9f5006869ae67f18bf77006/) | ⚠️ Unaudited |
| TokenImplementation | token | ethereum | n/a | 2 deployments: ethereum [`0x43373ae537945085ee1001928e96204034bf55e6`](./contracts/ethereum-1/0x43373ae537945085ee1001928e96204034bf55e6/); ethereum `0xa693b19d2931d498c5b318df961919bb4aee87a5` | ⚠️ Unaudited |
| TokenMintERC20Token | token | ethereum | n/a | [`0x35a532d376ffd9a705d0bb319532837337a398e7`](./contracts/ethereum-1/0x35a532d376ffd9a705d0bb319532837337a398e7/) | ⚠️ Unaudited |
| VestingContract | operational_periphery | ethereum | n/a | [`0xb3ccb8fb2533e51893915908ceb85763ceaea97b`](./contracts/ethereum-1/0xb3ccb8fb2533e51893915908ceb85763ceaea97b/) | ⚠️ Unaudited |
| WrappedKRT | unknown | ethereum | n/a | [`0xcaaff72a8cbbfc5cf343ba4e26f65a257065bff1`](./contracts/ethereum-1/0xcaaff72a8cbbfc5cf343ba4e26f65a257065bff1/) | ⚠️ Unaudited |
| WrappedLuna | unknown | ethereum | n/a | [`0xd2877702675e6ceb975b4a1dff9fb7baf4c91ea9`](./contracts/ethereum-1/0xd2877702675e6ceb975b4a1dff9fb7baf4c91ea9/) | ⚠️ Unaudited |
| WrappedmAAPL | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc199e74f633af6c2f5978a6e4598aaf47edf0d42`](./contracts/ethereum-1/0xc199e74f633af6c2f5978a6e4598aaf47edf0d42/); ethereum `0xd36932143f6ebdedd872d5fb0651f4b72fd15a84` | ⚠️ Unaudited |
| WrappedmAMZN | unknown | ethereum | n/a | [`0x0cae9e4d663793c2a2a0b211c1cf4bbca2b9caa7`](./contracts/ethereum-1/0x0cae9e4d663793c2a2a0b211c1cf4bbca2b9caa7/) | ⚠️ Unaudited |
| WrappedmBABA | unknown | ethereum | n/a | [`0x56aa298a19c93c6801fdde870fa63ef75cc0af72`](./contracts/ethereum-1/0x56aa298a19c93c6801fdde870fa63ef75cc0af72/) | ⚠️ Unaudited |
| WrappedmGOOGL | unknown | ethereum | n/a | [`0x59a921db27dd6d4d974745b7ffc5c33932653442`](./contracts/ethereum-1/0x59a921db27dd6d4d974745b7ffc5c33932653442/) | ⚠️ Unaudited |
| WrappedmIAU | unknown | ethereum | n/a | [`0x1d350417d9787e000cc1b95d70e9536dcd91f373`](./contracts/ethereum-1/0x1d350417d9787e000cc1b95d70e9536dcd91f373/) | ⚠️ Unaudited |
| WrappedMIR | unknown | ethereum | n/a | [`0x09a3ecafa817268f77be1283176b946c4ff2e608`](./contracts/ethereum-1/0x09a3ecafa817268f77be1283176b946c4ff2e608/) | ⚠️ Unaudited |
| WrappedmMSFT | unknown | ethereum | n/a | [`0x41bbedd7286daab5910a1f15d12cbda839852bd7`](./contracts/ethereum-1/0x41bbedd7286daab5910a1f15d12cbda839852bd7/) | ⚠️ Unaudited |
| WrappedmNFLX | unknown | ethereum | n/a | [`0xc8d674114bac90148d11d3c1d33c61835a0f9dcd`](./contracts/ethereum-1/0xc8d674114bac90148d11d3c1d33c61835a0f9dcd/) | ⚠️ Unaudited |
| WrappedMNT | unknown | ethereum | n/a | [`0x156b36ec68fdbf84a925230ba96cb1ca4c4bde45`](./contracts/ethereum-1/0x156b36ec68fdbf84a925230ba96cb1ca4c4bde45/) | ⚠️ Unaudited |
| WrappedmQQQ | unknown | ethereum | n/a | [`0x13b02c8de71680e71f0820c996e4be43c2f57d15`](./contracts/ethereum-1/0x13b02c8de71680e71f0820c996e4be43c2f57d15/) | ⚠️ Unaudited |
| WrappedmSLV | unknown | ethereum | n/a | [`0x9d1555d8cb3c846bb4f7d5b1b1080872c3166676`](./contracts/ethereum-1/0x9d1555d8cb3c846bb4f7d5b1b1080872c3166676/) | ⚠️ Unaudited |
| WrappedmTSLA | unknown | ethereum | n/a | [`0x21ca39943e91d704678f5d00b6616650f066fd63`](./contracts/ethereum-1/0x21ca39943e91d704678f5d00b6616650f066fd63/) | ⚠️ Unaudited |
| WrappedmTWTR | unknown | ethereum | n/a | [`0xedb0414627e6f1e3f082de65cd4f9c693d78cca9`](./contracts/ethereum-1/0xedb0414627e6f1e3f082de65cd4f9c693d78cca9/) | ⚠️ Unaudited |
| WrappedmUSO | unknown | ethereum | n/a | 2 deployments: ethereum [`0x31c63146a635eb7465e5853020b39713ac356991`](./contracts/ethereum-1/0x31c63146a635eb7465e5853020b39713ac356991/); ethereum `0x4fd69d2a7d76c0564a984a79972aad628750f214` | ⚠️ Unaudited |
| WrappedmVIXY | unknown | ethereum | n/a | [`0xf72fcd9dcf0190923fadd44811e240ef4533fc86`](./contracts/ethereum-1/0xf72fcd9dcf0190923fadd44811e240ef4533fc86/) | ⚠️ Unaudited |
| WrappedSCRT | unknown | ethereum | n/a | [`0x2b89bf8ba858cd2fcee1fada378d5cd6936968be`](./contracts/ethereum-1/0x2b89bf8ba858cd2fcee1fada378d5cd6936968be/) | ⚠️ Unaudited |
| WrappedSDT | unknown | ethereum | n/a | [`0x676ad1b33ae6423c6618c1aecf53baa29cf39ee5`](./contracts/ethereum-1/0x676ad1b33ae6423c6618c1aecf53baa29cf39ee5/) | ⚠️ Unaudited |
| WrappedUST | unknown | ethereum | n/a | [`0xa47c8bf37f92abed4a126bda807a7b7498661acd`](./contracts/ethereum-1/0xa47c8bf37f92abed4a126bda807a7b7498661acd/) | ⚠️ Unaudited |
| wTAO | unknown | ethereum | n/a | [`0x77e06c9eccf2e797fd462a92b6d7642ef85b0a44`](./contracts/ethereum-1/0x77e06c9eccf2e797fd462a92b6d7642ef85b0a44/) | ⚠️ Unaudited |
| XFUND | unknown | ethereum | n/a | [`0x892a6f9df0147e5f079b0993f486f9aca3c87881`](./contracts/ethereum-1/0x892a6f9df0147e5f079b0993f486f9aca3c87881/) | ⚠️ Unaudited |
| XKI | unknown | ethereum | n/a | [`0x4f6103bad230295bacf30f914fda7d4273b7f585`](./contracts/ethereum-1/0x4f6103bad230295bacf30f914fda7d4273b7f585/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (32)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x3b3d57a4205cf54276e79bf53b9748ec8a44a4a2) | proxy | ethereum | n/a | `0xc187c9782364e3db55802f3a51ac887ca8d1b43a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x07e2e3619a69727a420d368d571d457e137403d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x081b3bad625835d57bba294f25054bac19246947` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d74be1f113a1854ab1cd7b33b3e3b44a1c02250` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x289268e0b5f05e514834ea37aa9777ce077696a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29dbb73e3c7a43fb1f4b647b022ef0158f3153a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a6fcf8d229cf1df6bcaaf46bda94925b084ddfc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a9714aa672419cd189dd8ac06fc61478573ba2c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3088661b3c3f5b40ccecc6135da7d292cc1ebf47` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33ecc0c02fa468fcbb9556e6f44a65bf2560cc92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35abb21528ae8e53c36039d9de9e85a774c46216` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a32406ea448c67af05105e18bbc267c5692fd7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d5c50f93c6b307de88b4c63212cca746673278f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d03d74d3a89064ef5b294852e8ae499774b7068` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f82c5d72a64379529f2ab731b447b8760ff418a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71b460b26ecf17d0b02cac595c86b6279375cb5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78850f0822c8da6a9d06031360f2b7ed1694105e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bc16c60f46a252b0341a9cc9a6e00d759d25b56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8dca5685067e5df9d6efbf9657496e682c16b893` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f38e2fb45c7efa8af6981be0bb46a4b61c2b8f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3fb6dadc973e43188492037aab279a8e36f1320` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab6bc3cdf2c0687fd698e798369c08e4256f001c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf9136559026fa9a8e216c34c94c86fc42cd6373` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4d6bafed9c6451aeb15665982b55af5913f22cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc79486741f488369cf814cd801e5d9cde305af78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb75d3af34cd4246e5267540532423ab6e8624d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd95350c69f229e72e57a44e8c05c436e65e4beb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7419f02a2633b1d0fbe0d2fe65e526218fefc92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe190d4cf31599c33c028355b781814029d1b7a9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5eb74f2e4e17080effd35556cf860f34fdb1e28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5f2624521db6cdeb4147b429754dfbc05abe0a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec59e173a4af31ebe657573e9e3ac73d24e32f6e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [blocksec_mellow_vaults_v1.3-signed.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202208_BlockSec_vaults_v1/blocksec_mellow_vaults_v1.3-signed.pdf) | BlockSec | Audit | 2022 | stale | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202208_Chainsecurity_vaults_v1/ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf) | ChainSecurity | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [Mellow Protocol HStrategy Security Analysis.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202211_Pessimistic_HStrategy/Mellow%20Protocol%20HStrategy%20Security%20Analysis.pdf) | Pessimistic | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202212_Pessimistic_Gearbox/Mellow%20protocol%20Gearbox%20integration%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/kF9WEmdIYGcCPdAPltyL/StateMind Mellow LRT report with deployment.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FkF9WEmdIYGcCPdAPltyL%2FStateMind%20Mellow%20LRT%20report%20with%20deployment.pdf) | StateMind | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/T65xUuoxB4TbuaSjSyst/Sherlock Mellow Modular LRTs Audit Report.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FT65xUuoxB4TbuaSjSyst%2FSherlock%20Mellow%20Modular%20LRTs%20Audit%20Report.pdf) | Sherlock | Contest | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/z1vRTE4p2jsyru2NDTW5/Mellow Finance Simple-LRT and DVV Vault Security Audit Report.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2Fz1vRTE4p2jsyru2NDTW5%2FMellow%20Finance%20Simple-LRT%20and%20DVV%20Vault%20Security%20Audit%20Report.pdf) | yAudit | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/VOe4RlDJHDolkm4fiVZM/ChainSecurity_MellowFinance_MellowLRT_Audit.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FVOe4RlDJHDolkm4fiVZM%2FChainSecurity_MellowFinance_MellowLRT_Audit.pdf) | ChainSecurity | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/2GBCylSChOvXlBDteguf/NM_0758_Mellow-1.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2F2GBCylSChOvXlBDteguf%2FNM_0758_Mellow-1.pdf) | Nethermind | Audit | 2026-03 | fresh | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/iJpqr8BmY5Fdjfd1fw5n/NM0812-FINAL_Mellow (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FiJpqr8BmY5Fdjfd1fw5n%2FNM0812-FINAL_Mellow%20(1).pdf) | Nethermind | Audit | 2026-01 | fresh | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/3pkyCLIShMV1QdiygMDh/NM0798-FINAL_MELLOW (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2F3pkyCLIShMV1QdiygMDh%2FNM0798-FINAL_MELLOW%20(1).pdf) | Nethermind | Audit | 2026-01 | fresh | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/qiqkyRtS5hyeGOGEkUlO/NM0758-FINAL_Mellow (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FqiqkyRtS5hyeGOGEkUlO%2FNM0758-FINAL_Mellow%20(1).pdf) | Nethermind | Audit | 2025-12 | fresh | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/EKdTZHaxv3h0qKauW9TU/NM0735-FINAL_MELLOW (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FEKdTZHaxv3h0qKauW9TU%2FNM0735-FINAL_MELLOW%20(1).pdf) | Nethermind | Audit | 2025-11 | fresh | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/M2HU6Mm6042D009NBVaa/NM0703-FINAL_MELLOW (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FM2HU6Mm6042D009NBVaa%2FNM0703-FINAL_MELLOW%20(1).pdf) | N/A | Audit | 2025-11 | fresh | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/uoD71STRiDu2ON8SHpvK/NM0682-FINAL_Mellow (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FuoD71STRiDu2ON8SHpvK%2FNM0682-FINAL_Mellow%20(1).pdf) | N/A | Audit | 2025-10 | fresh | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/Ns4351hVFYzadiFii2az/Nethermind_Mellow-Core-Vaults_20250903.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FNs4351hVFYzadiFii2az%2FNethermind_Mellow-Core-Vaults_20250903.pdf) | Nethermind | Audit | 2025-09 | fresh | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa325ad6d9c92b55a3fc5ad7e412b1518f96441c0`](./contracts/ethereum-1/0xa325ad6d9c92b55a3fc5ad7e412b1518f96441c0/) | Address | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba11d00c5f74255f56a5e366f4f77f5a186d7f55`](./contracts/ethereum-1/0xba11d00c5f74255f56a5e366f4f77f5a186d7f55/) | BandToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2034c9194de45ffe5ba382868115daebe32c3f53`](./contracts/ethereum-1/0x2034c9194de45ffe5ba382868115daebe32c3f53/) | BridgeBank | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb5f54ac4466f5ce7e0d8a5cb9fe7b8c0f35b7ba8`](./contracts/ethereum-1/0xb5f54ac4466f5ce7e0d8a5cb9fe7b8c0f35b7ba8/) | BridgeBank | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c350c858035a5dc8a64faa52a13bb926b1dd0bd`](./contracts/ethereum-1/0x5c350c858035a5dc8a64faa52a13bb926b1dd0bd/) | BridgeRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07bac35846e5ed502aa91adf6a9e7aa210f2dcbe`](./contracts/ethereum-1/0x07bac35846e5ed502aa91adf6a9e7aa210f2dcbe/) | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93581991f68dbae1ea105233b67f7fa0d6bdee7b`](./contracts/ethereum-1/0x93581991f68dbae1ea105233b67f7fa0d6bdee7b/) | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x467719ad09025fcc6cf6f8311755809d45a5e5f3`](./contracts/ethereum-1/0x467719ad09025fcc6cf6f8311755809d45a5e5f3/) | BurnableMintableCappedERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72eb0df009b8ea2441de78f073338620b625adc3`](./contracts/ethereum-1/0x72eb0df009b8ea2441de78f073338620b625adc3/) | CosmosBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1fa4a1f92276e21d1a358a03900a21663bb6b4a`](./contracts/ethereum-1/0xe1fa4a1f92276e21d1a358a03900a21663bb6b4a/) | CosmosBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa670d7237398238de01267472c6f13e5b8010fd1`](./contracts/ethereum-1/0xa670d7237398238de01267472c6f13e5b8010fd1/) | CosmosERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0b73e1ff0b80914ab6fe0444e65848c4c34450b`](./contracts/ethereum-1/0xa0b73e1ff0b80914ab6fe0444e65848c4c34450b/) | CroToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xefb546ec7babc97af3791033cc3ca1cc1f680993`](./contracts/ethereum-1/0xefb546ec7babc97af3791033cc3ca1cc1f680993/) | CudosAccessControls | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x817bbdbc3e8a1204f3691d14bb44992841e3db35`](./contracts/ethereum-1/0x817bbdbc3e8a1204f3691d14bb44992841e3db35/) | CudosToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaea46a60368a7bd060eec7df8cba43b7ef41ad85`](./contracts/ethereum-1/0xaea46a60368a7bd060eec7df8cba43b7ef41ad85/) | FetchToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x147faf8de9d8d8daae129b187f0d02d819126750`](./contracts/ethereum-1/0x147faf8de9d8d8daae129b187f0d02d819126750/) | GeoToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4108aa1ec4967f8b52220a4f7e94a8201f2d906`](./contracts/ethereum-1/0xa4108aa1ec4967f8b52220a4f7e94a8201f2d906/) | Gravity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c356b7fd36a5357e5a017ef11887ba100c9ab76`](./contracts/ethereum-1/0x0c356b7fd36a5357e5a017ef11887ba100c9ab76/) | IbcToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe28b3b32b6c345a34ff64674606124dd5aceca30`](./contracts/ethereum-1/0xe28b3b32b6c345a34ff64674606124dd5aceca30/) | InjectiveToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd3e4ba569045546d09cf021ecc5dfe42b1d7f6e4`](./contracts/ethereum-1/0xd3e4ba569045546d09cf021ecc5dfe42b1d7f6e4/) | MNW | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xed0d5747a9ab03a75fbfec3228cd55848245b75d`](./contracts/ethereum-1/0xed0d5747a9ab03a75fbfec3228cd55848245b75d/) | NGM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c11249814f11b9346808179cf06e71ac328c1b5`](./contracts/ethereum-1/0x4c11249814f11b9346808179cf06e71ac328c1b5/) | OraiToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6982508145454ce325ddbe47a25d4ec3d2311933`](./contracts/ethereum-1/0x6982508145454ce325ddbe47a25d4ec3d2311933/) | PepeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8912c10681d8b21fd3742244f44658dba12264e`](./contracts/ethereum-1/0xd8912c10681d8b21fd3742244f44658dba12264e/) | Pluton | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfb5c6815ca3ac72ce9f5006869ae67f18bf77006`](./contracts/ethereum-1/0xfb5c6815ca3ac72ce9f5006869ae67f18bf77006/) | pStake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43373ae537945085ee1001928e96204034bf55e6`](./contracts/ethereum-1/0x43373ae537945085ee1001928e96204034bf55e6/) | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3ccb8fb2533e51893915908ceb85763ceaea97b`](./contracts/ethereum-1/0xb3ccb8fb2533e51893915908ceb85763ceaea97b/) | VestingContract | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcaaff72a8cbbfc5cf343ba4e26f65a257065bff1`](./contracts/ethereum-1/0xcaaff72a8cbbfc5cf343ba4e26f65a257065bff1/) | WrappedKRT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd2877702675e6ceb975b4a1dff9fb7baf4c91ea9`](./contracts/ethereum-1/0xd2877702675e6ceb975b4a1dff9fb7baf4c91ea9/) | WrappedLuna | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc199e74f633af6c2f5978a6e4598aaf47edf0d42`](./contracts/ethereum-1/0xc199e74f633af6c2f5978a6e4598aaf47edf0d42/) | WrappedmAAPL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cae9e4d663793c2a2a0b211c1cf4bbca2b9caa7`](./contracts/ethereum-1/0x0cae9e4d663793c2a2a0b211c1cf4bbca2b9caa7/) | WrappedmAMZN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56aa298a19c93c6801fdde870fa63ef75cc0af72`](./contracts/ethereum-1/0x56aa298a19c93c6801fdde870fa63ef75cc0af72/) | WrappedmBABA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59a921db27dd6d4d974745b7ffc5c33932653442`](./contracts/ethereum-1/0x59a921db27dd6d4d974745b7ffc5c33932653442/) | WrappedmGOOGL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d350417d9787e000cc1b95d70e9536dcd91f373`](./contracts/ethereum-1/0x1d350417d9787e000cc1b95d70e9536dcd91f373/) | WrappedmIAU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09a3ecafa817268f77be1283176b946c4ff2e608`](./contracts/ethereum-1/0x09a3ecafa817268f77be1283176b946c4ff2e608/) | WrappedMIR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41bbedd7286daab5910a1f15d12cbda839852bd7`](./contracts/ethereum-1/0x41bbedd7286daab5910a1f15d12cbda839852bd7/) | WrappedmMSFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8d674114bac90148d11d3c1d33c61835a0f9dcd`](./contracts/ethereum-1/0xc8d674114bac90148d11d3c1d33c61835a0f9dcd/) | WrappedmNFLX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x156b36ec68fdbf84a925230ba96cb1ca4c4bde45`](./contracts/ethereum-1/0x156b36ec68fdbf84a925230ba96cb1ca4c4bde45/) | WrappedMNT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13b02c8de71680e71f0820c996e4be43c2f57d15`](./contracts/ethereum-1/0x13b02c8de71680e71f0820c996e4be43c2f57d15/) | WrappedmQQQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d1555d8cb3c846bb4f7d5b1b1080872c3166676`](./contracts/ethereum-1/0x9d1555d8cb3c846bb4f7d5b1b1080872c3166676/) | WrappedmSLV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21ca39943e91d704678f5d00b6616650f066fd63`](./contracts/ethereum-1/0x21ca39943e91d704678f5d00b6616650f066fd63/) | WrappedmTSLA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xedb0414627e6f1e3f082de65cd4f9c693d78cca9`](./contracts/ethereum-1/0xedb0414627e6f1e3f082de65cd4f9c693d78cca9/) | WrappedmTWTR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31c63146a635eb7465e5853020b39713ac356991`](./contracts/ethereum-1/0x31c63146a635eb7465e5853020b39713ac356991/) | WrappedmUSO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf72fcd9dcf0190923fadd44811e240ef4533fc86`](./contracts/ethereum-1/0xf72fcd9dcf0190923fadd44811e240ef4533fc86/) | WrappedmVIXY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b89bf8ba858cd2fcee1fada378d5cd6936968be`](./contracts/ethereum-1/0x2b89bf8ba858cd2fcee1fada378d5cd6936968be/) | WrappedSCRT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x676ad1b33ae6423c6618c1aecf53baa29cf39ee5`](./contracts/ethereum-1/0x676ad1b33ae6423c6618c1aecf53baa29cf39ee5/) | WrappedSDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa47c8bf37f92abed4a126bda807a7b7498661acd`](./contracts/ethereum-1/0xa47c8bf37f92abed4a126bda807a7b7498661acd/) | WrappedUST | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77e06c9eccf2e797fd462a92b6d7642ef85b0a44`](./contracts/ethereum-1/0x77e06c9eccf2e797fd462a92b6d7642ef85b0a44/) | wTAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x892a6f9df0147e5f079b0993f486f9aca3c87881`](./contracts/ethereum-1/0x892a6f9df0147e5f079b0993f486f9aca3c87881/) | XFUND | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f6103bad230295bacf30f914fda7d4273b7f585`](./contracts/ethereum-1/0x4f6103bad230295bacf30f914fda7d4273b7f585/) | XKI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 50 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 32 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 16
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [18938] blocksec_mellow_vaults_v1.3-signed.pdf
- [18939] ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf
- [18940] Mellow Protocol HStrategy Security Analysis.pdf
- [18941] Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf
- [18942] spaces/-Mk3LEacyGwD8y6mb9-2/uploads/kF9WEmdIYGcCPdAPltyL/StateMind Mellow LRT report with deployment.pdf
- [18943] spaces/-Mk3LEacyGwD8y6mb9-2/uploads/T65xUuoxB4TbuaSjSyst/Sherlock Mellow Modular LRTs Audit Report.pdf
- [18944] spaces/-Mk3LEacyGwD8y6mb9-2/uploads/z1vRTE4p2jsyru2NDTW5/Mellow Finance Simple-LRT and DVV Vault Security Audit Report.pdf
- [18945] spaces/-Mk3LEacyGwD8y6mb9-2/uploads/VOe4RlDJHDolkm4fiVZM/ChainSecurity_MellowFinance_MellowLRT_Audit.pdf
- [24721] spaces/-Mk3LEacyGwD8y6mb9-2/uploads/2GBCylSChOvXlBDteguf/NM_0758_Mellow-1.pdf
- [24722] spaces/-Mk3LEacyGwD8y6mb9-2/uploads/iJpqr8BmY5Fdjfd1fw5n/NM0812-FINAL_Mellow (1).pdf
- [24723] spaces/-Mk3LEacyGwD8y6mb9-2/uploads/3pkyCLIShMV1QdiygMDh/NM0798-FINAL_MELLOW (1).pdf
- [24724] spaces/-Mk3LEacyGwD8y6mb9-2/uploads/qiqkyRtS5hyeGOGEkUlO/NM0758-FINAL_Mellow (1).pdf
- [24725] spaces/-Mk3LEacyGwD8y6mb9-2/uploads/EKdTZHaxv3h0qKauW9TU/NM0735-FINAL_MELLOW (1).pdf
- [24726] spaces/-Mk3LEacyGwD8y6mb9-2/uploads/M2HU6Mm6042D009NBVaa/NM0703-FINAL_MELLOW (1).pdf
- [24727] spaces/-Mk3LEacyGwD8y6mb9-2/uploads/uoD71STRiDu2ON8SHpvK/NM0682-FINAL_Mellow (1).pdf
- [24728] spaces/-Mk3LEacyGwD8y6mb9-2/uploads/Ns4351hVFYzadiFii2az/Nethermind_Mellow-Core-Vaults_20250903.pdf

Fork inheritance lineage and inherited audits are included when available.
