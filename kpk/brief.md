# Agentic Audit Brief: KPK

## Project Overview

- Project: KPK (`kpk`)
- Website: [https://kpk.io/](https://kpk.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.320Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum
- Contract surface: 33 unique implementations (33 raw deployments)
- DeFi Llama TVL: $149,875,170.34
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Risk Curators. Structurally: 31 project-authored contract(s) across 1 chain(s); 4 ERC4626 vaults, 6 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (ownable2step, proxy). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 33; live-surface contracts included: 33 (33 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/24 (4.2%)
- Deployed-live implementations: 33 of 33 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/33
- Verified + Unaudited implementations: 32
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 33
- Raw deployments: 33
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 3 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 4.2% (Cantina, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cantina | Tier 1 | 1 | 3.0% | 2025-10 |
| Spearbit | Tier 1 | 1 | 3.0% | 2025-12 |
| Team Omega | Tier 2 | 1 | 3.0% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| KpkShares | unknown | ethereum | n/a | [`0x38ef95...88ab42`](./contracts/ethereum-1/0x38ef95d5f8b7a276a5c1a38fdc358d977c88ab42/) | ✅ Audited |

### ⚠️ Verified + Unaudited (32)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Aura | unknown | ethereum | n/a | [`0x45006c...01aa3e`](./contracts/ethereum-1/0x45006c280bf3dc44d7d370c9a801c95ec501aa3e/) | ⚠️ Unaudited |
| BeaconProxy | unknown | ethereum | n/a | [`0x6cbcc6...1b4ceb`](./contracts/ethereum-1/0x6cbcc646d7422b734c6fc0954a1c3ca87b1b4ceb/) | ⚠️ Unaudited |
| CapBalanceOracle | unknown | ethereum | n/a | [`0xb812cc...0006b0`](./contracts/ethereum-1/0xb812cc304cb417b635470681160e75cffb0006b0/) | ⚠️ Unaudited |
| cbETH_PriceOracle | unknown | ethereum | n/a | [`0x957d72...3c5bfd`](./contracts/ethereum-1/0x957d726b1848d074fc0208017023b64f393c5bfd/) | ⚠️ Unaudited |
| CrossRatePriceAdapter | unknown | ethereum | n/a | [`0x70dd21...c0cfae`](./contracts/ethereum-1/0x70dd216ccd75551a170e361bebd33db64fc0cfae/) | ⚠️ Unaudited |
| DefillamaCompressor | unknown | ethereum | n/a | [`0x81cb9e...be897a`](./contracts/ethereum-1/0x81cb9ea2d59414ab13ec0567efb09767ddbe897a/) | ⚠️ Unaudited |
| eETH_PriceOracle | unknown | ethereum | n/a | [`0x9c2ea2...6f9713`](./contracts/ethereum-1/0x9c2ea278a490284d775bdd7899972a35e86f9713/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x2f77a4...70617e`](./contracts/ethereum-1/0x2f77a41c17c7cab30cc320112b649ab8b070617e/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0xa57a64...6189a5`](./contracts/ethereum-1/0xa57a641417fe2703c5364c2f57f35297b16189a5/) | ⚠️ Unaudited |
| ERC4626WrapBalanceOracle | unknown | ethereum | n/a | [`0x89b015...5dc4f1`](./contracts/ethereum-1/0x89b0157921b4efb88dcf96f570d8c07d675dc4f1/) | ⚠️ Unaudited |
| EulerEarn | unknown | ethereum | n/a | [`0x2b47c1...7de245`](./contracts/ethereum-1/0x2b47c128b35dddcb66ce2fa5b33c95314a7de245/) | ⚠️ Unaudited |
| ezETH_PriceOracle | unknown | ethereum | n/a | [`0x305bdb...c8a1cf`](./contracts/ethereum-1/0x305bdb829066c9ce15d5a2af0c4267b326c8a1cf/) | ⚠️ Unaudited |
| GearboxMarketBalanceOracle | unknown | ethereum | n/a | [`0x02d6b6...762bba`](./contracts/ethereum-1/0x02d6b6613952db1ae1294c81f443f03195762bba/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x4f2083...f7fe64`](./contracts/ethereum-1/0x4f2083f5fbede34c2714affb3105539775f7fe64/) | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | ethereum | n/a | [`0x0000ae...089da8`](./contracts/ethereum-1/0x0000aeb716a0df7a9a1aad119b772644bc089da8/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | ethereum | n/a | [`0x38f6a1...e23848`](./contracts/ethereum-1/0x38f6a1b46144faee6a6d9f79d8de264c18e23848/) | ⚠️ Unaudited |
| KpkGovernor | unknown | ethereum | n/a | [`0x488da1...693211`](./contracts/ethereum-1/0x488da14cff5b42a31684d4c6999ea0b1c7693211/) | ⚠️ Unaudited |
| KpkToken | unknown | ethereum | n/a | [`0x5af203...82904c`](./contracts/ethereum-1/0x5af203018e9043f2aaa5622c3f5014b0aa82904c/) | ⚠️ Unaudited |
| MarketConfigurator | unknown | ethereum | n/a | [`0x1b265b...c7bdbe`](./contracts/ethereum-1/0x1b265b97eb169fb6668e3258007c3b0242c7bdbe/) | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | ethereum | n/a | [`0x0c6aec...398dc1`](./contracts/ethereum-1/0x0c6aec603d48ebf1cecc7b247a2c3da08b398dc1/) | ⚠️ Unaudited |
| PoolV3 | unknown | ethereum | n/a | [`0x9396dc...9571ef`](./contracts/ethereum-1/0x9396dcbf78fc526bb003665337c5e73b699571ef/) | ⚠️ Unaudited |
| rETH_PriceOracle | unknown | ethereum | n/a | [`0x7e6366...6f962e`](./contracts/ethereum-1/0x7e6366a015e7c72d238e0e289e1652eaa06f962e/) | ⚠️ Unaudited |
| Roles | unknown | ethereum | n/a | [`0x2ba2f8...6d9b17`](./contracts/ethereum-1/0x2ba2f894d0ac9435346a40521ae513d1be6d9b17/) | ⚠️ Unaudited |
| rsETH_PriceOracle | unknown | ethereum | n/a | [`0x0f580e...5d2fd8`](./contracts/ethereum-1/0x0f580e84d92e89150be94fcaa4d03c6b855d2fd8/) | ⚠️ Unaudited |
| StakeWiseV3OsTokenBalanceOracle | unknown | ethereum | n/a | [`0x8ecc77...69d50e`](./contracts/ethereum-1/0x8ecc77db1f9d2b1dfe3948b53d4d0e6c1569d50e/) | ⚠️ Unaudited |
| sUSDe_PriceOracle | unknown | ethereum | n/a | [`0xde04bb...607d63`](./contracts/ethereum-1/0xde04bb0a8fd927c137547401f30213fcc7607d63/) | ⚠️ Unaudited |
| sUSDS_PriceOracle | unknown | ethereum | n/a | [`0x76752e...49c140`](./contracts/ethereum-1/0x76752e33050f2011cacd3edbbb8125ee1e49c140/) | ⚠️ Unaudited |
| syrupUSDC_PriceOracle | unknown | ethereum | n/a | [`0xc73ed3...b8cbe7`](./contracts/ethereum-1/0xc73ed3f07e2d1d6c59294936c12048dae2b8cbe7/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0xee27fa...5b2b7a`](./contracts/ethereum-1/0xee27fad903feca9e78c5075803c8833e885b2b7a/) | ⚠️ Unaudited |
| VaultV2 | unknown | ethereum | n/a | [`0x1a1985...7806f4`](./contracts/ethereum-1/0x1a1985f50352b58090eb36425afdfacbac7806f4/) | ⚠️ Unaudited |
| weETH_PriceOracle | unknown | ethereum | n/a | [`0x5e7a61...5e5b59`](./contracts/ethereum-1/0x5e7a6154ace2ec453de9527d7f81b13e7b5e5b59/) | ⚠️ Unaudited |
| wstETH_PriceOracle | unknown | ethereum | n/a | [`0x35b2aa...9a4561`](./contracts/ethereum-1/0x35b2aae4de9e66cd6d86fc2ed360e9bcb79a4561/) | ⚠️ Unaudited |

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
| [cantina-kpk-oivs-oct-2025.pdf](https://raw.githubusercontent.com/karpatkey/onchain-investment-vehicles/main/audit-reports/cantina-kpk-oivs-oct-2025.pdf) | Cantina | Audit | 2025-10 | fresh | Direct | contract_name | 1 | high |
| [team-omega-kpk-oivs-oct-2025.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/karpatkey/onchain-investment-vehicles/main/audit-reports/team-omega-kpk-oivs-oct-2025.pdf) | Team Omega | Audit | 2025-10 | fresh | Direct | contract_name | 1 | high |
| [05_04_2024_Omniscia.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/karpatkey/kpk-token/main/audits/05_04_2024_Omniscia.pdf) | Omniscia | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [15_04_2024_G0-Group.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/karpatkey/kpk-token/main/audits/15_04_2024_G0-Group.pdf) | G0 Group | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [cantina-kpk-oivs-oct-2025.pdf](https://github.com/karpatkey/onchain-investment-vehicles/blob/main/audit-reports/cantina-kpk-oivs-oct-2025.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x45006c...01aa3e`](./contracts/ethereum-1/0x45006c280bf3dc44d7d370c9a801c95ec501aa3e/) | Aura | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb812cc...0006b0`](./contracts/ethereum-1/0xb812cc304cb417b635470681160e75cffb0006b0/) | CapBalanceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x957d72...3c5bfd`](./contracts/ethereum-1/0x957d726b1848d074fc0208017023b64f393c5bfd/) | cbETH_PriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70dd21...c0cfae`](./contracts/ethereum-1/0x70dd216ccd75551a170e361bebd33db64fc0cfae/) | CrossRatePriceAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81cb9e...be897a`](./contracts/ethereum-1/0x81cb9ea2d59414ab13ec0567efb09767ddbe897a/) | DefillamaCompressor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c2ea2...6f9713`](./contracts/ethereum-1/0x9c2ea278a490284d775bdd7899972a35e86f9713/) | eETH_PriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x89b015...5dc4f1`](./contracts/ethereum-1/0x89b0157921b4efb88dcf96f570d8c07d675dc4f1/) | ERC4626WrapBalanceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b47c1...7de245`](./contracts/ethereum-1/0x2b47c128b35dddcb66ce2fa5b33c95314a7de245/) | EulerEarn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x305bdb...c8a1cf`](./contracts/ethereum-1/0x305bdb829066c9ce15d5a2af0c4267b326c8a1cf/) | ezETH_PriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x488da1...693211`](./contracts/ethereum-1/0x488da14cff5b42a31684d4c6999ea0b1c7693211/) | KpkGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5af203...82904c`](./contracts/ethereum-1/0x5af203018e9043f2aaa5622c3f5014b0aa82904c/) | KpkToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b265b...c7bdbe`](./contracts/ethereum-1/0x1b265b97eb169fb6668e3258007c3b0242c7bdbe/) | MarketConfigurator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9396dc...9571ef`](./contracts/ethereum-1/0x9396dcbf78fc526bb003665337c5e73b699571ef/) | PoolV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e6366...6f962e`](./contracts/ethereum-1/0x7e6366a015e7c72d238e0e289e1652eaa06f962e/) | rETH_PriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ba2f8...6d9b17`](./contracts/ethereum-1/0x2ba2f894d0ac9435346a40521ae513d1be6d9b17/) | Roles | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f580e...5d2fd8`](./contracts/ethereum-1/0x0f580e84d92e89150be94fcaa4d03c6b855d2fd8/) | rsETH_PriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ecc77...69d50e`](./contracts/ethereum-1/0x8ecc77db1f9d2b1dfe3948b53d4d0e6c1569d50e/) | StakeWiseV3OsTokenBalanceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xde04bb...607d63`](./contracts/ethereum-1/0xde04bb0a8fd927c137547401f30213fcc7607d63/) | sUSDe_PriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76752e...49c140`](./contracts/ethereum-1/0x76752e33050f2011cacd3edbbb8125ee1e49c140/) | sUSDS_PriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc73ed3...b8cbe7`](./contracts/ethereum-1/0xc73ed3f07e2d1d6c59294936c12048dae2b8cbe7/) | syrupUSDC_PriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a1985...7806f4`](./contracts/ethereum-1/0x1a1985f50352b58090eb36425afdfacbac7806f4/) | VaultV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e7a61...5e5b59`](./contracts/ethereum-1/0x5e7a6154ace2ec453de9527d7f81b13e7b5e5b59/) | weETH_PriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35b2aa...9a4561`](./contracts/ethereum-1/0x35b2aae4de9e66cd6d86fc2ed360e9bcb79a4561/) | wstETH_PriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 2 |
| standard_library | 7 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=4

Zero-match audit list:

- [21252] 05_04_2024_Omniscia.pdf
- [21253] 15_04_2024_G0-Group.pdf

Fork inheritance lineage and inherited audits are included when available.
