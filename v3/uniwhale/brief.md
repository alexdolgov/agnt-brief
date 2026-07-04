# Agentic Audit Brief: Uniwhale

## Project Overview

- Project: Uniwhale (`uniwhale`)
- Website: [https://www.uniwhale.co](https://www.uniwhale.co)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:02.940Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: bsc
- Contract surface: 60 unique implementations (153 raw deployments)
- DeFi Llama TVL: $33,710.56
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 48 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 7 common project-authored base contract(s) (abstracterc20stakeable, abstractstakeable, abstractoracleaggregator). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 170; live-surface contracts included: 150 (134 live, 16 unknown).
- Excluded by liveness: 20 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 23/46 (50.0%)
- Deployed-live implementations: 46 of 60 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 23/46
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 60
- Raw deployments: 153
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 23 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 20 | 43.5% | 2023-02 |
| MetaTrust | Tier 2 | 4 | 8.7% | 2023-03 |
| Secure3 | Tier 2 | 4 | 8.7% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| esUniwhaleV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x4b0708...f6e254`](./contracts/bsc-56/0x4b0708b001c4daea5808eab21508cd7339f6e254/); bsc `0x614c46...722f80` | ✅ Audited |
| FeeVault | core_logic | bsc | n/a | 2 deployments: bsc [`0x9bea24...fc6e74`](./contracts/bsc-56/0x9bea24685836a8c858e93d1710c55721e7fc6e74/); bsc `0xfbcff7...971dbf` | ✅ Audited |
| LiquidityPool | unknown | bsc | n/a | 10 deployments: bsc [`0x089dba...cc79ad`](./contracts/bsc-56/0x089dba6f9f907327b9479d14c962586ab9cc79ad/); bsc `0x1f1d6f...1007c2`; bsc `0x48c314...7b15bc`; bsc `0x52dcd8...83e43a`; bsc `0x6f89de...8d17d7`; bsc `0x7a22d5...bc0867`; bsc `0x7bf129...d2c75f`; bsc `0xd48600...d5aba0`; bsc `0xedf173...fdbe75`; bsc `0xf272eb...8ea8b8` | ✅ Audited |
| LiquidityPool | unknown | bsc | n/a | 2 deployments: bsc [`0x9ab799...a6be9e`](./contracts/bsc-56/0x9ab799894f505772aaa91b091df9766db9a6be9e/); bsc `0xbdecaf...4769e7` | ✅ Audited |
| MarginPool | unknown | bsc | n/a | [`0x7d9cc5...fa109b`](./contracts/bsc-56/0x7d9cc5232a455addeb99cb8221d5ccb784fa109b/) | ✅ Audited |
| MarketBook | unknown | bsc | n/a | [`0x4cd24e...1e1414`](./contracts/bsc-56/0x4cd24e1452933699e24fe5a62ba1700c421e1414/) | ✅ Audited |
| MarketBook | unknown | bsc | n/a | 2 deployments: bsc [`0xa277b3...000c9f`](./contracts/bsc-56/0xa277b3c54549eae35dab484077a2a78559000c9f/); bsc `0xf00b7b...19999f` | ✅ Audited |
| OracleAggregator | unknown | bsc | n/a | 3 deployments: bsc [`0x059b49...bed2a5`](./contracts/bsc-56/0x059b491a6403567663483238e8458183a3bed2a5/); bsc `0x0b56a6...a3716b`; bsc `0xa2dea1...1043b1` | ✅ Audited |
| PancakeRouter | unknown | bsc | n/a | [`0x0f5df5...8059d1`](./contracts/bsc-56/0x0f5df5edad59d331d8419d9fd9cda025c28059d1/) | ✅ Audited |
| PoolReader | core_logic | bsc | n/a | [`0xdf4261...238cf6`](./contracts/bsc-56/0xdf4261ffd44d66cf8007753c5e998eee34238cf6/) | ✅ Audited |
| RegistryCore | unknown | bsc | n/a | 12 deployments: bsc [`0x35a31d...16ff2c`](./contracts/bsc-56/0x35a31db0f726954074d73c67df7389345516ff2c/); bsc `0x3a3233...17a461`; bsc `0x5be771...d29872`; bsc `0x7e7245...a7d7a6`; bsc `0x808b66...498b0d`; bsc `0x903bd6...c49d87`; bsc `0xa74a41...8e1446`; bsc `0xa82b6c...f3283d`; bsc `0xab64cb...3fe692`; bsc `0xc24915...6ef667`; bsc `0xdb7bbe...bbbeb3`; bsc `0xf1e1db...f0555c` | ✅ Audited |
| RegistryCore | registry | bsc | n/a | 2 deployments: bsc [`0xae0c4a...927ff9`](./contracts/bsc-56/0xae0c4a3432b18d9c65e1544a7669d9de44927ff9/); bsc `0xe8a811...cbb5d1` | ✅ Audited |
| RegistryReader | unknown | bsc | n/a | 4 deployments: bsc [`0x234d7e...af8e72`](./contracts/bsc-56/0x234d7e86655ea8efb1ab8d29038784deedaf8e72/); bsc `0x41e53d...2a8e43`; bsc `0x81950d...aa3805`; bsc `0xbdbde8...c96088` | ✅ Audited |
| RevenuePool | unknown | bsc | n/a | 2 deployments: bsc [`0x55f889...36fb94`](./contracts/bsc-56/0x55f889d632ac3105aeea8f15c68eb75e2336fb94/); bsc `0xd31769...81e391` | ✅ Audited |
| RevenuePool | unknown | bsc | n/a | 2 deployments: bsc [`0x605555...78c22f`](./contracts/bsc-56/0x60555593996d55717e9047f2c6e46af28d78c22f/); bsc `0x9382cd...78c842` | ✅ Audited |
| SwapRouterGetter | unknown | bsc | n/a | [`0x1cb109...e747a9`](./contracts/bsc-56/0x1cb1099175cff621778609517334b35920e747a9/) | ✅ Audited |
| TradingCore | unknown | bsc | n/a | 13 deployments: bsc [`0x14359b...0040eb`](./contracts/bsc-56/0x14359be87cd6ca759eefc106090ee7e7720040eb/); bsc `0x1e0526...7c5ad1`; bsc `0x371a34...a3189b`; bsc `0x59a365...235311`; bsc `0x7a06bc...8ce499`; bsc `0x7cf574...37e6d1`; bsc `0x8990ca...5972f5`; bsc `0x9332fc...d97165`; bsc `0x971922...04d500`; bsc `0x98b0d1...3dda32`; bsc `0xa77808...9142c5`; bsc `0xddc9e3...1d608c`; bsc `0xea9bb0...4d0486` | ✅ Audited |
| TradingCore | unknown | bsc | n/a | 2 deployments: bsc [`0x292671...fcc1ea`](./contracts/bsc-56/0x2926710dcb5c3e046285755410979d1de5fcc1ea/); bsc `0x55d5f4...fc5bb4` | ✅ Audited |
| TradingCore | unknown | bsc | n/a | 2 deployments: bsc [`0x6c675a...c28a7b`](./contracts/bsc-56/0x6c675ac96955db45e01a8d7f61886692e2c28a7b/); bsc `0x9b5215...329ebc` | ✅ Audited |
| TradingCoreLib | unknown | bsc | n/a | 8 deployments: bsc [`0x0b60b8...fc4bb0`](./contracts/bsc-56/0x0b60b89d17b2bc18d10821677bb3137d5afc4bb0/); bsc `0x2cb1bb...630e94`; bsc `0xa02474...b330f2`; bsc `0xa197e4...0a8c20`; bsc `0xa36995...d01ac7`; bsc `0xa7e362...be2a39`; bsc `0xb09bc6...736049`; bsc `0xfaa356...22e66e` | ✅ Audited |
| TradingCoreLib | unknown | bsc | n/a | 2 deployments: bsc [`0x98fa0d...f3e2ff`](./contracts/bsc-56/0x98fa0d383fecdcc458a1aeab69790f5e87f3e2ff/); bsc `0xdf6c13...339bfc` | ✅ Audited |
| UniwhaleToken | unknown | bsc | n/a | 6 deployments: bsc [`0x0af3f4...44ba3e`](./contracts/bsc-56/0x0af3f407985df252ecf0f73568b377115244ba3e/); bsc `0x16d7f9...1950df`; bsc `0xae7a52...b3b685`; bsc `0xbe0d1e...440a1a`; bsc `0xc2ba85...8f7146`; bsc `0xef14a0...cb5677` | ✅ Audited |
| UniwhaleToken | token | bsc | n/a | 2 deployments: bsc [`0x5b65cd...f8dc06`](./contracts/bsc-56/0x5b65cd9feb54f1df3d0c60576003344079f8dc06/); bsc `0xf89896...19acf9` | ✅ Audited |

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AirdropHelper | unknown | bsc | n/a | 2 deployments: bsc [`0x43dc3a...bfd18a`](./contracts/bsc-56/0x43dc3a2af323f2e4ec9cc9736df55aba9cbfd18a/); bsc `0xaf9e15...446491` | ⚠️ Unaudited |
| esUniwhaleToken | unknown | bsc | n/a | 2 deployments: bsc [`0x0026aa...643230`](./contracts/bsc-56/0x0026aae37996cea1ea1a99e88563031e5d643230/); bsc `0x61c07e...66d5cf` | ⚠️ Unaudited |
| esUniwhaleToken | unknown | bsc | n/a | 7 deployments: bsc [`0x26278d...dffdae`](./contracts/bsc-56/0x26278daa6ec3368fd2f672260abbcd8e67dffdae/); bsc `0x43bc4a...dc783d`; bsc `0x59d35a...bd44d1`; bsc `0x92a1f0...ed509c`; bsc `0xa5212d...97bb4a`; bsc `0xde99d0...3732b5`; bsc `0xfc9686...b5bca8` | ⚠️ Unaudited |
| Fees | unknown | bsc | n/a | 2 deployments: bsc [`0x00c114...338fd3`](./contracts/bsc-56/0x00c114b623e75b6ab03ba4f67f89bebacc338fd3/); bsc `0xc37ee4...2a4102` | ⚠️ Unaudited |
| Fees | unknown | bsc | n/a | [`0xc4a94d...598c64`](./contracts/bsc-56/0xc4a94d2891690e9b930ad20204fa071940598c64/) | ⚠️ Unaudited |
| LimitBook | unknown | bsc | n/a | 7 deployments: bsc [`0x107f7f...a080e6`](./contracts/bsc-56/0x107f7f198cc133c2a2492566b2b229363aa080e6/); bsc `0x20c5e7...f78ade`; bsc `0x3e9849...a33901`; bsc `0x46e7ee...3ce06d`; bsc `0x782f71...89c573`; bsc `0xa2c4a5...e70c06`; bsc `0xec7a1e...9d47f4` | ⚠️ Unaudited |
| LimitBook | unknown | bsc | n/a | 2 deployments: bsc [`0x27bbbf...523e21`](./contracts/bsc-56/0x27bbbf42dfa62bf16bf9684747476a7a40523e21/); bsc `0x404d97...208d9b` | ⚠️ Unaudited |
| LimitBook | unknown | bsc | n/a | 2 deployments: bsc [`0x5145b1...bd8440`](./contracts/bsc-56/0x5145b10dad211e24fd217c7f57cb90d0cfbd8440/); bsc `0xa61b3d...fedf06` | ⚠️ Unaudited |
| LimitBook | unknown | bsc | n/a | 2 deployments: bsc [`0x656ac0...0a8ea7`](./contracts/bsc-56/0x656ac046304446c5802849fcfd5f5ddb090a8ea7/); bsc `0xcc391c...6b5e9a` | ⚠️ Unaudited |
| MarginPool | core_logic | bsc | n/a | 2 deployments: bsc [`0xbb1b94...ac9bcc`](./contracts/bsc-56/0xbb1b941ab76fae4e9f552b860efac1f367ac9bcc/); bsc `0xd2e9d5...fb1008` | ⚠️ Unaudited |
| MigrateHelper | unknown | bsc | n/a | 2 deployments: bsc [`0x5e8284...125b47`](./contracts/bsc-56/0x5e828415b88d9747bab771ce79021c7f52125b47/); bsc `0x8d5f9b...9f899d` | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x9314cc...c43014`](./contracts/bsc-56/0x9314cca6cf879518c37ac4932fb4bf13d6c43014/) | ⚠️ Unaudited |
| Referrals | unknown | bsc | n/a | 2 deployments: bsc [`0x81173c...8dc8f4`](./contracts/bsc-56/0x81173c1530bb9ab00b2c47d2a6b056322f8dc8f4/); bsc `0xd2e0fd...4ccafd` | ⚠️ Unaudited |
| Referrals | unknown | bsc | n/a | [`0xdb88ba...725d27`](./contracts/bsc-56/0xdb88ba9c9f717a077fdc62ad3185064793725d27/) | ⚠️ Unaudited |
| TraderFarm | unknown | bsc | n/a | 2 deployments: bsc [`0x43b8c6...1e5e3a`](./contracts/bsc-56/0x43b8c63097f38ba0eff68766d3db991f9c1e5e3a/); bsc `0x9f6ada...ed7afd` | ⚠️ Unaudited |
| TraderFarm | unknown | bsc | n/a | 2 deployments: bsc [`0x796ae7...cc2d06`](./contracts/bsc-56/0x796ae7d5001b42f4fc54be7fdc33eca5accc2d06/); bsc `0xef82b2...fee389` | ⚠️ Unaudited |
| TradingCoreWithRouter | unknown | bsc | n/a | 2 deployments: bsc [`0x51d759...ff4411`](./contracts/bsc-56/0x51d759c0d7bb898358fc9e5c889eac9364ff4411/); bsc `0xec0521...abc1e4` | ⚠️ Unaudited |
| TradingCoreWithRouter | unknown | bsc | n/a | 2 deployments: bsc [`0x926b30...2f36f3`](./contracts/bsc-56/0x926b303605b03d5e9d1a942b76ce7bb03e2f36f3/); bsc `0xdaf311...cff129` | ⚠️ Unaudited |
| TradingCoreWithRouter | adapter | bsc | n/a | 2 deployments: bsc [`0xb6ebb9...4e415d`](./contracts/bsc-56/0xb6ebb9bffd3bbc9d46feac4167b88b9eee4e415d/); bsc `0xd429cb...aa557f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x498cd3...eea9fd`](./contracts/bsc-56/0x498cd3e719f0011188536947b92a0e4b42eea9fd/); bsc `0x7bb4b5...dadb54` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0xbd4daa...edffea`](./contracts/bsc-56/0xbd4daa4f582ab9aca6f9a8c66d93bfc059edffea/); bsc `0xc8d7aa...b890e5` | ⚠️ Unaudited |
| UniwhalePass | unknown | bsc | n/a | 2 deployments: bsc [`0x3cce74...12a68f`](./contracts/bsc-56/0x3cce74aa8c60c4f8a42df146f7c3d7761f12a68f/); bsc `0x3d8ce3...be7c2e` | ⚠️ Unaudited |
| UniwhalePass | unknown | bsc | n/a | 5 deployments: bsc [`0xad25d1...011511`](./contracts/bsc-56/0xad25d1e971a779f3444607c1b1f1024115011511/); bsc `0xbe8a0c...6bfcbf`; bsc `0xc6e73c...cbeb49`; bsc `0xf780b3...bd338a`; bsc `0xfbffdd...37c97e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x03a65f...35139e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x046f8d...2dab82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x082fa8...da875f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c364a...047265` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x40d258...d640b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46eeb8...bcbf6b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47325f...c167f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4cd612...606d94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5032cd...1d3153` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5dddd9...765883` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8d9bea...0ac94c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ffcef...1f3a46` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa79cc8...0588a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb083c4...35fc8e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [UniWhale_final_Secure3_Audit_Report.pdf](https://cdn.uniwhale.co/pdf/UniWhale_final_Secure3_Audit_Report.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | 67 | high |
| [MetaScan_Report_Uniwhale.pdf](https://cdn.uniwhale.co/pdf/MetaScan_Report_Uniwhale.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | 52 | high |
| [UniWhaleP2_final_Secure3_Audit_Report.pdf](https://cdn.uniwhale.co/pdf/UniWhaleP2_final_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2023-03 | stale | Direct | contract_name | 12 | high |
| [MetaScan_Report_Uniwhale_202303272132.pdf](https://cdn.uniwhale.co/pdf/MetaScan_Report_Uniwhale_202303272132.pdf) | MetaTrust | Audit | 2023-03 | stale | Direct | contract_name | 12 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 60 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3, medium=1
- Match method counts: extraction_exact=143

Fork inheritance lineage and inherited audits are included when available.
