# Agentic Audit Brief: Cryptex Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 9 (1 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Cryptex Finance (`cryptex-finance`)
- Website: [https://cryptex.finance/](https://cryptex.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, optimism
- Contract surface: 117 unique implementations (323 raw deployments)
- Coverage basis: 2/3 confirmed own live verified implementations (66.7%); conservative 66.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $493,739.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Cryptex Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across arbitrum, ethereum. Structural roles: 2 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (2), supporting (1)
- Contract kinds: contract (3)
- Detected standards: erc165 (2), ownable (2), accesscontrol (1), erc20 (1), pausable (1)
- Frameworks: chainlink (2), openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ETHVaultHandler (`0x717170b66654292dfbd89c39f5ae6753d2ac1381`, chain 1)
- GovernorBeta (`0x874c5d592afc6803c3dd60d6442357879f196d5b`, chain 1)
- TCAP (`0x16c52ceece2ed57dad87319d91b5e3637d50afa4`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/3 (66.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 113 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 3 of 117 unique; 114 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/89
- Verified + Unaudited implementations: 87
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 117
- Raw deployments: 323
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 2 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Unknown | Tier 2 | 2 | 2.2% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ETHVaultHandler | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-234520 | `0x717170b66654292dfbd89c39f5ae6753d2ac1381` | ✅ Audited |
| TCAP | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234518 | `0x16c52ceece2ed57dad87319d91b5e3637d50afa4` | ✅ Audited |

### ⚠️ Verified + Unaudited (87)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Account | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xca7fb0afb7622a982a70c5efd2aa387257a0e826` | ⚠️ Unaudited |
| AccountVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0e9d1df540acb30a321d3d3edd4996e0248aaf5c`; arbitrum `0x5012e7c9615d9086d2516e1722514c40253c67b7` | ⚠️ Unaudited |
| BalancedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 16 deployments: arbitrum `0x08883b1c4ff2ed90d7b424390eb80ba8825fe1e4`; arbitrum `0x477fb965d22b82b02c3fe853cf33bc1c5708385e`; arbitrum `0x485b466c45f7a9ac464db0f4eee3d234804bd618`; arbitrum `0x566aded4e644f40a6a943c40bd40a2419d5d517f`; arbitrum `0x68f680607a5c32cab860f84f5f5e9f9497f66535`; arbitrum `0x741fc06b5de25ac5b31f54b92ee3bf1c97bf8666`; arbitrum `0x7869fd0edcfff8c05600cb71826e59a3ad860938`; arbitrum `0x78c8b241005268895f8ab78c0fe8f72867cd63c2`; arbitrum `0x973f2a9e1d6e58c7fe07e0eb7ccbd2cfe02c5a3a`; arbitrum `0xbca6d5de39c50a863d603702101ab776ce525c3a`; arbitrum `0xbd454fbad8f0e9fae5c830d0cc1e698444445773`; arbitrum `0xc084289433305121e6e997877dac4f8ee5f25656`; arbitrum `0xc5e9ef91dc7e1d99bd44f9690ff0b982caf846b9`; arbitrum `0xda17b128bfd23112e946fb4e7ba162029d7d1cde`; arbitrum `0xdeeb41dc9c86575aa093a6b091e92b8256d8fd31`; arbitrum `0xffe829f928cb8c07961bfff04512ac0749d65d27` | ⚠️ Unaudited |
| BatchKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x5a8557449c05fa515fea099178d42b9415b9f118`; arbitrum `0x8b4e6f5e1b2be9c4a9fd4dee216fdbbdd67b05b6`; arbitrum `0xb092493412fcae3432487efb33204f7b4fef12ff`; arbitrum `0xb5ae2b4e766f2714129720d88a0934feb6c90ea6` | ⚠️ Unaudited |
| CentimilliPowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x33117f64e6faca60605988f0ffdbd11074116d1c` | ⚠️ Unaudited |
| ChainlinkFeedOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x3b9b0217a19bb454aefd54015a97500d82170bc5`; arbitrum `0xdc518208c11159844188f647413a427cbd70a3b6` | ⚠️ Unaudited |
| CheckpointLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x609f9888e9c1691abe1b2ce1a228f193c093a1d2`; arbitrum `0x825b2f8c2b992891f0c9a835d5793e09602f212e`; arbitrum `0x960e20a297fce472b9e060428fc92fce34d83bee`; arbitrum `0xedfc300c9a1a33b014c8cc360e71555ccae667ca` | ⚠️ Unaudited |
| CheckpointStorageLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x074fb1073b24f85b52337b7dfea2d2cb5b9406d9`; arbitrum `0x154ae7c2af949357e0713d3676fc220fe7ea4403`; arbitrum `0x40ffe6eb459a50fea7d0f5aabcd833764130bcf1`; arbitrum `0x67ae97db22bb707ada7993a16d2fc7a905215ea6`; arbitrum `0x82853abe11f6139978bef4e84b169cd9fab2c794` | ⚠️ Unaudited |
| Collateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69a682f90d58c8d1abea18ae1bc98c9a1be4f2eb` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa8b58125953c7f2948e82a4558c745c1cd3237ee` | ⚠️ Unaudited |
| Controller_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x197de1b26ad733380fd22159a2671f497a6ddd7c`; arbitrum `0x28046a0bbc1b655a915fb110aa5ffeeae40d5410` | ⚠️ Unaudited |
| Coordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x0ecb017ed5d35807ce6b6f0c8308edb8b7edcc5e`; arbitrum `0x161cb5f6845c7ee7442322fb3a3c2fec960faac8`; arbitrum `0x86a2b58445986ed5e6c43be8f2e7b9dcb0128092`; arbitrum `0xdc15211a60d4c17f83538e5914ec8464164edd14` | ⚠️ Unaudited |
| Ctx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x321c2fe4446c7c963dc41dd58879af648838f98d` | ⚠️ Unaudited |
| DelegatorFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70236b36f86ab4bd557fe9934e1246537b472918` | ⚠️ Unaudited |
| DSU | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52c64b8998eb7c80b6f526e99e29abdcc86b841b` | ⚠️ Unaudited |
| ERC20VaultHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x2364536f4891ed560a6728f4b36871de8176ee5c`; ethereum `0x443366a7a5821619d8d57405511e4fadd9964771`; ethereum `0x56549e2fe1d9f0a9556f92494d04f263a5011a00`; ethereum `0xa5b3bb6e1f206624b3b8ce0c6a0f7614fd35fa03`; ethereum `0xa8cca36a624215a39d5af6854ac24868559424d3`; ethereum `0xada39d170551daf42822e1d3da64efebbd14d1d3`; ethereum `0xbeb44febc550f69ff17f8aa8eec070b95ef369ba` | ⚠️ Unaudited |
| ETHVaultHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2ba6b8e0ee3cf48b045d966f1dcda767df74833` | ⚠️ Unaudited |
| GasOracle_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x038901cc5d0ae04603e6f44819600badbf4a2bc7`; arbitrum `0xfd12a71a02154b44f70bcbe9990bfe20d53b05e4` | ⚠️ Unaudited |
| Giga | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x234253280a5427cb9e198367b6804dba9fcab7dc`; arbitrum `0x7a98efce4a399794ae7524faeb2cc6a8ef730fcf` | ⚠️ Unaudited |
| GlobalStorageLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x0b18a9a54bb159f4e5f7b6db57445be255291ed0`; arbitrum `0x3b4b4ebcd2aa610173243adbb1ffafd1fab9e479`; arbitrum `0xad4a7b0d821b955492d9bea6776cdcc33ee8cac6`; arbitrum `0xcf1384b31af4dce7a52f34550a876e062d1f697d`; arbitrum `0xf864f016ae109f6a0c6c0e156b6eb0ff551524fd` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x271901c3268d0959bbc9543de4f073d3708c88f7` | ⚠️ Unaudited |
| GovernorBeta | governance | project_anchor | own_supporting | 0 | ethereum | unit-234521 | `0x874c5d592afc6803c3dd60d6442357879f196d5b` | ⚠️ Unaudited |
| Incentivizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b495f170bfcba51db96ff16ba8bc4686cfa92b4` | ⚠️ Unaudited |
| InvariantLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x1451bacef80518fea01fded8e32ccccc68c1a8c8`; arbitrum `0x581c684376a3f23f930cc33b217f2099a7a2ad34`; arbitrum `0x63f314ed6b017c9a42138a59577609f05a140c95`; arbitrum `0xaae7b0f787f4dc03db1cc5bd6ffb0b065afdeb0a`; arbitrum `0xf733681de4c6ec0ae28354c4cd1a0698c534e35a` | ⚠️ Unaudited |
| Inverse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd166f9972dd6f95aaac6710716d45bb30430b5e9` | ⚠️ Unaudited |
| KeeperOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x1990fa13ccef6100703a6999c90c0493a740f1d8`; arbitrum `0x2a9cd101b90cae856f8484062516035f4ecba3de`; arbitrum `0x81e521e3fbb970255bbfd312d95fa942db39a1c7`; arbitrum `0xebd02f02f147cc5f2db4a6b7ebddb8f45b10135a`; arbitrum `0xf2f4d5a14d948dcbe055b957104100eca7d1b676` | ⚠️ Unaudited |
| KeeperOracle_Migration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa3186bcc1a64edabd13b7de0faaecbce3e12641b` | ⚠️ Unaudited |
| Kilo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xde7e2d1005ea46a0e261e243f762fc7ca849acab`; arbitrum `0xee590e6e3a39fefac33f21462938c621c08a8d8c` | ⚠️ Unaudited |
| KiloPowerHalf | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x7aaf9184ee1299226d46ffeb36595bb8d0edf753`; arbitrum `0x8da96a2ede1dd5af8bd3bd142226820f6bb09751` | ⚠️ Unaudited |
| KiloPowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf94f18fe7ef42eee309ebfc287f2f425cb16cbc9` | ⚠️ Unaudited |
| LiquidityReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: ethereum `0xc8bb1cd417d20116387a5e0603e195ca4f3cf59a`; ethereum `0xdc4cdd5db9ee777efd891690dc283638cb3a5f94`; arbitrum `0x938f145d5f3abf681618dcc5c71f095b870747ba`; arbitrum `0x944cfb09bc40ce43ec7f471297ef83a325ba78ff` | ⚠️ Unaudited |
| MagicValueLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x28158dcebbb6b5e69a5a5a26f5fe9a8d199df48c`; arbitrum `0x40e52d4dee5fb7a703fc61f6174a9212bd65f091`; arbitrum `0xe022bf9ae45f0c3657c88a256fdf0f8419bdb1be` | ⚠️ Unaudited |
| Manager_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3af57c0f8e76277f58ca09d03ace050c5dca4671` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: arbitrum `0x17ebca0060c3e84812ab4e208cc33e5fd8a3b255`; arbitrum `0x8d3ff02d6a11f2517b00d6cb1d789c197e4b1e11`; arbitrum `0x937c6a0e76d424680685e5bd660b6dc0a9b8d8bc`; arbitrum `0x97b0723bb3a8939e34674f6ab1d5760723e17e8b`; arbitrum `0xa092f444ed2908b75f09da636e9e70c440642b43`; arbitrum `0xb43e8290fe8239cf5f9b7e30d5cb52a6fe061efa`; arbitrum `0xb5aa1d6f7b6ba69176a38accf4012fd865fcfc06`; arbitrum `0xbda0b3e2b24b52b852f86385dbfd6e376ab882d7`; arbitrum `0xd5fbf1e37786a4507ec115bb35a938ddcbae137d`; arbitrum `0xed4b2545510336236760f523890dc38b3e01ff26`; arbitrum `0xfb4a12e285bbf9eff066362aea7bf4e4d20b0e3b` | ⚠️ Unaudited |
| MarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 12 deployments: arbitrum `0x046d6038811c6c14e81d5de5b107d4b7ee9b4cde`; arbitrum `0x0c698e79c2fd7cde1505f3177c7f3db69c095176`; arbitrum `0x111cf6ebe15371f81deef05e31c8071903c6fe10`; arbitrum `0x28876df471f5d1ce9ccb20e334355c9707368599`; arbitrum `0x2dddd13474b40b263543c8e931dda14d74f353c8`; arbitrum `0x3dd09c846149e50d412cdce968e1d912117ff937`; arbitrum `0x563d459672e87a8e89b41942616751c795de30bf`; arbitrum `0x64bd54a16b80151a07548b5f06735af35a17a4ef`; arbitrum `0x822900eb10400ec1922a60ee2ffcfc1847d2dc71`; arbitrum `0xac8ab380eb8462e132a8ab858ea4e9072067430c`; arbitrum `0xad335343ea59e0d3eb8ce91b95779c6647f10dde`; arbitrum `0xba313a198c18ced2c3a05e48e9fb065e079df207` | ⚠️ Unaudited |
| MarketParameterStorageLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x0d07e3a272f5666d10aefc611d0f693b4a8f2e16`; arbitrum `0x1016b0e925078ccd844ea7931bcf942033a1b47f`; arbitrum `0x592f4615862bc6b2d6e2fdaec682a9b25b07bfad`; arbitrum `0x7fdf2932648635ff31851eb417a9ea6ec37fe834`; arbitrum `0x8a159cdb5fa8af4a71f987f3fb2d5229ec63c758`; arbitrum `0x9d9be6c52647ed63d72da876f1112be8b3602cf8`; arbitrum `0xa594130ed88271ae0e5eccb782555fe4bbe59020` | ⚠️ Unaudited |
| Mega | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xffb33f838096cf3c3c7dd21c1f941bb2705248e1` | ⚠️ Unaudited |
| MegaPowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe833e9bd294d9f1e1760bdc88c01c8dea4f0f7d7` | ⚠️ Unaudited |
| MetaQuantsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x309ad3771baea8de1bf1cf6a1bfb4ceeb65687f1` | ⚠️ Unaudited |
| MetaQuantsFactory_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xa7df5fb2fb55671d22d78a188d9301e383ca0b5c`; arbitrum `0xb744f7e8e97bb6cea1698147771d98233579a230` | ⚠️ Unaudited |
| Micro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f7a6cced29712fc5b102e730c27324a01e74179` | ⚠️ Unaudited |
| MicroPowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18ad45bdda468259257e46ba07de6cd3d88cd632` | ⚠️ Unaudited |
| MigrationReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0d49c416103cbd276d9c3cd96710db264e3a0c27`; arbitrum `0xaff9b28730779f5027ee08a4e8823f983697e1dc` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfec741688146382489c4266e08bcbf4733fb6d84` | ⚠️ Unaudited |
| Milli | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae794c750991b19485e17788d1a19b83ba68bd62` | ⚠️ Unaudited |
| MilliPowerHalf | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbca65ce3629167600d52492b61a97627305f4e0e` | ⚠️ Unaudited |
| MilliPowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x443cef645e29ae12c053f358b2875df0b9a43166` | ⚠️ Unaudited |
| Multicall4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b12ff03edd05318b84b0d89cb3e5c40138fe607` | ⚠️ Unaudited |
| MultiInvoker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x14c4448239175ca72dea15c23615ad6f5144c26a`; arbitrum `0x18d1e8c75d7d3b91307bc08d85eb746a418dd2d3`; arbitrum `0x2b99224dad73d7d84b7c74e9161bbd0d01a2a15b`; arbitrum `0x9553e2943256f877824f2db39415290037b98653`; arbitrum `0xf56f08bbddd53a2151be08e32f43f91f657c9b4e`; arbitrum `0xf94719f0451d872d651e49e6fa6458c0eccfe9ae` | ⚠️ Unaudited |
| MultiInvoker_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: arbitrum `0x0092f3a5f211333c5427605a6df76b35dcfdd873`; arbitrum `0x05075e459220b28e817b2f64cc48d0e444636967`; arbitrum `0x1da92fdee7642bbdc1a0dc5f26f3bcb942579ea1`; arbitrum `0x31e1d5c8e8646cd581a4d930b3e5bfe12069c189`; arbitrum `0x56ccf5b7041d70394339089966c12dbd043dca04`; arbitrum `0x58d8dabbb940d0fd89298831db45d566cd958102`; arbitrum `0x8c832620b38b15e5bb70341dd93cd311d5b82a1b`; arbitrum `0x9d2725bca77a816929794ea1c7ddfe2e5c1d8542`; arbitrum `0xa910e37d012a07f7a18a97e99f6a81a0637b1443`; arbitrum `0xc1c1682d396f317c61b5001fb7169b95f3b1ba8b`; arbitrum `0xf8b26ce5e0b70d7e49a271a882d7e48404e5fd43` | ⚠️ Unaudited |
| Nano | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1cc0e7883dc01cca0cc7a04b1eb3e51c290645e7` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x0a47bb5e5260619204a578bd477204fce6246bb7`; arbitrum `0x462a32c5d795dafd4dc9622321a1970c8bae0d79`; arbitrum `0x5cb82695a206b5c7d0a8fa5c747ea4414614f650`; arbitrum `0x93834cc1371e92de58a76e05e78ab38834ed1d97`; arbitrum `0xa7e49ff62c323d565dc02bef7ee59cf5362feffe`; arbitrum `0xd16882eb785140710ae5e037241d1e859b2a5514`; arbitrum `0xde46f8407772a2244befc1bda3e6cf37feb53749` | ⚠️ Unaudited |
| OracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x19a4010e859ca3d10f0d928c6665f9a9e3be4b22`; arbitrum `0x62fb1dc193ab898e5984afcb53d25f580f4fc2de`; arbitrum `0x8747a900de237ed9a478fc1d9325e41a17e05d3d`; arbitrum `0x89cbd5bb980dbe1b9ae960b987ae71f18d991b83`; arbitrum `0xe299ac46738974689fcd42e4ba41c3ed9b41c7bd` | ⚠️ Unaudited |
| Orchestrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x373c74bce7893097ab26d22f05691907d4f2c18e` | ⚠️ Unaudited |
| OrderVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x886e59002dff8b10f4e777ca3a6ca6c3e6908581` | ⚠️ Unaudited |
| PayoffFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf817521610600c4674364246a5cf4af8e627805d` | ⚠️ Unaudited |
| PerennialLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1593318424df66128cb7d0c5574b1283c3a74c3d` | ⚠️ Unaudited |
| PositionStorageGlobalLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x3f96f8411454c2764742131b95868de422a3ab6d`; arbitrum `0x5f52a20d8126ef29d813f522aa254f92500e0b92`; arbitrum `0xa9e35cdcf878623c7a2aa19efebad73634dfb76d`; arbitrum `0xb1c72d544c725dd240aaba4eb48d670ca839ad0c`; arbitrum `0xd4ccf675b3bf6536990cc0b1d937f6db8a8b2541` | ⚠️ Unaudited |
| PositionStorageLocalLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x3d43c9b84546c9658cdfd184478ecb5d3b745a4c`; arbitrum `0x864a9a27cfcb4609a6e2d52b1a4b27f575813712`; arbitrum `0xb5cb0bbe900feee7f23f7bd785cd07032928b334`; arbitrum `0xdd379e802edf38fbeae6d007d7d122b2a8ef57c1`; arbitrum `0xfe8fa955f5b42b6db237ad84f9a20b7beac9ea25` | ⚠️ Unaudited |
| PowerHalf | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x07b891ae5e0eeaf7fb407552c28eac785ac8af9c`; arbitrum `0xf2accbc4cd9c8b669bcf69230abfcac2253d7a3d` | ⚠️ Unaudited |
| PowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x6b1c4978142a9bc9dd5777866aa8ad610ded696c`; arbitrum `0x86570720a51f82243bce3208581655c87ddeb367` | ⚠️ Unaudited |
| Product | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x427bc8694ea59f063b7caa43e3dd77d416922250`; arbitrum `0x9df509186b6d3b7d033359f94c8b1bb5544d51b3` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x130aa82d0b3688ee9d6d29f646c2b6abf63015db`; arbitrum `0x16b38364ba6f55b6e150cc7f52d22e89643f3535`; arbitrum `0x4f75cfbfc8b4a109659471b8d4593f5b19be169b`; arbitrum `0x5bea99bf18624aa504580546ac9d9ac3b9aeb747`; arbitrum `0x920cd4ff5496d270691216596502d803c59d120a`; arbitrum `0xe8497afdfc1044f7f5acc585a0e637f96df5d2ab` | ⚠️ Unaudited |
| PythFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x63dd4059971a9e24810a2aea222460aca6687bb6`; arbitrum `0x709e67f0080e0064458164f13b0abf342efde10d`; arbitrum `0xa19621c0a3f6451235672c7fe389d3e85d89b43e`; arbitrum `0xc67c133685a5aa3b0157045a009548b9e8671219` | ⚠️ Unaudited |
| PythFactory_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x143c5ec02fde403c73245b94dec621f05c74c1ad`; arbitrum `0x17bf3d01a17450762cfb1a19b16198e67006b46a`; arbitrum `0x1b0d2f2bb3016c3d62d60a9bbffd947803991d1c`; arbitrum `0x76ad42cfb3b32a5a4b8e1a8b1fcbe24498ef767e`; arbitrum `0xaad878cd67f6332a222253aad31f11e13337026d`; arbitrum `0xec67a2c239a35ff924214cc3a22e587696ac7290` | ⚠️ Unaudited |
| PythOracle_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x7a18a52ef9ab4e2ede9113ef13483ed18b395ca7`; arbitrum `0xa0f11b2735fd8f5ec8d3f3ef6d7853f59398e94b` | ⚠️ Unaudited |
| RebateHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x33a8a8c43c6077ae0d3ab9599aa2189c75fd1d33`; arbitrum `0x798d986239333d4fa9d7bdf1b143c3f022ae580b` | ⚠️ Unaudited |
| ReferralHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xedbbcbff9631bd372671943d41713d3ea37cdade` | ⚠️ Unaudited |
| RewardHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1a14f9367db41400be5d38a0bc48d4cc2e4b7157`; ethereum `0x5b577578565c2404bb84e734f583cf8523236ef1`; ethereum `0xe0c99c503c4ae5ec50ac63c59c7ef4725c355fdd` | ⚠️ Unaudited |
| RiskParameterStorageLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x02608dd5a2627cb5908f948b3adb9ce437aa0ca7`; arbitrum `0x09928519f6cf2f784168c36dcb3e8b8961d09aed`; arbitrum `0x2071ff1631284a2b7f63c2d94a18780a7420a996`; arbitrum `0x7627f62dd8a31dcfb300424f00e7819b503f2cd8`; arbitrum `0x9e5345409e2a7e6cf0417a3f6a6a680340adbcf2`; arbitrum `0xc24fef7bb2f7ab454a3f982ed3b4b8268ff850bd`; arbitrum `0xd6c0026a134891304e1df7ea61f95e99c66a8c03`; arbitrum `0xe02bade78ae492e78383b04d6f25d521ff961d20` | ⚠️ Unaudited |
| SeasonalMerkleClaim | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x4fc1cc62e5d0b12f5a9e3213b4177d2edb301f30`; arbitrum `0xcdca57391e51cc0b6282192212ca940a7ea314b3` | ⚠️ Unaudited |
| SimpleReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58e0c542ab540e0dd3b4fd96cc46b0aad1196bfe` | ⚠️ Unaudited |
| SingleBalancedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1960628db367281b1a186dd5b80b5dd6978f016f`; arbitrum `0x9ba0463b641909f68d9e670645bfbf84909ec17a` | ⚠️ Unaudited |
| SingleBalancedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x1ad5204ef17204ad28b728e7826951241587cd1f`; arbitrum `0x61fcc50003b0fbabad47b5ac74becb6d1e0361d1`; arbitrum `0xb93ac2c7f99c45873625952f3069834df20b65be` | ⚠️ Unaudited |
| TcapPayoffProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa31594b41ea218a07ae0e8a9d955b3913cde3832` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa54074b2cc0e96a43048d4a68472f7f046ac0da8` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x37fa204b282e46f54744660bf3df48b43a554ebc`; arbitrum `0x4aa8b447417815807b955757a6d1b78b86f3ad22`; arbitrum `0xda381aed086f544bac66e73c071e158374cc105b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 25 deployments: arbitrum `0x2b87c59f5220ee51616ad2273b5f683d5ea27cbc`; arbitrum `0x431603567ecbb4aa1ce5a4fdbe5554caea658832`; arbitrum `0x4d635747d326017caff996aa19c75c1fa9c2a75c`; arbitrum `0x5a572b5fbbc43387b5ef8de2c4728a4108ef24a6`; arbitrum `0x663b38a93fdc2164d45f35051b0f905211d1c9e4`; arbitrum `0x6b60e7c96b4d11a63891f249ea826f8a73ef4e6e`; arbitrum `0x70d803f5f3681aa6384550562b56d60176c96e71`; arbitrum `0x7c65ab8fc1f2d31c7144e148dd900ea4edc7edd3`; arbitrum `0x8bf8a44a6b2f4a174404854ec14c05204cf31da9`; arbitrum `0x8cda59615c993f925915d3eb4394badb3feef413`; arbitrum `0x9f35b78c6502e2b19d45dc275f24462b0fa577b4`; arbitrum `0xa59ef0208418559770a48d7ae4f260a28763167b`; arbitrum `0xad3565680aecee27a39249d8c2d55dac79be5ad0`; arbitrum `0xaf8ced28fce00abd30463d55da81156aa5aeeec2`; arbitrum `0xb84b9d427fb30ed3641afac2e07b8c471bb0c6ee`; arbitrum `0xbbf8a9d4961496ffe3f9c35f76106ec697af2261`; arbitrum `0xcb3b6a451ca973f99be29cc616bd9fd1d35ef048`; arbitrum `0xdad8a103473dfd47f90168a0e46766ed48e26ec7`; arbitrum `0xe72e82b672d7d3e206327c0762e9805fbfcbca92`; arbitrum `0xea281a4c70ee2ef5ce3ed70436c81c0863a3a75a`; arbitrum `0xeea68dbe228210454d4443f4e1b37e842b848c3d`; arbitrum `0xf12a4acda6ca2e777b353538cb8e5ad6f05e0437`; arbitrum `0xf40e1f81277cfb4d26526fb4f3f9cba4a417e0c2`; arbitrum `0xfc20bcca96bde758e9c69151d99cecfeae3ab37e`; arbitrum `0xfeb35f293d2114df6b284876dc8fbfcffb873b7c` | ⚠️ Unaudited |
| TreasuryVester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x2121b3f1719a90e4ded5918cf24a2cc9fca4f1c5`; ethereum `0x47aaec4caff8e5e95cc4de66a22ef02627f187b4`; ethereum `0x7059928231d115bb47d46fdfd5e574c5e4fe38c0`; ethereum `0xa62a082bb8f9f0e63f69053f070fa5c12df1c07e`; ethereum `0xa729daf9d5c286db7e70aa42f1ca65a3878bd53f`; ethereum `0xbda4e4f1fc8092b951731cf62d6295398d4a8049` | ⚠️ Unaudited |
| UCrossChainOwner_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x4a0f50b19b02ac927911c559629536b9a24d9314`; arbitrum `0x7b4adf64b0d60ff97d672e473420203d52562a84`; arbitrum `0xc5432d3d6ce0e8428c8e60ee2d4d7e2b8695ec1f` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2a93167ed63a31f35ca4788e2eb9fbd9fa6089d0`; ethereum `0xa87e2c5d5964955242989b954474ff2eb08dd2f5` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc12b0fe62441baad525cd7d770cf21c883c77bc6` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x03557b122c71744e7226d68f6ef6b5915e61a0d7`; arbitrum `0x4a8282815c6f632458399186d10dd9cc959b7b16`; arbitrum `0x58f04fb12ffa179be19c4bccdf7fb2a47ac9f3eb`; arbitrum `0x819622f140f076e4db68cfaa9982301ef181894e`; arbitrum `0x96626b5f8cde99c14f06e35d4de5e64871967ab6`; arbitrum `0xd51013f4a3bd69b108f84b1215d666fe96138d5c`; arbitrum `0xd6300bc8231145d01048a49c83abaf32fb010528`; arbitrum `0xdac72dc1f266032082df3c494a167e0f57189bea` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x1d6a633827666b0d0eda6249cd66f1850f9e0067`; arbitrum `0x4e933d928d1dfc1912e4076fd3d6234ef39bcff6`; arbitrum `0x672a82d9177de46db778a7b2cca389d0f4fb26af`; arbitrum `0xa24ee2f2f3b5596cf9e32a6c3912bef0e7a79415`; arbitrum `0xbfda7ce3e86d3f26432a77717c3e6655a878b018`; arbitrum `0xd6bf5e65c5e665e82725e4d659bfe99e8831a9b5`; arbitrum `0xdae2f174c58961f08a59f339c660c044e74857a3`; arbitrum `0xdecec72b6bede55ed2865a38346bf96fcc3b4a8f` | ⚠️ Unaudited |
| Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x492bf4b1e07c440f68eb35a5237dc0a858babd73` | ⚠️ Unaudited |
| VersionLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x6fd2b0a8a40a1be8510cb5f39efd72cfca3b45be`; arbitrum `0x8af5dcbc8affbf0671a4cfc3d7539f9a6cfed9b7`; arbitrum `0xcf64b7c235f819a3be0bb47c8df014003ef1bc43`; arbitrum `0xe5fa0ebd7c0a5484a4717e9077c2876ea0493d7d` | ⚠️ Unaudited |
| VersionStorageLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x107507a3268eec24dd3ffa223777b94552ead05b`; arbitrum `0x73ff980b20696ee07827146c76f71e4872783594`; arbitrum `0xa25a2e1a8b67c3f6edca99d59168ce6741949970`; arbitrum `0xb87e6dca77c3d640b06fd519f1d669e18841cbeb`; arbitrum `0xdba1477add123a749c0cda3ffa985d799049df4a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06fc26a1df490cc276171b960004178fce31bf41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09d0602bb7dfc4597192eeae7faf192377da5d7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21d8b5c0a14e22601871512229030113099e102f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25f7ee535010c82764d0ea582af0deafcbd43a96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32761c1dbd438ca0511429c6f907441df4969561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x346adae24af745cb449995c99068dfce67a7afd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x394858f7d5ca94f9a85dfb77be2d4889799f72c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3bd11e7d651944870c4cb793f5292876dd089151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d3761151b5e568e824c582668804368f28fd819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e32946498aed14710c9e7504679cc712c581016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x548574813a4ae34e6e65ba7dd1fa3d0a20f0ff5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x581765258b263cecbad7ba1186b60a2aa2dbd04a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x613824a5b77602a8311748b18497a18b84d60d26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c5b8e5cb250eaca81a1c36035206b44e90522b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x747fb50b26edd63bfd454ddd6b4da14424c72533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x783e7cf70ebd9bbfcdb8fbb50c3f697e82e109c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7892017b39ab87151e328060c0a77607ffe2648a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x922c700d3adcd7157a3fa64d1252f8c6e498d8d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x991069f93212f0f640243a33c5d8dd1306425c4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa70eb2dbe380467175d7d793b0875887abb2d660` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb4bd01c82d7bb375423dc042c6f9a00ed372e556` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbfe123f0fa484109b548de0779077763c01d0ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc034adcc3b93070eb97749c893aa9b7f8486c751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2c50f1f6b9490896bbe8476b1faac2dd455b461` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5764cae343e6649e630818d89df8d08bd9d38e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd5b029f7e08ffa6c4cedaf6381c2ea7c5733463f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf1afdcfece23e25b9aa420cf5b3946cce61cd5a3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf](https://docs.cryptex.finance/assets/files/tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf](https://docs.cryptex.finance/assets/files/tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf) | Pashov Audit Group | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [www.cryptex.finance/security](https://www.cryptex.finance/security) | yAudit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf](https://www.cryptex.finance/audits/Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf](https://www.cryptex.finance/audits/Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf) | Pashov Audit Group | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Cryptex_-_Final_Report.pdf](https://www.cryptex.finance/audits/Cryptex_-_Final_Report.pdf) | Unknown | Audit | 2021-04 | stale | Direct | n/a | matched | 2 | 0 | 0 | 12 | n/a |
| [Cryptex_-_Staking_Report.pdf](https://www.cryptex.finance/audits/Cryptex_-_Staking_Report.pdf) | unknown | Audit | 2021-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [Cryptex-security-review.md](https://github.com/pashov/audits/blob/master/team/md/Cryptex-security-review.md) | Pashov Audit Group | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Cryptex-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/Cryptex-security-review.pdf) | Pashov Audit Group | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12956] tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf — no match: Extracted contract names from finding contexts and explicit mention of TokenExchangeSetIssuer as part of scope. Audit date from cover page: September 27, 2024.
- [12957] tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf — no match: Scope section explicitly lists 11 smart contracts. Audit date is the end date of the engagement period (September 30th - October 4th).
- [12958] www.cryptex.finance/security — no match: The provided text is a marketing page for Cryptex Finance's security section, listing audit firms (CCantina, Pashov Audit Group, Quantstamp) and audit names (TCAP v2 Audit, System Audit, Core Audit, Staking Audit) but does not contain specific contract names, file paths, or a scope section. No contracts in scope are identifiable.
- [12959] Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf — no match: Extracted contract names from finding contexts and explicit mention of TokenExchangeSetIssuer as part of scope. Audit date from cover page: September 27, 2024.
- [12960] Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf — no match: Scope section explicitly lists 11 smart contracts. Audit date is the end date of the engagement: October 4th.
- [12961] Cryptex_-_Final_Report.pdf — matched: No reason recorded
- [12962] Cryptex_-_Staking_Report.pdf — no match: No reason recorded
- [12963] Cryptex-security-review.md — no match: Scope section explicitly lists 11 smart contracts. No audit date found in the provided text.
- [12964] Cryptex-security-review.pdf — no match: Scope section explicitly lists 11 smart contracts. Audit date from header: September 30th - October 4th, using end date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | LiquidationLib | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | BasePocket | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | Vault | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | AaveV3Pocket | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | AggregatedChainlinkOracle | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | TCAPV2 | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | Multicall | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | FeeCalculatorLib | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | IOracle | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | TokenExchangeSetIssuer | unmatched — not counted | — | explicitly mentioned as part of scope | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | DeployTCAP | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | TCAPTargetOracle | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | TCAPV2 | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | FeeCalculatorLib | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | LiquidationLib | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | AggregatedChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | BaseOracleUSD | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | TCAPTargetOracle | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | AaveV3Pocket | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | BasePocket | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | LiquidationLib | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | BasePocket | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | Vault | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | AaveV3Pocket | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | AggregatedChainlinkOracle | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | TCAPV2 | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | Multicall | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | FeeCalculatorLib | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | IOracle | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | TokenExchangeSetIssuer | unmatched — not counted | — | explicitly mentioned as part of scope in section 4.5.4 | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | DeployTCAP | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | TCAPTargetOracle | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | TCAPV2 | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | FeeCalculatorLib | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | LiquidationLib | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | AggregatedChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | BaseOracleUSD | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | TCAPTargetOracle | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | AaveV3Pocket | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | BasePocket | unmatched — not counted | — | listed in scope | no |
| Cryptex_-_Final_Report.pdf | ChainlinkOracle | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | Ctx | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | ERC20VaultHandler | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | ETHVaultHandler | own contract | ETHVaultHandler (selected) `0x717170b66654292dfbd89c39f5ae6753d2ac1381` — deployed 2021-04-06 07:47:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cryptex_-_Final_Report.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | IVaultHandler | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | IWETH | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | LiquidityReward | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | Orchestrator | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | RewardHandler | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | SafeMath | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | TCAP | own contract | TCAP (selected) `0x16c52ceece2ed57dad87319d91b5e3637d50afa4` — deployed 2021-04-06 07:42:10+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cryptex_-_Final_Report.pdf | Timelock | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | TreasuryVester | unmatched — not counted | — | — | no |
| Cryptex_-_Staking_Report.pdf | Delegator | unmatched — not counted | — | — | no |
| Cryptex_-_Staking_Report.pdf | DelegatorFactory | unmatched — not counted | — | — | no |
| Cryptex_-_Staking_Report.pdf | IGovernanceToken | unmatched — not counted | — | — | no |
| Cryptex-security-review.md | TCAPV2 | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | Vault | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | Constants | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | FeeCalculatorLib | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | LiquidationLib | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | Multicall | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | AggregatedChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | BaseOracleUSD | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | TCAPTargetOracle | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | AaveV3Pocket | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | BasePocket | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | TCAPV2 | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | FeeCalculatorLib | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | LiquidationLib | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | AggregatedChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | BaseOracleUSD | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | TCAPTargetOracle | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | AaveV3Pocket | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | BasePocket | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x874c5d592afc6803c3dd60d6442357879f196d5b` | GovernorBeta | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 83 |
| upstream | 2 |
| standard_library | 4 |
| needs_review | 28 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 83 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, low=1
- Match method counts: unique_name=2

Zero-match audit list:

- [12956] tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf
- [12957] tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf
- [12958] www.cryptex.finance/security
- [12959] Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf
- [12960] Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf
- [12962] Cryptex_-_Staking_Report.pdf
- [12963] Cryptex-security-review.md
- [12964] Cryptex-security-review.pdf

Fork inheritance lineage and inherited audits are included when available.
