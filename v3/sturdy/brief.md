# Agentic Audit Brief: Sturdy

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Sturdy (`sturdy`)
- Website: [https://sturdy.finance/](https://sturdy.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, fantom, linea, mode, optimism, sei
- Contract surface: 187 unique implementations (326 raw deployments)
- Coverage basis: 0/38 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $364,659.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Sturdy. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 46 contract row(s) across ethereum, linea, mode, optimism, sei. Structural roles: 26 unclassified, 12 core, 6 supporting, 2 infra. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 46
- Structural roles: unclassified (26), core (12), supporting (6), infra (2)
- Contract kinds: contract (35), abstract (8), unclassified (3)
- Detected standards: ownable (4), erc20permit (1)
- Frameworks: openzeppelin (19), chainlink (2), solmate (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 55 contracts are derived from known codebases. 55 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x28bba0...097966`, chain 1)
- UnnamedContract (`0x2ca52c...c3f166`, chain 1)
- UnnamedContract (`0x423559...f6f318`, chain 1)
- UnnamedContract (`0x5630d6...f469fb`, chain 1)
- UnnamedContract (`0x72d6b1...32958a`, chain 1)
- UnnamedContract (`0x73e4c1...e54523`, chain 1)
- UnnamedContract (`0x7578f3...990091`, chain 1)
- UnnamedContract (`0x9a8175...8af1c2`, chain 1)
- UnnamedContract (`0x9b0afd...290b99`, chain 1)
- UnnamedContract (`0x9c1737...dae537`, chain 1)
- UnnamedContract (`0x9c7e7d...b0804f`, chain 1)
- UnnamedContract (`0xa25f4c...2ef11f`, chain 1)
- UnnamedContract (`0xacdbcd...b26b76`, chain 1)
- UnnamedContract (`0xbd1290...2005f1`, chain 1)
- UnnamedContract (`0xbd564b...bce383`, chain 1)
- UnnamedContract (`0xbf91fb...a9877d`, chain 1)
- UnnamedContract (`0xc7a65e...ad97dd`, chain 1)
- UnnamedContract (`0xcfb23d...88945e`, chain 1)
- UnnamedContract (`0xd1eed9...e65006`, chain 1)
- UnnamedContract (`0xef9e51...ef7d53`, chain 1)
- AggregatorDataProvider (`0x69764e...68cc9e`, chain 1)
- AggregatorFactory (`0x7520aa...647c51`, chain 1)
- AprOracle (`0xf7be73...f41a4d`, chain 1)
- BalancerswapAdapter (`0xdad951...077cdb`, chain 1)
- CrvUSDYv3CRVCrvUSDOracle (`0x680f85...0d1a2d`, chain 1)
- CrvUSDYv3CRVCrvUSDOracle (`0x6f7c66...c76adc`, chain 1)
- CrvUSDYv3CRVCrvUSDOracle (`0xa460cc...06d213`, chain 1)
- CrvUSDYvMkUSDCrvUSDOracle (`0xe0dd70...49f5f0`, chain 1)
- CurveswapAdapter (`0x4827b1...2402a7`, chain 1)
- ERC4626Oracle (`0x3723d7...c3e57d`, chain 1)
- ERC4626Oracle (`0xa34fe4...6f17ad`, chain 1)
- IncentiveDistributor (`0x94c120...40d39d`, chain 1)
- RewardConfig (`0x169a80...8fc05a`, chain 1)
- SturdyPairDeployer (`0x797b17...2b2d2f`, chain 1)
- SturdyPairRegistry (`0xd57742...794a3b`, chain 1)
- SturdySiloAprOracle (`0x1b05ce...48fbad`, chain 1)
- SturdySiloStrategy (`0x066909...288124`, chain 1)
- SturdySiloStrategy (`0x076d2b...783cab`, chain 1)
- SturdySiloStrategy (`0x0dd49c...02fd8f`, chain 1)
- SturdySiloStrategy (`0x200723...b1a04b`, chain 1)
- SturdySiloStrategy (`0x26fe40...16ac88`, chain 1)
- SturdySiloStrategy (`0x4e72fc...c4d883`, chain 1)
- SturdySiloStrategy (`0x6311ff...8e5227`, chain 1)
- SturdySiloStrategy (`0x8dde9a...08c84d`, chain 1)
- SturdySiloStrategy (`0xd002dc...b81bd2`, chain 1)
- SturdyWhitelist (`0xf0382a...c120ec`, chain 1)
- Token (`0xaeb360...54309a`, chain 1)
- UniswapAdapter (`0xd23bfa...cf5818`, chain 1)
- VariableInterestRate (`0x1f081b...4cdf24`, chain 1)
- VariableInterestRate (`0x31993d...3459f3`, chain 1)
- VariableInterestRate (`0x7e4859...51fb0e`, chain 1)
- VariableInterestRate (`0x8ae2f8...dfaeb6`, chain 1)
- VariableInterestRate (`0xa5961b...580832`, chain 1)
- VariableInterestRate (`0xcc46dc...d1532e`, chain 1)
- VariableInterestRate (`0xf4386d...d81ac6`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 46; live-surface rows included: 46 (46 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 57/57 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/38 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 57 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 130 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 21
- Confirmed-live implementations: 57 of 187 unique; 130 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/110
- Verified + Unaudited implementations: 110
- Verified by bytecode match: 0
- Unverified implementations: 77
- Unique implementations: 187
- Raw deployments: 326
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (110)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AeraStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6fe97...675e2b` | ⚠️ Unaudited |
| AeraV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa206f0...103c65` | ⚠️ Unaudited |
| AeraVaultDebtManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x144566...2c5a68`; ethereum `0x5c2ea5...3d0a09`; ethereum `0xc3c8f4...ff78b7` | ⚠️ Unaudited |
| AeraVaultModulesFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25f64d...499453` | ⚠️ Unaudited |
| AGETHYearnVaultStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdab149...3e0110` | ⚠️ Unaudited |
| AggregatorAccountant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 3 deployments: ethereum `0xb825a2...bf5108`; mode `0xd57742...794a3b`; linea `0x4534f5...ea1303` | ⚠️ Unaudited |
| AggregatorDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x1398f9...43e88e`; ethereum `0x83d14a...2d9e6b`; ethereum `0xb06559...ad4a80`; optimism `0x9dc7b2...2e1ac4`; optimism `0xda11c8...2476b1`; mode `0xf0382a...c120ec`; mode `0xfb6113...6233e7`; linea `0xd67da8...722b52` | ⚠️ Unaudited |
| AggregatorDataProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393213 | `0x69764e...68cc9e` | ⚠️ Unaudited |
| AggregatorFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393217 | `0x7520aa...647c51` | ⚠️ Unaudited |
| AggregatorV3WETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x911a87...8bfc81` | ⚠️ Unaudited |
| API3BasedETHEZETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x6f7c66...c76adc` | ⚠️ Unaudited |
| AprOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393251 | `0xf7be73...f41a4d` | ⚠️ Unaudited |
| AprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0xba4c10...08170f`; linea `0xd7d7d7...0851c3` | ⚠️ Unaudited |
| BalancerswapAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393245 | `0xdad951...077cdb` | ⚠️ Unaudited |
| CrvUSDYv3CRVCrvUSDLeverage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x887c89...395ab5` | ⚠️ Unaudited |
| CrvUSDYv3CRVCrvUSDOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x03aef5...b390eb`; ethereum `0x1121dd...a9668c`; ethereum `0xadbbc6...359824`; ethereum `0xaebee3...6f623d`; ethereum `0xb7a81e...68044b`; ethereum `0xb912be...d0c5c0`; ethereum `0xdb6ce3...758492` | ⚠️ Unaudited |
| CrvUSDYv3CRVCrvUSDOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393212 | `0x680f85...0d1a2d` | ⚠️ Unaudited |
| CrvUSDYv3CRVCrvUSDOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393214 | `0x6f7c66...c76adc` | ⚠️ Unaudited |
| CrvUSDYv3CRVCrvUSDOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393230 | `0xa460cc...06d213` | ⚠️ Unaudited |
| CrvUSDYvMkUSDCrvUSDOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3bd929...fe1e1d`; ethereum `0x71a047...5bbddb`; ethereum `0xaa7fca...07ecc4` | ⚠️ Unaudited |
| CrvUSDYvMkUSDCrvUSDOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393247 | `0xe0dd70...49f5f0` | ⚠️ Unaudited |
| CrvYearnVaultLeverage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x616dd2...117b75`; ethereum `0x7b3a75...ca2d0c`; ethereum `0xe7c6be...dfa9f4` | ⚠️ Unaudited |
| CrvYearnVaultLeverage2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe47fe2...f53f10` | ⚠️ Unaudited |
| CurveswapAdapter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393253 | 2 deployments: ethereum `0x4827b1...2402a7`; ethereum `0xef9e51...ef7d53` | ⚠️ Unaudited |
| CurveswapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe66a25...c6c36e` | ⚠️ Unaudited |
| DebtManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x09034a...f249a9`; ethereum `0x125144...ffe2de`; ethereum `0x4c789e...8c74c8`; ethereum `0x6481b1...9a665c`; ethereum `0xa325cb...ef6f1e`; ethereum `0xa496c6...3c5139`; mode `0x31993d...3459f3`; mode `0x96a1a3...8dcca9` | ⚠️ Unaudited |
| DebtManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393207 | `0x3f1e01...066063` | ⚠️ Unaudited |
| DebtManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393210 | `0x5528c5...423075` | ⚠️ Unaudited |
| DebtManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393239 | `0xcc06b0...a8f521` | ⚠️ Unaudited |
| DebtManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393249 | `0xf2d6c5...4bdade` | ⚠️ Unaudited |
| DefaultDebtManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa23355...a71cab` | ⚠️ Unaudited |
| EmissionSchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ee221...b352dc` | ⚠️ Unaudited |
| ERC4626Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393202 | `0x1f4b81...7c9ead` | ⚠️ Unaudited |
| ERC4626Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393206 | `0x3723d7...c3e57d` | ⚠️ Unaudited |
| ERC4626Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393229 | `0xa34fe4...6f17ad` | ⚠️ Unaudited |
| ERC4626Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8384d...229166` | ⚠️ Unaudited |
| ERC4626VaultLeverage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0b0e94...5759b7`; ethereum `0xe96429...d3ed37` | ⚠️ Unaudited |
| ETHBasedOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd89054...c343f1` | ⚠️ Unaudited |
| ETHEETHPendlePTOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa621a3...351d0b` | ⚠️ Unaudited |
| ETHRedStoneOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x97131b...9ea389`; ethereum `0xdeda72...3b126a` | ⚠️ Unaudited |
| ETHRSETHPendlePTOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x49c27c...d1f8af`; ethereum `0xddb80a...322c37` | ⚠️ Unaudited |
| ETHRSWETHPendlePTOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x22436a...78978b`; ethereum `0x68b444...67e6b4`; ethereum `0x68f702...d91f94` | ⚠️ Unaudited |
| ETHSWETHOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393252 | `0xfef192...baa185` | ⚠️ Unaudited |
| EZETHYearnVaultStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d66cb...ebe920` | ⚠️ Unaudited |
| Gauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x018127...e419d5`; ethereum `0x034c2e...616f56`; ethereum `0x371cd4...604e2d`; ethereum `0x5aa6ac...ca7444`; ethereum `0x5ad646...910fce`; ethereum `0x61892f...7d03db`; ethereum `0xbd8714...6c84c3`; ethereum `0xbf7bab...024bc6`; ethereum `0xdba0d8...e63275`; ethereum `0xfbbd65...b1a0ab` | ⚠️ Unaudited |
| GhoYvGhoCrvUSDOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50710f...626092` | ⚠️ Unaudited |
| IncentiveDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-393222 | `0x94c120...40d39d` | ⚠️ Unaudited |
| IncentiveVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7a8446...c88561`; ethereum `0xed2e83...83b357` | ⚠️ Unaudited |
| MockSwapBridgeAndCall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99093f...d7f986` | ⚠️ Unaudited |
| NileswapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x09cf3b...ddf855` | ⚠️ Unaudited |
| PendlePTLeverage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f63e9...5f1dbd` | ⚠️ Unaudited |
| PxETHYvStETHPxETHOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393198 | `0x0d3fc4...b8178b` | ⚠️ Unaudited |
| PxETHYvStETHPxETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1be3c3...72f660` | ⚠️ Unaudited |
| PythBasedAssetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 4 deployments: mode `0x0ebf14...0bb532`; mode `0x3b1e4e...e0f2e7`; mode `0x46dd99...ae3bfa`; mode `0xd7d7d7...0851c3` | ⚠️ Unaudited |
| RedstoneBasedAssetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 5 deployments: mode `0x0c2f50...703faa`; mode `0x1ea0f1...6bc792`; mode `0x83c021...eb4b6c`; mode `0xde9e69...a92aed`; mode `0xeff461...a73d16` | ⚠️ Unaudited |
| RewardConfig | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393199 | `0x169a80...8fc05a` | ⚠️ Unaudited |
| RewardConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 3 deployments: mode `0xb3d159...b92839`; mode `0xd2bc9a...897787`; linea `0x3b1e4e...e0f2e7` | ⚠️ Unaudited |
| SiloGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1c0551...2116bd`; ethereum `0x31e9f9...bddcb8`; ethereum `0x53aef4...7d06a2`; mode `0x2040a9...fd15a0`; mode `0x644b50...f1eb3b` | ⚠️ Unaudited |
| SiloGateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393209 | `0x4d07a5...f4bed3` | ⚠️ Unaudited |
| SiloGateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393223 | `0x987a70...6b8ae5` | ⚠️ Unaudited |
| SiloGateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393238 | `0xc7e667...354c1a` | ⚠️ Unaudited |
| SiloGateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393246 | `0xde9e69...a92aed` | ⚠️ Unaudited |
| SiloHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x5fad91...848892`; linea `0x9dc7b2...2e1ac4` | ⚠️ Unaudited |
| StableYieldDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dc7b2...2e1ac4` | ⚠️ Unaudited |
| StakedTokenIncentivesController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb8c48...c25591` | ⚠️ Unaudited |
| STRDYLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa70d19...b9fafd`; ethereum `0xe01c0e...fb3d18` | ⚠️ Unaudited |
| STRDYVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1a3b22...dce04e`; ethereum `0x560e73...783bb1` | ⚠️ Unaudited |
| SturdyAllocator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17f960...922667` | ⚠️ Unaudited |
| SturdyLeverage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa20db1...aa5705` | ⚠️ Unaudited |
| SturdyLeverageWihtoutFlashloan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x6cb759...7ad6fd`; mode `0x9dc7b2...2e1ac4` | ⚠️ Unaudited |
| SturdyLeverageWihtoutFlashloan1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x3d34bc...cd1b87` | ⚠️ Unaudited |
| SturdyLeverageWihtoutFlashloanLinea | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5c0801...3d747c` | ⚠️ Unaudited |
| SturdyPairDeployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393219 | `0x797b17...2b2d2f` | ⚠️ Unaudited |
| SturdyPairDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: mode `0x61eea4...af1e25`; linea `0x298d67...c91f87` | ⚠️ Unaudited |
| SturdyPairRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393244 | `0xd57742...794a3b` | ⚠️ Unaudited |
| SturdyPairRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x660511...380e1f`; linea `0xae3585...e4ac8d` | ⚠️ Unaudited |
| SturdySiloAprOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393200 | `0x1b05ce...48fbad` | ⚠️ Unaudited |
| SturdySiloAprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: mode `0x83eb3c...8be768`; linea `0x39d9db...35bfef` | ⚠️ Unaudited |
| SturdySiloStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 24 deployments: ethereum `0x094fa1...4817e1`; ethereum `0x0b7d88...a10cec`; ethereum `0x0b8c80...f3c6f8`; ethereum `0x137ff1...de3202`; ethereum `0x646526...530090`; ethereum `0x6f03c6...77965c`; ethereum `0x88ebda...9907f2`; ethereum `0xafdf33...9b8b57`; ethereum `0xb3bf04...f063db`; ethereum `0xc2be0d...42e72c`; ethereum `0xcf815a...6c22cb`; ethereum `0xe53ffd...b703f4`; ethereum `0xf2705f...203f4d`; ethereum `0xfd3a26...915437`; mode `0x168f6c...4519d9`; mode `0x4e72fc...c4d883`; mode `0x56a1e8...db406d`; mode `0x5829d7...6ce690`; mode `0x63e3ca...7f9560`; mode `0x6cef96...674c5a`; mode `0x797b17...2b2d2f`; mode `0x9cf92c...5f414b`; mode `0xcdb88a...b9e1c6`; mode `0xf7be73...f41a4d` | ⚠️ Unaudited |
| SturdyWhitelist | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393248 | `0xf0382a...c120ec` | ⚠️ Unaudited |
| SturdyWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0xae3585...e4ac8d`; mode `0xd89054...c343f1`; linea `0xed7d1b...6f85fb` | ⚠️ Unaudited |
| SupswapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x4c2dfa...1137d8` | ⚠️ Unaudited |
| SwapBridgeAndCallFromMain | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x41d503...d05367`; ethereum `0xdbe036...c86aef` | ⚠️ Unaudited |
| TBTCEBTCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x74f275...418f3e`; ethereum `0x9ce963...ca2f63` | ⚠️ Unaudited |
| TBTCSwBTCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bd8bc...0925b7` | ⚠️ Unaudited |
| TBTCYvTBTCWBTCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b70f7...6e3785` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x8ee9e2...76e97d`; ethereum `0xbe7f33...71d86e`; ethereum `0xdf3914...4380b8`; ethereum `0xea34b9...1840db` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 0 | ethereum | unit-393233 | `0xaeb360...54309a` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | project_anchor | own_supporting | 9 | ethereum | unit-393254 (9 proxies) | 9 deployments: ethereum `0x066909...288124`; ethereum `0x076d2b...783cab`; ethereum `0x0dd49c...02fd8f`; ethereum `0x200723...b1a04b`; ethereum `0x26fe40...16ac88`; ethereum `0x4e72fc...c4d883`; ethereum `0x6311ff...8e5227`; ethereum `0x8dde9a...08c84d`; ethereum `0xd002dc...b81bd2` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 6 | ethereum | n/a | 6 deployments: ethereum `0x501bbb...229b11`; ethereum `0x613897...75b52c`; ethereum `0xc8d4a8...3f9695`; ethereum `0xeef271...432e3f`; ethereum `0xf94b34...72223b`; ethereum `0xfa6870...edee1d` | ⚠️ Unaudited |
| TokenizedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x6593bb...33a9a0`; ethereum `0x7077ef...72bbbb` | ⚠️ Unaudited |
| TokenizedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x5fad91...848892` | ⚠️ Unaudited |
| TokenizedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | linea | n/a | 2 deployments: linea `0x884b41...d31cec`; linea `0xda11c8...2476b1` | ⚠️ Unaudited |
| UniswapAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393243 | `0xd23bfa...cf5818` | ⚠️ Unaudited |
| USDCCrvUSD0USD0PPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca262a...42d13d` | ⚠️ Unaudited |
| USDCUSD0PPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d1039...94d4b3` | ⚠️ Unaudited |
| USDCUSDYOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeee4ec...f26c6c` | ⚠️ Unaudited |
| USDCYvUSDCRUSDYOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x788520...585ed7` | ⚠️ Unaudited |
| VariableInterestRate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393201 | `0x1f081b...4cdf24` | ⚠️ Unaudited |
| VariableInterestRate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393205 | `0x31993d...3459f3` | ⚠️ Unaudited |
| VariableInterestRate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393220 | `0x7e4859...51fb0e` | ⚠️ Unaudited |
| VariableInterestRate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393221 | `0x8ae2f8...dfaeb6` | ⚠️ Unaudited |
| VariableInterestRate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393231 | `0xa5961b...580832` | ⚠️ Unaudited |
| VariableInterestRate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393240 | `0xcc46dc...d1532e` | ⚠️ Unaudited |
| VariableInterestRate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393250 | `0xf4386d...d81ac6` | ⚠️ Unaudited |
| VariableInterestRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 29 deployments: ethereum `0x1acaa2...1bfc57`; ethereum `0x1d7c71...e121a6`; ethereum `0x2015d2...a967aa`; ethereum `0x27d653...92deac`; ethereum `0x49d4ab...254f7a`; ethereum `0x778fbe...5eec59`; ethereum `0x8ad2a4...d45043`; ethereum `0x8b6534...aaba99`; ethereum `0x94c4b6...7e6ff5`; ethereum `0x973d03...3bc798`; ethereum `0xa2c3ce...386521`; ethereum `0xce05d5...ed30ca`; ethereum `0xd32d74...70ec14`; ethereum `0xf265f9...0c79ba`; ethereum `0xfe9f71...89d32c`; mode `0x03aef5...b390eb`; mode `0x163438...409441`; mode `0x1c278c...69b379`; mode `0x39d9db...35bfef`; mode `0x5adac4...142cfb`; mode `0x69ad35...8cffa2`; mode `0x884b41...d31cec`; mode `0x90832d...08a0c2`; mode `0xae6104...b88daf`; mode `0xb06559...ad4a80`; mode `0xcde573...3a887c`; mode `0xe88c03...1b0b42`; mode `0xfd364c...f49372`; linea `0x20d0cd...b97d59` | ⚠️ Unaudited |
| VariableYieldDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b1e4e...e0f2e7` | ⚠️ Unaudited |
| veSTRDYGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00341a...b73b78` | ⚠️ Unaudited |
| WEETHSYearnVaultStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb43f50...b8e07c` | ⚠️ Unaudited |
| YieldDistributorAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xba4c10...08170f`; ethereum `0xda11c8...2476b1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (77)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03cdff...74510b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0acd9d...9a77ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc7ec...e495e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2140fa...9091a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21d1b4...48f696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22333e...32f889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x248c25...cd7a01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393203 | `0x28bba0...097966` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393204 | `0x2ca52c...c3f166` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x397573...3347df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393208 | `0x423559...f6f318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4281ad...6003e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393211 | `0x5630d6...f469fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x599343...24e12b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69917c...5d9a00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ab2d0...b8890d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d3e10...d76a61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393215 | `0x72d6b1...32958a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393216 | `0x73e4c1...e54523` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393218 | `0x7578f3...990091` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x777be5...95d558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a9330...450841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85db1a...71c708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9394be...fe36f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393224 | `0x9a8175...8af1c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393225 | `0x9b0afd...290b99` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393226 | `0x9c1737...dae537` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393227 | `0x9c7e7d...b0804f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393228 | `0xa25f4c...2ef11f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393232 | `0xacdbcd...b26b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5317a...1257b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393234 | `0xbd1290...2005f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393235 | `0xbd564b...bce383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf4c56...637e23` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393236 | `0xbf91fb...a9877d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1cf3c...e37683` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6ad7b...3202f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6d69c...6b5561` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393237 | `0xc7a65e...ad97dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7f362...f33b71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393241 | `0xcfb23d...88945e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393242 | `0xd1eed9...e65006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7754f...088d2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda4117...a10547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcc12c...c43bb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf04d0...ef1a34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9642b...62f159` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9a802...0543a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef4b18...89a8f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb1846...3e79f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc8406...00c4aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x09cf3b...ddf855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x39d9db...35bfef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3b1e4e...e0f2e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4534f5...ea1303` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5c0801...3d747c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x61eea4...af1e25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x884b41...d31cec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x942c5b...1f7ecf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xae3585...e4ac8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd67da8...722b52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd89054...c343f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xeb8c48...c25591` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x49b50f...d94903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x09cf3b...ddf855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x0dbcf6...5218e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x1420e3...5d1434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x3044d8...61e150` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x3b5da2...05c7ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x58f412...616df5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x5ad20c...f97dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x5c0801...3d747c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x95ea14...1a89fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xaa95e1...6cbc56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1b05ce...48fbad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1e946c...9b65e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1f9f25...502466` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/sturdy](https://skynet.certik.com/projects/sturdy) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Sturdy - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Sturdy%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [www.chainsecurity.com/security-audit/sturdy-aggregator-smart-contracts](https://www.chainsecurity.com/security-audit/sturdy-aggregator-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [ChainSecurity_Sturdy_SturdyAggregator_Audit.pdf](https://reports.chainsecurity.com/Sturdy/ChainSecurity_Sturdy_SturdyAggregator_Audit.pdf) | ChainSecurity | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [code4rena.com/reports/2022-05-sturdy](https://code4rena.com/reports/2022-05-sturdy) | Code4rena | Contest | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [sturdy-aura-integration-and-leverage.pdf](https://certificate.quantstamp.com/full/sturdy-aura-integration-and-leverage.pdf) | Quantstamp | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [cantina.xyz/portfolio/34989eb5-b357-4ee0-9546-ace0256b2f32](https://cantina.xyz/portfolio/34989eb5-b357-4ee0-9546-ace0256b2f32) | Spearbit | Audit | 2023-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13925] skynet.certik.com/projects/sturdy — no match: The provided text is a project overview page from CertiK Skynet, not an audit report. It mentions a security audit completed by CertiK but does not include the actual audit report content, scope, or contract names.
- [13926] Sturdy - Zellic Audit Report.pdf — no match: Scope section explicitly lists DebtManager and SiloGateway as the two programs in scope. Audit date is September 15, 2023 from the cover page.
- [13927] www.chainsecurity.com/security-audit/sturdy-aggregator-smart-contracts — no match: No scope section or contract names found in the provided text.
- [13928] ChainSecurity_Sturdy_SturdyAggregator_Audit.pdf — no match: Scope explicitly lists SiloGateway.sol and DebtManager.sol as the only contracts in scope. Excluded contracts are VaultV3, ISilo implementations, and ZK verifier.
- [13930] code4rena.com/reports/2022-05-sturdy — no match: Scope section explicitly lists 5 smart contracts. Audit date found on cover page.
- [13931] sturdy-aura-integration-and-leverage.pdf — no match: Extracted 5 contracts from the scope section listing file paths. Audit date from cover page: February 15th 2023.
- [13932] cantina.xyz/portfolio/34989eb5-b357-4ee0-9546-ace0256b2f32 — no match: No scope section or contract names found in the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Sturdy - Zellic Audit Report.pdf | DebtManager | ambiguous — not counted | DebtManager (alternative) `0xf2d6c5...4bdade` — deployed 2024-01-18 01:05:11+03 — liveness: live (code_present_context)<br>DebtManager (alternative) `0xcc06b0...a8f521` — deployed 2024-01-18 14:21:23+03 — liveness: live (code_present_context)<br>DebtManager (alternative) `0x5528c5...423075` — deployed 2024-01-18 01:19:23+03 — liveness: live (code_present_context)<br>DebtManager (alternative) `0x3f1e01...066063` — deployed 2024-01-12 21:14:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Sturdy - Zellic Audit Report.pdf | SiloGateway | ambiguous — not counted | SiloGateway (alternative) `0xc7e667...354c1a` — deployed 2024-01-18 01:07:35+03 — liveness: live (current_address_book_code)<br>SiloGateway (alternative) `0x4d07a5...f4bed3` — deployed 2024-01-18 14:23:59+03 — liveness: live (current_address_book_code)<br>SiloGateway (alternative) `0xde9e69...a92aed` — deployed 2024-01-12 21:20:35+03 — liveness: live (current_address_book_code)<br>SiloGateway (alternative) `0x987a70...6b8ae5` — deployed 2024-01-18 01:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_Sturdy_SturdyAggregator_Audit.pdf | SiloGateway | ambiguous — not counted | SiloGateway (alternative) `0xc7e667...354c1a` — deployed 2024-01-18 01:07:35+03 — liveness: live (current_address_book_code)<br>SiloGateway (alternative) `0x4d07a5...f4bed3` — deployed 2024-01-18 14:23:59+03 — liveness: live (current_address_book_code)<br>SiloGateway (alternative) `0xde9e69...a92aed` — deployed 2024-01-12 21:20:35+03 — liveness: live (current_address_book_code)<br>SiloGateway (alternative) `0x987a70...6b8ae5` — deployed 2024-01-18 01:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_Sturdy_SturdyAggregator_Audit.pdf | DebtManager | ambiguous — not counted | DebtManager (alternative) `0xf2d6c5...4bdade` — deployed 2024-01-18 01:05:11+03 — liveness: live (code_present_context)<br>DebtManager (alternative) `0xcc06b0...a8f521` — deployed 2024-01-18 14:21:23+03 — liveness: live (code_present_context)<br>DebtManager (alternative) `0x5528c5...423075` — deployed 2024-01-18 01:19:23+03 — liveness: live (code_present_context)<br>DebtManager (alternative) `0x3f1e01...066063` — deployed 2024-01-12 21:14:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2022-05-sturdy | CollateralAdapter | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2022-05-sturdy | ConvexCurveLPVault | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2022-05-sturdy | GeneralVault | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2022-05-sturdy | LidoVault | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2022-05-sturdy | YieldManager | unmatched — not counted | — | listed in scope | no |
| sturdy-aura-integration-and-leverage.pdf | BALWSTETHWETHOracle | unmatched — not counted | — | listed in scope section | no |
| sturdy-aura-integration-and-leverage.pdf | AuraBalancerLPVault | unmatched — not counted | — | listed in scope section | no |
| sturdy-aura-integration-and-leverage.pdf | AURAWSTETHWETHLevSwap | unmatched — not counted | — | listed in scope section | no |
| sturdy-aura-integration-and-leverage.pdf | LeverageSwapManager | unmatched — not counted | — | listed in scope section | no |
| sturdy-aura-integration-and-leverage.pdf | GeneralLevSwap | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x69764e...68cc9e` | AggregatorDataProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7520aa...647c51` | AggregatorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf7be73...f41a4d` | AprOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdad951...077cdb` | BalancerswapAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x680f85...0d1a2d` | CrvUSDYv3CRVCrvUSDOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6f7c66...c76adc` | CrvUSDYv3CRVCrvUSDOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa460cc...06d213` | CrvUSDYv3CRVCrvUSDOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe0dd70...49f5f0` | CrvUSDYvMkUSDCrvUSDOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4827b1...2402a7` | CurveswapAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3f1e01...066063` | DebtManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5528c5...423075` | DebtManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcc06b0...a8f521` | DebtManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf2d6c5...4bdade` | DebtManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f4b81...7c9ead` | ERC4626Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3723d7...c3e57d` | ERC4626Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa34fe4...6f17ad` | ERC4626Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfef192...baa185` | ETHSWETHOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x94c120...40d39d` | IncentiveDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0d3fc4...b8178b` | PxETHYvStETHPxETHOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x169a80...8fc05a` | RewardConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4d07a5...f4bed3` | SiloGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x987a70...6b8ae5` | SiloGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc7e667...354c1a` | SiloGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xde9e69...a92aed` | SiloGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x797b17...2b2d2f` | SturdyPairDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd57742...794a3b` | SturdyPairRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1b05ce...48fbad` | SturdySiloAprOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf0382a...c120ec` | SturdyWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaeb360...54309a` | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x066909...288124` | TokenizedStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd23bfa...cf5818` | UniswapAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f081b...4cdf24` | VariableInterestRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x31993d...3459f3` | VariableInterestRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7e4859...51fb0e` | VariableInterestRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8ae2f8...dfaeb6` | VariableInterestRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa5961b...580832` | VariableInterestRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcc46dc...d1532e` | VariableInterestRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf4386d...d81ac6` | VariableInterestRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 107 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 77 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 4 ambiguous, 10 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=3
- Match method counts: n/a

Zero-match audit list:

- [13925] skynet.certik.com/projects/sturdy
- [13926] Sturdy - Zellic Audit Report.pdf
- [13927] www.chainsecurity.com/security-audit/sturdy-aggregator-smart-contracts
- [13928] ChainSecurity_Sturdy_SturdyAggregator_Audit.pdf
- [13930] code4rena.com/reports/2022-05-sturdy
- [13931] sturdy-aura-integration-and-leverage.pdf
- [13932] cantina.xyz/portfolio/34989eb5-b357-4ee0-9546-ace0256b2f32

Fork inheritance lineage and inherited audits are included when available.
