# Agentic Audit Brief: Alpaca Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 19 across 6 audit(s)
- Eligible audit results: 19 (6 matched; 13 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

⚠️ Lifecycle status: DECLINING - TVL dropped 9.7% over 90 days

## Project Overview

- Project: Alpaca Finance (`alpaca-finance`)
- Website: [https://www.alpacafinance.org/](https://www.alpacafinance.org/)
- Lifecycle: declining (Tier 0, 97.9% below peak)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, fantom
- Contract surface: 334 unique implementations (691 raw deployments)
- Coverage basis: 12/25 confirmed own live verified implementations (48.0%); conservative 48.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $39,030,090.00
- On-chain TVL (included contracts): $8,635,247.86
- TVL by chain: Bsc $8,635,247.86

## Project Description

This brief describes the observed EVM deployment and audit surface for Alpaca Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 40 contract row(s) across bsc. Structural roles: 23 unclassified, 10 core, 7 supporting. 9 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 40
- Structural roles: unclassified (23), core (10), supporting (7)
- Contract kinds: contract (40)
- Detected standards: erc1967proxy (9), ownable (4), erc20 (1)
- Frameworks: openzeppelin (15), openzeppelin-upgradeable (3)
- Upgradeable-pattern rows: 9

## Fork Analysis

0 of 39 contracts are derived from known codebases. 39 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xd3bb23a761db394aa8692562502ae21b854be6c8`, chain 56)
- AdminUpgradeabilityProxy (`0x02da7035bed00ae645516bdb0c282a7fd4aa7442`, chain 56)
- AdminUpgradeabilityProxy (`0x08fc9ba2cac74742177e0afc3dc8aed6961c24e7`, chain 56)
- AdminUpgradeabilityProxy (`0x11362ea137a799298306123eea014b7809a9db40`, chain 56)
- AdminUpgradeabilityProxy (`0x158da805682bdc8ee32d52833ad41e74bb951e59`, chain 56)
- AdminUpgradeabilityProxy (`0x262de19b5fde97ed5bdba10d630e34fb9a1b59b2`, chain 56)
- AdminUpgradeabilityProxy (`0x3282d2a151ca00bfe7ed17aa16e42880248cd3cd`, chain 56)
- AdminUpgradeabilityProxy (`0x3b4fbb2b8536ab144048abafdd27eaf52f0fa4dc`, chain 56)
- AdminUpgradeabilityProxy (`0x6a3487ce84fd83c66b83e598b18412bd1d2a55f9`, chain 56)
- AdminUpgradeabilityProxy (`0x7c9e73d4c71dae564d41f78d56439bb4ba87592f`, chain 56)
- AdminUpgradeabilityProxy (`0x92110af24d280e412b3a89691f6b0b9e09258fe6`, chain 56)
- AdminUpgradeabilityProxy (`0xb76ed435b93477511e4604c441550a23d5aeaf84`, chain 56)
- AdminUpgradeabilityProxy (`0xbff4a34a4644a113e8200d7f1d79b3555f723afe`, chain 56)
- AdminUpgradeabilityProxy (`0xd7d069493685a581d27824fc46eda46b7efc0063`, chain 56)
- AdminUpgradeabilityProxy (`0xf1be8ecc990cbcb90e166b71e368299f0116d421`, chain 56)
- DebtToken (`0x036664394715d255895f600861fe882a167dbf57`, chain 56)
- DebtToken (`0x5138133f0671071d8b8f1c4c180881bfcfe22cec`, chain 56)
- DebtToken (`0xd19d6253d979ccf663869fee30b8e0ac86029ebd`, chain 56)
- EmissionForwarder (`0x7e6f681df3210fba706fc2f8c59cadbede7227f7`, chain 56)
- FairLaunch (`0xa625ab01b08ce023b2a342dbb12a16f2c8489a8f`, chain 56)
- GnosisSafeProxy (`0x18f59e8dddef9e000863082a37fc56a2a5475d01`, chain 56)
- MerkleDistributor (`0x083c022046df51f458709e1a5660b87754e58de7`, chain 56)
- MerkleDistributor (`0x60bc407144c82cb27bf0681b457f0e7a75514105`, chain 56)
- MerkleDistributor (`0x63c60b840933e62e43d8efc1dfde31a32cdc4412`, chain 56)
- MerkleDistributor (`0xa33ff77f414408797a27a0057afb51d2df50ce58`, chain 56)
- MerkleDistributor (`0xd193b38c87c8faf7cb2f6c592d3ae885ae21c4bf`, chain 56)
- Multicall (`0x41263cba59eb80dc200f3e2544eda4ed6a90e76c`, chain 56)
- ProxyAdmin (`0x5379f32c8d5f663eacb61eef63f722950294f452`, chain 56)
- ProxyToken (`0x7834959e1e552e443933e7c5979c24b9eca01e4f`, chain 56)
- Shield (`0x1963f84395c8cf464e5483de7f2f434c3f1b4656`, chain 56)
- StronkAlpaca (`0x6f695bd5ffd25149176629f8491a5099426ce7a7`, chain 56)
- Timelock (`0x2d5408f2287bf9f9b05404794459a846651d0a59`, chain 56)
- TransparentUpgradeableProxy (`0x08b5a95cb94f926a8b620e87ee92e675b35afc7e`, chain 56)
- TransparentUpgradeableProxy (`0x426bdfe8cab2c4720b36abbdc3ff08144bc361f3`, chain 56)
- TransparentUpgradeableProxy (`0x4f4054b4d286213a39ca5b8ef89116ac62c1cf43`, chain 56)
- TransparentUpgradeableProxy (`0x50e5748a2e9c5e05ba8b95549bf7b11da91ddab7`, chain 56)
- TransparentUpgradeableProxy (`0x800933d685e7dc753758ceb77c8bd34abf1e26d7`, chain 56)
- TransparentUpgradeableProxy (`0xc4ed268754dd3cbca82a6ee743acad2d355d938b`, chain 56)
- TransparentUpgradeableProxy (`0xff693450dda65df7dd6f45b4472655a986b147eb`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 40; live-surface rows included: 40 (40 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 25/25 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 12/25 (48.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 25 own, 138 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 171 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 13 standard proxy/library)
- Proxy deployments represented within implementation groups: 315
- Confirmed-live implementations: 25 of 334 unique; 309 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 12/177
- Verified + Unaudited implementations: 165
- Verified by bytecode match: 0
- Unverified implementations: 157
- Unique implementations: 334
- Raw deployments: 691
- Audits discovered: 19 (19 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $8,544,244.14
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 19 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: 8.0% (SlowMist)
- Note: This protocol is classified as [declining]. ASD of $8,544,244.14 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 8 | 4.5% | 2022-03 |
| CertiK | Tier 2 | 6 | 3.4% | 2021-05 |
| SlowMist | Tier 1 | 2 | 1.1% | 2021-11 |
| unknown | Tier 2 | 1 | 0.6% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Vault | core_logic | project_anchor | own_supporting | 2 | bsc | unit-226236 (2 proxies) | 2 deployments: bsc `0x3282d2a151ca00bfe7ed17aa16e42880248cd3cd`; bsc `0xf1be8ecc990cbcb90e166b71e368299f0116d421` | ✅ Audited |
| AdminUpgradeabilityProxy | proxy | project_anchor | own_supporting | 3 | bsc | unit-226237 (3 proxies) | 3 deployments: bsc `0x158da805682bdc8ee32d52833ad41e74bb951e59`; bsc `0xd7d069493685a581d27824fc46eda46b7efc0063`; bsc `0xff693450dda65df7dd6f45b4472655a986b147eb` | ✅ Audited |
| AdminUpgradeabilityProxy | proxy | project_anchor | own_supporting | 1 | bsc | unit-226244 | `0x7c9e73d4c71dae564d41f78d56439bb4ba87592f` | ✅ Audited |
| DebtToken | unknown | project_anchor | own_supporting | 8 | bsc | unit-226233 (8 proxies) | 9 deployments: bsc `0x02da7035bed00ae645516bdb0c282a7fd4aa7442`; bsc `0x036664394715d255895f600861fe882a167dbf57`; bsc `0x11362ea137a799298306123eea014b7809a9db40`; bsc `0x262de19b5fde97ed5bdba10d630e34fb9a1b59b2`; bsc `0x3b4fbb2b8536ab144048abafdd27eaf52f0fa4dc`; bsc `0x426bdfe8cab2c4720b36abbdc3ff08144bc361f3`; bsc `0x6a3487ce84fd83c66b83e598b18412bd1d2a55f9`; bsc `0x92110af24d280e412b3a89691f6b0b9e09258fe6`; bsc `0xb76ed435b93477511e4604c441550a23d5aeaf84` | ✅ Audited |
| DebtToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-226224 | `0x5138133f0671071d8b8f1c4c180881bfcfe22cec` | ✅ Audited |
| DebtToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-226232 | `0xd19d6253d979ccf663869fee30b8e0ac86029ebd` | ✅ Audited |
| FairLaunch | unknown | project_anchor | own_supporting | 0 | bsc | unit-226230 | `0xa625ab01b08ce023b2a342dbb12a16f2c8489a8f` | ✅ Audited |
| GrazingRange | unknown | project_anchor | own_supporting | 1 | bsc | unit-226241 | 2 deployments: bsc `0x6bf5b334409cc3fd336da9a2d3e3f9c870feb343`; bsc `0x815c54f332dd60eacd839bb12fdc37105783b77f` | ✅ Audited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | bsc | unit-226225 | `0x5379f32c8d5f663eacb61eef63f722950294f452` | ✅ Audited |
| Shield | unknown | project_anchor | own_supporting | 0 | bsc | unit-226221 | `0x1963f84395c8cf464e5483de7f2f434c3f1b4656` | ✅ Audited |
| StronkAlpaca | unknown | project_anchor | own_supporting | 0 | bsc | unit-226228 | `0x6f695bd5ffd25149176629f8491a5099426ce7a7` | ✅ Audited |
| Timelock | governance | project_anchor | own_supporting | 0 | bsc | unit-226222 | `0x2d5408f2287bf9f9b05404794459a846651d0a59` | ✅ Audited |

### ⚠️ Verified + Unaudited (165)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| VaultAip25 | core_logic | project_anchor | own_supporting | 2 | bsc | unit-226239 (2 proxies) | 2 deployments: bsc `0x08fc9ba2cac74742177e0afc3dc8aed6961c24e7`; bsc `0xbff4a34a4644a113e8200d7f1d79b3555f723afe` | ⚠️ Unaudited |
| AlpacaToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f0528ce5ef7b51152a59745befdd91d97091d2f` | ⚠️ Unaudited |
| AccessControlConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0780d461480a3386031498f264a91f3d473a181a`; bsc `0x6b6997ae4be20d8bc5a49e482e9a2979b46e3e5f` | ⚠️ Unaudited |
| AdminFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x18a15bf2aa1e514dc660cc4b08d05f9f6f0fdc4e` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 25 | bsc | n/a | 25 deployments: bsc `0x0159f44892ffed7bc9c00ac7ad3d60dcf331fe53`; bsc `0x20e5d465df8520abfef79b04c4a2c8952b365e82`; bsc `0x2245634e4c325f3f3fc2b98cf75352b5d92f4c46`; bsc `0x2c4a246e532542dfae3d575003c7f5c6583bfd8c`; bsc `0x4bfe9489937d6c0d7cd6911f1102c25c7cbc1b5a`; bsc `0x51782e39a0af33f542443419c223434bb4a5a695`; bsc `0x58a3ad7f263b75532b58a60cbf5d78ee73123c93`; bsc `0x693430fe5f1b0a61b232132d0567295c288ea482`; bsc `0x844766f737bc9442b9491da1eb7a5cd02b203f06`; bsc `0x8b452051666708a005f6c7170baadc3913b4c349`; bsc `0x9140ab358bcf6d6c18e36f560ce72d6458c9ca0a`; bsc `0x93cf6e8d7e0d03b8d773c893506fc808cd6a4fdf`; bsc `0x98b7e1e50f0fb7787475acbbb86cc2c367bb13a0`; bsc `0x9f612544075d3e088ef004b99ec2c77fe622da8e`; bsc `0xaa5c95181c02dfb8173813149e52c8c9e4e14124`; bsc `0xb82b93fcf1818513889c0e1f3628484ce5017a14`; bsc `0xc5954ca8988988362f60498d5adec67ba466492b`; bsc `0xc979cab6424fb6138abf28689ed8efaba1ec49ac`; bsc `0xd6260db3a84c7bfdafcd82325397b8e70b39627f`; bsc `0xe632ac75f2d0a97f7b1ef3a8a16d653c4c82b1fb`; bsc `0xe93f5d253e5f367d3d5d6f5ecd8a409ceb8b510b`; bsc `0xebdecf3a21d95453a89440a4e32b9559e47073e7`; bsc `0xec4709b3c33d78f0c3f0b3daa779813b93d48505`; bsc `0xef1c5d2c20b22ae50437a2f3bd258ab1117d1bad`; bsc `0xfac2898ab87daa4909200ed7a99c5cbab3bb9303` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 45 deployments: bsc `0x05f34ec9e20459b84f31cd9c65630244ced85fb4`; bsc `0x09176545f3c013142b69477d7de2e7f4baa2bb3a`; bsc `0x104c62e5eee21cb4acf0a4a7e459cc72ea61545d`; bsc `0x10e691bdd2665d0180fbc69535862874a3594236`; bsc `0x174e30e9e529e640b23e497f745742c48a71f192`; bsc `0x1a174d28b54f688cb4b1b30f9daa64b0fc5f4db8`; bsc `0x226bcb6caa453a013dcead5cb901673a31a4c81f`; bsc `0x2ec1066a4856b9b326c4bebac24d6b5d1952296b`; bsc `0x30a937b9d22d71e58ad9dc96a6a3d552b9c0724e`; bsc `0x3be23527ff4d7881c6f5ed870cbf89f5c24c56eb`; bsc `0x3e0c8a85620560f02ca4893fe5c044532f120934`; bsc `0x462bc565b5486e76503dab62d96937842f207aaa`; bsc `0x50380ac8da73d73719785f0a4433192f4e0e6c90`; bsc `0x59695835d0d07d22347c0e092d092c182ee212c3`; bsc `0x5e2911d70d7a659da0da26989f445aecac58f2e6`; bsc `0x61e58de669d842c2d77288df629af031b3283c81`; bsc `0x6389eecb14fb2f5e583c56e6763530e80e954962`; bsc `0x74eec507b01aacc192b295b7b7eb6f5daee68b1b`; bsc `0x7f8be608d72d5eb51e231b1f9a3e25823fde0900`; bsc `0x86547e01b7f1bac1f4ce80a4964829009d2de1cc`; bsc `0x8ce75ff793d7832302bea91c275e2509060dfeaa`; bsc `0x8e90ebbeeb1409b5f69dab932220efe940834a46`; bsc `0x90c9f39dddc1d7f7460985170d47bee9b328bb5e`; bsc `0x9328df75a6e48f4eb1976819a8af35a9de64b5f4`; bsc `0x958bcc62770e1029d285242f5dbe6987c8240c15`; bsc `0xa09e126eeeaef8abaed919082423c0f5ff78765f`; bsc `0xa8f37daf3d290f636f0b79e47ea50ab7f7a82d51`; bsc `0xa964fcd9a434cb4c68bfe25e77d1f2cd5d9679a8`; bsc `0xac712f4fc61ab96aa9a1adf3977b808789aa6682`; bsc `0xb222b4ebebcb9f264e8ff5c7661a52850e54e1ee`; bsc `0xb2a58780a37df31aa519462dba3667418624b891`; bsc `0xb63a710383fbf9dc37f4b81c377cc4e02f887db2`; bsc `0xbde156e6a814f7a56d3e389e681088649d24a07c`; bsc `0xc40158e78793c759cbc1436ee1edce15a8f1107a`; bsc `0xc5c5e605d12a87b8378c76f3df9a7a441ecbf936`; bsc `0xcec2506e2420f2616221eca10ee5663cfbe6780e`; bsc `0xd12b1581cbca1b82a441f7d210112a800e83353a`; bsc `0xd431e0bd577b4f4f5055f238d9de74c01ed60253`; bsc `0xd4bc4c252c8ef9ab29d48e040b2f8c99f5702285`; bsc `0xd80783de91fbed9f7995a97d4c02917295f86f68`; bsc `0xd8bfe852bba29ea5968a3e5aaf21480f36ee89cd`; bsc `0xddcf0f1f320a82a93ea6f8f8ae3ed3f8eaf5f95e`; bsc `0xe36154467fb6eb91911fd11287b93d69fab01792`; bsc `0xe862d45abdf7ea38f75dd0c7164b19faed057130`; bsc `0xeb6e0b9839b297322a6faec0cebc6d3e207b7480` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x41c1d9544ed9fa6b604ecaf7430b4cfdf883c46f` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x6d203f081367cfa2968bd62dc3122274f735378c` | ⚠️ Unaudited |
| AlpacaFeeder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25be5dae973894acfa810e9f4db7e3d73a3f6fad` | ⚠️ Unaudited |
| AlpacaOraclePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x333db3ede42a351fbcce6ef38ec35a74a9a1c52b`; bsc `0x8cc012356e61424446646ec3b261fe5ef5b44a8a` | ⚠️ Unaudited |
| AlpacaStablecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x561b8c4f2ac28801baf6a4461b63c954eea1a0b4`; bsc `0xdcecf0664c33321ceca2effce701e710a2d28a3f` | ⚠️ Unaudited |
| AlpacaStablecoinProxyActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1391fb5efc2394f33930a0cffb9d407abdbf1481`; bsc `0x9d9507b4eede3e3fd83e8bebdb9a9bf3ed681c0a` | ⚠️ Unaudited |
| AusdPriceFeedKeepers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4acb447a4fc0fa7d95cfd8fef1131526cb7f303f` | ⚠️ Unaudited |
| AuthTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb689c00e7d3897aaa505abace6a1b590b5a951d5` | ⚠️ Unaudited |
| BandPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x08fa2ed02ebdc97bad85ff6369c57c6280ca52bd`; bsc `0x29d36fc6ac505e8d9c04e5fae913038c8f8ec82a` | ⚠️ Unaudited |
| BookKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc7d037e67b09cb59c94e0fef231124fd01fb0e49`; bsc `0xd0aecee1520b5f9925d952405f9a06dcd8fd6e6c` | ⚠️ Unaudited |
| CakeMaxiWorker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x025ba0e82d45e29e831c53637bea2ce9d88199c2` | ⚠️ Unaudited |
| CakeMaxiWorker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0455ce6b16629883c52d54ac5d5fcb4622d8275d`; bsc `0xa14c9e1939b4f323ef540566b0ee80142713a4d9` | ⚠️ Unaudited |
| CakeMaxiWorker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x9cbc68b89fe7edde4609d0fcfca835c976c959c9`; bsc `0xc82aca9c28da7092527c160f5bd72dbc3df6c8e3`; bsc `0xcdd640f7cc3c5001ca06f00d578b85f895dd2379` | ⚠️ Unaudited |
| CakeMaxiWorker02MCV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 2 deployments: bsc `0xe8084d7ded35e2840386f04d609cdb49c7e36d88`; bsc `0xecfb6e8becea9a65a5a367497230df14f64a14c9` | ⚠️ Unaudited |
| ChainLinkPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x634902128543b25265da350e2d961c7ff540fc71` | ⚠️ Unaudited |
| CollateralPoolConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x064bb6eea2339cad2bdaf895c3d3728e2c6bdac1` | ⚠️ Unaudited |
| CollateralPoolConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x06d280abee1073b83a01fe778b6145e850e87162` | ⚠️ Unaudited |
| ConfigurableInterestVaultConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | bsc | n/a | 8 deployments: bsc `0x01cf56544a303025c77c76ca77982cbd8655fcbc`; bsc `0x0c1f049ebe3e0537c7e7ce428bb468d5f6bf83b3`; bsc `0x53dbb71303ad0f9afa184b8f7147f9f12bb5dc01`; bsc `0x6cc80df354415fa0ffef78555a06c1dde7549fb8`; bsc `0x709b102ef4b605197c75cfea45f455a4e7ce065b`; bsc `0x724e6748cb1d52ec45b77fb82a0750a2b759c038`; bsc `0x8f8ed54901b90c89c5817b7f67a425c0e6091284`; bsc `0xd7b805e88c5f52ede71a9b93f7048c8d632dbed4` | ⚠️ Unaudited |
| ConfigurableInterestVaultConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x09fd9321aad19bf98c85a7df06891b38abcbe57b`; bsc `0x14613598f0e929f8bb1f89051fd976b0a7b67bec`; bsc `0x238b84fc7635c33f46313ebff4283dc0e2ee3221`; bsc `0x5702223873b50b934265360074af68973900613f`; bsc `0x5fa7cb6654f7c551957f3c8a8bb3d8b736fdca8c`; bsc `0xaf8db88ec4da3ed942f46ad58b9dd963d664c8bd`; bsc `0xc2f7c637702b9131cb58dcbf49a119b77d994ed3`; bsc `0xc60e83fa880e525fa7e46f170e3e1337d87baaa3`; bsc `0xfe16999d88856a9e492ce3088eaea8fc9e2a05c4` | ⚠️ Unaudited |
| DebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x205ec09443debb37a526a384f68622bae69f6fc6` | ⚠️ Unaudited |
| DeltaNeutralOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x08ea5fb66ea41f236e3001d2655e43a1e735787f`; bsc `0x5f4ea2bf5fce383305440c8edadafc3ef600e0a1` | ⚠️ Unaudited |
| DeltaNeutralPancakeMCV2Worker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | bsc | n/a | 8 deployments: bsc `0x07767daf4e84bdaabf3a72c80cec8c8eb962f3ae`; bsc `0x0d9faf7023976b45b220b692699c5f5e9432efd9`; bsc `0x42da676116df26ee9bb71595ffe7c18343fb2b64`; bsc `0x4b70c41f514fbbea718234ac72f36c1b077a4162`; bsc `0x54d3218787060463eeb944fa01b0cbe745ef4db5`; bsc `0x83a5d5c54ad83bbea8667b3b95d7610e16e52723`; bsc `0x8ef56e94bbaee1638c3c87d3ab0de0a90e2cb067`; bsc `0xfa4b1e50f6ef51d0dab5c2eea7434ce6974fa832` | ⚠️ Unaudited |
| DeltaNeutralPancakeWorker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | bsc | n/a | 5 deployments: bsc `0x41d2e4ac5b7373041c06a9d331b0624142fa1123`; bsc `0x5124baa8ca9c5e327efc458271dac157aceb4f04`; bsc `0x539fc3fd348b427b5f70b4f87c1a44983c9e8dbd`; bsc `0x6e3314453642c5ce9ff273aa5f132c1cc8463cef`; bsc `0xf9e292c9608a4aba9a141e55a184d6d68d3eeb70` | ⚠️ Unaudited |
| DeltaNeutralPancakeWorker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d5fc3f859acf7525d7bc0faf540b827d0b8fe27` | ⚠️ Unaudited |
| DeltaNeutralVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd22d9012b1c06ae593d8f33b706becea58ecbf99` | ⚠️ Unaudited |
| DeltaNeutralVaultConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30275f8980ade89febfd93023a4af67da0fe700f` | ⚠️ Unaudited |
| DeltaNeutralVaultConfig02 | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | bsc | n/a | 4 deployments: bsc `0x0ff370c7e245992414bef2cacba369422d2a91b3`; bsc `0x1cdea8f4592e8ff406f0cd65a3b2f2060e71c754`; bsc `0x31e4614551a80eab40c29ae851d710a3a0b72967`; bsc `0x5640ce665c4fac707885a04059449dadabe56cf2` | ⚠️ Unaudited |
| DeltaNeutralVaultGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | bsc | n/a | 4 deployments: bsc `0x1d24165cefa83c14559f67f819b61c2c857c01b4`; bsc `0x595f76f2254ed6a93e8763c585741ac3fc796e2e`; bsc `0x933db54446d1a42216b8ead55064891359ab9c6b`; bsc `0xd3f82e0af8c5a078c783dedddf79ccb762ba413a` | ⚠️ Unaudited |
| DeltaNeutralVaultGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd0106c3f2d74ecbfd86f39f5639ca5a7efaf1c7` | ⚠️ Unaudited |
| EmissionBridgeKeepers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64fe10f7afbc6ffbd8f849b7a36a3295c45284ae` | ⚠️ Unaudited |
| EmissionForwarder | unknown | project_anchor | own_supporting | 1 | bsc | unit-226240 | 2 deployments: bsc `0x4f4054b4d286213a39ca5b8ef89116ac62c1cf43`; bsc `0x7e6f681df3210fba706fc2f8c59cadbede7227f7` | ⚠️ Unaudited |
| FixedSpreadLiquidationStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x52d62bd452b6b8d7d92ef4fe6e474fb55650dbc1`; bsc `0x9fa028cf1ddaaa514a1adde6a9fe7224ca10d6d1` | ⚠️ Unaudited |
| FixedSpreadLiquidationStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5af5c295300304d7988d5a6c7c7446d305f8f6b7` | ⚠️ Unaudited |
| FlashMintModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0a7233ade189237e4ecc86ff201d3bac2c96fbd6`; bsc `0xe7a49ae5c9500d18481e0e0efbff1d5d0ff75de3` | ⚠️ Unaudited |
| GetPositions | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x878ef0130340b8375de06287a47a6c9c2bd26618`; bsc `0x9f481c023b84359f4fcc30749f828d5a9c17af03` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | bsc | unit-226235 | `0x18f59e8dddef9e000863082a37fc56a2a5475d01` | ⚠️ Unaudited |
| GrassHouse | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x16716ee0a61eb9a34b42327bf442f873f15981d7`; bsc `0x58bd8fbe2156d3c9ef7b33cfe6d2cfb3f5f0c52a`; bsc `0x6efa5037a0d7be675d0b937edeb41554871cdd16` | ⚠️ Unaudited |
| GrassHouse | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | bsc | n/a | 7 deployments: bsc `0x35cba40d30a0b814a53a09b667405a1a0a3e2ae5`; bsc `0x3fd1029d4db12dfdaa6b92bfeed6e41e21fdc4b4`; bsc `0x4c8f9534731ec017a7a4e71f1045f4a8dd9f4c8a`; bsc `0x5876bea7920f4a542d8906470bcbcd56c554dd6e`; bsc `0x980bfdfc0422aed89b15fda32da5eb8845147379`; bsc `0xdf4445022725c08d1e66e68387816f365a14a963`; bsc `0xf4d66c03766b434814cb216899ff61ad96f0d109` | ⚠️ Unaudited |
| GrassHouse | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x3a70232785a23b0c7cd8e3c236d9bbfd41292e6a`; bsc `0x66877f35062f3c4ad44c4889c2efddbeb93c5ec7`; bsc `0xd316283d648b94a9143f56d293cb4ab96de444b4`; bsc `0xdd97a18e36222f5d493d990ec7ffa52338aafb2c` | ⚠️ Unaudited |
| GrassHouse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x760455d144682e8598578115b02b9320b1132cd5` | ⚠️ Unaudited |
| GrassHouseGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50309398e3abcbd3357b0dd54a624c1251026ee5` | ⚠️ Unaudited |
| GrazingRange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd50a06e444d2a85098b3dbc66a5d1946789bb869` | ⚠️ Unaudited |
| IbTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x2b356b9cd4b00658facc35f4d031df528ee9778d`; bsc `0x425b07f17c0b1476c0a3006b70816800147dec64`; bsc `0x4bf04730c37fc395b5f780e6ad3e397c031f6d39`; bsc `0x4f56a92ca885be50e705006876261e839b080e36` | ⚠️ Unaudited |
| IbTokenPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x44b930f2e53231b3f85495229ea644724c93c617`; bsc `0x4a89f897aa97d096dbea0f874a5854662996f8ae`; bsc `0xbb403a75a49aec69d0333da3d95ec1d1f5973d7d`; bsc `0xfb6a378b5e5bbc6f413dddf07873076851a00fd1` | ⚠️ Unaudited |
| IbTokenPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbac9d8d59dbb0e2a21cc75323c9c8a1abbd9df49` | ⚠️ Unaudited |
| LiquidationEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5aa539cbe3d5bbeb89f633946e64e3c3419a7026` | ⚠️ Unaudited |
| MdexRestrictedStrategyAddBaseTokenOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x632e03943dd4c5c509486233b345fae86cd5517a`; bsc `0xeac60ec7f7623b3db636c9fc9758e8cbf3ff0548` | ⚠️ Unaudited |
| MdexRestrictedStrategyAddTwoSidesOptimal | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | bsc | n/a | 9 deployments: bsc `0x0768ef9e891725c4c65f3e0fb671abcd66fc6bee`; bsc `0x090ff57ffd64593111b0aa7f2d664b1aa3066137`; bsc `0x34cce22a47c5f020a5cc4fcc63d231d46577415a`; bsc `0x632188a1b2f3a2636b59a1c400835e2c5ea40214`; bsc `0xaa8f19fab381df42f2767ae7fb770434c4b710b4`; bsc `0xb16912cbb98c7ef7aad30268bdc5602dbb5833f9`; bsc `0xc9b12a6900c53a9d0eaed911c1f46f6a1cc8e7ad`; bsc `0xd8a128e5712d9b240811a0d55d3f9ca8e6599b7a`; bsc `0xf4c6b53bd2a1f0c06d8483e38cd6e6cec1860593` | ⚠️ Unaudited |
| MdexRestrictedStrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x812298f58b7cc413f06aa88f10fad71bd55ae475`; bsc `0xbd2c6bed2b89415fe2853941a222662f12166f1d` | ⚠️ Unaudited |
| MdexRestrictedStrategyPartialCloseLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xd7103ac4c3b888fdfe9c7adbe596c15e5ddf68b4`; bsc `0xdaf7205a8afc4d77171f5bfd24808946eccf373e` | ⚠️ Unaudited |
| MdexRestrictedStrategyPartialCloseMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x665a8e4b88f6bfa984b1568505cb4545f7816ce2`; bsc `0x88934638ef657affd64ba2150bb255d54f5e5b29` | ⚠️ Unaudited |
| MdexRestrictedStrategyWithdrawMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x47f1c5f505043dee9604b98d99304f7ad4239b72`; bsc `0xa5e98c503d62ee19619b3ef12085f0d35d2a3463` | ⚠️ Unaudited |
| MdexWorker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9005e936d7d8d28b7c8151be39195744ae515b7` | ⚠️ Unaudited |
| MerkleDistributor | unknown | project_anchor | own_supporting | 0 | bsc | unit-226220 | `0x083c022046df51f458709e1a5660b87754e58de7` | ⚠️ Unaudited |
| MerkleDistributor | unknown | project_anchor | own_supporting | 0 | bsc | unit-226226 | `0x60bc407144c82cb27bf0681b457f0e7a75514105` | ⚠️ Unaudited |
| MerkleDistributor | unknown | project_anchor | own_supporting | 0 | bsc | unit-226227 | `0x63c60b840933e62e43d8efc1dfde31a32cdc4412` | ⚠️ Unaudited |
| MerkleDistributor | unknown | project_anchor | own_supporting | 0 | bsc | unit-226229 | `0xa33ff77f414408797a27a0057afb51d2df50ce58` | ⚠️ Unaudited |
| MerkleDistributor | unknown | project_anchor | own_supporting | 0 | bsc | unit-226231 | `0xd193b38c87c8faf7cb2f6c592d3ae885ae21c4bf` | ⚠️ Unaudited |
| Multicall | periphery | project_anchor | own_supporting | 0 | bsc | unit-226223 | `0x41263cba59eb80dc200f3e2544eda4ed6a90e76c` | ⚠️ Unaudited |
| OracleMedianizer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3297961610d8a64f41cb4f577448bf3a57738303`; bsc `0x553b8adc2ac16491ec57239bea7191719a2b880c` | ⚠️ Unaudited |
| PancakeswapV2MCV2Worker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 20 | bsc | n/a | 20 deployments: bsc `0x05bdf33f03017eafdeeccd68406e1281a1def62d`; bsc `0x0ad12bc160b523e7abfbe3abadcee8f1b6116089`; bsc `0x1eaaf599b95d7cab0151b8384d15fe3f68aa4ee3`; bsc `0x32951e060e6ad6d512fc3eaa958f3a8f4f82ac6c`; bsc `0x41867cc58aece8b570ff1a2a8aa6149014d2a94c`; bsc `0x4add84e335ee575ba22bc4059c844ed1b756b5c3`; bsc `0x5c8035eb6f6e724ee6748d9844b6e9ffec0c5cb5`; bsc `0x7af938f0efdd98dc513109f6a7e85106d26e16c4`; bsc `0x81b6534f4f7ba45ecf98295cef1450b4a4fc81cd`; bsc `0x831332f94c4a0092040b28ece9377afeff34b25a`; bsc `0x9b07deaec22328ebae132875245492d56a57f7bf`; bsc `0x9b13982d094b4fcca4aff741a96834ff66e4d8bd`; bsc `0xa1644132ca692ba0657637a31ce0f6b99f052c5e`; bsc `0xa71381ff15862d0079c614b1e2b1f18485272880`; bsc `0xbb77f1625c4c3374ea0baf42fac74f7b7ae9e4c6`; bsc `0xbba4c941e577cfe921e3e88d705a46b22f3b1adf`; bsc `0xd62f15cb6fdff5464047f4f2fb235622c6371af6`; bsc `0xdcd9f075b1ff638e757226626a3b3606d7795f80`; bsc `0xe90c44c16705859931099e7565da5d3c21f67273`; bsc `0xecb008f4741465f9f169ec11a50aa8871e423f33` | ⚠️ Unaudited |
| PancakeswapV2RestrictedSingleAssetStrategyAddBaseTokenOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5cb454fc86068e710212fbecbc93070b90011f2b`; bsc `0x9a5105c9dd6c6ae76518f4afbbd388514c334d96` | ⚠️ Unaudited |
| PancakeswapV2RestrictedSingleAssetStrategyAddBaseWithFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | bsc | n/a | 5 deployments: bsc `0x38912684b1d20fe9d725e8b39c39458fac5a4833`; bsc `0x67a2cdb9f0760663b5e70c1517f1a603ba3f50f0`; bsc `0x69b5018910f9c8d82d544f315e9d3477236ed0e1`; bsc `0x9a0beed083d3a45b6463c621b0ce489482459b21`; bsc `0xb0951eb5ecd9948aaa8eb76d1061361f592ba029` | ⚠️ Unaudited |
| PancakeswapV2RestrictedSingleAssetStrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x67420cc8fda18b061fb4ba63777736cd8ae3053f`; bsc `0x6c0105950b1fee24ee4addd1dff346ccef75d150` | ⚠️ Unaudited |
| PancakeswapV2RestrictedSingleAssetStrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x75a6b8c95bb115706b111c50bcad3607b9565e83` | ⚠️ Unaudited |
| PancakeswapV2RestrictedSingleAssetStrategyPartialCloseLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x23850a04f9dbf488780d998dd0048d472f7cc61c`; bsc `0xa6b2a3fdd415ca304a36909a35f974b670960843` | ⚠️ Unaudited |
| PancakeswapV2RestrictedSingleAssetStrategyPartialCloseMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xd1b41e43fe46db03959ee87dc00f498ae3d7c547`; bsc `0xdd8a4302299115226676f943e01306107dd98495` | ⚠️ Unaudited |
| PancakeswapV2RestrictedSingleAssetStrategyWithdrawMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x94f5e884e11fc054ca0b332e3a8773750bdbe242`; bsc `0xb7025d33762580fd48b412c3a5108be33c91df77` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyAddBaseTokenOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4c7a420142ec69c7df5c6c673d862b9e030743bf`; bsc `0xb7da04cb7dae797397e290c79079f959e4877009` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyAddTwoSidesOptimal | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | bsc | n/a | 6 deployments: bsc `0x3fc149995021f1d7aec54d015dad3c7abc952bf0`; bsc `0x4a967509e424969bc766d5b0da74e59e18392cda`; bsc `0x5f94f61095731b669b30ed1f3f4586bbb51f4001`; bsc `0x66c7170d102db819f50f9582973ab0d16d6f5242`; bsc `0xb9b8766b65636779c3b169b9a18e0a708f91c610`; bsc `0xcb459b4504d10445760095c59c394ea45715d7a5` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x20ebee5d5127d47b686ecfacf548ca4a65108684`; bsc `0x9da5d593d08b062063f81913a08e04594f84d438` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93e8027515a51c68fed014e3ae76d6c490358796` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyPartialCloseLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1313c57c5db43f932a8c91e12d19c2890fe3ae55`; bsc `0x4362635a0b2f8df98cde4cdde5f5f3be96f45316` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyPartialCloseMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1fa4d6a2498cbdec555fa727689f9b9d4587b464`; bsc `0x8dcec5e136b6321a50f8567588c2f25738d286c2` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyWithdrawMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x32b02e91dd0d7496ff34ebd9deb12973ee86e946`; bsc `0x55fcc2dfb1a26e58b1c92a7c85bd2946037a9419` | ⚠️ Unaudited |
| PancakeswapV2StrategyAddBaseTokenOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x77d23aff927f3d46e51d449372c957b3cbbfb40e`; bsc `0xe38ebfe8f314dcad61d5adcb29c1a26f41bed0be` | ⚠️ Unaudited |
| PancakeswapV2StrategyAddTwoSidesOptimal | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0xa48fea4153c3bd79ce12220580f4a1e0974c0f21`; bsc `0xe3cbb658168ffcae0af6fe686356e68c9e79eef3`; bsc `0xf02be2d27461c4fb4fb7d474215e799ca07f3a97`; bsc `0xf25034ca7f3cfc48970272b7d709803c1e121c45` | ⚠️ Unaudited |
| PancakeswapV2StrategyAddTwoSidesOptimal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbbf2a7facdb318f7670ce87a5f6571bb001d8f06` | ⚠️ Unaudited |
| PancakeswapV2StrategyAddTwoSidesOptimalMigrate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02728b3d91823c86e4009d2441d46e7397f7bdd0` | ⚠️ Unaudited |
| PancakeswapV2StrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4f34511e604a1795e854aef9d872cb9c9836f1df`; bsc `0xe574dc08aa579720dfacd70d3dae883d29874599` | ⚠️ Unaudited |
| PancakeswapV2StrategyWithdrawMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x811938726bc82da82fc4ac5de28851f27cc1dcb3`; bsc `0x95ff1336985723aa46078995454d7a7fd9f5401e` | ⚠️ Unaudited |
| PancakeswapV2Worker | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x10af39eb499ba94fa0d1de1f6ba98b839206eeed`; bsc `0x462c2d17fd631b6bdb172a72d6da7d7ec48f4e14`; bsc `0x7d0ea848563f5fa0ae5c2af2d8207c01ea45b0d2` | ⚠️ Unaudited |
| PancakeswapV2Worker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x7880fd4125772d5ef0e6f342e209c193d8c2c8a3`; bsc `0x9e698f779cec7f42663b051ff8176a55fcb8d471`; bsc `0xad4e7e32f2168073e456a9a14e11abb116e6b305`; bsc `0xcac73a0f24968e201c2cc326edbc92a87666b430` | ⚠️ Unaudited |
| PancakeswapV2Worker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 29 | bsc | n/a | 30 deployments: bsc `0x03462fb60aa5de5f1a068a597743f66e097b0d9b`; bsc `0x0e7b1e4dedc07f711493ad696e2ee4969a119e2f`; bsc `0x1d0edca3f151dc9fafb5ce79547d153229985f42`; bsc `0x1dbdc3f67e56daedffa6b2b59d2f4a18190bdded`; bsc `0x255f31ae71c2864942cd5d86111fcf2d8a907fdb`; bsc `0x2e7f32e38ea5a5fcb4494d9b626d2d393b176b1e`; bsc `0x315f5fcbe2ab4b2c2b7ae69ada3d6a7d778fc726`; bsc `0x39bbc1b5c46ac99ecd412533ca831c4a730258ca`; bsc `0x4193d35d0cb598d92703ed69701f5d568aca015c`; bsc `0x4d395258c313bfee5ba4ff500a9befe8ff26991e`; bsc `0x532358cb052b0ca17856a75f1244681eedf36dca`; bsc `0x56017389d3068ca05afe3d4e697afa200f316f0b`; bsc `0x651ebb3f17f637ceaa77d214f2610d4a0af5bfde`; bsc `0x68f131fe93cfc18a6b3ec6312e18c089221a5c34`; bsc `0x72bbcfce18ec02734e87ed68b124bc422c84b2a2`; bsc `0x730bce145a55a07c2d7363db7110466c5c26e472`; bsc `0x7be8f8e84e195092da43bf6c4a4eb61dc90063bd`; bsc `0x7d306dd73531c45f9847e547a0e8deeafe804939`; bsc `0x807554b56f682e87234fd82712aa31548ba73db2`; bsc `0x867d166301a87c13bb71d0ed82df3d2ccc5e19c4`; bsc `0xa504afa74195b93a32ea772df430f2bf69e5d116`; bsc `0xa573ffd839aa1dc94ca6ae7ed75253c2ac7c2ec8`; bsc `0xa726e9e5c007253fe7589879136fdf24da6da393`; bsc `0xb800a87d8cc5d8d134635ed321bf7963aa3f5bcf`; bsc `0xb8e0b422d54aa59552a8aeb2255e1aa8627a5eda`; bsc `0xbd861fe2d91a2e82928fe0413fa77bfeb822f373`; bsc `0xc796e49c22b58f2d46e4e685b608eaaf46c0878d`; bsc `0xcfe0fa9eae5a225a4c33e39d4aefe32667eff11f`; bsc `0xd890f501df285cf24fe3b6494e138a1629fc9e11`; bsc `0xf80c39d3d5d5ca4581ec1982cc0c3c88494cbe62` | ⚠️ Unaudited |
| PancakeswapV2Worker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb6960faf74e7ada47bcbb3923d793da253ff521f`; bsc `0xc69c8c2944c331a8f9b49c5027da45e427c3708b` | ⚠️ Unaudited |
| PancakeswapV2Worker02Migrate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc13df0cae75114a44c3d7acd6adfaa229444d06` | ⚠️ Unaudited |
| PancakeswapWorker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb63acd06c7d6ece492dfba61c606855e49fb93f3`; bsc `0xd06d9b0ba226de48399ed3b06ceb39ee8f62c0a0` | ⚠️ Unaudited |
| PCSFlashLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0d487bb18f4d7d0523abb12101e378d6bf941159`; bsc `0x5146359ff45ec3b6f60c256c99fff856dcbb3398` | ⚠️ Unaudited |
| PCSFlashLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x152461ec1492611ab31e13dc10afbfef2e48bf70` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xaba0b03eaa3684eb84b51984add918290b41ee19` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbedf10b8a2af77051d3d1f82c048c2eccfd461b6` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1afadbe730d44b95aeec909846d4bfdd8d3831af`; bsc `0x4c7fb2214e6d782dc0152ea39c39166f666ca367` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfca12e322dbfbbdff5747e26cfabf480aaedef72` | ⚠️ Unaudited |
| ProxyToken | unknown | project_anchor | own_supporting | 1 | bsc | unit-226238 | 2 deployments: bsc `0x50e5748a2e9c5e05ba8b95549bf7b11da91ddab7`; bsc `0x7834959e1e552e443933e7c5979c24b9eca01e4f` | ⚠️ Unaudited |
| ProxyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xc04096b8d0c4fd0fd7a8667e813e630935aaff05` | ⚠️ Unaudited |
| ProxyWalletFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56f2d6fe1acb1549a665ff3a6e7dc46753f4a116` | ⚠️ Unaudited |
| ProxyWalletRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x13e3bc3c6a96ae3beadd1b08531fde979dd30aea`; bsc `0x951eb3e9fbe2e4bf428e68ad251ae0f2903e320f` | ⚠️ Unaudited |
| RevenueTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89110091631f49fdcb7141f791640096b98763cd` | ⚠️ Unaudited |
| RevenueTreasury02 | operational_periphery | project_anchor | own_supporting | 1 | bsc | unit-226234 | `0x08b5a95cb94f926a8b620e87ee92e675b35afc7e` | ⚠️ Unaudited |
| RevenueTreasuryKeepers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee6d18afaae3cbe2fce9b34edf0fdcf615553d7e` | ⚠️ Unaudited |
| ScientixFeeder | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x8269bc659c9d6fe14720e0e549d67a37bdcca036`; bsc `0xd2a63dce53c509edd7dcb072e33a16e726c92def`; bsc `0xf64c61183dca4fde0f608e0be442bd2dfeaeeffd` | ⚠️ Unaudited |
| ShowStopper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc19c71a2fc7d67fb10ffe4e13dab3acfef798558` | ⚠️ Unaudited |
| SimplePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x166f56f2eda9817cab77118ae4fcaa0002a17ec7`; bsc `0x588c58d88319b2edf7426006668cdff60940f3c7` | ⚠️ Unaudited |
| SingleAssetWorkerConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x0a3617197113ed2a9bbcadfb3c4f417734b1f8aa`; bsc `0x9b659a26938e6bf15264a89457b555b46b034d34`; bsc `0xfbefffdba82c98cf157cc709ab0cf7e19301bc27` | ⚠️ Unaudited |
| StabilityFeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x45040e48c00b52d9c0bd11b8f577f188991129e6`; bsc `0xe35e008ccb407448ef37ef7c0148097553c00aa0` | ⚠️ Unaudited |
| StablecoinAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x713130e882b1dcb9ea7d960119f7b62429cacce3`; bsc `0xd409da25d32473efb0a1714ab3d0a6763bce4749` | ⚠️ Unaudited |
| StableSwapModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xd16004424b9c3f0a7c74c4c8dcda0d8c4d513fac`; bsc `0xfbd7b6942de9edc987f81d8f31c2d4cd88cfb4f6` | ⚠️ Unaudited |
| StaticPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8ef228fe83393411c434306bf7ce56532a0c50dc`; bsc `0xd67286e5969ca0d2ad282eb4eda4b51d60a9eb45` | ⚠️ Unaudited |
| StrategyAddBaseTokenOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x13c052c34beaed5f7c4856faa4da0544b9df99a7`; bsc `0xbbd3464c571db4315bebee098381b687c8269314` | ⚠️ Unaudited |
| StrategyAddBaseTokenOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1dba79e73a7ea9749fc28b921bc9431d09bef2b5`; bsc `0x88d5186eb7fe8a28b358f1382a1499b2b81d8550` | ⚠️ Unaudited |
| StrategyAddTwoSidesOptimal | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0xabe59308ac72f04b1a2d04175d5247ba981075a6`; bsc `0xb2de0a949e5d5db5172d654bf532f473f79a8498`; bsc `0xd408e19fd8474deb0aa917df123f6eafcfc590ed` | ⚠️ Unaudited |
| StrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3af78aeb766059e2db89654ed438a8d976cd2dc5`; bsc `0xe2880836faf7fadf094418f9e9ddde3d132243f1` | ⚠️ Unaudited |
| StrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc1203f662cece399768ab9a92a2717d3ca93b465`; bsc `0xc7c025aa69f4b525e3f9f5186b524492ee1c86bb` | ⚠️ Unaudited |
| StrategyOracleMinimize | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x45ce9276e6b62ebb91a6a866e49ceacec5455451`; bsc `0x55be65fa6566babe8bd36175bf5299568a8071be`; bsc `0x82573b46630ca335a7ca68a0ae42d0ee6a02df68` | ⚠️ Unaudited |
| StrategyWithdrawMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7f7118b1a50a088fe50b335f743ccfbc2765013` | ⚠️ Unaudited |
| StrictAlpacaOraclePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | bsc | n/a | 7 deployments: bsc `0x2b9c18a7e2f067e006e4625a74174472e9f89559`; bsc `0x9cbb0e5c103707dc35dae0aa05a320c4f60a93f1`; bsc `0x9f748f798c75ea44f86a5871045629a2ac9c0568`; bsc `0xde375d37be6399022d6583c954a011a9244a0b61`; bsc `0xea4e46420065c7df0b931424a75c150474d72ac7`; bsc `0xee1d99c9b85dcbbe4773767795eed23fa8190731`; bsc `0xf7e3b6c8ac5047c6acf328c6c9c43ecdf15cd534` | ⚠️ Unaudited |
| SystemDebtEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4c98c712da02d48fa3aa53dc3fe3e6754ddf1cb8`; bsc `0xe09e20ab1f91d1f7eaa0e73446b0617d89501b0e` | ⚠️ Unaudited |
| TerminateAV02 | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | bsc | n/a | 4 deployments: bsc `0x8e5cfa7c06f187b56537f7f0cabfb55611af6f16`; bsc `0x9fe96180ab2adfaebc735336f9213f26bca99aa1`; bsc `0xc57876a95a4f31a0a4fdb0329fc78e00b092cc94`; bsc `0xe9bd0b7333596d0a87ded9ee1a782aa052b711ab` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 18 | bsc | n/a | 18 deployments: bsc `0x0444201f61e06b35cab85807c2dc4764703be745`; bsc `0x0ec1b4a034e7a4dd746f2c5c7dc806293db7d413`; bsc `0x121752a8c3d4afd5cc0b41c8807db7887742a608`; bsc `0x165102dd6ea72a4fb513ff78f30e835c8f099c25`; bsc `0x2ef53bb6749d9c635ff1fe7580b36303eca185a3`; bsc `0x4d228564cc6bea08b7cf1bcd4a7074d4b9293851`; bsc `0x5940760382caebf45463cf8845e610820d3c51d5`; bsc `0x5979ce98e993232f93c81fe4a878815983e71df9`; bsc `0x5effbf90f915b59cc967060740243037ce9e6a7e`; bsc `0x8a426aabf42aae9e0f483cbe3c0dcc00b7659aec`; bsc `0x94bd7c206ce735213c2e9ecef424af7eb71a425f`; bsc `0xa7837a1198fb33ae2fc9ee1e1d679242b4785ffc`; bsc `0xb995c6abcde40576d4458b2bb0718d3ca5d350f7`; bsc `0xbeb7c0bf4cdc19853cc72281dec5af697531f6cd`; bsc `0xc25f74a4c4c5f814ce1b92af573f18905beccb54`; bsc `0xc42023c518014e4f843bee928b27d4e004926584`; bsc `0xc836c32048f81a21827ada8bfc3005a420ae546a`; bsc `0xcaac62533cb652f512b61a57455db00ded405ccc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x14b3cae61465656329a1240b67146249fa1fee97`; bsc `0x73c46de8bfa266b40668f82e7c52fd5245fbfbd0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x14ddb0f012b425bd33cd22f33d2af41e3828a08a`; bsc `0x2728eafc63c81557a929fee36ddad0d18d6b5252`; bsc `0x6c8964f349c2a1a278b8fad6b87610ee402c33f9`; bsc `0xa745bb195cbb18a43f999f52bb0b80c3614764d8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x1c623105d072dc69f9a3f8a3db67b5aecedc082b`; bsc `0x7a81cda008e27889a52e5ea4823a0b22388b5ca6`; bsc `0x9aaad0ab432efdf86b27b4ea020df2dfb223e00c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x28a7178e2125d053220b47195727efc29f1798df`; bsc `0x452fc464583ab2a149d6a63437fe90322a65e252`; bsc `0xcfbcb958514e6c1294f0c900454de7049110cf84` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x301897d786adc651473e1edb87b32ee5821bdd60`; bsc `0x4b837846ad3322ecae28b60a2c2cf16e41b5a3ab`; bsc `0x5359911a2081f8afeb0a19e01cf1fe6b0457d9d3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3da8c388cd5e5a7011ebd084d3708a117067ebbc`; bsc `0x799cb521dfc34c8277d31f3ee0d1fa6a07f2a55e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x44b3868cbba5fbd2c5d8d1445bdb14458806b3b4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x4633a11702a5751fb4836f5ecd3edd8d86852ee9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x51b893ff705b04188784da29d9bade2d72dd353c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 3 | bsc | n/a | 3 deployments: bsc `0x5342fbb861c2aea626f66521c512ac5fa03b6a58`; bsc `0x946eb7078b2c4ee18bea314a48396572ed2581f7`; bsc `0x9ed2ee419b65b6745be435ba5d28407b9a2f8f5a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x6fee87f744fc612948001b09b2808c87b91ddc3c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 1 | bsc | unit-226242 | `0x800933d685e7dc753758ceb77c8bd34abf1e26d7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8064f7019feeda26038fbce42031fbb26bebefeb`; bsc `0xd885797f19214e7dec84454a03ba765c75feda39` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x8fff07f961e75dcced6f1620386d91e66109a9e9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x9b601fbad19036d6e074cadaf61cd70ea2513318` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb4529a5e0190a4a92216628d703002b5e4bf220f`; bsc `0xe62d493ae682ba2b5f9f34ddbd5f42348cd7d9da` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xc2f8ccaf5530d9148bb07a6947b2f0f317e59e23` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | bsc | unit-226243 | 2 deployments: bsc `0xc4ed268754dd3cbca82a6ee743acad2d355d938b`; bsc `0xd3bb23a761db394aa8692562502ae21b854be6c8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc870e0a4f719ddd2b1e9f6afb9d43a604f1e245d`; bsc `0xec135a336bfa6313ddca09e0e38ec1b9ccb757f9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xdb4a41cdabd4ca7ab9af3db346106245cb3f7968` | ⚠️ Unaudited |
| TripleSlopeModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x375d32fada30d7e6fea242fca221a22cc6d52b30`; bsc `0x4ed10eb92c4e92be4d368433e009646e4abdab05`; bsc `0x607ed45d4837e93158cd39aafd292340ed5f5d9f`; bsc `0xadcfbf2e8470493060fbe0a0afac66d2cb028e9c`; bsc `0xae9ee567dcbbce85ccea1d1b0cdd595e3c73f1ee`; bsc `0xb17e305af95e6a4345ff743bc394a0929cc31725` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: bsc `0x0e98f04411d43c800608ca5019c216c212aae694`; bsc `0x15bc06b928917228893da2496b0ea86345a63853`; bsc `0x7eeaa96bf1abaa206615046c0991e678a2b12da1`; bsc `0xac85fa48997b9cc3784c4fedff0070091a322c31`; bsc `0xcc7830c29fa5fdf0e289562470672285290e3a20`; bsc `0xce8ecbab55105164fdcfe9b8ac67b0f644b212fc`; bsc `0xd50aab6b210fe049b6c5262f5a7676204699ab8e`; bsc `0xf097fc9af4072f5709b95e168346499b363180d6` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5353c5c15e7bdab42d3f03e3332ea84ca5835f06`; bsc `0xcf33d2dfda8a99ca81876e301577ff83866ce88b` | ⚠️ Unaudited |
| VaultAip42 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5fd571bea8d104a28bfe44874f2aaf69f8e67c26` | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyAddBaseTokenOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x744bb95c6f31a0b6f7e7b53c46342b42aafc21d3`; bsc `0xebb8ba21a3703ab30187d3eec02a3bc62894970d` | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyAddTwoSidesOptimal | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0xa7559bb0235a1c6003d0e48d2cfa89a6c8748439`; bsc `0xce37fd1ff0a6cb4a6a59cd46ccf55d5dc70ec585`; bsc `0xd58b9626d941ca2d31b55a43045d34a87b32ced3`; bsc `0xda5c06064d29bd7525123d86d17c57512ce98586` | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x64e7de687625981497f21bd31135f6a9049935f7`; bsc `0xcae15b2843a8bafa65e82b66dfb7d68397085c28` | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7f9d59381346da932c68ba399e398501e0601e1` | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyPartialCloseLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x91c1f2e7f7e6b77171ebda204f074a574edf2d24`; bsc `0xfe49affc3ffa7bed8346f8f33f8250d3c6fdf073` | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyPartialCloseMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3ffa4cd446f8127db0ed316b1e952876be2e61b0`; bsc `0x83d6f3ac9c88c238b0d1676e1fce59f4b026ad03` | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyWithdrawMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x853dcb694f74df5fd28b8fdec0be10b8ac43dcb3`; bsc `0xbf4c99bf1db12e1ad96672c7ad652bc5fe0f23eb` | ⚠️ Unaudited |
| WaultSwapWorker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d97bad1fd253ba3ac46a8281ae6571ad6d307de` | ⚠️ Unaudited |
| WaultSwapWorker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 26 | bsc | n/a | 27 deployments: bsc `0x040a65cddb0b8c75c72936879aa603e0d7425da4`; bsc `0x0541c542e2039d13238b5abc6d32a23ae3222b1d`; bsc `0x0c5ed4d8df44f20b052fc6966991e686d594b9c2`; bsc `0x0e0806a43188f383aadaec3440d6e8e4d71b281c`; bsc `0x184962b6c9a55c8c2ee757ca86b73a6edf87e3ca`; bsc `0x195f4c8754e9809bfe4d5f7a5891810c757cac7f`; bsc `0x20064f5ca352d95dda597acb5ecd10a86850caf9`; bsc `0x3483f17668f1863b57cfba66e9cf2f9c3b48423f`; bsc `0x50441d9c8e08e3dcce8d517e2257a3882d43fee9`; bsc `0x5894ac929e7a63417fa0a473563b2c772bb62355`; bsc `0x6169a983e9ded098a38e09636ea577c9b57a51a7`; bsc `0x63dd2d0f6ade00c5d70eb670b7a7074fd878c435`; bsc `0x684e33a6da0f6adfa5aeb6cdbc7f82c112f57dd8`; bsc `0x74c97946dde8b503e0278605fcc59d747170e5f7`; bsc `0x774d122cbf739249580631b8e4233e91ea2ad294`; bsc `0x813a9ae1c7b9f89d0b14d796d484478934c3a7f4`; bsc `0xb01a5f2942b39026eff8acb524a45e75a35f6469`; bsc `0xb3e13a8774378cdbb4bd95dd5d7a02363a75fa66`; bsc `0xb5000cfc1685425709939cc0588c755363b9deda`; bsc `0xb5c425d08719ef87d9ef23785011fd317c3a00bb`; bsc `0xbe6bde2a40511e2d87984af88f58228b1b8babed`; bsc `0xcd4b6354b992426283972eb2ac68178e2629e88d`; bsc `0xe0d62391ceb96487ed0299d1d8a4fffbb43c1581`; bsc `0xe29fd3521bf9784b3b57523cbbe468da28d36655`; bsc `0xf4b424db20d8664cf559fa3c095c54f4569a7f57`; bsc `0xfa4a3fe54143bfea4fdda3b5602766e13647ea66`; bsc `0xfaa8ebdbb5b408f649bfb714435013c09f0b8013` | ⚠️ Unaudited |
| WaultSwapWorker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x29a08f38af02fcc2a75e91144e3931e26d31c88a`; bsc `0xf9bda298fa04200002ff3b7e08e407a6bde04246` | ⚠️ Unaudited |
| WaultSwapWorker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x85fb19fc1fed868e65bdfec58e64cccb8546b0bf`; bsc `0x97d3282f64dc0a0243386880fc00542cd00a20f4`; bsc `0xe8323fff67043c29a19e0a13b66f0eafedb46df4` | ⚠️ Unaudited |
| WNativeRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1d2ca01bc88f325ff7266dd2165944f3caf0d3d` | ⚠️ Unaudited |
| WorkerConfig | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x3175ec52c36fff63dce00e8a50e6066d38884a11`; bsc `0x3dfc436f2194ca9ab2faf314f95492c0485b16b5`; bsc `0xc2d5cf622f314e8d79f84c5c643e18c509425857`; bsc `0xcbbc7f00b6c68c0901af71d103c9dbf362fc429c` | ⚠️ Unaudited |
| WorkerConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xadabc5fc5da42c85a84e66096460c769a151a8f8` | ⚠️ Unaudited |
| xALPACA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6510b1825df7b0c665d92ab694dfbc0ed48d760a` | ⚠️ Unaudited |
| xALPACAMigrator | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xb7d85ab25b9d478961face285fa3d8aaecad24a9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (157)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x00e53c169da54a7e11172aeedf8eb87f060f479e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x0112e557d400474717056c4e6d40edd846f38351` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x014608e87af97a054c9a49f81e1473076d51d9a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x0392957571f28037607c14832d16f8b653edd472` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x05faf555522fa3f93959f86b41a3808666093210` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x05ff2b0db69458a0750badebc4f9e13add608c7f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x08ba0619b1e7a582e0bce5bbe9843322c954c340` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x0ed7e52944161450477ee417de9cd3a859b14fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0eeca1690c59fb195fd158f44c4f3230ed28561c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x1099c2e6ed6eba95099c205b599b409305783e43` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x10ed43c718714eb63d5aa57b78b54704e256024e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x133ee93fe93320e1182923e1a640912ede17c90c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x154a9f9cbd3449ad22fdae23044319d6ef2a1fab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x1633b7157e7638c4d6593436111bf125ee74703f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x16afc4f2ad82986bbe2a4525601f8199ab9c832d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x16b9a82891338f9ba80e2d6970fdda79d1eb0dae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x17580340f3daedae871a8c21d15911742ec79e0f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x1796ae0b0fa4862485106a0de9b654efe301d0b2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x17b7163cf1dbd286e262ddc68b553d899b93f526` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x1b96b92314c44b159149f7e0303511fb2fc4774f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e66af314756e6cc5065b5091be2ff0011e5ea84` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x21dd71ab78ede3033c976948f769d506e4f489ee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x232fb065d9d24c34708eedbf03724f2e95abe768` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x2354ef4df11afacb85a5c7f98b624072eccddbb1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x25a528af62e56512a19ce8c3cab427807c28cc19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x274dd0edac0ec5e72e45433c1666d6c246338bb2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x27e873bee690c8e161813de3566e9e18a64b0381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x28415ff2c35b65b9e5c7de82126b4015ab9d031f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x284e25169ce75fc62c9339207de5d775f46ad406` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x2984f825bfe72e55e1725d5c020258e81ff97450` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x2cfc48cdfea0678137854f010b5390c5144c0aa5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x2e28b9b74d6d99d4697e913b82b41ef1cac51c6c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x32299c93960bb583a43c2220dc89152391a610c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33c66c601a442b2263976332397f923cd6bf1753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x349dbcf399e39642d43b6926c8ac30d9cfec5b80` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x37908620def1491dd591b5a2d16022a33cdda415` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x3ab77e40340ab084c3e23be8e5a6f7afed9d41dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x3c2b7b578dd2175a1c3524aa0d515106282bf108` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x3c2c77353e2f6ac1578807b6b2336bf3a3cbb014` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x3cd338c3bb249b6b3c55799f85a589febbbff9dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x3e19c18fe3458a6065d8f0844cb7eae52c9dae07` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x3fcca8648651e5b974dd6d3e50f61567779772a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x41182c32f854dd97ba0e0b1816022e0acb2fc0bb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x4131b87f74415190425ccd873048c708f8005823` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x4269e7f43a63cea1ad7707be565a94a9189967e9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x45c54210128a065de780c4b0df3d16664f7f859e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x486697ae24469cb1122f537924aa46e705b142aa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x4ddd56e2f34338839bb5953515833950ea680afb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4eca08e4f2ed826dba5bea2ec133036fe60d30b6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x4fd6d315bef387fad2322fbc64368fc443f0886d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x564c51709ce87eb07a16ba6f595c08b8bd20400a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x56aa0237244c67b9a854b4efe8479cca0b105289` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x5774b2fc3e91af89f89141eacf76545e74265982` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x58f876857a02d6762e0101bb5c46a8c1ed44dc16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61d5e93bfcbf30e6e0efd7e51d6a9222d2b081c2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x61eb789d75a95caa3ff50ed7e47b96c132fec082` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x6615ce60d71513aa4849269dd63821d324a23f8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x6679eb24f59dfe111864aec72b443d1da666b360` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x66fdb2eccfb58cf098eaa419e5efde841368e489` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x67ee3cb086f8a16f34bee3ca72fad36f7db929e2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x67efef66a55c4562144b9acfcfbc62f9e4269b3e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x680dd100e4b394bda26a59dd5c119a391e747d18` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x68145f3319f819b8e01dfa3c094fa8205e9efb9a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x68daacc2ca1c0da0b49b062ba546f69968e0fcc5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x68ff2ca47d27db5ac0b5c46587645835dd51d3c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a31f36ee3a24c25c2f2bff2271d9a42715094a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x6ac4334ddd701dd69169fe66d33c563e0f2c855e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x6f523eb78b4493f7682b2fed979821716e866507` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x70d8929d04b60af4fb9b58713ebcf18765ade422` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x71de20e0c4616e7fcbfdd3f875d568492cbe4739` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x73feaa1ee314f8c655e354234017be2193c9e24e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x74e4716e431f45807dcf19f284c7aa99f18a4fbc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x7561eee90e24f3b348e1087a005f78b4c8453524` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x758d08864fb6cce3062667225ca10b8f00496cc2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x758fb037a375f17c7e195cc634d77da4f554255b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x7752e1fa9f3a2e860856458517008558deb989e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x7859b01bbf675d67da8cd128a50d155cd881b576` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x7c38870e93a1f959cb6c533eb10bbc3e438aac11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x7d2fa587c15f013e08c2632c3d6eee5281704d62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e1a283c5fbe6b69c95397dee0d02e6688afd0ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x7eb5d86fd78f3852a3e0e064f2842d45a3db6ea2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x7efaef62fddcca950418312c6c91aef321375a00` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x804678fa97d91b974ec2af3c843270886528a9e6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x824eb9fadfb377394430d2744fa7c42916de3ece` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83df8edb615b455bfce270ee2ee3562fd202353f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8511e6715845603597a2f33c69dacc5c19bcfbee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x877264983807d568cf0b61344cb03012c1f11b17` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x89ebf9cd99864f6e51bd7a578965922029cab977` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8d657683437bf1b2f8274515b237a2db0f233a2d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x8fa59693458289914db0097f5f366d771b7a7c3f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x92d7756c60dcfd4c689290e8a9f4d263b3b32241` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x936928146a21afccd30dfa84824a780572b1630b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x946696344e7d4346b223e1cf77035a76690d6a73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x9573c88ae3e37508f87649f87c4dd5373c9f31e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x99d865ed50d2c32c1493896810fa386c1ce81d91` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xa269a9942086f5f87930499dc8317ccc9df2b6cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xa39af17ce4a8eb807e076805da1e2b8ea7d0755b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xa527a61703d82139f8a06bc30097cc9caa2df5a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xa5f8c5dbd5f286960b9d90548680ae5ebff07652` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xa9986fcbdb23c2e8b11ab40102990a08f8e58f06` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xa9c41a46a6b3531d28d5c32f6633dd2ff05dfb90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabc591b524b40e3be9eada1143b1dbc9d67b6274` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xae70e3f6050d6ab05e03a50c655309c2148615be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xaebe45e3a03b734c68e5557ae04bfc76917b4686` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xb5d108578be3750209d1b3a8f45ffee8c5a75146` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xb87b857670a44356f2b70337e0f218713d2378e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xbb3632ff9c882bf09b85fd1f41df89a4853abe4c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xbcd62661a6b1ded703585d3af7d7649ef4dcdb5c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xbcee0d15a4402c9cc894d52cc5e9982f60c463d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xbcf39f0edda668c58371e519af37ca705f2bfcbd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xbcfccbde45ce874adcb698cc183debcf17952812` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xbd26e08411483c4bebba80939fa5a775bee22338` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xc15fa3e22c912a276550f3e5fe3b0deb87b55acd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xc20a92a1424b29b78dfaf92fd35d4cf8a06419b4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xc2d00de94795e60fb76bc37d899170996cbda436` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xc3d912863152e1afc935ad0d42d469e7c6b05b77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xc64c9b30c981fc2ee4e13d0ca3f08258e725fd24` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xc7b8285a9e099e8c21ca5516d23348d8dbadde4a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xca11bde05977b3631167028862be2a173976ca11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xca143ce32fe78f1f7019d7d551a6402fc5350c73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xcaa662ad41a662b81be2aea5d59ec0697628665f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xcaf5191fc480f43e4df80106c7695eca56e48b18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb1bf51a93fc162bfa761f18c236e39d107f6b23` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xcd40f2670cf58720b694968698a5514e924f742d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xcdb0016d97fd0e7ec2c3b78aa4786cbd8e19c14c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xcdc53345192d0e31eead03d7e9e008ee659faebe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xce383277847f8217392eea98c5a8b4a7d27811b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xd02da76c813b9cd4516ed50442923e625f90228f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xd15c444f1199ae72795eba15e8c1db44e47abf62` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xd171b26e4484402de70e3ea256be5a2630d7e88d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xd1f12370b2ba1c79838337648f820a87edf5e1e6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xd2e855f8c3a69323fd4a46444c97c9813134268d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xd44fd09d74cd13838f137b590497595d6b3feea4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xd88ca08d8eec1e9e09562213ae83a7853ebb5d28` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xdcfbb12ded3fea12d2a078bc6324131cd14bf835` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xdd5bad8f8b360d76d12fda230f8baf42fe0022cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xdf7c18ed59ea738070e665ac3f5c258dcc2fbad8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xdfa808da5cfb9aba5fb3748ff85888f79174f378` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xe094c686ad6cdda57b9564457f541fbf099b948a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xe0e514c71282b6f4e823703a39374cf58dc3ea4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe87822c211eaaae2d294c592ec9dd44eaff7372c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xe98ac95a1db2fcaaa9c7d4ba7ecfce4877ca2bea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xea26b78255df2bbc31c1ebf60010d78670185bd0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xebd49b26169e1b52c04cfd19fcf289405df55f80` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xec6557348085aa57c72514d67070dc863c0a5a8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xf3bc6fc080ffcc30d93df48bfa2aa14b869554bb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xf3ce6aac24980e6b657926dfc79502ae414d3083` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xf45cd219aef8618a92baa7ad848364a158a24f33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7524afdb5c40581d89a1bb7b841c5e1e7a61f44` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xf859bf77cbe8699013d6dbc7c2b926aaf307f830` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xf90baa331cfd40f094476e752bf272892170d399` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xfdfde3af740a22648b9dd66d05698e5095940850` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe65861492ee51b126e2f6dc0299ffe4ca9a578c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xfe663c8c580832a916f8d9e9ff8e13cb814ec14d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xff17ff314925dff772b71abdff2782bc913b3575` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xffba7529ac181c2ee1844548e6d7061c9a597df4` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 520
- Live contracts: 26
- Unknown liveness contracts: 494
- Source-verified contracts: 491
- Currently scope-matched contracts retained as-is: 6
- Classification counts: currently scope matched=6, candidate review=182, exact address book overlap=15, source verified unclassified=288, unverified unclassified=29

Showing first 200 of 520 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | AdminUpgradeabilityProxy<br>`0x11362ea137a799298306123eea014b7809a9db40` | project_anchor | unknown | live | verified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| currently scope matched | AdminUpgradeabilityProxy<br>`0x6bf5b334409cc3fd336da9a2d3e3f9c870feb343` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| currently scope matched | DebtToken<br>`0x5138133f0671071d8b8f1c4c180881bfcfe22cec` | project_anchor | unknown | live | verified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| currently scope matched | DebtToken<br>`0xd19d6253d979ccf663869fee30b8e0ac86029ebd` | project_anchor | unknown | live | verified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| currently scope matched | ProxyAdmin<br>`0x5379f32c8d5f663eacb61eef63f722950294f452` | project_anchor | unknown | live | verified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| currently scope matched | Shield<br>`0x1963f84395c8cf464e5483de7f2f434c3f1b4656` | project_anchor | unknown | live | verified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AccessControlConfig<br>`0x6b6997ae4be20d8bc5a49e482e9a2979b46e3e5f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x040a65cddb0b8c75c72936879aa603e0d7425da4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x0c5ed4d8df44f20b052fc6966991e686d594b9c2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x0e0806a43188f383aadaec3440d6e8e4d71b281c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x184962b6c9a55c8c2ee757ca86b73a6edf87e3ca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x195f4c8754e9809bfe4d5f7a5891810c757cac7f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x255f31ae71c2864942cd5d86111fcf2d8a907fdb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x2e7f32e38ea5a5fcb4494d9b626d2d393b176b1e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x315f5fcbe2ab4b2c2b7ae69ada3d6a7d778fc726` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x3483f17668f1863b57cfba66e9cf2f9c3b48423f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x38912684b1d20fe9d725e8b39c39458fac5a4833` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x4193d35d0cb598d92703ed69701f5d568aca015c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x553b8adc2ac16491ec57239bea7191719a2b880c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x56017389d3068ca05afe3d4e697afa200f316f0b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x5894ac929e7a63417fa0a473563b2c772bb62355` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x5cb454fc86068e710212fbecbc93070b90011f2b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x6169a983e9ded098a38e09636ea577c9b57a51a7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x634902128543b25265da350e2d961c7ff540fc71` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x63dd2d0f6ade00c5d70eb670b7a7074fd878c435` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x67a2cdb9f0760663b5e70c1517f1a603ba3f50f0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x684e33a6da0f6adfa5aeb6cdbc7f82c112f57dd8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x6c0105950b1fee24ee4addd1dff346ccef75d150` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x72bbcfce18ec02734e87ed68b124bc422c84b2a2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x730bce145a55a07c2d7363db7110466c5c26e472` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x74c97946dde8b503e0278605fcc59d747170e5f7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x774d122cbf739249580631b8e4233e91ea2ad294` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x7be8f8e84e195092da43bf6c4a4eb61dc90063bd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x807554b56f682e87234fd82712aa31548ba73db2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x813a9ae1c7b9f89d0b14d796d484478934c3a7f4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x867d166301a87c13bb71d0ed82df3d2ccc5e19c4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0x94f5e884e11fc054ca0b332e3a8773750bdbe242` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0xa573ffd839aa1dc94ca6ae7ed75253c2ac7c2ec8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0xa726e9e5c007253fe7589879136fdf24da6da393` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0xb01a5f2942b39026eff8acb524a45e75a35f6469` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0xb0951eb5ecd9948aaa8eb76d1061361f592ba029` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0xb3e13a8774378cdbb4bd95dd5d7a02363a75fa66` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0xb5000cfc1685425709939cc0588c755363b9deda` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0xb5c425d08719ef87d9ef23785011fd317c3a00bb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0xbe6bde2a40511e2d87984af88f58228b1b8babed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0xcd4b6354b992426283972eb2ac68178e2629e88d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0xe0d62391ceb96487ed0299d1d8a4fffbb43c1581` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0xe29fd3521bf9784b3b57523cbbe468da28d36655` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0xf80c39d3d5d5ca4581ec1982cc0c3c88494cbe62` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0xfa4a3fe54143bfea4fdda3b5602766e13647ea66` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AdminUpgradeabilityProxy<br>`0xfaa8ebdbb5b408f649bfb714435013c09f0b8013` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AlpacaOraclePriceFeed<br>`0x333db3ede42a351fbcce6ef38ec35a74a9a1c52b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AlpacaStablecoin<br>`0x561b8c4f2ac28801baf6a4461b63c954eea1a0b4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AlpacaStablecoinProxyActions<br>`0x1391fb5efc2394f33930a0cffb9d407abdbf1481` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AlpacaStablecoinProxyActions<br>`0x9d9507b4eede3e3fd83e8bebdb9a9bf3ed681c0a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | AuthTokenAdapter<br>`0xb689c00e7d3897aaa505abace6a1b590b5a951d5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | BookKeeper<br>`0xc7d037e67b09cb59c94e0fef231124fd01fb0e49` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | CakeMaxiWorker<br>`0x025ba0e82d45e29e831c53637bea2ce9d88199c2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | CakeMaxiWorker02<br>`0x0455ce6b16629883c52d54ac5d5fcb4622d8275d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | CakeMaxiWorker02<br>`0x9cbc68b89fe7edde4609d0fcfca835c976c959c9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | CakeMaxiWorker02<br>`0xc82aca9c28da7092527c160f5bd72dbc3df6c8e3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | CakeMaxiWorker02<br>`0xcdd640f7cc3c5001ca06f00d578b85f895dd2379` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | CollateralPoolConfig<br>`0x064bb6eea2339cad2bdaf895c3d3728e2c6bdac1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | DeltaNeutralPancakeWorker02<br>`0x4d5fc3f859acf7525d7bc0faf540b827d0b8fe27` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | DeltaNeutralPancakeWorker02<br>`0xf9e292c9608a4aba9a141e55a184d6d68d3eeb70` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | DeltaNeutralVault<br>`0xd22d9012b1c06ae593d8f33b706becea58ecbf99` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | DeltaNeutralVaultConfig<br>`0x30275f8980ade89febfd93023a4af67da0fe700f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | DeltaNeutralVaultGateway<br>`0xdd0106c3f2d74ecbfd86f39f5639ca5a7efaf1c7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | FixedSpreadLiquidationStrategy<br>`0x52d62bd452b6b8d7d92ef4fe6e474fb55650dbc1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | FixedSpreadLiquidationStrategy<br>`0x5af5c295300304d7988d5a6c7c7446d305f8f6b7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | FlashMintModule<br>`0x0a7233ade189237e4ecc86ff201d3bac2c96fbd6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | GetPositions<br>`0x9f481c023b84359f4fcc30749f828d5a9c17af03` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | GrazingRange<br>`0x815c54f332dd60eacd839bb12fdc37105783b77f` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | GrazingRange<br>`0xd50a06e444d2a85098b3dbc66a5d1946789bb869` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | IbTokenAdapter<br>`0x425b07f17c0b1476c0a3006b70816800147dec64` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | IbTokenPriceFeed<br>`0xbac9d8d59dbb0e2a21cc75323c9c8a1abbd9df49` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | IbTokenPriceFeed<br>`0xbb403a75a49aec69d0333da3d95ec1d1f5973d7d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | LiquidationEngine<br>`0x5aa539cbe3d5bbeb89f633946e64e3c3419a7026` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | MdexRestrictedStrategyAddBaseTokenOnly<br>`0xeac60ec7f7623b3db636c9fc9758e8cbf3ff0548` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | MdexRestrictedStrategyAddTwoSidesOptimal<br>`0xaa8f19fab381df42f2767ae7fb770434c4b710b4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | MdexRestrictedStrategyLiquidate<br>`0x812298f58b7cc413f06aa88f10fad71bd55ae475` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | MdexRestrictedStrategyPartialCloseLiquidate<br>`0xd7103ac4c3b888fdfe9c7adbe596c15e5ddf68b4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | MdexRestrictedStrategyPartialCloseMinimizeTrading<br>`0x88934638ef657affd64ba2150bb255d54f5e5b29` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | MdexRestrictedStrategyWithdrawMinimizeTrading<br>`0xa5e98c503d62ee19619b3ef12085f0d35d2a3463` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | MdexWorker02<br>`0xe9005e936d7d8d28b7c8151be39195744ae515b7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | OracleMedianizer<br>`0x3297961610d8a64f41cb4f577448bf3a57738303` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | PancakeswapV2RestrictedSingleAssetStrategyAddBaseTokenOnly<br>`0x9a5105c9dd6c6ae76518f4afbbd388514c334d96` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | PancakeswapV2RestrictedSingleAssetStrategyAddBaseWithFarm<br>`0x69b5018910f9c8d82d544f315e9d3477236ed0e1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | PancakeswapV2RestrictedSingleAssetStrategyLiquidate<br>`0x67420cc8fda18b061fb4ba63777736cd8ae3053f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | PancakeswapV2RestrictedSingleAssetStrategyLiquidate<br>`0x75a6b8c95bb115706b111c50bcad3607b9565e83` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | PancakeswapV2RestrictedSingleAssetStrategyPartialCloseLiquidate<br>`0x23850a04f9dbf488780d998dd0048d472f7cc61c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | PancakeswapV2RestrictedSingleAssetStrategyWithdrawMinimizeTrading<br>`0xb7025d33762580fd48b412c3a5108be33c91df77` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | PancakeswapV2RestrictedStrategyPartialCloseLiquidate<br>`0x1313c57c5db43f932a8c91e12d19c2890fe3ae55` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | PancakeswapV2Worker02<br>`0x0e7b1e4dedc07f711493ad696e2ee4969a119e2f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | PancakeswapV2Worker02<br>`0xc69c8c2944c331a8f9b49c5027da45e427c3708b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | PositionManager<br>`0xbedf10b8a2af77051d3d1f82c048c2eccfd461b6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | PriceOracle<br>`0x1afadbe730d44b95aeec909846d4bfdd8d3831af` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | ProxyWalletFactory<br>`0x56f2d6fe1acb1549a665ff3a6e7dc46753f4a116` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | ProxyWalletRegistry<br>`0x951eb3e9fbe2e4bf428e68ad251ae0f2903e320f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | ShowStopper<br>`0xc19c71a2fc7d67fb10ffe4e13dab3acfef798558` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | SingleAssetWorkerConfig<br>`0x0a3617197113ed2a9bbcadfb3c4f417734b1f8aa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | SingleAssetWorkerConfig<br>`0x9b659a26938e6bf15264a89457b555b46b034d34` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | SingleAssetWorkerConfig<br>`0xfbefffdba82c98cf157cc709ab0cf7e19301bc27` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | StabilityFeeCollector<br>`0xe35e008ccb407448ef37ef7c0148097553c00aa0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | StablecoinAdapter<br>`0x713130e882b1dcb9ea7d960119f7b62429cacce3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | StableSwapModule<br>`0xfbd7b6942de9edc987f81d8f31c2d4cd88cfb4f6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | StrictAlpacaOraclePriceFeed<br>`0x9cbb0e5c103707dc35dae0aa05a320c4f60a93f1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | SystemDebtEngine<br>`0x4c98c712da02d48fa3aa53dc3fe3e6754ddf1cb8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x03462fb60aa5de5f1a068a597743f66e097b0d9b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x0541c542e2039d13238b5abc6d32a23ae3222b1d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x06d280abee1073b83a01fe778b6145e850e87162` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x0768ef9e891725c4c65f3e0fb671abcd66fc6bee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x0780d461480a3386031498f264a91f3d473a181a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x090ff57ffd64593111b0aa7f2d664b1aa3066137` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x13e3bc3c6a96ae3beadd1b08531fde979dd30aea` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x1d0edca3f151dc9fafb5ce79547d153229985f42` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x1d24165cefa83c14559f67f819b61c2c857c01b4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x1dbdc3f67e56daedffa6b2b59d2f4a18190bdded` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x2b356b9cd4b00658facc35f4d031df528ee9778d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x2b9c18a7e2f067e006e4625a74174472e9f89559` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x34cce22a47c5f020a5cc4fcc63d231d46577415a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x39bbc1b5c46ac99ecd412533ca831c4a730258ca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x41d2e4ac5b7373041c06a9d331b0624142fa1123` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x4362635a0b2f8df98cde4cdde5f5f3be96f45316` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x44b930f2e53231b3f85495229ea644724c93c617` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x45040e48c00b52d9c0bd11b8f577f188991129e6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x47f1c5f505043dee9604b98d99304f7ad4239b72` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x4a89f897aa97d096dbea0f874a5854662996f8ae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x4bf04730c37fc395b5f780e6ad3e397c031f6d39` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x4c7fb2214e6d782dc0152ea39c39166f666ca367` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x4d395258c313bfee5ba4ff500a9befe8ff26991e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x4f56a92ca885be50e705006876261e839b080e36` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x50441d9c8e08e3dcce8d517e2257a3882d43fee9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x5124baa8ca9c5e327efc458271dac157aceb4f04` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x532358cb052b0ca17856a75f1244681eedf36dca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x539fc3fd348b427b5f70b4f87c1a44983c9e8dbd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x595f76f2254ed6a93e8763c585741ac3fc796e2e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x632188a1b2f3a2636b59a1c400835e2c5ea40214` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x632e03943dd4c5c509486233b345fae86cd5517a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x651ebb3f17f637ceaa77d214f2610d4a0af5bfde` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x665a8e4b88f6bfa984b1568505cb4545f7816ce2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x68f131fe93cfc18a6b3ec6312e18c089221a5c34` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x6e3314453642c5ce9ff273aa5f132c1cc8463cef` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x7d306dd73531c45f9847e547a0e8deeafe804939` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x85fb19fc1fed868e65bdfec58e64cccb8546b0bf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x878ef0130340b8375de06287a47a6c9c2bd26618` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x8cc012356e61424446646ec3b261fe5ef5b44a8a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x933db54446d1a42216b8ead55064891359ab9c6b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x9a0beed083d3a45b6463c621b0ce489482459b21` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x9f748f798c75ea44f86a5871045629a2ac9c0568` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0x9fa028cf1ddaaa514a1adde6a9fe7224ca10d6d1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xa14c9e1939b4f323ef540566b0ee80142713a4d9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xa504afa74195b93a32ea772df430f2bf69e5d116` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xa6b2a3fdd415ca304a36909a35f974b670960843` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xaba0b03eaa3684eb84b51984add918290b41ee19` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xb16912cbb98c7ef7aad30268bdc5602dbb5833f9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xb6960faf74e7ada47bcbb3923d793da253ff521f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xb800a87d8cc5d8d134635ed321bf7963aa3f5bcf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xb8e0b422d54aa59552a8aeb2255e1aa8627a5eda` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xbd2c6bed2b89415fe2853941a222662f12166f1d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xbd861fe2d91a2e82928fe0413fa77bfeb822f373` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xc796e49c22b58f2d46e4e685b608eaaf46c0878d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xc9b12a6900c53a9d0eaed911c1f46f6a1cc8e7ad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xcfe0fa9eae5a225a4c33e39d4aefe32667eff11f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xd0aecee1520b5f9925d952405f9a06dcd8fd6e6c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xd16004424b9c3f0a7c74c4c8dcda0d8c4d513fac` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xd3f82e0af8c5a078c783dedddf79ccb762ba413a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xd409da25d32473efb0a1714ab3d0a6763bce4749` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xd890f501df285cf24fe3b6494e138a1629fc9e11` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xd8a128e5712d9b240811a0d55d3f9ca8e6599b7a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xdaf7205a8afc4d77171f5bfd24808946eccf373e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xdcecf0664c33321ceca2effce701e710a2d28a3f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xde375d37be6399022d6583c954a011a9244a0b61` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xe09e20ab1f91d1f7eaa0e73446b0617d89501b0e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xe7a49ae5c9500d18481e0e0efbff1d5d0ff75de3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xe8323fff67043c29a19e0a13b66f0eafedb46df4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xea4e46420065c7df0b931424a75c150474d72ac7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xee1d99c9b85dcbbe4773767795eed23fa8190731` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xf4b424db20d8664cf559fa3c095c54f4569a7f57` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xf4c6b53bd2a1f0c06d8483e38cd6e6cec1860593` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xf7e3b6c8ac5047c6acf328c6c9c43ecdf15cd534` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xfb6a378b5e5bbc6f413dddf07873076851a00fd1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | TransparentUpgradeableProxy<br>`0xfe49affc3ffa7bed8346f8f33f8250d3c6fdf073` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | WaultSwapRestrictedStrategyPartialCloseLiquidate<br>`0x91c1f2e7f7e6b77171ebda204f074a574edf2d24` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | WaultSwapWorker02<br>`0x20064f5ca352d95dda597acb5ecd10a86850caf9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | WaultSwapWorker02<br>`0x29a08f38af02fcc2a75e91144e3931e26d31c88a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | WaultSwapWorker02<br>`0x97d3282f64dc0a0243386880fc00542cd00a20f4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| candidate review | WaultSwapWorker02<br>`0xf9bda298fa04200002ff3b7e08e407a6bde04246` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| exact address book overlap | AdminUpgradeabilityProxy<br>`0x02da7035bed00ae645516bdb0c282a7fd4aa7442` | project_anchor | unknown | live | verified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| exact address book overlap | AdminUpgradeabilityProxy<br>`0x262de19b5fde97ed5bdba10d630e34fb9a1b59b2` | project_anchor | unknown | live | verified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| exact address book overlap | AdminUpgradeabilityProxy<br>`0x3b4fbb2b8536ab144048abafdd27eaf52f0fa4dc` | project_anchor | unknown | live | verified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| exact address book overlap | AdminUpgradeabilityProxy<br>`0x6a3487ce84fd83c66b83e598b18412bd1d2a55f9` | project_anchor | unknown | live | verified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| exact address book overlap | AdminUpgradeabilityProxy<br>`0x92110af24d280e412b3a89691f6b0b9e09258fe6` | project_anchor | unknown | live | verified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| exact address book overlap | AdminUpgradeabilityProxy<br>`0xb76ed435b93477511e4604c441550a23d5aeaf84` | project_anchor | unknown | live | verified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| exact address book overlap | MerkleDistributor<br>`0x083c022046df51f458709e1a5660b87754e58de7` | project_anchor | unknown | live | verified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| exact address book overlap | MerkleDistributor<br>`0x60bc407144c82cb27bf0681b457f0e7a75514105` | project_anchor | unknown | live | verified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| exact address book overlap | MerkleDistributor<br>`0x63c60b840933e62e43d8efc1dfde31a32cdc4412` | project_anchor | unknown | live | verified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| exact address book overlap | MerkleDistributor<br>`0xa33ff77f414408797a27a0057afb51d2df50ce58` | project_anchor | unknown | live | verified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| exact address book overlap | MerkleDistributor<br>`0xd193b38c87c8faf7cb2f6c592d3ae885ae21c4bf` | project_anchor | unknown | live | verified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x426bdfe8cab2c4720b36abbdc3ff08144bc361f3` | project_anchor | unknown | live | verified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/add-collateral-routine/PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf) | PeckShield | Audit | 2021-08 | stale | Direct | n/a | matched | 1 | 1 | 0 | 3 | n/a |
| [Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/cakemaxi/Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [PeckShield-Audit-Report-Alpaca-CakeMaxi-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/cakemaxi/PeckShield-Audit-Report-Alpaca-CakeMaxi-v1.0.pdf) | PeckShield | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/cakemaxi/Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/delta-neutral/PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [alpaca_v1.0-signed.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/delta-neutral/alpaca_v1.0-signed.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Alpaca_GrazingRange_SmartContractReview_fcd2f3c_Report.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/grazing-range/Alpaca_GrazingRange_SmartContractReview_fcd2f3c_Report.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 0 | high |
| [Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_1.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/grazing-range/Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_1.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 0 | high |
| [Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/mdex-integration/Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Inspex_AUDIT2021009_Alpaca_OptimizedWorker_FinalReport_v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/optimized-worker/Inspex_AUDIT2021009_Alpaca_OptimizedWorker_FinalReport_v1.0.pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Smart Contract Security Audit Report - Alpaca Finance Oracle.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/oracle/Smart%20Contract%20Security%20Audit%20Report%20-%20Alpaca%20Finance%20Oracle.pdf) | yAudit | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [PeckShield-Audit-Report-Alpaca-PartialCloseStrategies-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/partial-close/PeckShield-Audit-Report-Alpaca-PartialCloseStrategies-v1.0.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [CertiK Security Assessment for Alpaca Finance 1.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/protocol/CertiK%20Security%20Assessment%20for%20Alpaca%20Finance%201.pdf) | CertiK | Audit | 2021-05 | stale | Direct | n/a | matched | 6 | 2 | 0 | 19 | n/a |
| [PeckShield-Audit-Report-Alpaca-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/protocol/PeckShield-Audit-Report-Alpaca-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | address | matched | 10 | 5 | 0 | 26 | high |
| [Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/spooky-minifl/Inspex_AUDIT2022008_Alpaca%20Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf](https://github.com/alpaca-finance/alpaca-stablecoin/blob/main/audits/Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 31 | high |
| [PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf](https://github.com/alpaca-finance/alpaca-stablecoin/blob/main/audits/PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf) | PeckShield | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [SlowMist_Audit_Report_-_AlpacaStablecoin.pdf](https://github.com/alpaca-finance/alpaca-stablecoin/blob/main/audits/SlowMist_Audit_Report_-_AlpacaStablecoin.pdf) | SlowMist | Audit | 2021-11 | stale | Direct | n/a | matched | 2 | 0 | 0 | 44 | n/a |
| [PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf](https://github.com/alpaca-finance/alpies-contract/blob/main/audits/PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf) | PeckShield | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [5761] PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf — matched: No reason recorded
- [5762] Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf — no match: Extracted 7 contracts from scope tables in sections 2.2 (pages 3-5). Date from cover page: Jun 14, 2021.
- [5763] PeckShield-Audit-Report-Alpaca-CakeMaxi-v1.0.pdf — no match: Audit report for Alpaca Finance's CakeMaxiWorker and strategies. Scope explicitly mentions 'CakeMaxi Worker and its associated strategies'. Two contracts identified from findings: CakeMaxiWorker and CakeMaxiWorkerConfig.
- [5764] Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf — no match: Scope explicitly lists CakeMaxiWorker.sol, SingleAssetWorkerConfig.sol, and all strategies under a folder. The audit date is given as 2021.06.11 in the audit result table.
- [5765] PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf — no match: Contracts extracted from scope description and findings targets. Audit date from cover page and version history.
- [5766] alpaca_v1.0-signed.pdf — no match: Extracted from report title page and scope section. Contracts explicitly mentioned in scope and findings.
- [5767] Alpaca_GrazingRange_SmartContractReview_fcd2f3c_Report.pdf — matched: Only one contract in scope: GrazingRange.sol. Date from cover page: '5 May 2021'.
- [5768] Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_1.pdf — matched: Only one contract, GrazingRange, is in scope. Audit date from 'Audit Date' column in Audit Result table: 2021.05.04 - 2021.05.06, using end date.
- [5769] Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf — no match: All 7 contracts listed in the scope section (Section 2.2) were extracted. The audit date is from the cover page: 'Date Issued: Sep 24, 2021'.
- [5770] Inspex_AUDIT2021009_Alpaca_OptimizedWorker_FinalReport_v1.0.pdf — no match: Three contracts explicitly listed in scope table. Audit date from cover page.
- [5771] Smart Contract Security Audit Report - Alpaca Finance Oracle.pdf — no match: Two contracts explicitly listed in scope: OracleMedianizer and ChainLinkPriceOracle. Audit date from audit result table: 2021.07.08 - 2021.07.12, using end date.
- [5772] PeckShield-Audit-Report-Alpaca-PartialCloseStrategies-v1.0.pdf — no match: No explicit scope section; contracts extracted from findings and report description.
- [5773] CertiK Security Assessment for Alpaca Finance 1.pdf — matched: No reason recorded
- [5774] PeckShield-Audit-Report-Alpaca-v1.0.pdf — matched: The report does not have a dedicated scope section; contract names were extracted from findings targets and the deployment table.
- [5775] Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf — no match: All 9 contracts explicitly listed in scope table on page 3-4. Audit date from cover page: Feb 8, 2022.
- [5776] Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf — no match: All contracts listed in the Scope section (2.2) of the audit report, both initial audit and reassessment, were extracted. The audit date is from the cover page: 'Date Issued: Nov 15, 2021'.
- [5777] PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf — no match: Extracted contract names from findings targets and scope description. Audit date from cover page.
- [5778] SlowMist_Audit_Report_-_AlpacaStablecoin.pdf — matched: No reason recorded
- [5779] PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf — no match: Audit report for Alpies NFT collection. Scope includes Alpies, AscendingStepModel, and DescendingStepModel contracts. Audit date is October 18, 2021.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf | ConfigurableInterestVaultConfig | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf | SingleAssetWorkerConfig | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf | Vault | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x3282d2a151ca00bfe7ed17aa16e42880248cd3cd` — deployed 2021-06-21 19:25:14+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0xf1be8ecc990cbcb90e166b71e368299f0116d421` — deployed 2021-04-25 09:45:01+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-06-21 was 41d from audit; next candidate 98d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf | WorkerConfig | unmatched — not counted | — | — | no |
| Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf | CakeMaxiWorker | unmatched — not counted | — | Listed in scope tables for Round 1 and Round 2 | no |
| Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf | CakeMaxiWorkerConfig | unmatched — not counted | — | Listed in scope table for Round 1 | no |
| Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf | PancakeswapV2RestrictedCakeMaxiStrategyAddBaseTokenOnly | unmatched — not counted | — | Listed in scope tables for Round 1 and Round 2 | no |
| Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf | PancakeswapV2RestrictedCakeMaxiStrategyAddBaseWithFarm | unmatched — not counted | — | Listed in scope tables for Round 1 and Round 2 | no |
| Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf | PancakeswapV2RestrictedCakeMaxiStrategyLiquidate | unmatched — not counted | — | Listed in scope tables for Round 1 and Round 2 | no |
| Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf | PancakeswapV2RestrictedCakeMaxiStrategyWithdrawMinimizeTrading | unmatched — not counted | — | Listed in scope tables for Round 1 and Round 2 | no |
| Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf | SingleAssetWorkerConfig | unmatched — not counted | — | Listed in scope table for Round 2 | no |
| PeckShield-Audit-Report-Alpaca-CakeMaxi-v1.0.pdf | CakeMaxiWorker | unmatched — not counted | — | Listed as target in findings (PVE-001) and mentioned in scope description. | no |
| PeckShield-Audit-Report-Alpaca-CakeMaxi-v1.0.pdf | CakeMaxiWorkerConfig | unmatched — not counted | — | Listed as target in findings (PVE-002) and mentioned in scope description. | no |
| Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf | CakeMaxiWorker | unmatched — not counted | — | listed in scope and analyzed in report | no |
| Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf | SingleAssetWorkerConfig | unmatched — not counted | — | listed in scope and analyzed in report | no |
| Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf | PancakeswapV2RestrictedSingleAssetStrategyAddBaseTokenOnly | unmatched — not counted | — | all strategies under folder listed in scope | no |
| Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf | PancakeswapV2RestrictedSingleAssetStrategyAddBaseWithFarm | unmatched — not counted | — | all strategies under folder listed in scope | no |
| Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf | PancakeswapV2RestrictedSingleAssetStrategyLiquidate | unmatched — not counted | — | all strategies under folder listed in scope | no |
| Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf | PancakeswapV2RestrictedSingleAssetStrategyWithdrawMinimizeTrading | unmatched — not counted | — | all strategies under folder listed in scope | no |
| PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf | DeltaNeutralVault | unmatched — not counted | — | mentioned as target in scope and findings | no |
| PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf | DeltaNeutralPancakeWorker02 | unmatched — not counted | — | listed as associated worker in Section 1.1 | no |
| PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf | DeltaNeutralMdexWorker02 | unmatched — not counted | — | listed as associated worker in Section 1.1 | no |
| PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf | DeltaNeutralVaultConfig | unmatched — not counted | — | mentioned in finding PVE-001 as target | no |
| PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf | DeltaNeutralVaultGateway | unmatched — not counted | — | mentioned in finding PVE-002 as target | no |
| alpaca_v1.0-signed.pdf | DeltaNeutralVault | unmatched — not counted | — | listed in scope and findings | no |
| alpaca_v1.0-signed.pdf | PriceHelper | unmatched — not counted | — | mentioned in finding 2.2.3 | no |
| alpaca_v1.0-signed.pdf | DeltaNeutralPancakeWorker02 | unmatched — not counted | — | mentioned in finding 2.3.2 | no |
| alpaca_v1.0-signed.pdf | DeltaNeutralMdexWorker02 | unmatched — not counted | — | mentioned in finding 2.3.2 | no |
| Alpaca_GrazingRange_SmartContractReview_fcd2f3c_Report.pdf | GrazingRange | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x6bf5b334409cc3fd336da9a2d3e3f9c870feb343` — deployed 2021-05-05 14:15:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_1.pdf | GrazingRange | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x6bf5b334409cc3fd336da9a2d3e3f9c870feb343` — deployed 2021-05-05 14:15:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf | MdexWorker02 | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf | MdexRestrictedStrategyAddBaseTokenOnly | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf | MdexRestrictedStrategyWithdrawMinimizeTrading | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf | MdexRestrictedStrategyAddTwosidesOptimal | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf | MdexRestrictedStrategyLiquidate | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf | MdexRestrictedStrategyPartialCloseLiquidate | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf | MdexRestrictedStrategyPartialCloseMinimizeTrading | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021009_Alpaca_OptimizedWorker_FinalReport_v1.0.pdf | PCSV2Worker02 | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021009_Alpaca_OptimizedWorker_FinalReport_v1.0.pdf | WaultSwapWorker02 | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021009_Alpaca_OptimizedWorker_FinalReport_v1.0.pdf | CakeMaxiWorker02 | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Security Audit Report - Alpaca Finance Oracle.pdf | OracleMedianizer | unmatched — not counted | — | listed in scope section with commit hash | no |
| Smart Contract Security Audit Report - Alpaca Finance Oracle.pdf | ChainLinkPriceOracle | unmatched — not counted | — | listed in scope section with commit hash | no |
| PeckShield-Audit-Report-Alpaca-PartialCloseStrategies-v1.0.pdf | PancakeswapV2RestrictedSingleAssetStrategyPartialCloseLiquidate | unmatched — not counted | — | Mentioned in findings as target contract | no |
| PeckShield-Audit-Report-Alpaca-PartialCloseStrategies-v1.0.pdf | PancakeswapV2RestrictedStrategyPartialCloseLiquidate | unmatched — not counted | — | Mentioned in findings as target contract | no |
| PeckShield-Audit-Report-Alpaca-PartialCloseStrategies-v1.0.pdf | WaultSwapRestrictedStrategyPartialCloseLiquidate | unmatched — not counted | — | Mentioned in findings as target contract | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | AlpacaMath | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | AlpacaToken | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | ConfigurableInterestVaultConfig | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | DebtToken | own proxy deployment | AdminUpgradeabilityProxy (proxy) (alternative) `0x6a3487ce84fd83c66b83e598b18412bd1d2a55f9` — deployed 2021-03-23 10:16:31+03 — liveness: live (current_address_book_code)<br>DebtToken (alternative) `0xd19d6253d979ccf663869fee30b8e0ac86029ebd` — deployed 2021-02-26 14:28:40+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x3b4fbb2b8536ab144048abafdd27eaf52f0fa4dc` — deployed 2021-05-26 04:58:02+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x426bdfe8cab2c4720b36abbdc3ff08144bc361f3` — deployed 2022-01-07 10:45:00+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x92110af24d280e412b3a89691f6b0b9e09258fe6` — deployed 2021-04-06 08:36:01+03 — liveness: live (current_address_book_code)<br>DebtToken (alternative) `0x5138133f0671071d8b8f1c4c180881bfcfe22cec` — deployed 2021-02-26 14:20:37+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x262de19b5fde97ed5bdba10d630e34fb9a1b59b2` — deployed 2021-05-27 13:41:54+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x02da7035bed00ae645516bdb0c282a7fd4aa7442` — deployed 2021-03-23 10:20:46+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0xb76ed435b93477511e4604c441550a23d5aeaf84` — deployed 2021-06-21 19:24:47+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (selected) `0x11362ea137a799298306123eea014b7809a9db40` — deployed 2021-04-25 09:44:37+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-04-25 was 6d from audit; next candidate 25d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CertiK Security Assessment for Alpaca Finance 1.pdf | FairLaunch | own contract | FairLaunch (selected) `0xa625ab01b08ce023b2a342dbb12a16f2c8489a8f` — deployed 2021-02-26 13:57:43+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CertiK Security Assessment for Alpaca Finance 1.pdf | FairLaunchV2 | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | IbTokenRouter | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | LinearRelease | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | PancakeswapWorker | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | PriceOracle | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | SafeToken | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | Shield | own contract | Shield (selected) `0x1963f84395c8cf464e5483de7f2f434c3f1b4656` — deployed 2021-03-29 12:09:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CertiK Security Assessment for Alpaca Finance 1.pdf | SimplePriceOracle | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | SimpleVaultConfig | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | StrategyAddBaseTokenOnly | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | StrategyAddTwoSidesOptimal | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | StrategyLiquidate | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | StrategyWithdrawMinimizeTrading | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | StronkAlpaca | own contract | StronkAlpaca (selected) `0x6f695bd5ffd25149176629f8491a5099426ce7a7` — deployed 2021-03-12 18:49:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CertiK Security Assessment for Alpaca Finance 1.pdf | StronkAlpacaRelayer | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | Timelock | own contract | Timelock (selected) `0x2d5408f2287bf9f9b05404794459a846651d0a59` — deployed 2021-02-26 13:52:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CertiK Security Assessment for Alpaca Finance 1.pdf | TripleSlopeModel | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | Vault | own proxy deployment | AdminUpgradeabilityProxy (proxy) (alternative) `0x3282d2a151ca00bfe7ed17aa16e42880248cd3cd` — deployed 2021-06-21 19:25:14+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (selected) `0xf1be8ecc990cbcb90e166b71e368299f0116d421` — deployed 2021-04-25 09:45:01+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-04-25 was 6d from audit; next candidate 51d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CertiK Security Assessment for Alpaca Finance 1.pdf | WNativeRelayer | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | WorkerConfig | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | Vault | own proxy deployment | AdminUpgradeabilityProxy (proxy) (alternative) `0x3282d2a151ca00bfe7ed17aa16e42880248cd3cd` — deployed 2021-06-21 19:25:14+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (selected) `0xf1be8ecc990cbcb90e166b71e368299f0116d421` — deployed 2021-04-25 09:45:01+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-04-25 was 36d from audit; next candidate 93d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | CollateralLocker | unmatched — not counted | — | Mentioned in finding PVE-003 as containing the issue | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | LiquidityLocker | unmatched — not counted | — | Mentioned in finding PVE-003 as containing the issue | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | LoanLib | unmatched — not counted | — | Mentioned in finding PVE-003 as containing the issue | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | StrategyAddBaseTokenOnly | unmatched — not counted | — | Listed as target in findings PVE-005, PVE-009 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | StrategyAddTwoSidesOptimal | unmatched — not counted | — | Mentioned in findings PVE-005, PVE-009 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | StrategyWithdrawMinimizeTrading | unmatched — not counted | — | Mentioned in finding PVE-009 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | StrategyAllBNBOnly | unmatched — not counted | — | Mentioned in finding PVE-009 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | StrategyLiquidate | unmatched — not counted | — | Mentioned in finding PVE-009 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | PancakeswapWorker | unmatched — not counted | — | Listed as target in findings PVE-005, PVE-006, PVE-010 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | ibTokenRouter | unmatched — not counted | — | Listed as target in findings PVE-006, PVE-007, PVE-008 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | FairLaunch | own contract | FairLaunch (selected) `0xa625ab01b08ce023b2a342dbb12a16f2c8489a8f` — deployed 2021-02-26 13:57:43+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | FairLaunchV2 | unmatched — not counted | — | Mentioned in findings PVE-012, PVE-013 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | AlpacaToken | unmatched — not counted | — | Listed as target in finding PVE-011 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | SimplePriceOracle | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | Timelock | own contract | Timelock (selected) `0x2d5408f2287bf9f9b05404794459a846651d0a59` — deployed 2021-02-26 13:52:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | ProxyAdmin | own contract | ProxyAdmin (selected) `0x5379f32c8d5f663eacb61eef63f722950294f452` — deployed 2021-02-26 14:00:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | BUSD Vault | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x7c9e73d4c71dae564d41f78d56439bb4ba87592f` — deployed 2021-02-26 14:28:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | BUSD Vault Impl | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | BUSD Vault Config | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | BUSD Vault Config Impl | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | BNB Vault | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0xd7d069493685a581d27824fc46eda46b7efc0063` — deployed 2021-02-26 14:20:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | BNB Vault Impl | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | BNB Vault Config | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | BNB Vault Config Impl | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | ALPACA | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | ALPACA-WBNB LP | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | WBNB | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | ibBNB | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0xd7d069493685a581d27824fc46eda46b7efc0063` — deployed 2021-02-26 14:20:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | debtibBNB | own contract | DebtToken (selected) `0x5138133f0671071d8b8f1c4c180881bfcfe22cec` — deployed 2021-02-26 14:20:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | ibBUSD | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x7c9e73d4c71dae564d41f78d56439bb4ba87592f` — deployed 2021-02-26 14:28:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | debtibBUSD | own contract | DebtToken (selected) `0xd19d6253d979ccf663869fee30b8e0ac86029ebd` — deployed 2021-02-26 14:28:40+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | SimplePriceOracle Impl | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | StrategyAddBaseOnly | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | StrategyAddBaseOnly Impl | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | StrategyLiquidate Impl | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | MiniFL | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | Rewarder1 | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | SpookyWorker03 | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | SpookySwapStrategyAddBaseTokenOnly | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | SpookySwapStrategyAddTwoSidesOptimal | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | SpookySwapStrategyLiquidate | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | SpookySwapStrategyPartialCloseLiquidate | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | SpookySwapStrategyPartialCloseMinimizeTrading | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | SpookySwapStrategyWithdrawMinimizeTrading | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | FlashMintModule | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | GetPositions | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | PositionHandler | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | PositionManager | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | AlpacaOraclePriceFeed | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | IbTokenPriceFeed | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | SimplePriceFeed | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | StrictAlpacaOraclePriceFeed | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | DexPriceOracle | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | AlpacaStablecoinProxyActions | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | AlpacaAuth | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | AlpacaNote | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | ProxyWallet | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | ProxyWalletCache | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | ProxyWalletFactory | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | ProxyWalletRegistry | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | IbTokenAdapter | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | AuthTokenAdapter | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | StablecoinAdapter | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | TokenAdapter | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | AccessControlConfig | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | CollateralPoolConfig | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | FixedSpreadLiquidationStrategy | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | AlpacaStablecoin | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | BookKeeper | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | LiquidationEngine | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | PriceOracle | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | ShowStopper | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | StabilityFeeCollector | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | StableSwapModule | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | SystemDebtEngine | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | BookKeeper | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | AlpacaStableCoin | unmatched — not counted | — | Target in findings PVE-002, PVE-009 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | TokenAdapter | unmatched — not counted | — | Target in findings PVE-003, PVE-005 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | FixedSpreadLiquidationStrategy | unmatched — not counted | — | Target in findings PVE-004, PVE-005 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | IbTokenAdapter | unmatched — not counted | — | Target in findings PVE-005, PVE-006, PVE-010, PVE-011 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | LiquidationEngine | unmatched — not counted | — | Target in findings PVE-005, PVE-011 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | ShowStopper | unmatched — not counted | — | Target in finding PVE-005 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | AuthTokenAdapter | unmatched — not counted | — | Target in finding PVE-008 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | AccessControlConfig | unmatched — not counted | — | Mentioned in findings PVE-001, PVE-007 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | SystemDebtEngine | unmatched — not counted | — | Target in finding PVE-011 | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AccessControlConfig | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AccessControlUpgradeable | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AlpacaAuth | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AlpacaAuthEvents | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AlpacaNote | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AlpacaOraclePriceFeed | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AlpacaStablecoin | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AlpacaStablecoinProxyActions | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AlpacaToken | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AuthTokenAdapter | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | BookKeeper | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | CollateralPoolConfig | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | Context | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ContextUpgradeable | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | DexPriceOracle | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ERC20 | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | FairLaunch | own contract | FairLaunch (selected) `0xa625ab01b08ce023b2a342dbb12a16f2c8489a8f` — deployed 2021-02-26 13:57:43+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | FixedSpreadLiquidationStrategy | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | FlashLoanReceiverBase | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | FlashMintModule | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | GetPositions | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | IbTokenAdapter | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | IbTokenPriceFeed | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | Initializable | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | LiquidationEngine | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | Ownable | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | OwnableUpgradeable | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | PausableUpgradeable | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | PositionHandler | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | PositionManager | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | PriceOracle | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ProxyWallet | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ProxyWalletCache | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ProxyWalletFactory | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ProxyWalletRegistry | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ReentrancyGuard | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ReentrancyGuardUpgradeable | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | Shield | own contract | Shield (selected) `0x1963f84395c8cf464e5483de7f2f434c3f1b4656` — deployed 2021-03-29 12:09:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ShowStopper | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | SimplePriceFeed | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | StabilityFeeCollector | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | StableSwapModule | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | StablecoinAdapter | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | StrictAlpacaOraclePriceFeed | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | SystemDebtEngine | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | TokenAdapter | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf | Alpies | unmatched — not counted | — | Target of finding PVE-002; main contract of the protocol | no |
| PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf | AscendingStepModel | unmatched — not counted | — | Target of finding PVE-001; mentioned in code listing | no |
| PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf | DescendingStepModel | unmatched — not counted | — | Mentioned as sharing the same issue as AscendingStepModel in PVE-001 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x4f4054b4d286213a39ca5b8ef89116ac62c1cf43` | EmissionForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x083c022046df51f458709e1a5660b87754e58de7` | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x60bc407144c82cb27bf0681b457f0e7a75514105` | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x63c60b840933e62e43d8efc1dfde31a32cdc4412` | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa33ff77f414408797a27a0057afb51d2df50ce58` | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd193b38c87c8faf7cb2f6c592d3ae885ae21c4bf` | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x50e5748a2e9c5e05ba8b95549bf7b11da91ddab7` | ProxyToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 139 |
| upstream | 1 |
| standard_library | 31 |
| needs_review | 163 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Address-book scope dispositions: 21 own (10 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 184 unmatched
- Matched-own operational status: 21 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=15, medium=1
- Match method counts: address=6, temporal_name=4, unique_name=9

Zero-match audit list:

- [5762] Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf
- [5763] PeckShield-Audit-Report-Alpaca-CakeMaxi-v1.0.pdf
- [5764] Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf
- [5765] PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf
- [5766] alpaca_v1.0-signed.pdf
- [5769] Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf
- [5770] Inspex_AUDIT2021009_Alpaca_OptimizedWorker_FinalReport_v1.0.pdf
- [5771] Smart Contract Security Audit Report - Alpaca Finance Oracle.pdf
- [5772] PeckShield-Audit-Report-Alpaca-PartialCloseStrategies-v1.0.pdf
- [5775] Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf
- [5776] Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf
- [5777] PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf
- [5779] PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
