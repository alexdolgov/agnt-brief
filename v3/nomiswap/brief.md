# Agentic Audit Brief: Nomiswap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Nomiswap (`nomiswap`)
- Website: [https://nomiswap.io](https://nomiswap.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, bsc-testnet
- Contract surface: 242 unique implementations (484 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,380,306.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Nomiswap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc, bsc-testnet. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Nmx (`0xd32d01a43c869edcd1117c640fbdcfcfd97d9d65`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 240 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 113
- Confirmed-live implementations: 1 of 242 unique; 241 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/172
- Verified + Unaudited implementations: 172
- Verified by bytecode match: 0
- Unverified implementations: 70
- Unique implementations: 242
- Raw deployments: 484
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (172)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Abra | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x07db873525a55bdb68f9767f8a613a94163cfc50`; bsc `0x0d80d811a4daa5f87ef821eae18f632615bcb2a4` | ⚠️ Unaudited |
| Abra | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x7c1578ab72e7b56afcf80e3f3b05b3db8986e8cd`; bsc `0xbd97e454be9825a2dd28231975a031907460b562`; bsc `0xcd7437029ff827251a4af82b88a51764c88cef26` | ⚠️ Unaudited |
| Abra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb01460d995571f3d0a86fca88dd1fe7a05957277` | ⚠️ Unaudited |
| Abra | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xc0de0c10406455d921d9c62cf54cd93cbb844256` | ⚠️ Unaudited |
| Abra | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xdce52a10cc0f166e7def34ec4662cbf0439c4e6b`; bsc `0xed5e17c865df9c4d49e50ce5c4dcd4d967a33798` | ⚠️ Unaudited |
| AbraStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x218590b6b9ac95ad36ef32f65ce20aaf2016acc5`; bsc `0xa31a6413d933d2a7857f6c1d60cef65782bb84a2` | ⚠️ Unaudited |
| AbraStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x251d0d6e2552c3da4db7001819aaab01aa1e89ae`; bsc `0x92c4675245356cd7c5d12851751e4ebc506cb641` | ⚠️ Unaudited |
| AbraStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x2888e582116784e2d29733445ec6510b461c070e`; bsc `0x355850fb2b4ef534d904387db9aefd1a93bbb76f`; bsc `0x3ee87fa2d219508e74d25806896fbbd1c8072dc6`; bsc `0x6e9126f9edd3c353475db996d11a4fbc96cfb588`; bsc `0x6fc64fe0aac34b097d48e9365840a15f6020f051`; bsc `0x84803801f056097faed6977467cc2c4a00ea9a77`; bsc `0x9a9921d9ec2b1e2f782332d0717751571b63d5d3`; bsc `0xae714ce4d51789d82cece6ed18dbbc0a73907945`; bsc `0xc1ee4a85afadb4436171e97cfa9d994f0403ef7a` | ⚠️ Unaudited |
| AbraStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2f8e8819be6bc70cdf3bc25c6c27d2a3d7f527b2`; bsc `0x733bd14f4a356fac4e4f10f2cb1c17683f941c31` | ⚠️ Unaudited |
| AbraStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x3faf2b592b7c43825cede91c2c75009f26681f5c`; bsc `0x90cc3a075585f5c199dc2a4d9b3f7ea5d8133fdc`; bsc `0x9b0c2e724897b81cd77f3d6e5e0a65f73f4d7ce7` | ⚠️ Unaudited |
| AbraStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x70426d6846f6e1fd51dd8ea40f82ec5c0db3b473`; bsc `0x76aba6acef91b164f96333efd4459b56d819a878` | ⚠️ Unaudited |
| AbraStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8e8a404adde774fedd1d534bffc1a3a1e781a2e8`; bsc `0x9026352afcd1bfbeee8914997f9738efe26a1aa7` | ⚠️ Unaudited |
| AbraStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9ef732244c132babbfbdcc1a41260e5c025288dd`; bsc `0xa53af120fd228021ef881e7771ccd6f487e46222` | ⚠️ Unaudited |
| AbraStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc0c23cef522fc9d68b3649ac6c0b2cbc0b93b9f1`; bsc `0xe6bcdbbeb37e5776922ad7c203a921067b895806` | ⚠️ Unaudited |
| AbraStaking0100 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x191c1b4372a39e0b0c10f619934d5ef52344428a`; bsc `0x2e433400133240c8be4ed0a70286136ed1b086e4` | ⚠️ Unaudited |
| AbraStaking0101 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x02991a79bbaac7d2d248a4b64033b29dbf102fd6`; bsc `0xce15e026358f146f2ef40ca5068188bcadaacb7c` | ⚠️ Unaudited |
| AbraStaking0101 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f9e2eec5dba3b831988ed48b3857e8d72ae6b27` | ⚠️ Unaudited |
| AbraStaking0101 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x302019317a62c9247255d89eac914239bf58fa36`; bsc `0xffb43d0a0f544859895bfeb5af0925fbbd6590e4` | ⚠️ Unaudited |
| AbraStakingLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12d34deca0e0df7350add181c5b1d1268fc3fb81` | ⚠️ Unaudited |
| AbraStakingMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x015e11176c6d8f450e1e78a39dec4b4e6321dca5`; bsc `0xe281fb184e93fa35a7ac45d4e208eeb6f6ed03d1` | ⚠️ Unaudited |
| AbraStakingMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0c1bc5da9b7291819298edb93cac3ef4b7c3807c`; bsc `0x3a426d114f2e544dda047e2b817cdfd2c7bdaa9d` | ⚠️ Unaudited |
| AbraStakingMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5315c64cf81c84439bf08c3b504a423ea285bdc7`; bsc `0x6d6eaa3b90d5a27688880c7d6e1a78d57357952e` | ⚠️ Unaudited |
| AbraStakingRelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x015a874a6b6a0311c2a88b56cf62aed524d337cb`; bsc `0x1b02f1caa6dbabe003a26abb3345d433fb06dae8`; bsc `0x4a7c58094f3c59758858dfd0947ad3c99e82f195`; bsc `0xe4331f8d22fb73192bf8c030eefb02ceaa395bbe`; bsc `0xf007adc6d2e5271e71dccc3d99866e4c4545eb83`; bsc `0xfdecb9664d03c25938896abd65fb6d35264753a0` | ⚠️ Unaudited |
| AccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1bb4ef853b9b3d18d0f19ed40cf3bc2dc2f0c509`; bsc `0x5ed4c426eec096b370f9d03f24fa29f8e3872b01` | ⚠️ Unaudited |
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb4058be8cf73cb4d07caaf2e87c9b38dbf0eb627`; bsc `0xc56d6b89accc3f9764c5eafc16f8a85c581f106b` | ⚠️ Unaudited |
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xd584fa2d979460f33eee8282a83dfa88d17dc511`; bsc `0xd75dd2daa1f3a14b039c4e5ddf049c96bdc3565b` | ⚠️ Unaudited |
| ArbitrageHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x01bb06bf61ed87cd03a07951545cafe444be9059`; bsc `0xa85f5700e7fa56385e9538db87c98473f4f7a88d` | ⚠️ Unaudited |
| ArbitrageHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4cc09962ebfe63c3e3586796e48d4fae46fae2cd`; bsc `0xa5f1a2ffdecc4ce8f11788036f330890d54a1617` | ⚠️ Unaudited |
| AutoMaxLock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0c12eb9528938212e00488cd4d51407bd1a9453f`; bsc `0x9e41e3664608e51dfcb1c72b56662a27a7c1535b` | ⚠️ Unaudited |
| AutoMaxLock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x972b592feba27b42f85a5ced0f33d31f7bca078d`; bsc `0xb4d708654a7005f9d4ff7e302a77c14af5d297fb` | ⚠️ Unaudited |
| AutoMaxLock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb5cf96427104b5355a616bb42eab5fb835f47965`; bsc `0xd8541e7412eb884dc0150f8cdaefd4633212e6cd` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x17cc0c4e9b014ea2048798073471049ba70b9433` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x1b44f9666667cf291fb708d6d52558a478d958e9` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x1b5b770e81ebb005ccbb56f273bde00e930167bd` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x1fcd3bd3297d587d7ba740e00961cef1b2c7754e` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x3d17a0b42c5288b06e23e1d8c45c5a7ad29d7106` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x41c9ece5303c522dddb618b67166c17e8617c496` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x4d6f0b6be0c5006930942b6d6dfbeda42ea3bf9d` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 2 deployments: bsc `0x4e99780da624036df97ed564468985690eb04da8`; bsc `0x89c71a77e13e91bd6f36ae9c099733a1b38d51ac` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x7c80e99b6328d3d2dfe248c7b3ced534adefde96` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x9da054730b7a58dd8977174b47113fccf588fd0c` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xb2d0283991a9e80d56a1c450308a17585b9b3627` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xc9ecab429d3178e0c4ab459b06c4f2ede0537628` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xcc706831dd228a759929e5dd96921c0b8ab7cccd` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xd3305b0a23d91a233f4a6252c4ae112510696e0c` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xe574e416d8100098e1cc1af6ec029bfaec31bd30` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xf5eaf3bc7daac3ecb988f84975529c076b962132` | ⚠️ Unaudited |
| BalancerUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 2 deployments: bsc `0x807793d037c577e5b748c1677cd9a2bf53cc23b1`; bsc `0x83efb7531b893a67e4cec5cf662f17eedff4123d` | ⚠️ Unaudited |
| BalancerUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x8ae3fad345625027a736537ea68472b4f054ee81` | ⚠️ Unaudited |
| BoostingService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x2c7f61be2c8cd5160bb57084be2a1b5794fc14bb`; bsc `0x36c9bb95ccd976c513faef8390255e884253865a`; bsc `0xb6dc1c33ecc95d333f9c5a2e41338bc50fe306ad`; bsc `0xe0cab28ed763fc6072b61fcdee41cc5dcb581546` | ⚠️ Unaudited |
| BribeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6d9ef055d68a5660632e66840cce8f1ef3ffbb11`; bsc `0x9d6ad2c9e6643a907c829545a8b4cf6c49d239d4` | ⚠️ Unaudited |
| BribeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x785b17083d3f07c8c620aadc39513331ca1534f5`; bsc `0xef81b52ecf1bd96c5cf5764cd348aac91434e1b2` | ⚠️ Unaudited |
| BribeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xe07448334c438fed065461f9e4905d80b6a0f42b`; bsc `0xeeb50988d40d9a377e8c06d851c2f72118640b80` | ⚠️ Unaudited |
| BurnHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc9f09c2845e2e518ceabaa3060aae0085eb4bd4b`; bsc `0xf520b2bf38b0e458f62d0dbee79261b5901956d8` | ⚠️ Unaudited |
| CadabraFullRangePairLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a479cff64574ed192f42509a205e3eb94dc258c` | ⚠️ Unaudited |
| CadabraWrappersLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08639ae6d35105820fe708770158c482e4257d85` | ⚠️ Unaudited |
| CircuitBreakerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x065b131fb5568cd379b3699b065f8a5b91aeca69` | ⚠️ Unaudited |
| DispatcherAutomation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x61aa64ab2cad6329172c47388d88fe6167b93e13`; bsc `0xc27a995ce176cb1d117d990e05217dff7e39c6b1`; bsc `0xcb9c93e34939a78183c964864e6b526ea1ff978f`; bsc `0xe2f17a823af0ad2806b62849eaf47a0b70abcf43` | ⚠️ Unaudited |
| DoubleSupplyStakingRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x99b674ba03e896d952983908dba8d7b560fb10d5`; bsc `0xd35181cdce436439b6562380844c7572a991fe16`; bsc `0xdd7b0fc7a1a9de6b40220f6443f5d65531cd9994` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 41 deployments: bsc `0x14f7c1da2bf7e28712b6453e37b7e9b01f7dd589`; bsc `0x1bf84eb87d2318910aac66c748712a798a5481f8`; bsc `0x26785aa1d26c03fac1ed2bd1468e3edfd3680282`; bsc `0x2f8f6e21e623dca7fef3b09bcc922579dccad69d`; bsc `0x38c5e721c94e3a8c437a3953bbcf11fb848843a3`; bsc `0x39a732a27528b5d510106200ca447c9b7b54de0c`; bsc `0x470bc119b82c77fb30649c7a9af9e69e16022d90`; bsc `0x5b1fbf6ff5b953140ebb53c2448797e763ad7606`; bsc `0x62edf662ed6284ede8d3b8052d9fc74cb9231895`; bsc `0x68986cc80661ec20d3e8dbb1b71d0e7256dc47a6`; bsc `0x6b123adf2f844da7494fcdede1e8f5d1dbadebb6`; bsc `0x6cc515e4dbe8f4d46633d80e130da5458774169c`; bsc `0x712ab9e6172338c284abd5af56eb7a8b9f09231b`; bsc `0x714e22fa7662105dc908e5209daffedd12354002`; bsc `0x731b4a3b1c9bddc43b19b057a045392fb57071cd`; bsc `0x7767616cbef80e4f0d4b0941f1156c34e9053e44`; bsc `0x79a4af97d39d4a30dbed91e0ff70ea06a786c9b2`; bsc `0x81922f19b125e63215c5ab4f22520f335754b85f`; bsc `0x85031f32d48a17fa020dc781c13d8dc69d030bd1`; bsc `0x8a7159f5988b19c67ea2bfedd75300d6a09ee7e6`; bsc `0x8b9fbea160a1d681ca2ffddbd26d2bfde82877ad`; bsc `0x8bb0af74f657f6aa1ba7df9e7ed97bb471df515a`; bsc `0x9cd2804f520117020e39979e77b5c5388315fab6`; bsc `0x9f7fc04fe0ad24769ddc2d02cbf6fdb0078cb62c`; bsc `0xa2956e41c94ac8951dd8553855cb8d107dbb4ed0`; bsc `0xaa9cd130a6b3b7fcd99fce995f1b0a79404ad01c`; bsc `0xac39803c5bf7a587862abd81cf78bdd04160aeff`; bsc `0xacc111859bc9069bd3acb73a183cf00e456b2367`; bsc `0xafd10afb6a33b934c021ec7c2500e751fc9e2aa0`; bsc `0xb064a6b848d22581c4e4e281dcdcc6a9199d81de`; bsc `0xb5c88a4b150e7b578f9fe288ce198e022626e042`; bsc `0xb630a48293321d6768ed53cac93750e3850f0d5c`; bsc `0xbd81bec2729f396d0deda80f40a99a76573669e7`; bsc `0xbff695462ed230aab86831df0c7775db7219f5b2`; bsc `0xc5f795a9a2566632a7a8eb2f5bd88cd071d8dce5`; bsc `0xd5d6c0c311b623b35a541d8f1c411365f657c6ad`; bsc `0xd73872d8252e3e3631c8f866e361931fd0c49401`; bsc `0xdff1240d6c109c0456c58ce0043b00cf5929e0d4`; bsc `0xe0be69896d58b032956572f8889511262da4ffd2`; bsc `0xe2b09074d46c43091ff1621ef6f2be0b5a065b06`; bsc `0xe7350d92095d6779bc40f5a3a6e14215f6414d08` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x290180388078e9041ff8405d0ab6284fc4dac2d0`; bsc `0x77d06a0e0c06f4a902031d9ff532a10ffe14a665` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x4e1cdab715b02050934d3284d6463daa31890222`; bsc `0x9f51834d9baa507a2de2cb9cc4e613e42b81fa39`; bsc `0xe921023bff5db277210f9c77b4919a9409f00a0a`; bsc `0xf7317ba184ac825892db97fd7ffaa767becc7704` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6d7db7924bcbcc7a4df72223bee24546339f5dd7`; bsc `0xb2fb0112692bc182485b89ab7f72facfebb6cdf3` | ⚠️ Unaudited |
| ExchangeAbraPlanHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x0323fbcd09a9b537a6d436f2544b6278d8fb8082`; bsc `0x95921c568a45c44c7f5202f150ce70b5f96d1fb7`; bsc `0xe018eaded295f0656b392d8bf9d3a9950ad3aeda` | ⚠️ Unaudited |
| ExtendedAccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x4d09fcfc60b4021ae632aea36793b288bf13de24`; bsc `0x5d83ef04206870563fc93d26849a831f41f38b75`; bsc `0x623cb18fc1fee88c4049fb1e2f076ed57ad311b2`; bsc `0x697ddfd3c6401cd7c13fa67047a3c0d9967da038`; bsc `0xa4894fcbf1f2e8f25d154c3e55451986a10be734`; bsc `0xaa3f311078d97a3be38f8b4c22132a3b069e8a84`; bsc `0xb2035b3062bf6619620e4745d711e203f9d637a3` | ⚠️ Unaudited |
| ExternalWeightedMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f94f354f3b7aea94a92989fb1136922debcea08` | ⚠️ Unaudited |
| FactoryOwnerUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4aa998539a8b79e7f14d36fc6a081c182ea1502e`; bsc `0x80f173558abf1f3148128d0cb2cd9ea63839ba63` | ⚠️ Unaudited |
| FarmingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0xdf1e4cb8ee485af5d842829d4926ed408a6cb658`; bsc `0xf787d03ba3fe8a60a5d329b37d2941ef797a891f`; bsc `0xf915038a27eee0e38cf4c978920e945429894ec6` | ⚠️ Unaudited |
| FeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x394a6785f07d86ac75cf3db020773b9f76c76384`; bsc `0xee5bb1606bf23f6ab14e627d54c8cdf88b3ab785` | ⚠️ Unaudited |
| FixedRateMintSchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x66fd552aa5007cd87945a4547aa32430be89af96`; bsc `0xdcca39cbc8bf3a181b2c3befe74f0c9e87cb5c5c` | ⚠️ Unaudited |
| FullRangeGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa210440d82a6977107f4cb4fc61e4138f5ac1810`; bsc `0xad98a0b492435d6691864beb512f3f90d6a47443` | ⚠️ Unaudited |
| LiquidityUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99fabbe2029179c7d04858b9d15bae0606f69f0f` | ⚠️ Unaudited |
| ManagedPoolAddRemoveTokenLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8abdf662702c7ed0e0ed31af9fdb143dd74e29ff` | ⚠️ Unaudited |
| ManagedPoolAmmLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7290ae6e102344a1376a7663f5ca703afda25bc9` | ⚠️ Unaudited |
| ManagedPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x095e59be6c0c6c7fb8297bfb1de531aaffb51c9c`; bsc `0x1a17264902fc92465f3a2940b37c94b6adbe63c0`; bsc `0xfa11036fdc63c081bb7a33983d7b8ccd86699ea6` | ⚠️ Unaudited |
| ManagedPoolRebalanceHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x012ea422e053196d4c55e0ed9059102b7fd3a12b`; bsc `0xccf90039f4ea5d9b03925adaea4d752f3c6e25b2` | ⚠️ Unaudited |
| ManagedPoolRebalanceHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x210ef460a52dea4a292dc04af46819dbbd38382e`; bsc `0xf66270773919c3ea0d375f01297e8e2d23a93045` | ⚠️ Unaudited |
| ManagedPoolRebalanceHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x4b0ae49ed9157e5cfd24f14ea041f1047d4c100c`; bsc `0x62c154e53d5f0a3105cc045f420bf129b5872201`; bsc `0xf8d1ecd157afe91a9f4cc465ef94eada760e67a0` | ⚠️ Unaudited |
| ManagedPoolRebalanceHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x78fe59c20482c8073d88f4de4bfc698a37699d80`; bsc `0xc2306431a656e21242d18fce4a7d93244d69fb3d`; bsc `0xe4589c50eae7c4d76e49972dc103cc3a6bb7142f` | ⚠️ Unaudited |
| ManagedPoolRebalanceHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x81ff55b061c9e079abb89eb5030b4037b745570b`; bsc `0xd5fe83e20eb8d5de67a5e63eb4dd26adf5ba21fe` | ⚠️ Unaudited |
| MarketApproxRemoveLiqLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1659783fec96c6502b7b2382589c17c13e4db2e` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e87c24bafd6aedff0a860b717d8b28042c376b7` | ⚠️ Unaudited |
| MinterMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88462efed09c20502feacd50890ccff0a5897cd9` | ⚠️ Unaudited |
| MinterMasterAutomation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb114af83e1492aca50c015cfd703a8ae7c84a456` | ⚠️ Unaudited |
| MinterSub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x38eac16575bcf6a48a6e2693ee90cb2480c27c29`; bsc `0x9bb03b8b171ea5acae5e71f82d269cee6a8fae2d` | ⚠️ Unaudited |
| MinterSubAutomation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0xa0de5135697a5bbc8bd73bc2f53d59e136fe4f43`; bsc `0xb1fe9a666c706de9dccf96e34804cd42aff51868`; bsc `0xc23c7b1a0e80a97a8e002930ed9f293038007e5f` | ⚠️ Unaudited |
| MinterUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3769d421c17e1770a9ac41752bc4859a23b60460`; bsc `0xaf914c6b15da096bf6c3f03801afb746d44bf3c5` | ⚠️ Unaudited |
| MintSchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc86e74935181acb6de7c9d8307dd4092e35cf4d0` | ⚠️ Unaudited |
| Nmx | unknown | project_anchor | own_supporting | 0 | bsc | unit-389857 | `0xd32d01a43c869edcd1117c640fbdcfcfd97d9d65` | ⚠️ Unaudited |
| NoBurnRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x69ebb16fc13deac6985d0963b4424981cedf0612`; bsc `0xcb4fd031de606b69803774849881cf136f691409` | ⚠️ Unaudited |
| NomiswapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6715a8be3944ec72738f0bfdc739d48c3c29349` | ⚠️ Unaudited |
| NomiswapPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x13de257cb86a08753df938b6ad30d1a456a863e6`; bsc `0x33edc4c558c4badfe050d79f565632cf910573b6`; bsc `0xa5f2f22d3b4fccf0fee429e6a8acfc376f5afa22`; bsc `0xe2bbf54dc0ccdd0cf6270f2af2f62ff79903bb27`; bsc `0xfc3a2aeff7141d6ce7c2afb2db6a9e676c2e18a7` | ⚠️ Unaudited |
| NomiswapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd654953d746f0b114d1f85332dc43446ac79413d` | ⚠️ Unaudited |
| NomiswapRouter03 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x4ec3432d9443f05022e2ff4e54fc7514be2359e0`; bsc `0x9d15d0d737e06a875f3d46621fb52fe79ffa6136`; bsc `0xa63a2e9d122ba26c21f6f5122e621666f7fe1c68` | ⚠️ Unaudited |
| NomiswapRouter04 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x13147820401f455e3318db8686958d457ad2e7b0`; bsc `0xbf4c0d66db59ae8276e0cb7e1ed36fc4ac8c1d68`; bsc `0xd486d0846812266d21e1ab6c57fcf202df836dc8` | ⚠️ Unaudited |
| NomiswapStableFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x35ddc24e4f5be30262e36b50e7795fae880bc4cf`; bsc `0x4c82142f5e6dcc40282d1ab5142f293ed43d92cc`; bsc `0xc443b65d877ac2d2aa2159fd2d61574de5d7b33b`; bsc `0xc6b7ee49d386bae4fd501f2d2f8d18828f1f6285` | ⚠️ Unaudited |
| NomiswapStableSwapOnlyRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6f2d19087af5ac4e329687b6de9a7cc79d39357` | ⚠️ Unaudited |
| OFTMediator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x22451bd5f90ecbf4213169533c2abecebb05494b`; bsc `0x8049543217b06c4b126b9d9d8217d35edef528f9`; bsc `0xaff0ef14bc991ad55d994e3d8b549ac25f07629d` | ⚠️ Unaudited |
| PairYieldDispatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb05c38ad73f834a1a03705f58bbb1e1f95b4e798` | ⚠️ Unaudited |
| PancakeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x7e54f740c14ca8398871f5042df8ce6dab1e1f09` | ⚠️ Unaudited |
| PoolDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x5a2d0abe573c9753bafc351ac46989139c23dc01`; bsc `0x632fa619af4da6cde9825fe752ca5da25f1f7ee1`; bsc `0xa5a7e3224731dba8180aa8d5af351a3dac38e92a` | ⚠️ Unaudited |
| ProtocolFeePercentagesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x00c4763a7d09abd70029784e87bf5b001a7e774c`; bsc `0x1974f6ef7cee9ce57eba250a58387277b5673606`; bsc `0x9e37aa0e5c50f4b2d3202f20aa8e13975030830c` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x5aeef80bfe93a5c6ce478efbc2f2b0c4a34f5ccd`; bsc `0x5b1eba0f1e036c9abcd2feef84d7dce4ea8f4691` | ⚠️ Unaudited |
| RecoveryModeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x0f5819e8e2d7c26aac994af2932fb79b2943df28`; bsc `0x9ff4dbe6e86b56b6e87a72850c94104fc7a22ca7`; bsc `0xeeaa29e4bcd5afcf4da25456f494991969afb1a3` | ⚠️ Unaudited |
| ReferralStakingMain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb23790325a47ecd7ae613914c295feb6b21bd957`; bsc `0xd3bc8bf3f0a53bad53bedf88fc67ded313330756` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x52bab44570947fa139e25365608f06ecb7e5893d`; bsc `0x8d0faa7e9be2354d740e7f983a26d2a9a67198f0`; bsc `0xbf42ba64389eb30ec276ee139a698638f97ad4ed` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9c8b83def25fcc531028ae089967fcef30e568f` | ⚠️ Unaudited |
| Rewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ff42029ea33ab623eeb18ade541ad87e78e4df2` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9b9aadb9b283213e2f3471666bb5400a230fd2f1`; bsc `0xe7d0c9bbe9c83109183d5a7847dfdafc7ea82940` | ⚠️ Unaudited |
| RewardsSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: bsc `0x32d77bda91f07a2a3149c6b3f69cdd31f410c7b1`; bsc `0x7e532b9f1b047fa42e2881321eaacb61300cd630`; bsc `0x8a451f9c971f60073af3b61f6bd8ed28c7740caa`; bsc `0x9600457f47eeef9d39df448d2d37e8f8cd3ae46e`; bsc `0xa04e77a44d92e74c06afd4f913d1889e4a1dd9fe`; bsc `0xe8e89a968f2d74bfd8aa16bb3457b947be77775d`; bsc `0xeb935f4eac5e8c59659eaff01dadebdf47618d15`; bsc `0xf6461c75a89fbf4e4fb9cada5adb06fc1af359bc` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x744d2395324b7fe96a2a8583c8b225f52eff29e5`; bsc `0x78faac63ba1140b84d885cb78be7d396921bdcad`; bsc `0x9ef0466957f2dc69ff9025bb6ec8b390a4cd6a18` | ⚠️ Unaudited |
| Shwabra | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x079ee69bb08f67ff8df08c878eb045267f9aa2a5`; bsc `0x9b42d10d3d5e976f768c0a4c558d45ee44112e66` | ⚠️ Unaudited |
| SHWABRAStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1f58366825dc216a7d1c7197a5cbf42f9133d5ba`; bsc `0x885cca74ed59e0c32c187b068b73451335da1e84` | ⚠️ Unaudited |
| StableswapMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xf750baee569852d2a8ac052aef96f242191146db`; bsc `0xfa88112318c4ebb789a66d8b27f1b62a605f41ce` | ⚠️ Unaudited |
| StakingRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2f8f34907c73e3bf509e8f82eb44cb0a7e00cdc` | ⚠️ Unaudited |
| StakingService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 14 deployments: bsc `0x03868d2e45a9b579cc68b7addd65cf78ddb62a68`; bsc `0x26804231a528c894ab6790530b237449a817da6a`; bsc `0x281e60407b095b956a6a5ac98ee217bef3144928`; bsc `0x5c317770bf9a7d7cc88974a97ffa92c209669bfe`; bsc `0x5cd67d65ff07d5be2488e51f1a8c69273d258338`; bsc `0x63a81d936cb14fa3649a4d071608758cffb3bd94`; bsc `0x8326e22a36486ae7d4b85e8dfa732527b962805c`; bsc `0x857083580aed7b5726860937ef030ed8072bc9ab`; bsc `0x9cd2d1a3214c12bb6dbfa7dbc3b0641c26a2f9a6`; bsc `0xa0f2c13e20a11e00acf4e7b47604b24ca8908797`; bsc `0xa937eddfd12930f758788bcc936b4762bde9d54c`; bsc `0xab2f4297e7e31638ebe8362471b3038018a106d8`; bsc `0xd8925c88b94513be760ad88bc10d780d58fa001d`; bsc `0xdbf1b10fe3e05397cd454163f6f1ed0c1181c3b3` | ⚠️ Unaudited |
| StakingService2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x06781d2a2a52f848ca1ed890847adb326c86dc2c`; bsc `0x283567a552aaf8509d616d0f904a18439437ce34`; bsc `0x2b530d7243c126aaa71d70250f03a76322444a7b`; bsc `0x2d8b192ead2f402867323b072d143d44435edd74`; bsc `0x5657563cfdcedda7cd5ea5fa02423c4d7ce96beb`; bsc `0x6d543a9eeab2e765ae795f097c0531bee4b56160`; bsc `0x85e3fa9dd14f9ed7d33f89e918fa7fe1a639933b`; bsc `0xaef7aaa46a90923a08167a25041f4d3be6d7816a`; bsc `0xb475ef5e425d1652a362836d4f8c570e8e765f96` | ⚠️ Unaudited |
| SwapExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x42d6841d33d13fe79df00cdc92b79d906dbcc51e`; bsc `0x7dbd9af11c44b1feeb0b92079311e6db17342b4a`; bsc `0xf1276bb462084f949f26a9fbf77168719176a251` | ⚠️ Unaudited |
| TestVoteAutomation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x166cc769973062fb6a1b8e84de0f518028ab1c44`; bsc `0x5a960514af8b85ff5a8cc6ffce50da047786e87e`; bsc `0x9879ffb99e39d10c8706b46a26a4aad21e91e030` | ⚠️ Unaudited |
| ThenaGammaAdapter_qStablePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x3c0eafdc302b4c247e91487ff35b0b0f484baeb5`; bsc `0xcbccf3966d3e49ad018ec6ffa4e4a5d4d970e196` | ⚠️ Unaudited |
| ThenaGammaPriceFeedAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x653737b7574e79dd0be5c82c84d77519ab77f6cd`; bsc `0xf85be32de105b8d0cde96a1cecedfc4e5bf0df9f` | ⚠️ Unaudited |
| ThenaGammaTwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef4bf3c74060c94cfe96d0e64edcf24fcaf16aaf` | ⚠️ Unaudited |
| ThenaPairAdapter_qEqualed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x111f9663f8fb06a719c5279f9863ca574e09546e` | ⚠️ Unaudited |
| TwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x51494b68547d54cce95202c6853902b20f0cde8d` | ⚠️ Unaudited |
| UniswapV3FullRangePair | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x452c917a78cefd23dbace97d7888f1876a130651` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x932a8d1bfc3cc792bd7f38bb8465d57299b29772`; bsc `0xdb50b0b198edbdf04497878dec197109977133ba`; bsc `0xde864e0c3009e807946245a6d4f9be8e08d69f62` | ⚠️ Unaudited |
| VoterAutomation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x27493ed709298d3441fcdfa9b494bbb05da15c2d`; bsc `0x4bb3e707061de6b412d38ca00fa0efccaf0370be`; bsc `0xe4f91b3af81898dc5defa5356bfd930d58cb5c0e`; bsc `0xfa7a34ac6e1e859035168c4beb2ac1aed777165d` | ⚠️ Unaudited |
| VoterV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x2cbafce64eee4682c9bb4e497d60584ce8e495f9`; bsc `0x76ab4ef7d6632fca9b3ae7e7a472583c2562e918`; bsc `0xf780cbef178fc10e8755a9064f037ed5233db435` | ⚠️ Unaudited |
| VoterV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x3d4367f82b6d1935897cae35e2c68d92d58ac193`; bsc `0x81f1419056172fa4547e2d62661efbaf752c1e05`; bsc `0x9dde55d54aa5feb5e205969482187576d8f91307`; bsc `0xf14d7308bcc4e4c98416b42827e27dc107060ad1` | ⚠️ Unaudited |
| VoterV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4bbfd908d23533c4a1df63a4990379e35999dd20`; bsc `0xb687c02418ade494bd0b7e3bbed3e3c25de1792e` | ⚠️ Unaudited |
| VoterV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x7eeb13ab561f43d918ce2ab0c7c42e389d0ef4d2`; bsc `0xfbcd878d69ff6a442b0171e4f857cca9a998cc10` | ⚠️ Unaudited |
| VoterV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb0a199dc4d49299fd8bbded2b29d8b04e523b222`; bsc `0xd2865cb1182d9f34786d010cb0a55caddb17409d` | ⚠️ Unaudited |
| VotingRewardsHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x11aa82977a89ced61814c910e96c1ce05dcb65dd`; bsc `0x5a49238b4c5c11f4c0dac033ab37ddc48c7dccb1`; bsc `0xc38d202d045fa2831cf93ff64b217d667e49f6fe`; bsc `0xd1a5baf1e0241e6516aab29c7b6935291b293650`; bsc `0xea1068d5f144c333ebb8c32552957469a763e392` | ⚠️ Unaudited |
| WrappedCakepieAML | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09efe2d6a132571cafb7516f68f98c49127d2df4` | ⚠️ Unaudited |
| WrappedCakepieAML | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x370a9cda942e3168250a05517bee4489f05d3965`; bsc `0x847434fa62696d072088bc142b7a99a9243c32cd` | ⚠️ Unaudited |
| WrappedCakepieAML | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x50b357a68b89158e850c55ed1081125ae1ab8e06`; bsc `0xab54394b570f782767b372a290ca634535887c08` | ⚠️ Unaudited |
| WrappedEquilibria | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x2a7ed6fe2c2c04aa503e9269a8e5df34d3f7f929`; bsc `0xea6d1154c034c64798623247cf7e5e39531f65b9` | ⚠️ Unaudited |
| WrappedEquilibria | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2f513d03874c842796b36ed0f46e51ae1f435e8e`; bsc `0x50234c29a1efa55fd6e4d871af1276022c860958` | ⚠️ Unaudited |
| WrappedEquilibria | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x384d3d054b347a1dae236f07b9af676880108c48`; bsc `0x77d2329cf228ad49383bda3ed267f9bed413d09a` | ⚠️ Unaudited |
| WrappedEquilibria | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x89b9f3ddaf2c046d21b7de9365908dafeca98398`; bsc `0xe32755575f0e5a09e57963ab9990db162c600ff0` | ⚠️ Unaudited |
| WrappedEquilibria | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8e5ffc74a1a4aeb8442f1604473f3b3a911f5524`; bsc `0xf668e85f4cffab800e91ede8480239f711f5c33b` | ⚠️ Unaudited |
| WrappedEquilibria | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x90e72843316019fc6c13d1dc3c7334a476f815d9`; bsc `0xea3e451560d54e5cd3a86dd848389853ebf684da` | ⚠️ Unaudited |
| WrappedEquilibria | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa9f5f5285758344c79e579708517652d5930140c`; bsc `0xc53e23223443beea5b5e83c99c10ed8c9b513b76` | ⚠️ Unaudited |
| WrappedPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1321a88f789635889a69c7acdd483e7081a3c419`; bsc `0x4b2781d622bc432be839c2b839d73ddccfb64468` | ⚠️ Unaudited |
| WrappedPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x14f3e38980aa514a95b2c1e937fd0bbd44238770`; bsc `0xed24a74dd92b5f71e6b9ad5ffaefcb1578c760ff` | ⚠️ Unaudited |
| WrappedPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x25312a9f1980d874503d15fc942ab12037911a98`; bsc `0x8113ea25211f8e37cfa4d48921e0438cb821c63c` | ⚠️ Unaudited |
| WrappedPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4a28fac0a2488a18592d74c39ae8acaa6ecfa1aa`; bsc `0xa4833c75feda371a35f01dcacfa40ab62b59410f` | ⚠️ Unaudited |
| WrappedPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c8372dd577069ebc46fb94b263fe54899e53a38` | ⚠️ Unaudited |
| WrappedPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6907ca044da0f21374cb57e5815e9c37e346e4f0`; bsc `0x7f647c33df81488eb8509785ac6f7b614cd873f1` | ⚠️ Unaudited |
| WrappedPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x85ae0e914194e45885b31018e65cfe07a190e95d`; bsc `0xdb7f04b2625978bbb667c5e0c3bfad369eb9c7d9` | ⚠️ Unaudited |
| WrappedPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9021cc11282489293cf138860b9a18aecbf5eca7`; bsc `0xe5214d01233c53dd8ada382913d5a8e5619e6348` | ⚠️ Unaudited |
| WrappedPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xd612a0cb9113b7cd4c0a7876d0765ef047f68a84`; bsc `0xfb545b638cd2f932d8b8ec1c88140a8a61477dc3` | ⚠️ Unaudited |
| WrappedStargate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x341cbc2dcc08485ab9cca58b8f4848650315f792` | ⚠️ Unaudited |
| WrappedStargate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x469cc456e4b8a1d9e22e0b7e0a19f98888e396ac` | ⚠️ Unaudited |
| WrappedStargate | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 2 deployments: bsc `0x598763ba9a35f4f8337e76dd47707eec67830acf`; bsc `0xee93ec03f0e7f3fffe1443226c33932294dc91bb` | ⚠️ Unaudited |
| WrappedStargate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x6c7d6823f796906c2b160ee5f14062802a5e68d0` | ⚠️ Unaudited |
| WrappedStargate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x8c9d18fc27a0f35ceca03c91a0f8b6f0d9993b6f` | ⚠️ Unaudited |
| WrappedStargate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xe8421275510b5287d6a659456b7f4efa31f59bb2` | ⚠️ Unaudited |
| WrappedStargate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xfbec2578de57b0a8187e3d74de8e64d967cbe325` | ⚠️ Unaudited |
| WrappedThenaGamma | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x002aac5f9624da770848c7503312340d8c8e01de`; bsc `0xf4673f5aebc454a65e0a29ca066b2470249a0f17` | ⚠️ Unaudited |
| WrappedThenaGamma | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x52536d7fb4ed491e9c52dd7430bb8e828d03464d`; bsc `0x872ebbedaf7707fe43cfe6da3082f44cc4612fd2` | ⚠️ Unaudited |
| WrappedThenaGamma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x649c440b234f892a160020444ecdbbb9f1e30aec` | ⚠️ Unaudited |
| WrappedVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x072d5685b39e44183a3a698ac29320123ea41507`; bsc `0x7cbd54e585903015c49958596e884cc2f55bac08` | ⚠️ Unaudited |
| WrappedVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x0b2b7d48fe038787b706bb701bcb28eeb7b73ced`; bsc `0x63bfbebe4d7ee75f9e472bd63ba0822e8350e3a4`; bsc `0xd61a2cd01f061eeed6c63c5f2c72e186c6b086e1` | ⚠️ Unaudited |
| WrappedVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0f90f2480b26e2db2de19a06793553bae5866524`; bsc `0x6a1f0f3d3eef99dca28d83fb88a07f4db66a2269` | ⚠️ Unaudited |
| WrappedVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x2d72ac3ce4f42aec26615e9a4d19a02d3dd8a47f`; bsc `0x364d89f0f4bf95b87fc9e43d821aab910aebbed7`; bsc `0x58efa4cf4d0fd814ed9ef2a388005e82a51935ec` | ⚠️ Unaudited |
| WrappedVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x3d0eb9f1d7395c87b9de274042576a2d1da88f47`; bsc `0x6c38d1fb89120aeb86e2874c80da6a588f678fe0`; bsc `0x6d8557b43193768dbaa4750382206922cd64a686` | ⚠️ Unaudited |
| WrappedVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4bbb189194723f3cbdd1d8a60b0a89b2a93c10c5`; bsc `0x959f0c2760423537ec6bdd042cfe922ec91fe721` | ⚠️ Unaudited |
| WrappedVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x4dff76c2c196d365cdbfabb058976b3063deb29a`; bsc `0xcb1d59e80b5ea73fa9f9d35bbb70b6f3c7e2001e`; bsc `0xdea98a6ad811e1f352256d9905ce3ab8d03f5810` | ⚠️ Unaudited |
| WrappedVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x67a0d6a8018a8ee2d728ef7aa32898c7a260c07f`; bsc `0xaea710ecb318269b341820545369a7972a23a6a8` | ⚠️ Unaudited |
| WrappedVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb9e99158ce61e33913d92a77e30ea9e5b82423f3`; bsc `0xe888e401e989435b040fe392e796301b9c34bc39` | ⚠️ Unaudited |
| WrapperYieldDispatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x60d708faf16bc07413eb18cca55aab0f08ca6339`; bsc `0xe73800fe895edabf9e564853b704ce123b493275`; bsc `0xec5c026d2c51b65c35123fb2639b5ed8ec7e5ac5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (70)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01f765939288de61789a91701e34794bb14d7233` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03120010b57d327f09f6847d07cb4c785e8f521a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09f2b3236978a858747879aa0757df1f001febfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a15aa3628cc79d1655731673e72885dcf12fe98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a54c7b93b78b333fad338e9118ae1d6be63f673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1332b383fdd4de0f132a653f88aac79ff3edff40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13484b2473d7136668c01531e722d7edba273a52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13ba16f5864d9c610ba603af686401f0f113c352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x153caa0f1f701ad9d9c0ad6d5ac363e94391d4df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18116472d9187d60ff94d801ae8d80c66ebd9f8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x213bac20e7016a92ba5179d307c21c99b2431a9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x246c003c9881947ff24f6b9f1d2ff96cc97d1a52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x301193f55fd494679a83fbd8a65b382cf4ff335d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32b3835a06bbf2e499b7d5e6fc78f7d2cfa4e3ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a37d227ac046ca0552194fb7740e06a3c7ecf34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x416903fca6f73568edb1175510ed1a4fb97920df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x43f9e5f36f72501b28e379ae404c5ee7937b1cff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4890b3049f2920c21f832e34d445a00aae5d22f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4bb856d98726c0777ec02b01d6f89b5488c46823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e22392b0b88b979d67a3c03d1b52e7c91d84a7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50d76e9ed70604bc36be6592bb7cf7b49e05dd25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52fb4c8125c97fa814173d17b2e5d7a74cb023cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5bf6289accc83dc6e41cbac7e78b2b7c12754fba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c92de4ff5ce4ebb0b0929c2454abc14c8d74c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61c1699613b39cf07ef1a997ae2e8349d455de94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64b8c2703af6329c7e45a485434a56c4a84e1957` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68ae0feb7b132d25f3e03030d204dbc89574e9eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a8de2d455c788c1049600526947202c4d88f78b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c03e841d93cfc43aa5b865e2c081deb3bfebd63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6cb7699d7de08feca445cc1a34f337296772c217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x733f830372fe655353964301170d88c7f472ec56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x75097dbb994cbbb18deb2f21dbd71fd86d1caf22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7940522f1165016c1025f1debebf0f7e653104cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x804a3cfb5ff49ace7a355c37f4a9a5b981d7cc00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81fee4729d2c93e19532f560bfca3d4468be5a7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83674e7ea740fc73bf4efcc12be32d499a52a081` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88c4f7e8558618ed476e44844eff716d0842e7f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c5fec50c8f5a02e0a8068b749771300b914ee82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92e3024a220c5ab3a5d4aba89931c582e77d6cf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93133c09e23bf506d6ff4adc6a3e94fcf020260e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93ea70f52b2a7687cfd23f76d0d0ec7492a66eb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a9a2116a5025a2798f7d31ee654efe1b257b382` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ad5a901f3967e049744145e3e9bbf2beae34143` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0a3e3581c319646cb4f61c5357f3a62e5e8ec79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa82085d77e8105f635a3df76c1c70acefb5b69c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae6936eaef8fcf6f5754a3c79736a48fe84c2852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb98fc46c4836d66a776b47d73bfa3000e025c60a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba93add0f84a0fade8d50286789312d56a1d9cb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb37387b7f953bd574e06afd8c011ebd568f5bbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbcc28b936ef107a6e9b8eb682390042b6ea513b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd01d3522b577557c3abab5a4a176c502fd76c21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc15571e06273c1f6a855d2dc319dcac59abe5488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc87c1a281d76c8960be1e8d487a34a655d82db6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc996cf5d764c6a29ef1ccbb9865133f9bbd7c80e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd9205ee7d950b7a9d437b5456101e62025502c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce5f73d0341dbc82e4af4ca4f856a6bb487207ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd40f100f49a0d282f1f78aaeeeb15efe6a333aa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd78bbd8ec6a82c0f876c3e379cafe8aecaa14fc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd11aa3edddc393d030521860428937d4a44c4fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd413c7f6b020a200fac6ce442881e6ee844b750` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7e21f1d66f68c54f9fb58c6241ccc73089c6a0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec64fe845136dc7cda0a46e4241d6d77d2671da9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3b96d5bb1498588c0d5ea88f98769f2e86a0ddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf533479f52a9598cc87cd391b5132058cbc30dea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf690d6e9fc9b898a7fa55f92f7474327c78c035d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6f88928ed7e3833929b03c409294ec8381ce86e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf79e535d995a95797c593fa8e611a1e1143e68fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf97b33d0a866369bdbf19680cac97edc3aa36711` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa2d6df128ce4b7cf8a33063c03239f210871a9c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-389858 | `0x818339b4e536e707f14980219037c5046b049dd4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/nomiswap](https://skynet.certik.com/projects/nomiswap) | CertiK | Audit | 2022-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3092] skynet.certik.com/projects/nomiswap — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/nomiswap | ConstantComplexity | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/nomiswap | NomiswapRouter | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/nomiswap | StakingRouter | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/nomiswap | StakingService2 | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0xd32d01a43c869edcd1117c640fbdcfcfd97d9d65` | Nmx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 148 |
| upstream | 19 |
| standard_library | 4 |
| needs_review | 71 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3092] skynet.certik.com/projects/nomiswap

Fork inheritance lineage and inherited audits are included when available.
