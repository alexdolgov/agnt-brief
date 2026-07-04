# Agentic Audit Brief: kim-exchange

## Project Overview

- Project: kim-exchange (`kim-exchange`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.209Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: mode
- Contract surface: 32 unique implementations (32 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 29 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 6 common project-authored base contract(s) (ownable, multicall, peripheryimmutablestate). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **HorizonDEX** (`horizondex`) in the AlgebraFactory subsystem.
8 audits inherited from `horizondex`, scoped to that subsystem.

Total inherited audits: 8. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 32; live-surface contracts included: 32 (0 live, 32 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 32 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/32
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 32
- Raw deployments: 32
- Audits discovered: 8 (0 direct, 8 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 1 | 3.1% | n/a |
| DEFIMOON | Tier 2 | 1 | 3.1% | 2023-07 |
| Solidproof | Tier 2 | 1 | 3.1% | 2023-07 |
| unknown | Tier 2 | 1 | 3.1% | 2023-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraFactory | unknown | mode | n/a | [`0xb5f00c...b3c5d5`](./contracts/mode-34443/0xb5f00c2c5f8821155d8ed27e31932cfd9db3c5d5/) | ✅ Audited |

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraCommunityVault | unknown | mode | n/a | [`0x2815bf...faadb7`](./contracts/mode-34443/0x2815bf2bdd198e6d09b9f02ef6d62281b2faadb7/) | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | mode | n/a | [`0xd180a6...206574`](./contracts/mode-34443/0xd180a60d9ea3ddf01eb1761a1ad42c0f35206574/) | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | unknown | mode | n/a | [`0xab39ce...bff179`](./contracts/mode-34443/0xab39ce30d98a59dfda40a630b074170800bff179/) | ⚠️ Unaudited |
| AlgebraPoolDeployer | unknown | mode | n/a | [`0x6414a4...701635`](./contracts/mode-34443/0x6414a461b19726410e52488d9d5ff33682701635/) | ⚠️ Unaudited |
| AlgebraVaultFactoryStub | unknown | mode | n/a | [`0x371ee0...6d2e21`](./contracts/mode-34443/0x371ee0202a967976ebec75deabe23301656d2e21/) | ⚠️ Unaudited |
| BasePluginV1Factory | unknown | mode | n/a | [`0x313f9d...302509`](./contracts/mode-34443/0x313f9dee835569f1aaea51854818c72cd6302509/) | ⚠️ Unaudited |
| BeaconProxy | unknown | mode | n/a | [`0x908731...4e892d`](./contracts/mode-34443/0x908731366f82668ddd3ae3b2498adf52604e892d/) | ⚠️ Unaudited |
| ConduitController | unknown | mode | n/a | [`0x7018be...89d7ab`](./contracts/mode-34443/0x7018bec948bcef395646ef03bb62eeb78589d7ab/) | ⚠️ Unaudited |
| DividendsV2 | unknown | mode | n/a | [`0xdbe5cb...899274`](./contracts/mode-34443/0xdbe5cb9b4f45f976d30ffa88c543860868899274/) | ⚠️ Unaudited |
| FarmingCenter | unknown | mode | n/a | [`0x6656c4...b4e1d0`](./contracts/mode-34443/0x6656c400023367d61c98e12b14fa4b89f9b4e1d0/) | ⚠️ Unaudited |
| KimAdapter | unknown | mode | n/a | [`0xf9eb1e...d6cd83`](./contracts/mode-34443/0xf9eb1e5c227d55ac2dfd71f0d85d128c3fd6cd83/) | ⚠️ Unaudited |
| KimFactory | unknown | mode | n/a | [`0xa7514a...3ec3e7`](./contracts/mode-34443/0xa7514a4edfe8ca5fd1b276fb91003e1add3ec3e7/) | ⚠️ Unaudited |
| KimMaster | unknown | mode | n/a | [`0x989ef1...5a4ae9`](./contracts/mode-34443/0x989ef16f9c98c48ccc615658afdfea9dd55a4ae9/) | ⚠️ Unaudited |
| KimNFTMarketplace | unknown | mode | n/a | [`0x0fd11d...8c0218`](./contracts/mode-34443/0x0fd11d0bfb435e574cce4fbdf939bf17068c0218/) | ⚠️ Unaudited |
| KimPair | unknown | mode | n/a | [`0xa70eda...29ca62`](./contracts/mode-34443/0xa70eda3cdf91e9b7b022b550f4080bb89129ca62/) | ⚠️ Unaudited |
| KimRouter | unknown | mode | n/a | [`0x5d61c5...c77dd3`](./contracts/mode-34443/0x5d61c537393cf21893be619e36fc94cd73c77dd3/) | ⚠️ Unaudited |
| KimToken | unknown | mode | n/a | [`0x1556e0...53ebf5`](./contracts/mode-34443/0x1556e015cbee0d4bb6805ae06809cdd2a753ebf5/) | ⚠️ Unaudited |
| NFTDescriptor | unknown | mode | n/a | [`0xc0ffe5...10e45a`](./contracts/mode-34443/0xc0ffe56b2d4368c996447c37d7bdb1643d10e45a/) | ⚠️ Unaudited |
| NFTPoolFactory | unknown | mode | n/a | [`0x02ed25...393d12`](./contracts/mode-34443/0x02ed258209cb379024d2a22bccd970695a393d12/) | ⚠️ Unaudited |
| NitroPoolFactory | unknown | mode | n/a | [`0xd06433...4e4fe5`](./contracts/mode-34443/0xd064332cb771bb080ad27f7763a5e67ec04e4fe5/) | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | mode | n/a | [`0x2e8614...d7cf10`](./contracts/mode-34443/0x2e8614625226d26180adf6530c3b1677d3d7cf10/) | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | mode | n/a | [`0x313625...c50e95`](./contracts/mode-34443/0x3136254d26827f6775811f4d71baf7587ac50e95/) | ⚠️ Unaudited |
| ProtocolEarnings | unknown | mode | n/a | [`0x269e84...a0565f`](./contracts/mode-34443/0x269e842aea5731e5b82e57ddf597fb77f6a0565f/) | ⚠️ Unaudited |
| Quoter | unknown | mode | n/a | [`0x8678f0...9b31eb`](./contracts/mode-34443/0x8678f0abe08d30dc555f27c488551569a29b31eb/) | ⚠️ Unaudited |
| QuoterV2 | unknown | mode | n/a | [`0x7c5aaa...55d1e5`](./contracts/mode-34443/0x7c5aaa464f736740156fd69171505d344855d1e5/) | ⚠️ Unaudited |
| Seaport | unknown | mode | n/a | [`0x1ce3bf...ce41af`](./contracts/mode-34443/0x1ce3bf1cc16f7e76fb3b5bedbd220465bcce41af/) | ⚠️ Unaudited |
| SwapRouter | unknown | mode | n/a | [`0xac48fc...62f7e8`](./contracts/mode-34443/0xac48fcf1049668b285f3dc72483df5ae2162f7e8/) | ⚠️ Unaudited |
| TickLens | unknown | mode | n/a | [`0x1cd3a4...3bd96b`](./contracts/mode-34443/0x1cd3a4f1bd43024f3689111398a04aa1f53bd96b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mode | n/a | [`0x0e7a68...737e9c`](./contracts/mode-34443/0x0e7a68c37156213d045ccc636794be7f29737e9c/) | ⚠️ Unaudited |
| XKimToken | unknown | mode | n/a | [`0x33a48c...08e9cb`](./contracts/mode-34443/0x33a48c740760816a4362b4617f5339341408e9cb/) | ⚠️ Unaudited |
| YieldBooster | unknown | mode | n/a | [`0x82ae63...1157c7`](./contracts/mode-34443/0x82ae63704ba5e4942fe232092f2ba7a2221157c7/) | ⚠️ Unaudited |

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
| [HorizonDEX_SC Comparison Report_11.07.2023_SA-1644 (2).pdf](https://github.com/Horizon-Dex/Audits/blob/a1c7f31238a7b0d3390f37d178d855cf284cdcee/HorizonDEX_SC%20Comparison%20Report_11.07.2023_SA-1644%20(2).pdf) | unknown | Audit | 2023-07 | stale | Inherited from HorizonDEX — forked code, scoped to AlgebraFactory | inherited | 1 | n/a |
| [Horizon-Dex.pdf](https://github.com/Defimoonorg/Audit-Report/blob/main/Horizon-Dex.pdf) | unknown | Audit | 2023-07 | stale | Inherited from HorizonDEX — forked code, scoped to AlgebraFactory | inherited | 1 | n/a |
| [Horizon-Sale_Reaudit.pdf](https://github.com/Horizon-Dex/Audits/blob/main/Horizon-Sale_Reaudit.pdf) | DEFIMOON | Audit | 2023-07 | stale | Inherited from HorizonDEX — forked code, scoped to AlgebraFactory | inherited | 1 | n/a |
| [Horizon-Dex-Defimoon.pdf](https://github.com/Horizon-Dex/Audits/blob/main/Horizon-Dex-Defimoon.pdf) | Defimoon | Audit | 2023-07 | stale | Inherited from HorizonDEX — forked code, scoped to AlgebraFactory | inherited | 1 | n/a |
| [SmartContract_Audit_Solidproof_HorizonDEX.pdf](https://github.com/Horizon-Dex/Audits/blob/main/SmartContract_Audit_Solidproof_HorizonDEX.pdf) | Solidproof | Audit | 2023-07 | stale | Inherited from HorizonDEX — forked code, scoped to AlgebraFactory | inherited | 1 | n/a |
| [Logo.png](https://github.com/solidproof/projects/blob/main/2023/Horizon%20DEX/Logo.png) | unknown | Audit | n/a | unknown | Inherited from HorizonDEX — forked code, scoped to AlgebraFactory | inherited | 1 | n/a |
| [www.chainsecurity.com/security-audit/kyberswap-elastic](https://www.chainsecurity.com/security-audit/kyberswap-elastic) | ChainSecurity | Audit | n/a | unknown | Inherited from HorizonDEX — forked code, scoped to AlgebraFactory | inherited | 1 | n/a |
| [Horizon DEX (GitHub directory)](https://github.com/solidproof/projects/tree/main/2023/Horizon%20DEX) | SOLIDProof | Audit | n/a | unknown | Inherited from HorizonDEX — forked code, scoped to AlgebraFactory | inherited | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mode | [`0x2815bf...faadb7`](./contracts/mode-34443/0x2815bf2bdd198e6d09b9f02ef6d62281b2faadb7/) | AlgebraCommunityVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xd180a6...206574`](./contracts/mode-34443/0xd180a60d9ea3ddf01eb1761a1ad42c0f35206574/) | AlgebraEternalFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xab39ce...bff179`](./contracts/mode-34443/0xab39ce30d98a59dfda40a630b074170800bff179/) | AlgebraInterfaceMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x6414a4...701635`](./contracts/mode-34443/0x6414a461b19726410e52488d9d5ff33682701635/) | AlgebraPoolDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x371ee0...6d2e21`](./contracts/mode-34443/0x371ee0202a967976ebec75deabe23301656d2e21/) | AlgebraVaultFactoryStub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x313f9d...302509`](./contracts/mode-34443/0x313f9dee835569f1aaea51854818c72cd6302509/) | BasePluginV1Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x7018be...89d7ab`](./contracts/mode-34443/0x7018bec948bcef395646ef03bb62eeb78589d7ab/) | ConduitController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xdbe5cb...899274`](./contracts/mode-34443/0xdbe5cb9b4f45f976d30ffa88c543860868899274/) | DividendsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x6656c4...b4e1d0`](./contracts/mode-34443/0x6656c400023367d61c98e12b14fa4b89f9b4e1d0/) | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xf9eb1e...d6cd83`](./contracts/mode-34443/0xf9eb1e5c227d55ac2dfd71f0d85d128c3fd6cd83/) | KimAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xa7514a...3ec3e7`](./contracts/mode-34443/0xa7514a4edfe8ca5fd1b276fb91003e1add3ec3e7/) | KimFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x989ef1...5a4ae9`](./contracts/mode-34443/0x989ef16f9c98c48ccc615658afdfea9dd55a4ae9/) | KimMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x0fd11d...8c0218`](./contracts/mode-34443/0x0fd11d0bfb435e574cce4fbdf939bf17068c0218/) | KimNFTMarketplace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xa70eda...29ca62`](./contracts/mode-34443/0xa70eda3cdf91e9b7b022b550f4080bb89129ca62/) | KimPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x5d61c5...c77dd3`](./contracts/mode-34443/0x5d61c537393cf21893be619e36fc94cd73c77dd3/) | KimRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x1556e0...53ebf5`](./contracts/mode-34443/0x1556e015cbee0d4bb6805ae06809cdd2a753ebf5/) | KimToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xc0ffe5...10e45a`](./contracts/mode-34443/0xc0ffe56b2d4368c996447c37d7bdb1643d10e45a/) | NFTDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x02ed25...393d12`](./contracts/mode-34443/0x02ed258209cb379024d2a22bccd970695a393d12/) | NFTPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xd06433...4e4fe5`](./contracts/mode-34443/0xd064332cb771bb080ad27f7763a5e67ec04e4fe5/) | NitroPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x2e8614...d7cf10`](./contracts/mode-34443/0x2e8614625226d26180adf6530c3b1677d3d7cf10/) | NonfungiblePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x313625...c50e95`](./contracts/mode-34443/0x3136254d26827f6775811f4d71baf7587ac50e95/) | OptimismMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x269e84...a0565f`](./contracts/mode-34443/0x269e842aea5731e5b82e57ddf597fb77f6a0565f/) | ProtocolEarnings | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x8678f0...9b31eb`](./contracts/mode-34443/0x8678f0abe08d30dc555f27c488551569a29b31eb/) | Quoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x7c5aaa...55d1e5`](./contracts/mode-34443/0x7c5aaa464f736740156fd69171505d344855d1e5/) | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x1ce3bf...ce41af`](./contracts/mode-34443/0x1ce3bf1cc16f7e76fb3b5bedbd220465bcce41af/) | Seaport | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xac48fc...62f7e8`](./contracts/mode-34443/0xac48fcf1049668b285f3dc72483df5ae2162f7e8/) | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x1cd3a4...3bd96b`](./contracts/mode-34443/0x1cd3a4f1bd43024f3689111398a04aa1f53bd96b/) | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x33a48c...08e9cb`](./contracts/mode-34443/0x33a48c740760816a4362b4617f5339341408e9cb/) | XKimToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x82ae63...1157c7`](./contracts/mode-34443/0x82ae63704ba5e4942fe232092f2ba7a2221157c7/) | YieldBooster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=8

Fork inheritance lineage and inherited audits are included when available.
