# Agentic Audit Brief: Gravity Bridge

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Gravity Bridge (`gravity-bridge`)
- Website: [https://www.gravitybridge.net](https://www.gravitybridge.net)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 106 unique implementations (142 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $6,024,168.71
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Gravity Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Gravity (`0xa4108aa1ec4967f8b52220a4f7e94a8201f2d906`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 105 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Confirmed-live implementations: 1 of 106 unique; 105 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/74
- Verified + Unaudited implementations: 74
- Verified by bytecode match: 0
- Unverified implementations: 32
- Unique implementations: 106
- Raw deployments: 142
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (74)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa325ad6d9c92b55a3fc5ad7e412b1518f96441c0` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x407be32cb513d6984935123eb1d9129d1472ba85`; ethereum `0xf6c20fb946f01ab573b4919ff1959b6e36f9d762` | ⚠️ Unaudited |
| AidSquadToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76b16aa88f932c309abc421f1a9e5c545ff6e28d` | ⚠️ Unaudited |
| aiORAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dcff4f1653f45cf418b0b3a5080a0fdcac577c8` | ⚠️ Unaudited |
| aiUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50410884462a075f27fd1c9030b955f2abe798d7` | ⚠️ Unaudited |
| AnyswapV6ERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd23ed8ca350ce2631f7ecdc5e6bf80d0a1debb7b` | ⚠️ Unaudited |
| BandToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba11d00c5f74255f56a5e366f4f77f5a186d7f55` | ⚠️ Unaudited |
| BatchTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebdaba95213c13bbd738680dbfc3e1b856c0f932` | ⚠️ Unaudited |
| Blocklist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fbef5a068bfcc4cb1fae9039ea716eaaadaea82` | ⚠️ Unaudited |
| BridgeBank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2034c9194de45ffe5ba382868115daebe32c3f53`; ethereum `0xeca46baed9fbe8543b5963571aa93762343b7f9f` | ⚠️ Unaudited |
| BridgeBank | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb5f54ac4466f5ce7e0d8a5cb9fe7b8c0f35b7ba8` | ⚠️ Unaudited |
| BridgeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5c350c858035a5dc8a64faa52a13bb926b1dd0bd`; ethereum `0xaab00d9bdbd49257b01a7bf444acee5a8b87a4b3` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x07bac35846e5ed502aa91adf6a9e7aa210f2dcbe`; ethereum `0x3de8006b2c571ebc19a5d3a85a0940a7a9339470`; ethereum `0x413e8196e7d6d2c02a6bccc46366f881017ea479`; ethereum `0x4c67b8392fc17892338d590e5ae1ab7be485be50`; ethereum `0x55e9d73f7bf359ab7c2e6f441f425e212ad615e8`; ethereum `0x56667705df047677a15d3d417a138b10b6ed62c4`; ethereum `0x714bfd06da6eb24fac379f0d9debfa85261bf439`; ethereum `0x7588fefd8d087a7ee3f568087190209f7b449b28`; ethereum `0x8ea2645cd39d5e0c901bca25df8d0998a6926cf2`; ethereum `0xa4bfc52b96531d2a3412089c04a5411c56f7c1d2`; ethereum `0xc81978862b6ce566400579a5f8975732d42bd410`; ethereum `0xcf9902b43d01d7c6cd5c12e0c1112cc2c4fc4ec5`; ethereum `0xeb5bea778339e5f0c8d9419cf9891445af823a29` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x93581991f68dbae1ea105233b67f7fa0d6bdee7b` | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x467719ad09025fcc6cf6f8311755809d45a5e5f3` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x35e05ea793eb20fe9b75c55bc0c51d8a7017100d`; ethereum `0xe48b40b3003d6ef728f42d7fc1e7e3ce8e2dfd0a` | ⚠️ Unaudited |
| CosmosBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x72eb0df009b8ea2441de78f073338620b625adc3`; ethereum `0x7e5b2a7a9f11e406c7cc38b5e2ddeafc8c5eaf65` | ⚠️ Unaudited |
| CosmosBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe1fa4a1f92276e21d1a358a03900a21663bb6b4a` | ⚠️ Unaudited |
| CosmosERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xa670d7237398238de01267472c6f13e5b8010fd1`; ethereum `0xc0a4df35568f116c370e6a6a6022ceb908eeddac`; ethereum `0xea5a82b35244d9e5e48781f00b11b14e627d2951` | ⚠️ Unaudited |
| CroToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0b73e1ff0b80914ab6fe0444e65848c4c34450b` | ⚠️ Unaudited |
| CudosAccessControls | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefb546ec7babc97af3791033cc3ca1cc1f680993` | ⚠️ Unaudited |
| CudosToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817bbdbc3e8a1204f3691d14bb44992841e3db35` | ⚠️ Unaudited |
| eCHF | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdbcd3a491ca357e8ce347e6b45c146e28667e23` | ⚠️ Unaudited |
| eDKK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60db53521c1563c89e55d9fceda8d47f55c14d0e` | ⚠️ Unaudited |
| eEUR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0badd7af129efac1f7bb7253716a589cc5e6c17c` | ⚠️ Unaudited |
| eNOK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ec749faa086bb604b96bfe02bd49c53cef47ea5` | ⚠️ Unaudited |
| eSEK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f7f6531af9792c9a42e2befced5ed81c0d63a23` | ⚠️ Unaudited |
| FetchToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x031b41e504677879370e9dbcf937283a8691fa7f`; ethereum `0xaea46a60368a7bd060eec7df8cba43b7ef41ad85` | ⚠️ Unaudited |
| GeoToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x147faf8de9d8d8daae129b187f0d02d819126750` | ⚠️ Unaudited |
| Gravity | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387053 | `0xa4108aa1ec4967f8b52220a4f7e94a8201f2d906` | ⚠️ Unaudited |
| IbcToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x0c356b7fd36a5357e5a017ef11887ba100c9ab76`; ethereum `0x1c700f95df53fc31e83d89ac89e5dd778d4cd310`; ethereum `0x76c4a2b59523eae19594c630aab43288dbb1463f`; ethereum `0x8d983cb9388eac77af0474fa441c4815500cb7bb`; ethereum `0x93a62ccfcf1efcb5f60317981f71ed6fb39f4ba2`; ethereum `0xa7e560767ede1c0f54da44a7b95e1d3efe84ded3`; ethereum `0xae837eacbae2a6ba166ce0ded5c72340f212835c`; ethereum `0xafd70a528cd5c172de51993c0c4734b205e40062`; ethereum `0xc727f87871ee12bbcedd2973746d1deb7529aad6`; ethereum `0xee59b43149cead680aedf8778163ce8cb8c8a6fb`; ethereum `0xeee10b3736d5978924f392ed67497cfae795128b` | ⚠️ Unaudited |
| InjectiveToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe28b3b32b6c345a34ff64674606124dd5aceca30` | ⚠️ Unaudited |
| MerkleAirdropFinal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf975a51cc8a2129583c973df14ef51c4404f309` | ⚠️ Unaudited |
| MNW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3e4ba569045546d09cf021ecc5dfe42b1d7f6e4` | ⚠️ Unaudited |
| MNW_tokenswap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1a226fefd114ec0fe0ea87bc9d0b371dd2b2051a`; ethereum `0x79582682fd3912d52afa282006e8689c8c1e20fe` | ⚠️ Unaudited |
| MobixToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5311cf987ad2b8087d7d83efc379d6f916cb9999` | ⚠️ Unaudited |
| MultiSigWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79481133237e468c326bb7a8e54dc249d231eb7d` | ⚠️ Unaudited |
| NGM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed0d5747a9ab03a75fbfec3228cd55848245b75d` | ⚠️ Unaudited |
| OraiToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c11249814f11b9346808179cf06e71ac328c1b5` | ⚠️ Unaudited |
| oVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52746b187f6544b0d590dcd34f3ababf5ffee128` | ⚠️ Unaudited |
| PepeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6982508145454ce325ddbe47a25d4ec3d2311933` | ⚠️ Unaudited |
| Pluton | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8912c10681d8b21fd3742244f44658dba12264e` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8d121094fd25a48aff882e3f6406645ad94fae1b`; ethereum `0xd60500f92b59b4d02664442e023408bad3725133` | ⚠️ Unaudited |
| pStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb5c6815ca3ac72ce9f5006869ae67f18bf77006` | ⚠️ Unaudited |
| StrategyDForceUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bf729b3ed116501cb0912ece261ad9e1bfce791` | ⚠️ Unaudited |
| TokenGeyser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7b1be7f8e6431514b20029cb7f2242ff9081b4b2`; ethereum `0x8cfad371918ac38568588717bfeb802fd19a0d58` | ⚠️ Unaudited |
| TokenImplementation | token | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x43373ae537945085ee1001928e96204034bf55e6`; ethereum `0xa693b19d2931d498c5b318df961919bb4aee87a5` | ⚠️ Unaudited |
| TokenMintERC20Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35a532d376ffd9a705d0bb319532837337a398e7` | ⚠️ Unaudited |
| VestingContract | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3ccb8fb2533e51893915908ceb85763ceaea97b` | ⚠️ Unaudited |
| Wallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6024a56a731447eba57f5733aa65d8a519653404` | ⚠️ Unaudited |
| wATOM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cdb2230dda231dbf3ebbd2a5ef9570a24398b53` | ⚠️ Unaudited |
| WrappedKRT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaaff72a8cbbfc5cf343ba4e26f65a257065bff1` | ⚠️ Unaudited |
| WrappedLuna | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2877702675e6ceb975b4a1dff9fb7baf4c91ea9` | ⚠️ Unaudited |
| WrappedmAAPL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc199e74f633af6c2f5978a6e4598aaf47edf0d42`; ethereum `0xd36932143f6ebdedd872d5fb0651f4b72fd15a84` | ⚠️ Unaudited |
| WrappedmAMZN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cae9e4d663793c2a2a0b211c1cf4bbca2b9caa7` | ⚠️ Unaudited |
| WrappedmBABA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56aa298a19c93c6801fdde870fa63ef75cc0af72` | ⚠️ Unaudited |
| WrappedmGOOGL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59a921db27dd6d4d974745b7ffc5c33932653442` | ⚠️ Unaudited |
| WrappedmIAU | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d350417d9787e000cc1b95d70e9536dcd91f373` | ⚠️ Unaudited |
| WrappedMIR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09a3ecafa817268f77be1283176b946c4ff2e608` | ⚠️ Unaudited |
| WrappedmMSFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41bbedd7286daab5910a1f15d12cbda839852bd7` | ⚠️ Unaudited |
| WrappedmNFLX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8d674114bac90148d11d3c1d33c61835a0f9dcd` | ⚠️ Unaudited |
| WrappedMNT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x156b36ec68fdbf84a925230ba96cb1ca4c4bde45` | ⚠️ Unaudited |
| WrappedmQQQ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13b02c8de71680e71f0820c996e4be43c2f57d15` | ⚠️ Unaudited |
| WrappedmSLV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d1555d8cb3c846bb4f7d5b1b1080872c3166676` | ⚠️ Unaudited |
| WrappedmTSLA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21ca39943e91d704678f5d00b6616650f066fd63` | ⚠️ Unaudited |
| WrappedmTWTR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedb0414627e6f1e3f082de65cd4f9c693d78cca9` | ⚠️ Unaudited |
| WrappedmUSO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x31c63146a635eb7465e5853020b39713ac356991`; ethereum `0x4fd69d2a7d76c0564a984a79972aad628750f214` | ⚠️ Unaudited |
| WrappedmVIXY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf72fcd9dcf0190923fadd44811e240ef4533fc86` | ⚠️ Unaudited |
| WrappedSCRT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b89bf8ba858cd2fcee1fada378d5cd6936968be` | ⚠️ Unaudited |
| WrappedSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x676ad1b33ae6423c6618c1aecf53baa29cf39ee5` | ⚠️ Unaudited |
| WrappedUST | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa47c8bf37f92abed4a126bda807a7b7498661acd` | ⚠️ Unaudited |
| wTAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77e06c9eccf2e797fd462a92b6d7642ef85b0a44` | ⚠️ Unaudited |
| XFUND | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x892a6f9df0147e5f079b0993f486f9aca3c87881` | ⚠️ Unaudited |
| XKI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4f6103bad230295bacf30f914fda7d4273b7f585` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (32)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x3b3d57a4205cf54276e79bf53b9748ec8a44a4a2) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc187c9782364e3db55802f3a51ac887ca8d1b43a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07e2e3619a69727a420d368d571d457e137403d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x081b3bad625835d57bba294f25054bac19246947` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d74be1f113a1854ab1cd7b33b3e3b44a1c02250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x289268e0b5f05e514834ea37aa9777ce077696a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29dbb73e3c7a43fb1f4b647b022ef0158f3153a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a6fcf8d229cf1df6bcaaf46bda94925b084ddfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a9714aa672419cd189dd8ac06fc61478573ba2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3088661b3c3f5b40ccecc6135da7d292cc1ebf47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33ecc0c02fa468fcbb9556e6f44a65bf2560cc92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35abb21528ae8e53c36039d9de9e85a774c46216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a32406ea448c67af05105e18bbc267c5692fd7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d5c50f93c6b307de88b4c63212cca746673278f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d03d74d3a89064ef5b294852e8ae499774b7068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f82c5d72a64379529f2ab731b447b8760ff418a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71b460b26ecf17d0b02cac595c86b6279375cb5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78850f0822c8da6a9d06031360f2b7ed1694105e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bc16c60f46a252b0341a9cc9a6e00d759d25b56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dca5685067e5df9d6efbf9657496e682c16b893` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f38e2fb45c7efa8af6981be0bb46a4b61c2b8f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3fb6dadc973e43188492037aab279a8e36f1320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab6bc3cdf2c0687fd698e798369c08e4256f001c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf9136559026fa9a8e216c34c94c86fc42cd6373` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4d6bafed9c6451aeb15665982b55af5913f22cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc79486741f488369cf814cd801e5d9cde305af78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb75d3af34cd4246e5267540532423ab6e8624d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd95350c69f229e72e57a44e8c05c436e65e4beb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7419f02a2633b1d0fbe0d2fe65e526218fefc92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe190d4cf31599c33c028355b781814029d1b7a9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5eb74f2e4e17080effd35556cf860f34fdb1e28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5f2624521db6cdeb4147b429754dfbc05abe0a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec59e173a4af31ebe657573e9e3ac73d24e32f6e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xa4108aa1ec4967f8b52220a4f7e94a8201f2d906` | Gravity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 70 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 32 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
