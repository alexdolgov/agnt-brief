# Agentic Audit Brief: Zoo Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Zoo Finance (`zoo-finance`)
- Website: [https://zoofi.io](https://zoofi.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, berachain, bsc, chain-80084, sei
- Contract surface: 105 unique implementations (168 raw deployments)
- Coverage basis: 0/13 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $27,950,714.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Zoo Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across arbitrum, base, berachain, bsc, chain-80084, sei. Structural roles: 8 core, 5 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: core (8), supporting (5)
- Contract kinds: contract (13)
- Detected standards: erc20 (5), pausable (5), ownable (2)
- Frameworks: openzeppelin (13)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BQuery (`0x6e603014ace3ae06f34ffe259106af77c056d913`, chain 80094)
- InfraredBribeVault (`0x33c42e171cfd7ec85d3db34d7f6d3d8121f64e63`, chain 80094)
- InfraredBribeVault (`0x6686bdff3ad20ae45e811c2451dfee8aa0f338c0`, chain 80094)
- InfraredBribeVaultV2 (`0x702b707c2f8dd26f4f1e51cf425035d355a02767`, chain 80094)
- InfraredBribeVaultV2 (`0x94822b9ba715e9e3079ed12489dc7a016694fc67`, chain 80094)
- InfraredBribeVaultV2 (`0xe6d15592f337f54e8bd47e56bbb22af12f0d4083`, chain 80094)
- pHONEY-USDC (`0x70b851f6877d16d6d5ad546b17d06281b8abdd4b`, chain 80094)
- pHONEYBYUSD (`0x83f933af46458102cf54eabe441dbb659a1b2ea5`, chain 80094)
- pHONEYBYUSD (`0xa58f5a2487ababc5c5a23e3e3796e6615d12fcaf`, chain 80094)
- ProtocolSettings (`0x7d3cec2f46279229277802d30702e4e7fb19bac0`, chain 80094)
- pUSDCeHONEY (`0xc2c5eadf0f48702beedd2e2a35517e1fc4dbf7a7`, chain 80094)
- pWBERAWETH (`0x0da715b18aaf66c7c044d4f315d479f6036728ea`, chain 80094)
- ZooProtocol (`0x4737c3bab13a1ad94ede8b46bc6c22fb8bbe9c81`, chain 80094)

## Contract Surface Quality

- Logic-topography rows: 13; live-surface rows included: 13 (13 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/23 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/13 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 13 own, 10 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 82 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 14
- Confirmed-live implementations: 13 of 105 unique; 92 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/55
- Verified + Unaudited implementations: 55
- Verified by bytecode match: 0
- Unverified implementations: 50
- Unique implementations: 105
- Raw deployments: 168
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (55)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AgentTokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xff8104251e7761163fac3211ef5583fb3f8583d6` | ⚠️ Unaudited |
| BEP20TokenImplementation | token | non_address_book | non_address_book_inventory (excluded) | 5 | bsc | n/a | 5 deployments: bsc `0x0d8ce2a99bb6e3b7db580ed848240e4a0f9ae153`; bsc `0x101d82428437127bf1608f699cd651e6abf9766e`; bsc `0x88f1a5ae2a3bf98aeaf342d26b30a79438c9142e`; bsc `0x9ac983826058b8a9c7aa1c9171441191232e8404`; bsc `0xbf5140a22578168fd562dccf235e5d43a02ce9b1` | ⚠️ Unaudited |
| BQuery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 7 deployments: berachain `0x0e1d50c3c0894399c343b5d93ad5baf1a00b9328`; berachain `0x3efafb114c570991be6a338f587fa8eda047ffa0`; berachain `0x736f5165cb3c0c2831b05265cc29119a0a1dfaa4`; berachain `0x878aac1ca6b36a2841ae0200f2366a4178c2ca22`; berachain `0x8bf32a9603859235cdaf32e8201982a6cdcf411a`; berachain `0xc78ae1d6ff234775f3f8d12f77cb7ed5cbc4e976`; berachain `0xda407f56296305b93eabdd1cf22742ea160fb4a9` | ⚠️ Unaudited |
| BQuery | unknown | project_anchor | own_supporting | 0 | berachain | unit-398273 | `0x6e603014ace3ae06f34ffe259106af77c056d913` | ⚠️ Unaudited |
| BribesPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 8 deployments: berachain `0x008eee3c55b2b1d938ee6345b0acd9c9dcfd281f`; berachain `0x056e530679857dbd884f7a9bd71e6b8a76909181`; berachain `0x2b9bd7ad7416ef98bdca0ca8c61b8baccc98b9fd`; berachain `0x2cbe935ab14f19bf8062aa5361134a0eaac70078`; berachain `0x4979a12bf440049780df3dcf245769e6bd1741db`; berachain `0x550b031acbc56b309a8ef28914959115f6a97202`; berachain `0x793d33981daa3777e6192e3489d0ca65d2cc74a6`; berachain `0xf74b2eab9763e412849f7923317d31be49118b3b` | ⚠️ Unaudited |
| CheckerClaimAndWithdraw | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x13f34e49fefbe55fec4b62afb7adf3920b04370f`; arbitrum `0x73098d4a071d9bc675deaa589392b2b1414b9a22` | ⚠️ Unaudited |
| CheckerClaimAndWithdraw | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x179b3dd2a3e5bf076c8523695996c3d0e764dcdb`; arbitrum `0xf16fff83de694bceaeec224eea64a78af7a2a130` | ⚠️ Unaudited |
| CheckerLicenseNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x349834ba064f4b9286888611dfdb9035c1112d9a`; arbitrum `0x4395cbd65d40a2e3fdacbccb155fb6188a747531`; arbitrum `0x9e6cd11a40cda817e26e7c3ed979f03da535f6b0` | ⚠️ Unaudited |
| CheckerLicenseNFTv2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xc227e25544edd261a9066932c71a25f4504972f1` | ⚠️ Unaudited |
| CheckerNFTClaim | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfa4dfdedf41e3b41529cc161b542d84c4a3f31da` | ⚠️ Unaudited |
| DragonswapFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x71f6b49ae1558357bbb5a6074f1143c46cbca03d` | ⚠️ Unaudited |
| DragonswapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xa4cf2f53d1195addde9e4d3aca54f556895712f2` | ⚠️ Unaudited |
| DragonswapStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x0d579da091f03c9b6b78d7f84dd2d16a7989a896`; sei `0x2a2f6643aca537f9f56cc27a02cdc88e6c66ea9c`; sei `0xcfea00728f0ae7b791ce05c2f8e194f3ab9e0a62`; sei `0xf1d1598c2c48a70d708537693c89d6d699a902cb` | ⚠️ Unaudited |
| DragonswapStakerBoosted | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 2 deployments: sei `0x69d40c24552a9e6884345e5c9966363178c708df`; sei `0xde04d386543176967c06763adcf6760b18122139` | ⚠️ Unaudited |
| DragonswapStakerFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x34975246b5a3c8e9e1c19bf9b6a6088b741d4e2d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x17a90eda8c919b97d36e0082266bf9432fb1eea1`; arbitrum `0xf74b2eab9763e412849f7923317d31be49118b3b` | ⚠️ Unaudited |
| InfraredBribeVault | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-398270 | `0x33c42e171cfd7ec85d3db34d7f6d3d8121f64e63` | ⚠️ Unaudited |
| InfraredBribeVault | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-398272 | `0x6686bdff3ad20ae45e811c2451dfee8aa0f338c0` | ⚠️ Unaudited |
| InfraredBribeVaultV2 | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-398274 | `0x702b707c2f8dd26f4f1e51cf425035d355a02767` | ⚠️ Unaudited |
| InfraredBribeVaultV2 | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-398278 | `0x94822b9ba715e9e3079ed12489dc7a016694fc67` | ⚠️ Unaudited |
| InfraredBribeVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 3 deployments: berachain `0xa6c0413f620cd8487dac7c1770335ee169934826`; berachain `0xbc8015241a8445add39de75477d0ac46f5884f55`; berachain `0xf579c039c52ab795f0c4e358d3b462be883cdd9f` | ⚠️ Unaudited |
| InfraredBribeVaultV2 | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-398281 | `0xe6d15592f337f54e8bd47e56bbb22af12f0d4083` | ⚠️ Unaudited |
| InterchainToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc87b37a581ec3257b734886d9d3a581f5a9d056c` | ⚠️ Unaudited |
| LntOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x33c42e171cfd7ec85d3db34d7f6d3d8121f64e63` | ⚠️ Unaudited |
| LntVault0GArbUpg | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3010abd2fb29496282111088f4240bbb13dba454` | ⚠️ Unaudited |
| LntVault0GArbUpgV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x50bdb4a9a2bd520a13eb8d412854d95b1cc3aaac`; arbitrum `0x9619fedb5f44b9eafef465d5df954f807acdc6f0` | ⚠️ Unaudited |
| LntVaultAethirSigner | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8bf32a9603859235cdaf32e8201982a6cdcf411a` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x170265370499b8f388883004fbad9ebde34f3781` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71479cf279bc2fcf5b8faa8c9eed2ab59127ab95` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x7b8a01b39d58278b5de7e48c8449c9f4f5170613` | ⚠️ Unaudited |
| pHONEY-USDC | unknown | project_anchor | own_supporting | 0 | berachain | unit-398275 | `0x70b851f6877d16d6d5ad546b17d06281b8abdd4b` | ⚠️ Unaudited |
| pHONEYBYUSD | unknown | project_anchor | own_supporting | 0 | berachain | unit-398277 | `0x83f933af46458102cf54eabe441dbb659a1b2ea5` | ⚠️ Unaudited |
| pHONEYBYUSD | unknown | project_anchor | own_supporting | 0 | berachain | unit-398279 | `0xa58f5a2487ababc5c5a23e3e3796e6615d12fcaf` | ⚠️ Unaudited |
| Protocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x170e0c91ffa71dc3c16d43f754b3aece688470c8` | ⚠️ Unaudited |
| ProtocolSettings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 7 deployments: berachain `0x1c77a85d47974fea7c8391317326335e35ee3644`; berachain `0x2f70e725553c8e3341e46caa4e9b303e9d810fc9`; berachain `0x45a47e8013425af3e6e71f1aa24e3b8c523386ea`; berachain `0x50bdb4a9a2bd520a13eb8d412854d95b1cc3aaac`; berachain `0x8c6e434bb1c51728bdcc250255c1f654471d85eb`; berachain `0xe34e1c9fc5313d9ac4b121b5f93c51e619dd778a`; berachain `0xf8dfaa0967c812a43d02059f2b14786dceb84e8b` | ⚠️ Unaudited |
| ProtocolSettings | unknown | project_anchor | own_supporting | 0 | berachain | unit-398276 | `0x7d3cec2f46279229277802d30702e4e7fb19bac0` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x589b4931d426146864f6e3df652316a6d643ed8f`; bsc `0xc9a7f5b73e853664044ab31936d0e6583d8b1c79` | ⚠️ Unaudited |
| pUSDCeHONEY | unknown | project_anchor | own_supporting | 0 | berachain | unit-398280 | `0xc2c5eadf0f48702beedd2e2a35517e1fc4dbf7a7` | ⚠️ Unaudited |
| pWBERAWETH | unknown | project_anchor | own_supporting | 0 | berachain | unit-398269 | `0x0da715b18aaf66c7c044d4f315d479f6036728ea` | ⚠️ Unaudited |
| QuoterV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x78d78e420da98ad378d7799be8f4af69033eb077`; bsc `0xd00bd441cef3623dc59b5d9b5ef96ee87b42db42` | ⚠️ Unaudited |
| RedeemPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 8 deployments: berachain `0x17a90eda8c919b97d36e0082266bf9432fb1eea1`; berachain `0x23786891643d007c93ac04b6566050f82eace0c7`; berachain `0x5d5958f62ffc35a93c426c0d5fc55cd3dffc9e20`; berachain `0x64ae2c9c53e0ebd068cc5ffb3d23e217142d66d9`; berachain `0x9231e8161249907656a98f369fa08c51fbe69c72`; berachain `0xa341e92b22b1a2c94b24163eae09aed34e8ea134`; berachain `0xf6f4a88ffd26fb14da4cff997ca773b06e3b2db3`; berachain `0xf791de7f4ad91ffc67f9147ee919c93215b2155a` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa64dd3a63feed608660226112e748f93b87e650f` | ⚠️ Unaudited |
| SwapRouter02 | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xb971ef87ede563556b2ed4b1c0b0019111dd85d2` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xd9270014d396281579760619ccf4c3af0501a47c`; bsc `0xf5f4496219f31cdcba6130b5402873624585615a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0281e98322e4e8e53491d576ee6a2bfce644c55c`; bsc `0xaec98e489ae35f243eb63452f6ad233a6c97ee97` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70421847195a77586ca46192e6e0337d610b0d7c` | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4752ba5dbc23f44d87826276bf6fd6b1c372ad24` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc30a053e4689a1080eb7dcbf09b3bf7b628309dd` | ⚠️ Unaudited |
| V3Migrator | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x32681814957e0c13117ddc0c2aba232b5c9e760f`; bsc `0xb3abf5790a6f6706f16cbde1e7de893f3c5746fc` | ⚠️ Unaudited |
| VaultCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 8 deployments: berachain `0x38402aa01220a1d19edfe061760877a353728214`; berachain `0x38d913835fa8115b60665d902f05b0cd772377fe`; berachain `0x831dc0dabe78b245c51f701ca21fb25760189c69`; berachain `0x856d8c0e177c6024160ec054f1fa9a5c24c0636d`; berachain `0x8d50571796c86fd7018b5711a10a498eeaf5761f`; berachain `0x9619fedb5f44b9eafef465d5df954f807acdc6f0`; berachain `0xefb7baabd0f31c3a7095dc861d695d9ea1ffd0a6`; berachain `0xfbfaf4eb4ed2e241510a1b7917f58401986492ad` | ⚠️ Unaudited |
| VestingToken | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x24ef95c39dfaa8f9a5adf58edf76c5b22c34ef46`; sei `0x92838ccdb9dceabc8e77415d73ecb06f8050cc5f`; base `0x24ef95c39dfaa8f9a5adf58edf76c5b22c34ef46` | ⚠️ Unaudited |
| VTSwapHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf4b4a83708474528a93c123f817e7f2a0637a88` | ⚠️ Unaudited |
| WSEI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xe30fedd158a2e3b13e9badaeabafc5516e95e8c7` | ⚠️ Unaudited |
| ZooProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 7 deployments: berachain `0x170e0c91ffa71dc3c16d43f754b3aece688470c8`; berachain `0x3010abd2fb29496282111088f4240bbb13dba454`; berachain `0x9cfd768c1047d20456ab7333e135c16efd0ae4d2`; berachain `0x9f0956c33f45141a7d8d5751038ae0a71c562f87`; berachain `0xc0fa386ae92f18a783476d09121291a1972c30dc`; berachain `0xd75dc0496826ff0c13ce6d6aa5bf8d64126e4ff1`; berachain `0xebf1039d30d7a03e6f09d0815431db339017d031` | ⚠️ Unaudited |
| ZooProtocol | unknown | project_anchor | own_supporting | 0 | berachain | unit-398271 | `0x4737c3bab13a1ad94ede8b46bc6c22fb8bbe9c81` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (50)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x53a1f55283245a99e25004079f6228def7603d91) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xf8dfaa0967c812a43d02059f2b14786dceb84e8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x831d93e55af23a2977e4da892d5005f4f2995071` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd4855cea813a843002d750da09c2e8d966c945c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed202a7050ee856ba9f0d3cd5eabcab6b8a23a88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x1434ae03cfa29d314da73fc18013ccd04f100af6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x17714e037a66df3f4faa78d6ba240ab5f50129f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x3362cb23043cb5e7c52711c5763c69fd513a3a88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x4ceec87a23e4ae4171d4438210bdad7d2138dca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x4dc1ee827dd9b578f6d58c5657859c4aee077aa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x621239a06b12a1210152585305ec6c1e68917830` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x7b2c42c52c03d69930842162ea0b1028e367d139` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xb34b27e0fb109a7fa3faa0596d4d115c423c785b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xb6ba61b2ed4a983f12b5b507255047c239ee1012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xca9851e8c209906d612aa41d683a6db7fd2d5266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xee5aeecd6c9409424f88163aff415efcb9027a88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2b72494fd4f092569b87e1a10f92268384f07a88` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-398282 | `0x4b9ceffba8b29970e66194e635e4b9a449156e4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4ced9db83b0ea160cfba7b4deb03628994ae17a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x58a4f5cecb69b85600b26092f0c0a73430ea8800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaf021d48339e52edd84bab1221df9bac7f10cb69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd1c2b89e9444088288adaec513bba68b2fe5296a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe7cc7ec042bc7b75b93eef9bdb8b64ae8c6cbc6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x056e530679857dbd884f7a9bd71e6b8a76909181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f70e725553c8e3341e46caa4e9b303e9d810fc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x550b031acbc56b309a8ef28914959115f6a97202`; arbitrum `0x6e603014ace3ae06f34ffe259106af77c056d913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x878aac1ca6b36a2841ae0200f2366a4178c2ca22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x893509c486def081b959bed440d97f15b014643a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8c6e434bb1c51728bdcc250255c1f654471d85eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d50571796c86fd7018b5711a10a498eeaf5761f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa341e92b22b1a2c94b24163eae09aed34e8ea134` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba3a59d369bdde63929691721e063105bbe12fe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc0fa386ae92f18a783476d09121291a1972c30dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc78ae1d6ff234775f3f8d12f77cb7ed5cbc4e976` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd7fc9ab355567af429fb5bb3b535eab4c7e48567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeaed7fae18203674ce4e9d16d5f3af254c14a329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebf1039d30d7a03e6f09d0815431db339017d031` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xefb7baabd0f31c3a7095dc861d695d9ea1ffd0a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf6f4a88ffd26fb14da4cff997ca773b06e3b2db3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398260 | `0x02fede9cf47c3d8ace52613c2a45bc588d4e0516` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398261 | `0x12f5f1f53b419d1e5f3084e649001ff091683adc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398262 | `0x256938bf1a340e6f80eaa35798b08a122783bedf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398263 | `0x575287cd8cb9a49e0ee00bf0c71eac337ab8feba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398264 | `0x77412b08bb3a8c38f7d0dc7d1158c5e7bfe03eea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398265 | `0x8685ce9db06d40cba73e3d09e6868fe476b5dc89` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398266 | `0x9700fea232560e4048dd924623491926282125be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398267 | `0x97d82c639835f4efacc366fde78ca0c4ec2a2a83` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398268 | `0xdf1126d3627b7f5d2a44d978a7180acbd3c34ab6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x893509c486def081b959bed440d97f15b014643a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xeaed7fae18203674ce4e9d16d5f3af254c14a329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xeb407254f0962de56d7984b41b12974f0ee44342` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 95
- Live contracts: 3
- Unknown liveness contracts: 92
- Source-verified contracts: 73
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=21, contamination review=6, exact address book overlap=3, source verified unclassified=43, unverified unclassified=22

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | ProxyAdmin<br>`0x589b4931d426146864f6e3df652316a6d643ed8f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x88bcb4e367efc539f36514913588f3bdda6d6d95` |
| candidate review | ProxyAdmin<br>`0xc9a7f5b73e853664044ab31936d0e6583d8b1c79` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x88bcb4e367efc539f36514913588f3bdda6d6d95` |
| candidate review | QuoterV2<br>`0xd00bd441cef3623dc59b5d9b5ef96ee87b42db42` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x88bcb4e367efc539f36514913588f3bdda6d6d95` |
| candidate review | TickLens<br>`0xd9270014d396281579760619ccf4c3af0501a47c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x88bcb4e367efc539f36514913588f3bdda6d6d95` |
| candidate review | TickLens<br>`0xf5f4496219f31cdcba6130b5402873624585615a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x88bcb4e367efc539f36514913588f3bdda6d6d95` |
| candidate review | TransparentUpgradeableProxy<br>`0x70421847195a77586ca46192e6e0337d610b0d7c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x88bcb4e367efc539f36514913588f3bdda6d6d95` |
| candidate review | TransparentUpgradeableProxy<br>`0xaec98e489ae35f243eb63452f6ad233a6c97ee97` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x88bcb4e367efc539f36514913588f3bdda6d6d95` |
| candidate review | ERC1967Proxy<br>`0x50bdb4a9a2bd520a13eb8d412854d95b1cc3aaac` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| candidate review | ERC1967Proxy<br>`0xf74b2eab9763e412849f7923317d31be49118b3b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| candidate review | TransparentUpgradeableProxy<br>`0xf16fff83de694bceaeec224eea64a78af7a2a130` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x72cce9d17ce88bf1dd9823c9d2916df90385226f` |
| candidate review | InfraredBribeVaultV2<br>`0xa6c0413f620cd8487dac7c1770335ee169934826` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| candidate review | InfraredBribeVaultV2<br>`0xbc8015241a8445add39de75477d0ac46f5884f55` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| candidate review | InfraredBribeVaultV2<br>`0xf579c039c52ab795f0c4e358d3b462be883cdd9f` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| candidate review | VaultCalculator<br>`0x38402aa01220a1d19edfe061760877a353728214` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| candidate review | VaultCalculator<br>`0x38d913835fa8115b60665d902f05b0cd772377fe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| candidate review | VaultCalculator<br>`0x831dc0dabe78b245c51f701ca21fb25760189c69` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| candidate review | VaultCalculator<br>`0x856d8c0e177c6024160ec054f1fa9a5c24c0636d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| candidate review | VaultCalculator<br>`0x8d50571796c86fd7018b5711a10a498eeaf5761f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| candidate review | VaultCalculator<br>`0x9619fedb5f44b9eafef465d5df954f807acdc6f0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| candidate review | VaultCalculator<br>`0xefb7baabd0f31c3a7095dc861d695d9ea1ffd0a6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| candidate review | VaultCalculator<br>`0xfbfaf4eb4ed2e241510a1b7917f58401986492ad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| contamination review | NFTDescriptor<br>`0x170265370499b8f388883004fbad9ebde34f3781` | non_address_book | unknown | unknown | verified | n/a | `0x88bcb4e367efc539f36514913588f3bdda6d6d95` |
| contamination review | BribesPoolFactory<br>`0x008eee3c55b2b1d938ee6345b0acd9c9dcfd281f` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| contamination review | ProtocolSettings<br>`0x1c77a85d47974fea7c8391317326335e35ee3644` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| contamination review | ProtocolSettings<br>`0x45a47e8013425af3e6e71f1aa24e3b8c523386ea` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| contamination review | RedeemPoolFactory<br>`0x17a90eda8c919b97d36e0082266bf9432fb1eea1` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| contamination review | RedeemPoolFactory<br>`0x9231e8161249907656a98f369fa08c51fbe69c72` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| exact address book overlap | BQuery<br>`0x6e603014ace3ae06f34ffe259106af77c056d913` | project_anchor | unknown | live | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| exact address book overlap | ProtocolSettings<br>`0x7d3cec2f46279229277802d30702e4e7fb19bac0` | project_anchor | unknown | live | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| exact address book overlap | ZooProtocol<br>`0x4737c3bab13a1ad94ede8b46bc6c22fb8bbe9c81` | project_anchor | unknown | live | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | NonfungiblePositionManager<br>`0x71479cf279bc2fcf5b8faa8c9eed2ab59127ab95` | non_address_book | unknown | unknown | verified | n/a | `0x88bcb4e367efc539f36514913588f3bdda6d6d95` |
| source verified unclassified | SwapRouter02<br>`0xa64dd3a63feed608660226112e748f93b87e650f` | non_address_book | unknown | unknown | verified | n/a | `0x88bcb4e367efc539f36514913588f3bdda6d6d95` |
| source verified unclassified | V3Migrator<br>`0xb3abf5790a6f6706f16cbde1e7de893f3c5746fc` | non_address_book | unknown | unknown | verified | n/a | `0x88bcb4e367efc539f36514913588f3bdda6d6d95` |
| source verified unclassified | DragonswapStaker<br>`0x0d579da091f03c9b6b78d7f84dd2d16a7989a896` | non_address_book | unknown | unknown | verified | n/a | `0xfec4fa7d245c2588686483c8246d5d308cab8c74` |
| source verified unclassified | DragonswapStaker<br>`0x2a2f6643aca537f9f56cc27a02cdc88e6c66ea9c` | non_address_book | unknown | unknown | verified | n/a | `0xfec4fa7d245c2588686483c8246d5d308cab8c74` |
| source verified unclassified | DragonswapStaker<br>`0xcfea00728f0ae7b791ce05c2f8e194f3ab9e0a62` | non_address_book | unknown | unknown | verified | n/a | `0xfec4fa7d245c2588686483c8246d5d308cab8c74` |
| source verified unclassified | DragonswapStaker<br>`0xf1d1598c2c48a70d708537693c89d6d699a902cb` | non_address_book | unknown | unknown | verified | n/a | `0xfec4fa7d245c2588686483c8246d5d308cab8c74` |
| source verified unclassified | DragonswapStakerBoosted<br>`0x69d40c24552a9e6884345e5c9966363178c708df` | non_address_book | unknown | unknown | verified | n/a | `0xfec4fa7d245c2588686483c8246d5d308cab8c74` |
| source verified unclassified | DragonswapStakerBoosted<br>`0xde04d386543176967c06763adcf6760b18122139` | non_address_book | unknown | unknown | verified | n/a | `0xfec4fa7d245c2588686483c8246d5d308cab8c74` |
| source verified unclassified | CheckerClaimAndWithdraw<br>`0x179b3dd2a3e5bf076c8523695996c3d0e764dcdb` | non_address_book | unknown | unknown | verified | n/a | `0x72cce9d17ce88bf1dd9823c9d2916df90385226f` |
| source verified unclassified | LntVault0GArbUpgV2<br>`0x9619fedb5f44b9eafef465d5df954f807acdc6f0` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | BQuery<br>`0x0e1d50c3c0894399c343b5d93ad5baf1a00b9328` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | BQuery<br>`0x3efafb114c570991be6a338f587fa8eda047ffa0` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | BQuery<br>`0x736f5165cb3c0c2831b05265cc29119a0a1dfaa4` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | BQuery<br>`0x878aac1ca6b36a2841ae0200f2366a4178c2ca22` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | BQuery<br>`0x8bf32a9603859235cdaf32e8201982a6cdcf411a` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | BQuery<br>`0xc78ae1d6ff234775f3f8d12f77cb7ed5cbc4e976` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | BQuery<br>`0xda407f56296305b93eabdd1cf22742ea160fb4a9` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | BribesPoolFactory<br>`0x056e530679857dbd884f7a9bd71e6b8a76909181` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | BribesPoolFactory<br>`0x2b9bd7ad7416ef98bdca0ca8c61b8baccc98b9fd` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | BribesPoolFactory<br>`0x2cbe935ab14f19bf8062aa5361134a0eaac70078` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | BribesPoolFactory<br>`0x4979a12bf440049780df3dcf245769e6bd1741db` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | BribesPoolFactory<br>`0x550b031acbc56b309a8ef28914959115f6a97202` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | BribesPoolFactory<br>`0x793d33981daa3777e6192e3489d0ca65d2cc74a6` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | BribesPoolFactory<br>`0xf74b2eab9763e412849f7923317d31be49118b3b` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | ProtocolSettings<br>`0x2f70e725553c8e3341e46caa4e9b303e9d810fc9` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | ProtocolSettings<br>`0x50bdb4a9a2bd520a13eb8d412854d95b1cc3aaac` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | ProtocolSettings<br>`0x8c6e434bb1c51728bdcc250255c1f654471d85eb` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | ProtocolSettings<br>`0xe34e1c9fc5313d9ac4b121b5f93c51e619dd778a` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | ProtocolSettings<br>`0xf8dfaa0967c812a43d02059f2b14786dceb84e8b` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | RedeemPoolFactory<br>`0x23786891643d007c93ac04b6566050f82eace0c7` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | RedeemPoolFactory<br>`0x5d5958f62ffc35a93c426c0d5fc55cd3dffc9e20` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | RedeemPoolFactory<br>`0x64ae2c9c53e0ebd068cc5ffb3d23e217142d66d9` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | RedeemPoolFactory<br>`0xa341e92b22b1a2c94b24163eae09aed34e8ea134` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | RedeemPoolFactory<br>`0xf6f4a88ffd26fb14da4cff997ca773b06e3b2db3` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | RedeemPoolFactory<br>`0xf791de7f4ad91ffc67f9147ee919c93215b2155a` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | ZooProtocol<br>`0x170e0c91ffa71dc3c16d43f754b3aece688470c8` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | ZooProtocol<br>`0x3010abd2fb29496282111088f4240bbb13dba454` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | ZooProtocol<br>`0x9cfd768c1047d20456ab7333e135c16efd0ae4d2` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | ZooProtocol<br>`0x9f0956c33f45141a7d8d5751038ae0a71c562f87` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | ZooProtocol<br>`0xc0fa386ae92f18a783476d09121291a1972c30dc` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | ZooProtocol<br>`0xd75dc0496826ff0c13ce6d6aa5bf8d64126e4ff1` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| source verified unclassified | ZooProtocol<br>`0xebf1039d30d7a03e6f09d0815431db339017d031` | non_address_book | unknown | unknown | verified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| unverified unclassified | UnnamedContract<br>`0x0281e98322e4e8e53491d576ee6a2bfce644c55c` | non_address_book | unknown | unknown | unverified | n/a | `0x88bcb4e367efc539f36514913588f3bdda6d6d95` |
| unverified unclassified | UnnamedContract<br>`0x831d93e55af23a2977e4da892d5005f4f2995071` | non_address_book | unknown | unknown | unverified | n/a | `0x88bcb4e367efc539f36514913588f3bdda6d6d95` |
| unverified unclassified | UnnamedContract<br>`0xcd4855cea813a843002d750da09c2e8d966c945c` | non_address_book | unknown | unknown | unverified | n/a | `0x88bcb4e367efc539f36514913588f3bdda6d6d95` |
| unverified unclassified | UnnamedContract<br>`0x17714e037a66df3f4faa78d6ba240ab5f50129f0` | non_address_book | unknown | unknown | unverified | n/a | `0xfec4fa7d245c2588686483c8246d5d308cab8c74` |
| unverified unclassified | UnnamedContract<br>`0x4ceec87a23e4ae4171d4438210bdad7d2138dca7` | non_address_book | unknown | unknown | unverified | n/a | `0xfec4fa7d245c2588686483c8246d5d308cab8c74` |
| unverified unclassified | UnnamedContract<br>`0x4dc1ee827dd9b578f6d58c5657859c4aee077aa5` | non_address_book | unknown | unknown | unverified | n/a | `0xfec4fa7d245c2588686483c8246d5d308cab8c74` |
| unverified unclassified | UnnamedContract<br>`0x621239a06b12a1210152585305ec6c1e68917830` | non_address_book | unknown | unknown | unverified | n/a | `0xfec4fa7d245c2588686483c8246d5d308cab8c74` |
| unverified unclassified | UnnamedContract<br>`0x7b2c42c52c03d69930842162ea0b1028e367d139` | non_address_book | unknown | unknown | unverified | n/a | `0xfec4fa7d245c2588686483c8246d5d308cab8c74` |
| unverified unclassified | UnnamedContract<br>`0xb34b27e0fb109a7fa3faa0596d4d115c423c785b` | non_address_book | unknown | unknown | unverified | n/a | `0xfec4fa7d245c2588686483c8246d5d308cab8c74` |
| unverified unclassified | UnnamedContract<br>`0xb6ba61b2ed4a983f12b5b507255047c239ee1012` | non_address_book | unknown | unknown | unverified | n/a | `0xfec4fa7d245c2588686483c8246d5d308cab8c74` |
| unverified unclassified | UnnamedContract<br>`0xca9851e8c209906d612aa41d683a6db7fd2d5266` | non_address_book | unknown | unknown | unverified | n/a | `0xfec4fa7d245c2588686483c8246d5d308cab8c74` |
| unverified unclassified | UnnamedContract<br>`0x4ced9db83b0ea160cfba7b4deb03628994ae17a6` | non_address_book | unknown | unknown | unverified | n/a | `0x7947e599c70c162f623a5defe9fc62026677a97b` |
| unverified unclassified | UnnamedContract<br>`0x58a4f5cecb69b85600b26092f0c0a73430ea8800` | non_address_book | unknown | unknown | unverified | n/a | `0x7947e599c70c162f623a5defe9fc62026677a97b` |
| unverified unclassified | UnnamedContract<br>`0xaf021d48339e52edd84bab1221df9bac7f10cb69` | non_address_book | unknown | unknown | unverified | n/a | `0x7947e599c70c162f623a5defe9fc62026677a97b` |
| unverified unclassified | UnnamedContract<br>`0xd1c2b89e9444088288adaec513bba68b2fe5296a` | non_address_book | unknown | unknown | unverified | n/a | `0x7947e599c70c162f623a5defe9fc62026677a97b` |
| unverified unclassified | UnnamedContract<br>`0xe7cc7ec042bc7b75b93eef9bdb8b64ae8c6cbc6e` | non_address_book | unknown | unknown | unverified | n/a | `0x7947e599c70c162f623a5defe9fc62026677a97b` |
| unverified unclassified | 0x550b031acbc56b309a8ef28914959115f6a97202<br>`0x6e603014ace3ae06f34ffe259106af77c056d913` | non_address_book | unknown | unknown | unverified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| unverified unclassified | UnnamedContract<br>`0x17a90eda8c919b97d36e0082266bf9432fb1eea1` | non_address_book | unknown | unknown | unverified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| unverified unclassified | UnnamedContract<br>`0x550b031acbc56b309a8ef28914959115f6a97202` | non_address_book | unknown | unknown | unverified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| unverified unclassified | UnnamedContract<br>`0x893509c486def081b959bed440d97f15b014643a` | non_address_book | unknown | unknown | unverified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| unverified unclassified | UnnamedContract<br>`0xeaed7fae18203674ce4e9d16d5f3af254c14a329` | non_address_book | unknown | unknown | unverified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |
| unverified unclassified | UnnamedContract<br>`0xeb407254f0962de56d7984b41b12974f0ee44342` | non_address_book | unknown | unknown | unverified | n/a | `0x1e1840f1eb9d9b89f4b1f2ad469e31e9877b820d` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audit-report.md](https://doc.zoofi.io/security/audit-report.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3916] audit-report.md — no match: The provided text is a documentation page with a link to a PDF audit report. The actual audit report content is not included, so no contract names or audit date can be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | `0x6e603014ace3ae06f34ffe259106af77c056d913` | BQuery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x33c42e171cfd7ec85d3db34d7f6d3d8121f64e63` | InfraredBribeVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x6686bdff3ad20ae45e811c2451dfee8aa0f338c0` | InfraredBribeVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x702b707c2f8dd26f4f1e51cf425035d355a02767` | InfraredBribeVaultV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x94822b9ba715e9e3079ed12489dc7a016694fc67` | InfraredBribeVaultV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xe6d15592f337f54e8bd47e56bbb22af12f0d4083` | InfraredBribeVaultV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x7d3cec2f46279229277802d30702e4e7fb19bac0` | ProtocolSettings | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x4737c3bab13a1ad94ede8b46bc6c22fb8bbe9c81` | ZooProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 44 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 57 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [3916] audit-report.md

Fork inheritance lineage and inherited audits are included when available.
