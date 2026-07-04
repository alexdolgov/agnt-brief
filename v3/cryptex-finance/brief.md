# Agentic Audit Brief: Cryptex Finance

## Project Overview

- Project: Cryptex Finance (`cryptex-finance`)
- Website: [https://cryptex.finance/](https://cryptex.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T11:05:40.871Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, ethereum
- Contract surface: 95 unique implementations (244 raw deployments)
- DeFi Llama TVL: $493,739.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 71 project-authored contract(s) across 2 chain(s); 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 9 common project-authored base contract(s) (kept, kept_arbitrum, instance). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 307; live-surface contracts included: 243 (210 live, 33 unknown).
- Excluded by liveness: 64 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/68 (11.8%)
- Deployed-live implementations: 68 of 95 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/68
- Verified + Unaudited implementations: 60
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 95
- Raw deployments: 244
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 2 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 1.5% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Unknown | Tier 2 | 7 | 10.3% | 2021-10 |
| Pashov Audit Group | Tier 2 | 1 | 1.5% | 2024-10 |
| Spearbit | Tier 1 | 1 | 1.5% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Ctx | unknown | ethereum | n/a | [`0x321c2f...38f98d`](./contracts/ethereum-1/0x321c2fe4446c7c963dc41dd58879af648838f98d/) | ✅ Audited |
| DelegatorFactory | registry | ethereum | n/a | [`0x70236b...472918`](./contracts/ethereum-1/0x70236b36f86ab4bd557fe9934e1246537b472918/) | ✅ Audited |
| ERC20VaultHandler | unknown | ethereum | n/a | 7 deployments: ethereum [`0x236453...76ee5c`](./contracts/ethereum-1/0x2364536f4891ed560a6728f4b36871de8176ee5c/); ethereum `0x443366...964771`; ethereum `0x56549e...011a00`; ethereum `0xa5b3bb...35fa03`; ethereum `0xa8cca3...9424d3`; ethereum `0xada39d...14d1d3`; ethereum `0xbeb44f...f369ba` | ✅ Audited |
| ETHVaultHandler | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x717170...ac1381`](./contracts/ethereum-1/0x717170b66654292dfbd89c39f5ae6753d2ac1381/); ethereum `0xc2ba6b...f74833` | ✅ Audited |
| LiquidityReward | unknown | arbitrum | n/a | [`0x938f14...0747ba`](./contracts/arbitrum-42161/0x938f145d5f3abf681618dcc5c71f095b870747ba/) | ✅ Audited |
| TCAP | unknown | ethereum | n/a | [`0x16c52c...50afa4`](./contracts/ethereum-1/0x16c52ceece2ed57dad87319d91b5e3637d50afa4/) | ✅ Audited |
| TreasuryVester | operational_periphery | ethereum | n/a | [`0x2121b3...a4f1c5`](./contracts/ethereum-1/0x2121b3f1719a90e4ded5918cf24a2cc9fca4f1c5/) | ✅ Audited |
| Vault | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x03557b...61a0d7`](./contracts/arbitrum-42161/0x03557b122c71744e7226d68f6ef6b5915e61a0d7/); arbitrum `0x4a8282...9b7b16`; arbitrum `0x58f04f...c9f3eb`; arbitrum `0x819622...81894e`; arbitrum `0x96626b...967ab6`; arbitrum `0xd51013...138d5c`; arbitrum `0xd6300b...010528`; arbitrum `0xdac72d...189bea` | ✅ Audited |

