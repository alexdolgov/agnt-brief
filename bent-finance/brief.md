# Agentic Audit Brief: bent-finance

## Project Overview

- Project: bent-finance (`bent-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:06.073Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 54 unique implementations (54 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 19 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (owned). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 54; live-surface contracts included: 54 (54 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/52 (0.0%)
- Deployed-live implementations: 54 of 54 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/54
- Verified + Unaudited implementations: 54
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 54
- Raw deployments: 54
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

### ⚠️ Verified + Unaudited (54)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AggMonetaryPolicy-monetarypolicybasedonaggregatedpricesforcrvUSD | unknown | ethereum | n/a | [`0x0901b541beff2cd44859701619e245e82f48e62b`](./contracts/ethereum-1/0x0901b541beff2cd44859701619e245e82f48e62b/) | ⚠️ Unaudited |
| AggregatorStablePrice-aggregatorofstablecoinpricesforcrvUSD | unknown | ethereum | n/a | [`0x18672b1b0c623a30089a280ed9256379fb0e4e62`](./contracts/ethereum-1/0x18672b1b0c623a30089a280ed9256379fb0e4e62/) | ⚠️ Unaudited |
| BentBasePool | unknown | ethereum | n/a | [`0x1b3e21cd1da43b9840f31b82d76b597c131e3e4b`](./contracts/ethereum-1/0x1b3e21cd1da43b9840f31b82d76b597c131e3e4b/) | ⚠️ Unaudited |
| BentBasePoolUpgradeable | unknown | ethereum | n/a | [`0x16b385cc9959bbe83905ea5e71820b406804d037`](./contracts/ethereum-1/0x16b385cc9959bbe83905ea5e71820b406804d037/) | ⚠️ Unaudited |
| BentCVX | unknown | ethereum | n/a | [`0x9e0441e084f5db0606565737158aa6ab6b970fe0`](./contracts/ethereum-1/0x9e0441e084f5db0606565737158aa6ab6b970fe0/) | ⚠️ Unaudited |
| BentCVXRewarder | unknown | ethereum | n/a | [`0x4fd7e62edcf34e4f31e99ca0f6af84130947d3d7`](./contracts/ethereum-1/0x4fd7e62edcf34e4f31e99ca0f6af84130947d3d7/) | ⚠️ Unaudited |
| BentCVXRewarderMasterchef | unknown | ethereum | n/a | [`0xa3bd4cc3f130621172521ea85e485a7201b53bc6`](./contracts/ethereum-1/0xa3bd4cc3f130621172521ea85e485a7201b53bc6/) | ⚠️ Unaudited |
| BentCVXStaking | unknown | ethereum | n/a | [`0x350f4c65066fde829cdde30ed12408fed156822c`](./contracts/ethereum-1/0x350f4c65066fde829cdde30ed12408fed156822c/) | ⚠️ Unaudited |
| BentLocker | unknown | ethereum | n/a | [`0x04637d61f538911929ff96e755b589c014fd9ce2`](./contracts/ethereum-1/0x04637d61f538911929ff96e755b589c014fd9ce2/) | ⚠️ Unaudited |
| BentMasterChef | unknown | ethereum | n/a | [`0x0b80b9e59fb2b1262cdbe3afef5ce52cb0521653`](./contracts/ethereum-1/0x0b80b9e59fb2b1262cdbe3afef5ce52cb0521653/) | ⚠️ Unaudited |
| BentPoolManager | unknown | ethereum | n/a | [`0x445800d626127a9b481a2b5a22031a5ff3fc6ab8`](./contracts/ethereum-1/0x445800d626127a9b481a2b5a22031a5ff3fc6ab8/) | ⚠️ Unaudited |
| BentPoolManagerUpgradeable | unknown | ethereum | n/a | [`0x2476a1005b49be9f552c6d3733e0874ac26cada1`](./contracts/ethereum-1/0x2476a1005b49be9f552c6d3733e0874ac26cada1/) | ⚠️ Unaudited |
| BentSingleStaking | unknown | ethereum | n/a | [`0x07228c1820b4a3d75206a6e61f1add1bb157ce80`](./contracts/ethereum-1/0x07228c1820b4a3d75206a6e61f1add1bb157ce80/) | ⚠️ Unaudited |
| BentToken | unknown | ethereum | n/a | [`0x01597e397605bf280674bf292623460b4204c375`](./contracts/ethereum-1/0x01597e397605bf280674bf292623460b4204c375/) | ⚠️ Unaudited |
| BentVesting | unknown | ethereum | n/a | [`0x417d482b3ebe4677d06cee8018bba3043b20661f`](./contracts/ethereum-1/0x417d482b3ebe4677d06cee8018bba3043b20661f/) | ⚠️ Unaudited |
| CRVDisperse | unknown | ethereum | n/a | [`0x53e6c8a06f831c3281ccca5f0e349bbe0a65dcde`](./contracts/ethereum-1/0x53e6c8a06f831c3281ccca5f0e349bbe0a65dcde/) | ⚠️ Unaudited |
| crvUSD Controller | unknown | ethereum | n/a | [`0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4`](./contracts/ethereum-1/0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4/) | ⚠️ Unaudited |
| crvUSDControllerFactory | unknown | ethereum | n/a | [`0xc9332fdcb1c491dcc683bae86fe3cb70360738bc`](./contracts/ethereum-1/0xc9332fdcb1c491dcc683bae86fe3cb70360738bc/) | ⚠️ Unaudited |
| crvUSDdeleveragezap | unknown | ethereum | n/a | [`0x2bc706b83ab08d0437b8a397242c3284b5f81d74`](./contracts/ethereum-1/0x2bc706b83ab08d0437b8a397242c3284b5f81d74/) | ⚠️ Unaudited |
| crvUSDStablecoin | unknown | ethereum | n/a | [`0xf939e0a03fb07f59a73314e73794be0e57ac1b4e`](./contracts/ethereum-1/0xf939e0a03fb07f59a73314e73794be0e57ac1b4e/) | ⚠️ Unaudited |
| CryptoFromPool | unknown | ethereum | n/a | [`0x3b38ce23799dc56664ff6048892510abffdb7a25`](./contracts/ethereum-1/0x3b38ce23799dc56664ff6048892510abffdb7a25/) | ⚠️ Unaudited |
| CryptoFromPoolsRate | unknown | ethereum | n/a | [`0x38e7627eb98a40e7528bcce709a80083093ba2f8`](./contracts/ethereum-1/0x38e7627eb98a40e7528bcce709a80083093ba2f8/) | ⚠️ Unaudited |
| CryptoFromPoolsRateWAgg | unknown | ethereum | n/a | [`0x0a9ae947495034c0bbbab845fd75b5bbafc91aab`](./contracts/ethereum-1/0x0a9ae947495034c0bbbab845fd75b5bbafc91aab/) | ⚠️ Unaudited |
| CryptoFromPoolVaultWAgg | unknown | ethereum | n/a | [`0x002688c4296a2c4d800f271fe6f01741111b09be`](./contracts/ethereum-1/0x002688c4296a2c4d800f271fe6f01741111b09be/) | ⚠️ Unaudited |
| CryptoFromPoolWAgg | unknown | ethereum | n/a | [`0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca`](./contracts/ethereum-1/0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca/) | ⚠️ Unaudited |
| CryptoWithStablePriceETH | unknown | ethereum | n/a | [`0x966cbdecefb60a289b0460f7638f4a75f432ca06`](./contracts/ethereum-1/0x966cbdecefb60a289b0460f7638f4a75f432ca06/) | ⚠️ Unaudited |
| CryptoWithStablePriceSfrxeth | unknown | ethereum | n/a | [`0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29`](./contracts/ethereum-1/0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29/) | ⚠️ Unaudited |
| CryptoWithStablePriceTBTC | unknown | ethereum | n/a | [`0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217`](./contracts/ethereum-1/0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217/) | ⚠️ Unaudited |
| CryptoWithStablePriceWBTC | unknown | ethereum | n/a | [`0x07374b547cae235227635c13266c69847a3e46fa`](./contracts/ethereum-1/0x07374b547cae235227635c13266c69847a3e46fa/) | ⚠️ Unaudited |
| CryptoWithStablePriceWsteth | unknown | ethereum | n/a | [`0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304`](./contracts/ethereum-1/0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304/) | ⚠️ Unaudited |
| HealthcalculatorzapforcrvUSDcontroller | unknown | ethereum | n/a | [`0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a`](./contracts/ethereum-1/0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a/) | ⚠️ Unaudited |
| LeveragezapforcrvUSDcontroller(sfrxETHmarket) | unknown | ethereum | n/a | [`0xb556fa4c4752321b3154f08dfbdfcf34847f2eac`](./contracts/ethereum-1/0xb556fa4c4752321b3154f08dfbdfcf34847f2eac/) | ⚠️ Unaudited |
| LiquidityGaugeV6 | unknown | ethereum | n/a | [`0x00b71a425db7c8b65a46cf39c23a188e10a2de99`](./contracts/ethereum-1/0x00b71a425db7c8b65a46cf39c23a188e10a2de99/) | ⚠️ Unaudited |
| LLAMMA - crvUSD AMM | unknown | ethereum | n/a | [`0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a`](./contracts/ethereum-1/0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a/) | ⚠️ Unaudited |
| MultiClaim | unknown | ethereum | n/a | [`0x32facb5a46e02decaf5f939ab12c123eee203a5f`](./contracts/ethereum-1/0x32facb5a46e02decaf5f939ab12c123eee203a5f/) | ⚠️ Unaudited |
| MultiRewards | unknown | ethereum | n/a | [`0x3547dfca04358540891149559e691b146c6b0043`](./contracts/ethereum-1/0x3547dfca04358540891149559e691b146c6b0043/) | ⚠️ Unaudited |
| OneWayLendingFactory | unknown | ethereum | n/a | [`0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c`](./contracts/ethereum-1/0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c/) | ⚠️ Unaudited |
| PegKeeper | unknown | ethereum | n/a | [`0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae`](./contracts/ethereum-1/0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae/) | ⚠️ Unaudited |
| PegPrice | unknown | ethereum | n/a | [`0x226845c2ba216b8bb1aaadfd4e14de69426c5445`](./contracts/ethereum-1/0x226845c2ba216b8bb1aaadfd4e14de69426c5445/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x9291367d247f8ca4075af991504c208e62ca6af1`](./contracts/ethereum-1/0x9291367d247f8ca4075af991504c208e62ca6af1/) | ⚠️ Unaudited |
| RewardClaimer | unknown | ethereum | n/a | [`0x8fcfd0eec0cca95b5bcebd33a076b29fd8998884`](./contracts/ethereum-1/0x8fcfd0eec0cca95b5bcebd33a076b29fd8998884/) | ⚠️ Unaudited |
| Secondarymonetarypolicy | unknown | ethereum | n/a | [`0x188041ad83145351ef45f4bb91d08886648aeaf8`](./contracts/ethereum-1/0x188041ad83145351ef45f4bb91d08886648aeaf8/) | ⚠️ Unaudited |
| SecondarymonetarypolicyforWBTC | unknown | ethereum | n/a | [`0x4e1f162fd143e4a829341efd6dd451b018b10f9c`](./contracts/ethereum-1/0x4e1f162fd143e4a829341efd6dd451b018b10f9c/) | ⚠️ Unaudited |
| SemiLog monetary policy | unknown | ethereum | n/a | [`0x2a28789645776eaa95f6d491ff375781ea5b40dd`](./contracts/ethereum-1/0x2a28789645776eaa95f6d491ff375781ea5b40dd/) | ⚠️ Unaudited |
| sfrxETH2crvUSDleveragezap | unknown | ethereum | n/a | [`0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc`](./contracts/ethereum-1/0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | [`0x0a758a25997167762e187f960dd0539a4ae3e9a6`](./contracts/ethereum-1/0x0a758a25997167762e187f960dd0539a4ae3e9a6/) | ⚠️ Unaudited |
| SusdeMonetaryPolicy | unknown | ethereum | n/a | [`0xf574cbebbd549273af82b42cd0230de9ea6efef7`](./contracts/ethereum-1/0xf574cbebbd549273af82b42cd0230de9ea6efef7/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0xea4d847ea399c79ee0cbc996a972432726b9f981`](./contracts/ethereum-1/0xea4d847ea399c79ee0cbc996a972432726b9f981/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x5fa4370164a2fabeef159b893299d59ff5dc1e6d`](./contracts/ethereum-1/0x5fa4370164a2fabeef159b893299d59ff5dc1e6d/) | ⚠️ Unaudited |
| USD0LpOracle | unknown | ethereum | n/a | [`0x2aeb5c8776567c4eeebda1450e343b1bef49ae32`](./contracts/ethereum-1/0x2aeb5c8776567c4eeebda1450e343b1bef49ae32/) | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | [`0x596f8e49ace6fc8e09b561972360dc216f1c2a1f`](./contracts/ethereum-1/0x596f8e49ace6fc8e09b561972360dc216f1c2a1f/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x00702bbdead24c40647f235f15971db0867f6bdb`](./contracts/ethereum-1/0x00702bbdead24c40647f235f15971db0867f6bdb/) | ⚠️ Unaudited |
| WBTC-crvUSDleveragezap | unknown | ethereum | n/a | [`0xa2518b71ee64e910741f5cf480b19e8e402de4d7`](./contracts/ethereum-1/0xa2518b71ee64e910741f5cf480b19e8e402de4d7/) | ⚠️ Unaudited |
| wstETH-crvUSDleveragezap | unknown | ethereum | n/a | [`0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd`](./contracts/ethereum-1/0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0901b541beff2cd44859701619e245e82f48e62b`](./contracts/ethereum-1/0x0901b541beff2cd44859701619e245e82f48e62b/) | AggMonetaryPolicy-monetarypolicybasedonaggregatedpricesforcrvUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18672b1b0c623a30089a280ed9256379fb0e4e62`](./contracts/ethereum-1/0x18672b1b0c623a30089a280ed9256379fb0e4e62/) | AggregatorStablePrice-aggregatorofstablecoinpricesforcrvUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b3e21cd1da43b9840f31b82d76b597c131e3e4b`](./contracts/ethereum-1/0x1b3e21cd1da43b9840f31b82d76b597c131e3e4b/) | BentBasePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16b385cc9959bbe83905ea5e71820b406804d037`](./contracts/ethereum-1/0x16b385cc9959bbe83905ea5e71820b406804d037/) | BentBasePoolUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e0441e084f5db0606565737158aa6ab6b970fe0`](./contracts/ethereum-1/0x9e0441e084f5db0606565737158aa6ab6b970fe0/) | BentCVX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fd7e62edcf34e4f31e99ca0f6af84130947d3d7`](./contracts/ethereum-1/0x4fd7e62edcf34e4f31e99ca0f6af84130947d3d7/) | BentCVXRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3bd4cc3f130621172521ea85e485a7201b53bc6`](./contracts/ethereum-1/0xa3bd4cc3f130621172521ea85e485a7201b53bc6/) | BentCVXRewarderMasterchef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x350f4c65066fde829cdde30ed12408fed156822c`](./contracts/ethereum-1/0x350f4c65066fde829cdde30ed12408fed156822c/) | BentCVXStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04637d61f538911929ff96e755b589c014fd9ce2`](./contracts/ethereum-1/0x04637d61f538911929ff96e755b589c014fd9ce2/) | BentLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b80b9e59fb2b1262cdbe3afef5ce52cb0521653`](./contracts/ethereum-1/0x0b80b9e59fb2b1262cdbe3afef5ce52cb0521653/) | BentMasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x445800d626127a9b481a2b5a22031a5ff3fc6ab8`](./contracts/ethereum-1/0x445800d626127a9b481a2b5a22031a5ff3fc6ab8/) | BentPoolManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2476a1005b49be9f552c6d3733e0874ac26cada1`](./contracts/ethereum-1/0x2476a1005b49be9f552c6d3733e0874ac26cada1/) | BentPoolManagerUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07228c1820b4a3d75206a6e61f1add1bb157ce80`](./contracts/ethereum-1/0x07228c1820b4a3d75206a6e61f1add1bb157ce80/) | BentSingleStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01597e397605bf280674bf292623460b4204c375`](./contracts/ethereum-1/0x01597e397605bf280674bf292623460b4204c375/) | BentToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x417d482b3ebe4677d06cee8018bba3043b20661f`](./contracts/ethereum-1/0x417d482b3ebe4677d06cee8018bba3043b20661f/) | BentVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53e6c8a06f831c3281ccca5f0e349bbe0a65dcde`](./contracts/ethereum-1/0x53e6c8a06f831c3281ccca5f0e349bbe0a65dcde/) | CRVDisperse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4`](./contracts/ethereum-1/0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4/) | crvUSD Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc9332fdcb1c491dcc683bae86fe3cb70360738bc`](./contracts/ethereum-1/0xc9332fdcb1c491dcc683bae86fe3cb70360738bc/) | crvUSDControllerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2bc706b83ab08d0437b8a397242c3284b5f81d74`](./contracts/ethereum-1/0x2bc706b83ab08d0437b8a397242c3284b5f81d74/) | crvUSDdeleveragezap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf939e0a03fb07f59a73314e73794be0e57ac1b4e`](./contracts/ethereum-1/0xf939e0a03fb07f59a73314e73794be0e57ac1b4e/) | crvUSDStablecoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b38ce23799dc56664ff6048892510abffdb7a25`](./contracts/ethereum-1/0x3b38ce23799dc56664ff6048892510abffdb7a25/) | CryptoFromPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38e7627eb98a40e7528bcce709a80083093ba2f8`](./contracts/ethereum-1/0x38e7627eb98a40e7528bcce709a80083093ba2f8/) | CryptoFromPoolsRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a9ae947495034c0bbbab845fd75b5bbafc91aab`](./contracts/ethereum-1/0x0a9ae947495034c0bbbab845fd75b5bbafc91aab/) | CryptoFromPoolsRateWAgg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x002688c4296a2c4d800f271fe6f01741111b09be`](./contracts/ethereum-1/0x002688c4296a2c4d800f271fe6f01741111b09be/) | CryptoFromPoolVaultWAgg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca`](./contracts/ethereum-1/0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca/) | CryptoFromPoolWAgg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x966cbdecefb60a289b0460f7638f4a75f432ca06`](./contracts/ethereum-1/0x966cbdecefb60a289b0460f7638f4a75f432ca06/) | CryptoWithStablePriceETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29`](./contracts/ethereum-1/0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29/) | CryptoWithStablePriceSfrxeth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217`](./contracts/ethereum-1/0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217/) | CryptoWithStablePriceTBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07374b547cae235227635c13266c69847a3e46fa`](./contracts/ethereum-1/0x07374b547cae235227635c13266c69847a3e46fa/) | CryptoWithStablePriceWBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304`](./contracts/ethereum-1/0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304/) | CryptoWithStablePriceWsteth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a`](./contracts/ethereum-1/0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a/) | HealthcalculatorzapforcrvUSDcontroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb556fa4c4752321b3154f08dfbdfcf34847f2eac`](./contracts/ethereum-1/0xb556fa4c4752321b3154f08dfbdfcf34847f2eac/) | LeveragezapforcrvUSDcontroller(sfrxETHmarket) | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00b71a425db7c8b65a46cf39c23a188e10a2de99`](./contracts/ethereum-1/0x00b71a425db7c8b65a46cf39c23a188e10a2de99/) | LiquidityGaugeV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a`](./contracts/ethereum-1/0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a/) | LLAMMA - crvUSD AMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32facb5a46e02decaf5f939ab12c123eee203a5f`](./contracts/ethereum-1/0x32facb5a46e02decaf5f939ab12c123eee203a5f/) | MultiClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3547dfca04358540891149559e691b146c6b0043`](./contracts/ethereum-1/0x3547dfca04358540891149559e691b146c6b0043/) | MultiRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c`](./contracts/ethereum-1/0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c/) | OneWayLendingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae`](./contracts/ethereum-1/0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae/) | PegKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x226845c2ba216b8bb1aaadfd4e14de69426c5445`](./contracts/ethereum-1/0x226845c2ba216b8bb1aaadfd4e14de69426c5445/) | PegPrice | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fcfd0eec0cca95b5bcebd33a076b29fd8998884`](./contracts/ethereum-1/0x8fcfd0eec0cca95b5bcebd33a076b29fd8998884/) | RewardClaimer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x188041ad83145351ef45f4bb91d08886648aeaf8`](./contracts/ethereum-1/0x188041ad83145351ef45f4bb91d08886648aeaf8/) | Secondarymonetarypolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e1f162fd143e4a829341efd6dd451b018b10f9c`](./contracts/ethereum-1/0x4e1f162fd143e4a829341efd6dd451b018b10f9c/) | SecondarymonetarypolicyforWBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a28789645776eaa95f6d491ff375781ea5b40dd`](./contracts/ethereum-1/0x2a28789645776eaa95f6d491ff375781ea5b40dd/) | SemiLog monetary policy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc`](./contracts/ethereum-1/0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc/) | sfrxETH2crvUSDleveragezap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a758a25997167762e187f960dd0539a4ae3e9a6`](./contracts/ethereum-1/0x0a758a25997167762e187f960dd0539a4ae3e9a6/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf574cbebbd549273af82b42cd0230de9ea6efef7`](./contracts/ethereum-1/0xf574cbebbd549273af82b42cd0230de9ea6efef7/) | SusdeMonetaryPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea4d847ea399c79ee0cbc996a972432726b9f981`](./contracts/ethereum-1/0xea4d847ea399c79ee0cbc996a972432726b9f981/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2aeb5c8776567c4eeebda1450e343b1bef49ae32`](./contracts/ethereum-1/0x2aeb5c8776567c4eeebda1450e343b1bef49ae32/) | USD0LpOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x596f8e49ace6fc8e09b561972360dc216f1c2a1f`](./contracts/ethereum-1/0x596f8e49ace6fc8e09b561972360dc216f1c2a1f/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00702bbdead24c40647f235f15971db0867f6bdb`](./contracts/ethereum-1/0x00702bbdead24c40647f235f15971db0867f6bdb/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2518b71ee64e910741f5cf480b19e8e402de4d7`](./contracts/ethereum-1/0xa2518b71ee64e910741f5cf480b19e8e402de4d7/) | WBTC-crvUSDleveragezap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd`](./contracts/ethereum-1/0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd/) | wstETH-crvUSDleveragezap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 52 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