### ⚠️ Verified + Unaudited (60)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Account | unknown | arbitrum | n/a | [`0xca7fb0...a0e826`](./contracts/arbitrum-42161/0xca7fb0afb7622a982a70c5efd2aa387257a0e826/) | ⚠️ Unaudited |
| AccountVerifier | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0e9d1d...8aaf5c`](./contracts/arbitrum-42161/0x0e9d1df540acb30a321d3d3edd4996e0248aaf5c/); arbitrum `0x5012e7...3c67b7` | ⚠️ Unaudited |
| BatchKeeper | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x5a8557...b9f118`](./contracts/arbitrum-42161/0x5a8557449c05fa515fea099178d42b9415b9f118/); arbitrum `0x8b4e6f...7b05b6`; arbitrum `0xb5ae2b...c90ea6` | ⚠️ Unaudited |
| CheckpointLib | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x609f98...93a1d2`](./contracts/arbitrum-42161/0x609f9888e9c1691abe1b2ce1a228f193c093a1d2/); arbitrum `0x825b2f...2f212e`; arbitrum `0x960e20...d83bee`; arbitrum `0xedfc30...e667ca` | ⚠️ Unaudited |
| CheckpointStorageLib | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x074fb1...9406d9`](./contracts/arbitrum-42161/0x074fb1073b24f85b52337b7dfea2d2cb5b9406d9/); arbitrum `0x40ffe6...30bcf1` | ⚠️ Unaudited |
| Controller | unknown | arbitrum | n/a | [`0xa8b581...3237ee`](./contracts/arbitrum-42161/0xa8b58125953c7f2948e82a4558c745c1cd3237ee/) | ⚠️ Unaudited |
| Controller_Arbitrum | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x197de1...6ddd7c`](./contracts/arbitrum-42161/0x197de1b26ad733380fd22159a2671f497a6ddd7c/); arbitrum `0x28046a...0d5410` | ⚠️ Unaudited |
| Coordinator | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x0ecb01...edcc5e`](./contracts/arbitrum-42161/0x0ecb017ed5d35807ce6b6f0c8308edb8b7edcc5e/); arbitrum `0x161cb5...0faac8`; arbitrum `0x86a2b5...128092` | ⚠️ Unaudited |
| DSU | unknown | arbitrum | n/a | [`0x52c64b...6b841b`](./contracts/arbitrum-42161/0x52c64b8998eb7c80b6f526e99e29abdcc86b841b/) | ⚠️ Unaudited |
| GasOracle_Arbitrum | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x038901...4a2bc7`](./contracts/arbitrum-42161/0x038901cc5d0ae04603e6f44819600badbf4a2bc7/); arbitrum `0xfd12a7...3b05e4` | ⚠️ Unaudited |
| Giga | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x234253...cab7dc`](./contracts/arbitrum-42161/0x234253280a5427cb9e198367b6804dba9fcab7dc/); arbitrum `0x7a98ef...730fcf` | ⚠️ Unaudited |
| GlobalStorageLib | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x0b18a9...291ed0`](./contracts/arbitrum-42161/0x0b18a9a54bb159f4e5f7b6db57445be255291ed0/); arbitrum `0x3b4b4e...b9e479`; arbitrum `0xad4a7b...e8cac6`; arbitrum `0xcf1384...1f697d`; arbitrum `0xf864f0...1524fd` | ⚠️ Unaudited |
| GovernorBeta | governance | ethereum | n/a | [`0x874c5d...196d5b`](./contracts/ethereum-1/0x874c5d592afc6803c3dd60d6442357879f196d5b/) | ⚠️ Unaudited |
| InvariantLib | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x1451ba...c1a8c8`](./contracts/arbitrum-42161/0x1451bacef80518fea01fded8e32ccccc68c1a8c8/); arbitrum `0x581c68...a2ad34`; arbitrum `0x63f314...140c95`; arbitrum `0xaae7b0...fdeb0a`; arbitrum `0xf73368...34e35a` | ⚠️ Unaudited |
| KeeperOracle | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x1990fa...40f1d8`](./contracts/arbitrum-42161/0x1990fa13ccef6100703a6999c90c0493a740f1d8/); arbitrum `0x2a9cd1...cba3de`; arbitrum `0x81e521...39a1c7`; arbitrum `0xebd02f...10135a`; arbitrum `0xf2f4d5...d1b676` | ⚠️ Unaudited |
| KeeperOracle_Migration | unknown | arbitrum | n/a | [`0xa3186b...12641b`](./contracts/arbitrum-42161/0xa3186bcc1a64edabd13b7de0faaecbce3e12641b/) | ⚠️ Unaudited |
| Kilo | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xde7e2d...49acab`](./contracts/arbitrum-42161/0xde7e2d1005ea46a0e261e243f762fc7ca849acab/); arbitrum `0xee590e...8a8d8c` | ⚠️ Unaudited |
| KiloPowerHalf | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x7aaf91...edf753`](./contracts/arbitrum-42161/0x7aaf9184ee1299226d46ffeb36595bb8d0edf753/); arbitrum `0x8da96a...b09751` | ⚠️ Unaudited |
| KiloPowerTwo | unknown | arbitrum | n/a | [`0xf94f18...16cbc9`](./contracts/arbitrum-42161/0xf94f18fe7ef42eee309ebfc287f2f425cb16cbc9/) | ⚠️ Unaudited |
| MagicValueLib | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x28158d...9df48c`](./contracts/arbitrum-42161/0x28158dcebbb6b5e69a5a5a26f5fe9a8d199df48c/); arbitrum `0x40e52d...65f091`; arbitrum `0xe022bf...bdb1be` | ⚠️ Unaudited |
| Manager_Arbitrum | unknown | arbitrum | n/a | [`0x3af57c...ca4671`](./contracts/arbitrum-42161/0x3af57c0f8e76277f58ca09d03ace050c5dca4671/) | ⚠️ Unaudited |
| Market | unknown | arbitrum | n/a | 11 deployments: arbitrum [`0x17ebca...a3b255`](./contracts/arbitrum-42161/0x17ebca0060c3e84812ab4e208cc33e5fd8a3b255/); arbitrum `0x8d3ff0...4b1e11`; arbitrum `0x937c6a...b8d8bc`; arbitrum `0x97b072...e17e8b`; arbitrum `0xa092f4...642b43`; arbitrum `0xb43e82...061efa`; arbitrum `0xb5aa1d...fcfc06`; arbitrum `0xbda0b3...b882d7`; arbitrum `0xd5fbf1...ae137d`; arbitrum `0xed4b25...01ff26`; arbitrum `0xfb4a12...0b0e3b` | ⚠️ Unaudited |
| MarketFactory | unknown | arbitrum | n/a | 12 deployments: arbitrum [`0x046d60...9b4cde`](./contracts/arbitrum-42161/0x046d6038811c6c14e81d5de5b107d4b7ee9b4cde/); arbitrum `0x0c698e...095176`; arbitrum `0x111cf6...c6fe10`; arbitrum `0x28876d...368599`; arbitrum `0x2dddd1...f353c8`; arbitrum `0x3dd09c...7ff937`; arbitrum `0x563d45...de30bf`; arbitrum `0x64bd54...17a4ef`; arbitrum `0x822900...d2dc71`; arbitrum `0xac8ab3...67430c`; arbitrum `0xad3353...f10dde`; arbitrum `0xba313a...9df207` | ⚠️ Unaudited |
| MarketParameterStorageLib | unknown | arbitrum | n/a | [`0x8a159c...63c758`](./contracts/arbitrum-42161/0x8a159cdb5fa8af4a71f987f3fb2d5229ec63c758/) | ⚠️ Unaudited |
| Mega | unknown | arbitrum | n/a | [`0xffb33f...5248e1`](./contracts/arbitrum-42161/0xffb33f838096cf3c3c7dd21c1f941bb2705248e1/) | ⚠️ Unaudited |
| MegaPowerTwo | unknown | arbitrum | n/a | [`0xe833e9...f0f7d7`](./contracts/arbitrum-42161/0xe833e9bd294d9f1e1760bdc88c01c8dea4f0f7d7/) | ⚠️ Unaudited |
| MetaQuantsFactory | unknown | arbitrum | n/a | [`0x309ad3...5687f1`](./contracts/arbitrum-42161/0x309ad3771baea8de1bf1cf6a1bfb4ceeb65687f1/) | ⚠️ Unaudited |
| MetaQuantsFactory_Arbitrum | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xa7df5f...ca0b5c`](./contracts/arbitrum-42161/0xa7df5fb2fb55671d22d78a188d9301e383ca0b5c/); arbitrum `0xb744f7...79a230` | ⚠️ Unaudited |
| Micro | unknown | arbitrum | n/a | [`0x4f7a6c...e74179`](./contracts/arbitrum-42161/0x4f7a6cced29712fc5b102e730c27324a01e74179/) | ⚠️ Unaudited |
| MicroPowerTwo | unknown | arbitrum | n/a | [`0x18ad45...8cd632`](./contracts/arbitrum-42161/0x18ad45bdda468259257e46ba07de6cd3d88cd632/) | ⚠️ Unaudited |
| MigrationReserve | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0d49c4...3a0c27`](./contracts/arbitrum-42161/0x0d49c416103cbd276d9c3cd96710db264e3a0c27/); arbitrum `0xaff9b2...97e1dc` | ⚠️ Unaudited |
| Milli | unknown | arbitrum | n/a | [`0xae794c...68bd62`](./contracts/arbitrum-42161/0xae794c750991b19485e17788d1a19b83ba68bd62/) | ⚠️ Unaudited |
| MilliPowerHalf | unknown | arbitrum | n/a | [`0xbca65c...5f4e0e`](./contracts/arbitrum-42161/0xbca65ce3629167600d52492b61a97627305f4e0e/) | ⚠️ Unaudited |
| MilliPowerTwo | unknown | arbitrum | n/a | [`0x443cef...a43166`](./contracts/arbitrum-42161/0x443cef645e29ae12c053f358b2875df0b9a43166/) | ⚠️ Unaudited |
| MultiInvoker | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x14c444...44c26a`](./contracts/arbitrum-42161/0x14c4448239175ca72dea15c23615ad6f5144c26a/); arbitrum `0x18d1e8...8dd2d3`; arbitrum `0x2b9922...a2a15b`; arbitrum `0x9553e2...b98653`; arbitrum `0xf56f08...7c9b4e`; arbitrum `0xf94719...cfe9ae` | ⚠️ Unaudited |
| MultiInvoker_Arbitrum | unknown | arbitrum | n/a | 11 deployments: arbitrum [`0x0092f3...fdd873`](./contracts/arbitrum-42161/0x0092f3a5f211333c5427605a6df76b35dcfdd873/); arbitrum `0x05075e...636967`; arbitrum `0x1da92f...579ea1`; arbitrum `0x31e1d5...69c189`; arbitrum `0x56ccf5...3dca04`; arbitrum `0x58d8da...958102`; arbitrum `0x8c8326...b82a1b`; arbitrum `0x9d2725...1d8542`; arbitrum `0xa910e3...7b1443`; arbitrum `0xc1c168...b1ba8b`; arbitrum `0xf8b26c...e5fd43` | ⚠️ Unaudited |
| Nano | unknown | arbitrum | n/a | [`0x1cc0e7...0645e7`](./contracts/arbitrum-42161/0x1cc0e7883dc01cca0cc7a04b1eb3e51c290645e7/) | ⚠️ Unaudited |
| Oracle | unknown | arbitrum | n/a | 7 deployments: arbitrum [`0x0a47bb...246bb7`](./contracts/arbitrum-42161/0x0a47bb5e5260619204a578bd477204fce6246bb7/); arbitrum `0x462a32...ae0d79`; arbitrum `0x5cb826...14f650`; arbitrum `0x93834c...ed1d97`; arbitrum `0xa7e49f...2feffe`; arbitrum `0xd16882...2a5514`; arbitrum `0xde46f8...b53749` | ⚠️ Unaudited |
| OracleFactory | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x19a401...be4b22`](./contracts/arbitrum-42161/0x19a4010e859ca3d10f0d928c6665f9a9e3be4b22/); arbitrum `0x62fb1d...4fc2de`; arbitrum `0x8747a9...e05d3d`; arbitrum `0x89cbd5...991b83`; arbitrum `0xe299ac...41c7bd` | ⚠️ Unaudited |
| Orchestrator | unknown | ethereum | n/a | [`0x373c74...f2c18e`](./contracts/ethereum-1/0x373c74bce7893097ab26d22f05691907d4f2c18e/) | ⚠️ Unaudited |
| OrderVerifier | unknown | arbitrum | n/a | [`0x886e59...908581`](./contracts/arbitrum-42161/0x886e59002dff8b10f4e777ca3a6ca6c3e6908581/) | ⚠️ Unaudited |
| PayoffFactory | unknown | arbitrum | n/a | [`0xf81752...27805d`](./contracts/arbitrum-42161/0xf817521610600c4674364246a5cf4af8e627805d/) | ⚠️ Unaudited |
| PositionStorageGlobalLib | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3f96f8...a3ab6d`](./contracts/arbitrum-42161/0x3f96f8411454c2764742131b95868de422a3ab6d/); arbitrum `0x5f52a2...0e0b92` | ⚠️ Unaudited |
| PositionStorageLocalLib | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xb5cb0b...28b334`](./contracts/arbitrum-42161/0xb5cb0bbe900feee7f23f7bd785cd07032928b334/); arbitrum `0xdd379e...ef57c1` | ⚠️ Unaudited |
| PowerHalf | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x07b891...c8af9c`](./contracts/arbitrum-42161/0x07b891ae5e0eeaf7fb407552c28eac785ac8af9c/); arbitrum `0xf2accb...3d7a3d` | ⚠️ Unaudited |
| PowerTwo | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6b1c49...ed696c`](./contracts/arbitrum-42161/0x6b1c4978142a9bc9dd5777866aa8ad610ded696c/); arbitrum `0x865707...deb367` | ⚠️ Unaudited |
| ProxyAdmin | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x130aa8...3015db`](./contracts/arbitrum-42161/0x130aa82d0b3688ee9d6d29f646c2b6abf63015db/); arbitrum `0x16b383...3f3535`; arbitrum `0x4f75cf...be169b`; arbitrum `0x5bea99...aeb747`; arbitrum `0x920cd4...9d120a`; arbitrum `0xe8497a...f5d2ab` | ⚠️ Unaudited |
| PythFactory | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x63dd40...687bb6`](./contracts/arbitrum-42161/0x63dd4059971a9e24810a2aea222460aca6687bb6/); arbitrum `0x709e67...fde10d`; arbitrum `0xa19621...89b43e`; arbitrum `0xc67c13...671219` | ⚠️ Unaudited |
| PythFactory_Arbitrum | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x143c5e...74c1ad`](./contracts/arbitrum-42161/0x143c5ec02fde403c73245b94dec621f05c74c1ad/); arbitrum `0x17bf3d...06b46a`; arbitrum `0x1b0d2f...991d1c`; arbitrum `0x76ad42...ef767e`; arbitrum `0xaad878...37026d`; arbitrum `0xec67a2...ac7290` | ⚠️ Unaudited |
| PythOracle_Arbitrum | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x7a18a5...395ca7`](./contracts/arbitrum-42161/0x7a18a52ef9ab4e2ede9113ef13483ed18b395ca7/); arbitrum `0xa0f11b...98e94b` | ⚠️ Unaudited |
| RiskParameterStorageLib | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x2071ff...20a996`](./contracts/arbitrum-42161/0x2071ff1631284a2b7f63c2d94a18780a7420a996/); arbitrum `0xc24fef...f850bd`; arbitrum `0xe02bad...961d20` | ⚠️ Unaudited |
| SeasonalMerkleClaim | operational_periphery | arbitrum | n/a | [`0x4fc1cc...301f30`](./contracts/arbitrum-42161/0x4fc1cc62e5d0b12f5a9e3213b4177d2edb301f30/) | ⚠️ Unaudited |
| SimpleReserve | unknown | arbitrum | n/a | [`0x58e0c5...196bfe`](./contracts/arbitrum-42161/0x58e0c542ab540e0dd3b4fd96cc46b0aad1196bfe/) | ⚠️ Unaudited |
| SingleBalancedVault | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x196062...8f016f`](./contracts/arbitrum-42161/0x1960628db367281b1a186dd5b80b5dd6978f016f/); arbitrum `0x9ba046...9ec17a` | ⚠️ Unaudited |
| TimelockController | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x37fa20...554ebc`](./contracts/arbitrum-42161/0x37fa204b282e46f54744660bf3df48b43a554ebc/); arbitrum `0x4aa8b4...f3ad22`; arbitrum `0xda381a...cc105b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 25 deployments: arbitrum [`0x2b87c5...a27cbc`](./contracts/arbitrum-42161/0x2b87c59f5220ee51616ad2273b5f683d5ea27cbc/); arbitrum `0x431603...658832`; arbitrum `0x4d6357...c2a75c`; arbitrum `0x5a572b...ef24a6`; arbitrum `0x663b38...d1c9e4`; arbitrum `0x6b60e7...ef4e6e`; arbitrum `0x70d803...c96e71`; arbitrum `0x7c65ab...c7edd3`; arbitrum `0x8bf8a4...f31da9`; arbitrum `0x8cda59...eef413`; arbitrum `0x9f35b7...a577b4`; arbitrum `0xa59ef0...63167b`; arbitrum `0xad3565...be5ad0`; arbitrum `0xaf8ced...aeeec2`; arbitrum `0xb84b9d...b0c6ee`; arbitrum `0xbbf8a9...af2261`; arbitrum `0xcb3b6a...5ef048`; arbitrum `0xdad8a1...e26ec7`; arbitrum `0xe72e82...cbca92`; arbitrum `0xea281a...a3a75a`; arbitrum `0xeea68d...848c3d`; arbitrum `0xf12a4a...5e0437`; arbitrum `0xf40e1f...17e0c2`; arbitrum `0xfc20bc...3ab37e`; arbitrum `0xfeb35f...873b7c` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2a9316...6089d0`](./contracts/ethereum-1/0x2a93167ed63a31f35ca4788e2eb9fbd9fa6089d0/); ethereum `0xa87e2c...8dd2f5` | ⚠️ Unaudited |
| VaultFactory | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x1d6a63...9e0067`](./contracts/arbitrum-42161/0x1d6a633827666b0d0eda6249cd66f1850f9e0067/); arbitrum `0x4e933d...9bcff6`; arbitrum `0x672a82...fb26af`; arbitrum `0xa24ee2...a79415`; arbitrum `0xbfda7c...78b018`; arbitrum `0xd6bf5e...31a9b5`; arbitrum `0xdae2f1...4857a3`; arbitrum `0xdecec7...3b4a8f` | ⚠️ Unaudited |
| VersionLib | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x6fd2b0...3b45be`](./contracts/arbitrum-42161/0x6fd2b0a8a40a1be8510cb5f39efd72cfca3b45be/); arbitrum `0x8af5dc...fed9b7`; arbitrum `0xcf64b7...f1bc43`; arbitrum `0xe5fa0e...493d7d` | ⚠️ Unaudited |
| VersionStorageLib | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x73ff98...783594`](./contracts/arbitrum-42161/0x73ff980b20696ee07827146c76f71e4872783594/); arbitrum `0xdba147...49df4a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x06fc26...31bf41` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x09d060...da5d7d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x21d8b5...9e102f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x25f7ee...d43a96` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x32761c...969561` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x346ada...a7afd5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x394858...9f72c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3bd11e...089151` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3d3761...8fd819` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3e3294...581016` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x548574...f0ff5c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x581765...dbd04a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x613824...d60d26` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6c5b8e...0522b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x747fb5...c72533` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x783e7c...e109c7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x789201...e2648a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x922c70...98d8d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x991069...425c4d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa70eb2...b2d660` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb4bd01...72e556` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbfe123...1d0ac4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc034ad...86c751` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc2c50f...55b461` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc5764c...9d38e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd5b029...33463f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf1afdc...1cd5a3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf](https://docs.cryptex.finance/assets/files/tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | 8 | high |
| [tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf](https://docs.cryptex.finance/assets/files/tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf) | Pashov Audit Group | Audit | 2024-10 | aging | Direct | contract_name | 8 | high |
| [www.cryptex.finance/security](https://www.cryptex.finance/security) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf](https://www.cryptex.finance/audits/Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | 8 | high |
| [Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf](https://www.cryptex.finance/audits/Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf) | Pashov Audit Group | Audit | 2024-10 | aging | Direct | contract_name | 8 | high |
| [Cryptex_-_Final_Report.pdf](https://www.cryptex.finance/audits/Cryptex_-_Final_Report.pdf) | Unknown | Audit | 2021-04 | stale | Direct | contract_name | 6 | n/a |
| [Cryptex_-_Staking_Report.pdf](https://www.cryptex.finance/audits/Cryptex_-_Staking_Report.pdf) | unknown | Audit | 2021-10 | stale | Direct | contract_name | 1 | n/a |
| [Cryptex-security-review.md](https://github.com/pashov/audits/blob/master/team/md/Cryptex-security-review.md) | Pashov Audit Group | Audit | n/a | unknown | Direct | contract_name | 8 | high |
| [Cryptex-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/Cryptex-security-review.pdf) | Pashov Audit Group | Audit | 2024-10 | aging | Direct | contract_name | 8 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 95 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: contract_name=7, extraction_exact=48

Zero-match audit list:

- [12958] www.cryptex.finance/security

Fork inheritance lineage and inherited audits are included when available.
