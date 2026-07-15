# Agentic Audit Brief: Flying Tulip

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Flying Tulip (`flying-tulip`)
- Website: [https://flyingtulip.com/](https://flyingtulip.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, base, bsc, ethereum, sonic
- Contract surface: 143 unique implementations (146 raw deployments)
- Coverage basis: 0/70 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $10,168,483.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Flying Tulip. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 77 contract row(s) across avalanche, base, bsc, ethereum, sonic. Structural roles: 29 core, 26 unclassified, 22 supporting. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 77
- Structural roles: core (29), unclassified (26), supporting (22)
- Contract kinds: contract (77)
- Detected standards: erc20 (33), ownable (13), pausable (7), erc20permit (5), ownable2step (4), chainlinkaggregator (2), erc1967proxy (2), accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (45), layerzero (5), openzeppelin-upgradeable (4), permit2 (1), solmate (1)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 136 contracts are derived from known codebases. 136 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x01980b...4f3db7`, chain 1)
- UnnamedContract (`0x051589...8f1839`, chain 1)
- UnnamedContract (`0x054c80...229795`, chain 1)
- UnnamedContract (`0x1a5730...8fe042`, chain 1)
- UnnamedContract (`0x28b090...38123b`, chain 1)
- UnnamedContract (`0x368216...a8a43e`, chain 1)
- UnnamedContract (`0x40693b...3b06e7`, chain 1)
- UnnamedContract (`0x460494...cb2da2`, chain 1)
- UnnamedContract (`0x51afd3...948e18`, chain 1)
- UnnamedContract (`0x56c589...178ca9`, chain 1)
- UnnamedContract (`0x5a5e77...b7a4fb`, chain 1)
- UnnamedContract (`0x5c5ab8...164d32`, chain 1)
- UnnamedContract (`0x6c971d...728c8c`, chain 1)
- UnnamedContract (`0x70312a...8cde3d`, chain 1)
- UnnamedContract (`0x7127bb...6f840e`, chain 1)
- UnnamedContract (`0x7ad77f...412ef7`, chain 1)
- UnnamedContract (`0x880a37...80071b`, chain 1)
- UnnamedContract (`0x8852b1...a7c3c6`, chain 1)
- UnnamedContract (`0x8fffff...6818f6`, chain 1)
- UnnamedContract (`0x986841...2e5440`, chain 1)
- UnnamedContract (`0xa8777c...1ca33e`, chain 1)
- UnnamedContract (`0xaa3d5f...fca23b`, chain 1)
- UnnamedContract (`0xaa48ec...2bd23c`, chain 1)
- UnnamedContract (`0xaee64c...18b5d6`, chain 1)
- UnnamedContract (`0xb213e8...e92c22`, chain 1)
- UnnamedContract (`0xbdd800...97c68b`, chain 1)
- UnnamedContract (`0xbe4050...b20055`, chain 1)
- UnnamedContract (`0xc67d96...8453d9`, chain 1)
- UnnamedContract (`0xcb2105...4f7355`, chain 1)
- UnnamedContract (`0xd25f96...a947e5`, chain 1)
- UnnamedContract (`0xd2e4a5...2639e2`, chain 1)
- UnnamedContract (`0xeb4821...7f7625`, chain 1)
- UnnamedContract (`0xf47bb6...3e1885`, chain 1)
- UnnamedContract (`0xf7d85e...3e9c9c`, chain 1)
- UnnamedContract (`0xfaed20...0b1157`, chain 1)
- UnnamedContract (`0x02e9ba...51f95c`, chain 146)
- UnnamedContract (`0x051589...8f1839`, chain 146)
- UnnamedContract (`0x054c80...229795`, chain 146)
- UnnamedContract (`0x368216...a8a43e`, chain 146)
- UnnamedContract (`0x38b971...7555d0`, chain 146)
- UnnamedContract (`0x56c589...178ca9`, chain 146)
- UnnamedContract (`0x5a5e77...b7a4fb`, chain 146)
- UnnamedContract (`0x5c5ab8...164d32`, chain 146)
- UnnamedContract (`0x5d3d9e...a816bf`, chain 146)
- UnnamedContract (`0x7127bb...6f840e`, chain 146)
- UnnamedContract (`0x727bc1...5b1837`, chain 146)
- UnnamedContract (`0x7a2fd3...cf8b47`, chain 146)
- UnnamedContract (`0x7ad77f...412ef7`, chain 146)
- UnnamedContract (`0x880a37...80071b`, chain 146)
- UnnamedContract (`0x8852b1...a7c3c6`, chain 146)
- UnnamedContract (`0x8b98e4...69147b`, chain 146)
- UnnamedContract (`0x8e0fa0...beff12`, chain 146)
- UnnamedContract (`0x986841...2e5440`, chain 146)
- UnnamedContract (`0x9b4aa6...56b66d`, chain 146)
- UnnamedContract (`0xa8777c...1ca33e`, chain 146)
- UnnamedContract (`0xaa3d5f...fca23b`, chain 146)
- UnnamedContract (`0xae65fd...5a16eb`, chain 146)
- UnnamedContract (`0xb213e8...e92c22`, chain 146)
- UnnamedContract (`0xb6f498...84ae86`, chain 146)
- UnnamedContract (`0xbb155f...14c18e`, chain 146)
- UnnamedContract (`0xbdd800...97c68b`, chain 146)
- UnnamedContract (`0xbe4050...b20055`, chain 146)
- UnnamedContract (`0xc67d96...8453d9`, chain 146)
- UnnamedContract (`0xcb2c01...607edc`, chain 146)
- UnnamedContract (`0xd25f96...a947e5`, chain 146)
- UnnamedContract (`0xd6587e...0ac553`, chain 146)
- UnnamedContract (`0xefd7d5...b705e9`, chain 146)
- UnnamedContract (`0xf47bb6...3e1885`, chain 146)
- UnnamedContract (`0xf7d85e...3e9c9c`, chain 146)
- AaveStrategy (`0x061d7d...afeadb`, chain 1)
- AaveStrategy (`0x0987fb...e3ba7d`, chain 1)
- AaveStrategy (`0x2e43f8...4b04ae`, chain 1)
- AaveStrategy (`0x3e6077...e81f4b`, chain 1)
- AaveStrategy (`0x51e85e...f3db03`, chain 1)
- AaveStrategy (`0x638a51...962307`, chain 1)
- AaveStrategy (`0xb80491...29cb4e`, chain 1)
- AaveStrategy (`0xbe9684...9dd2da`, chain 1)
- AaveStrategy (`0x216e58...d3df28`, chain 146)
- AaveStrategy (`0x974ba6...14f8ee`, chain 146)
- AaveStrategy (`0xf09b9d...d94dda`, chain 146)
- CircuitBreaker (`0x9676e6...ec18e0`, chain 1)
- CircuitBreaker (`0xcb170b...4d90de`, chain 1)
- CircuitBreaker (`0x9676e6...ec18e0`, chain 146)
- CircuitBreakerGuardian (`0xdc86ad...74c7ea`, chain 1)
- CircuitBreakerGuardian (`0xdc86ad...74c7ea`, chain 146)
- CircuitBreakerOperator (`0x765224...24994d`, chain 1)
- CircuitBreakerOperator (`0x765224...24994d`, chain 146)
- DeltaNeutralStakingStrategy (`0x6ec218...7455ae`, chain 146)
- EpochRewardsVault (`0xea95e4...27b6da`, chain 1)
- EpochRewardsVault (`0x5aee4b...20e841`, chain 146)
- FT (`0x5dd1a7...88082c`, chain 1)
- FT (`0x5dd1a7...88082c`, chain 56)
- FT (`0x5dd1a7...88082c`, chain 146)
- FT (`0x5dd1a7...88082c`, chain 8453)
- FT (`0x5dd1a7...88082c`, chain 43114)
- ftACL (`0xa09d08...1359eb`, chain 1)
- ftYieldWrapper (`0x095d8b...bbbf59`, chain 1)
- ftYieldWrapper (`0x267df6...07cb36`, chain 1)
- ftYieldWrapper (`0x9d96ba...44e305`, chain 1)
- ftYieldWrapper (`0xa143a9...337573`, chain 1)
- ftYieldWrapper (`0xe5270e...8c97b6`, chain 1)
- ftYieldWrapper (`0xe6880f...1b5625`, chain 1)
- ftYieldWrapper (`0x267df6...07cb36`, chain 43114)
- ftYieldWrapperV2 (`0x28cca8...2347d6`, chain 1)
- ftYieldWrapperV2 (`0x6aaf84...7e837d`, chain 1)
- ftYieldWrapperV2 (`0xb44a9c...8cb87f`, chain 1)
- ftYieldWrapperV2 (`0x0237a6...97ab6a`, chain 146)
- ftYieldWrapperV2 (`0x9acdce...82cd0b`, chain 146)
- LeverageRfqEngine (`0x8263a0...f140e2`, chain 1)
- LeverageRfqEngine (`0x8263a0...f140e2`, chain 146)
- LongTailIRM (`0x09cd85...29ef69`, chain 1)
- LongTailIRM (`0x09cd85...29ef69`, chain 146)
- MajorIRM (`0x07ec85...25d12f`, chain 1)
- MajorIRM (`0x07ec85...25d12f`, chain 146)
- MetaActions (`0x3633eb...1c29f2`, chain 1)
- MetaActions (`0x3633eb...1c29f2`, chain 146)
- MetaSessionActions (`0x4f83ac...3a3497`, chain 1)
- MetaSessionActions (`0x4f83ac...3a3497`, chain 146)
- Permit2 (`0xeb450d...3fc8ec`, chain 1)
- pFT (`0xc55253...bf7c5e`, chain 1)
- PutManager (`0x90ae2c...69922a`, chain 1)
- RelayerAuth (`0x823a97...1f53f4`, chain 1)
- RelayerAuth (`0x823a97...1f53f4`, chain 146)
- RfqEngine (`0xeb00b3...39dc32`, chain 1)
- RfqEngine (`0xeb00b3...39dc32`, chain 146)
- SparkSavingsStrategy (`0x3f537e...080aeb`, chain 1)
- SparkSavingsStrategy (`0x4df6f4...f7f2a7`, chain 1)
- SparkSavingsStrategy (`0x4f47c4...307af5`, chain 1)
- SparkSavingsStrategy (`0x852dc7...756a42`, chain 1)
- SparkSavingsStrategy (`0xcfb9d8...32ff2c`, chain 1)
- SparkSavingsStrategy (`0xeb5cb9...b10302`, chain 1)
- SparkSavingsStrategy (`0xf20119...5f99a8`, chain 1)
- SparkSavingsStrategy (`0xfbe073...10b0e5`, chain 1)
- StableIRM (`0x325373...38710d`, chain 1)
- StableIRM (`0x325373...38710d`, chain 146)
- TimelockController (`0x3518db...354707`, chain 1)

## Contract Surface Quality

- Indexed contracts: 77; live-surface contracts included: 77 (72 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 138/179 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/70 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 138 own, 5 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (5 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Deployed-live implementations: 138 of 143 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/70
- Verified + Unaudited implementations: 70
- Verified by bytecode match: 0
- Unverified implementations: 68
- Unique implementations: 143
- Raw deployments: 146
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

### ⚠️ Verified + Unaudited (74)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-240095 | `0x061d7d...afeadb` | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-240098 | `0x0987fb...e3ba7d` | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-240106 | `0x2e43f8...4b04ae` | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-240112 | `0x3e6077...e81f4b` | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-240120 | `0x51e85e...f3db03` | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-240126 | `0x638a51...962307` | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-240159 | `0xb80491...29cb4e` | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-240163 | `0xbe9684...9dd2da` | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-240193 | `0x216e58...d3df28` | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-240227 | `0x974ba6...14f8ee` | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-240257 | `0xf09b9d...d94dda` | ⚠️ Unaudited |
| CircuitBreaker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240143 | `0x9676e6...ec18e0` | ⚠️ Unaudited |
| CircuitBreaker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240166 | `0xcb170b...4d90de` | ⚠️ Unaudited |
| CircuitBreaker | unknown | project_anchor | own_supporting | 0 | sonic | unit-240226 | `0x9676e6...ec18e0` | ⚠️ Unaudited |
| CircuitBreakerGuardian | governance | project_anchor | own_supporting | 0 | ethereum | unit-240172 | `0xdc86ad...74c7ea` | ⚠️ Unaudited |
| CircuitBreakerGuardian | governance | project_anchor | own_supporting | 0 | sonic | unit-240250 | `0xdc86ad...74c7ea` | ⚠️ Unaudited |
| CircuitBreakerOperator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240132 | `0x765224...24994d` | ⚠️ Unaudited |
| CircuitBreakerOperator | unknown | project_anchor | own_supporting | 0 | sonic | unit-240216 | `0x765224...24994d` | ⚠️ Unaudited |
| DeltaNeutralStakingStrategy | core_logic | project_anchor | own_supporting | 0 | sonic | unit-240212 | `0x6ec218...7455ae` | ⚠️ Unaudited |
| EpochRewardsVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240175 | `0xea95e4...27b6da` | ⚠️ Unaudited |
| EpochRewardsVault | unknown | project_anchor | own_supporting | 1 | sonic | unit-240270 | 2 deployments: sonic `0x5aee4b...20e841`; sonic `0xd1e5a8...d2aeb1` | ⚠️ Unaudited |
| FlyingTulipOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-240165 | `0xc8c895...b36793` | ⚠️ Unaudited |
| FT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240125 | `0x5dd1a7...88082c` | ⚠️ Unaudited |
| FT | unknown | project_anchor | own_supporting | 0 | bsc | unit-240264 | `0x5dd1a7...88082c` | ⚠️ Unaudited |
| FT | unknown | project_anchor | own_supporting | 0 | sonic | unit-240209 | `0x5dd1a7...88082c` | ⚠️ Unaudited |
| FT | unknown | project_anchor | own_supporting | 0 | base | unit-240265 | `0x5dd1a7...88082c` | ⚠️ Unaudited |
| FT | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240263 | `0x5dd1a7...88082c` | ⚠️ Unaudited |
| ftACL | governance | project_anchor | own_supporting | 0 | ethereum | unit-240148 | `0xa09d08...1359eb` | ⚠️ Unaudited |
| FtUsdMintRedeemOracleProxy | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-240150 | `0xa69f7a...aadff8` | ⚠️ Unaudited |
| FtUsdMintRedeemOracleProxy | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sonic | unit-240195 | `0x2c64f6...9b8aae` | ⚠️ Unaudited |
| ftYieldWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240097 | `0x095d8b...bbbf59` | ⚠️ Unaudited |
| ftYieldWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240102 | `0x267df6...07cb36` | ⚠️ Unaudited |
| ftYieldWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240147 | `0x9d96ba...44e305` | ⚠️ Unaudited |
| ftYieldWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240149 | `0xa143a9...337573` | ⚠️ Unaudited |
| ftYieldWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240173 | `0xe5270e...8c97b6` | ⚠️ Unaudited |
| ftYieldWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240174 | `0xe6880f...1b5625` | ⚠️ Unaudited |
| ftYieldWrapper | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240262 | `0x267df6...07cb36` | ⚠️ Unaudited |
| ftYieldWrapperV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240104 | `0x28cca8...2347d6` | ⚠️ Unaudited |
| ftYieldWrapperV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240127 | `0x6aaf84...7e837d` | ⚠️ Unaudited |
| ftYieldWrapperV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240157 | `0xb44a9c...8cb87f` | ⚠️ Unaudited |
| ftYieldWrapperV2 | unknown | project_anchor | own_supporting | 0 | sonic | unit-240186 | `0x0237a6...97ab6a` | ⚠️ Unaudited |
| ftYieldWrapperV2 | unknown | project_anchor | own_supporting | 0 | sonic | unit-240229 | `0x9acdce...82cd0b` | ⚠️ Unaudited |
| LeverageRfqEngine | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240136 | `0x8263a0...f140e2` | ⚠️ Unaudited |
| LeverageRfqEngine | unknown | project_anchor | own_supporting | 0 | sonic | unit-240220 | `0x8263a0...f140e2` | ⚠️ Unaudited |
| LongTailIRM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240099 | `0x09cd85...29ef69` | ⚠️ Unaudited |
| LongTailIRM | unknown | project_anchor | own_supporting | 0 | sonic | unit-240191 | `0x09cd85...29ef69` | ⚠️ Unaudited |
| MajorIRM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240096 | `0x07ec85...25d12f` | ⚠️ Unaudited |
| MajorIRM | unknown | project_anchor | own_supporting | 0 | sonic | unit-240190 | `0x07ec85...25d12f` | ⚠️ Unaudited |
| MetaActions | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240109 | `0x3633eb...1c29f2` | ⚠️ Unaudited |
| MetaActions | unknown | project_anchor | own_supporting | 0 | sonic | unit-240197 | `0x3633eb...1c29f2` | ⚠️ Unaudited |
| MetaSessionActions | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240118 | `0x4f83ac...3a3497` | ⚠️ Unaudited |
| MetaSessionActions | unknown | project_anchor | own_supporting | 0 | sonic | unit-240203 | `0x4f83ac...3a3497` | ⚠️ Unaudited |
| MintAndRedeem | unknown | project_anchor | own_supporting | 1 | sonic | unit-240271 | 2 deployments: sonic `0x0c6f8e...50ee31`; sonic `0x8852b1...a7c3c6` | ⚠️ Unaudited |
| OracleRouterChainlink | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-240269 | `0xe4372d...93674a` | ⚠️ Unaudited |
| Permit2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240177 | `0xeb450d...3fc8ec` | ⚠️ Unaudited |
| pFT | unknown | project_anchor | own_supporting | 1 | ethereum | unit-240268 | 2 deployments: ethereum `0xa4215d...ce04f2`; ethereum `0xc55253...bf7c5e` | ⚠️ Unaudited |
| pFTMarketplace | unknown | project_anchor | own_supporting | 1 | ethereum | unit-240267 | `0x312486...cf570c` | ⚠️ Unaudited |
| PutManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240142 | `0x90ae2c...69922a` | ⚠️ Unaudited |
| PutManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-240266 | `0xba49d0...75ebaa` | ⚠️ Unaudited |
| RelayerAuth | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240135 | `0x823a97...1f53f4` | ⚠️ Unaudited |
| RelayerAuth | unknown | project_anchor | own_supporting | 0 | sonic | unit-240219 | `0x823a97...1f53f4` | ⚠️ Unaudited |
| RfqEngine | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240176 | `0xeb00b3...39dc32` | ⚠️ Unaudited |
| RfqEngine | unknown | project_anchor | own_supporting | 0 | sonic | unit-240253 | `0xeb00b3...39dc32` | ⚠️ Unaudited |
| SparkSavingsStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-240113 | `0x3f537e...080aeb` | ⚠️ Unaudited |
| SparkSavingsStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-240116 | `0x4df6f4...f7f2a7` | ⚠️ Unaudited |
| SparkSavingsStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-240117 | `0x4f47c4...307af5` | ⚠️ Unaudited |
| SparkSavingsStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-240137 | `0x852dc7...756a42` | ⚠️ Unaudited |
| SparkSavingsStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-240168 | `0xcfb9d8...32ff2c` | ⚠️ Unaudited |
| SparkSavingsStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-240179 | `0xeb5cb9...b10302` | ⚠️ Unaudited |
| SparkSavingsStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-240180 | `0xf20119...5f99a8` | ⚠️ Unaudited |
| SparkSavingsStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-240184 | `0xfbe073...10b0e5` | ⚠️ Unaudited |
| StableIRM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240107 | `0x325373...38710d` | ⚠️ Unaudited |
| StableIRM | unknown | project_anchor | own_supporting | 0 | sonic | unit-240196 | `0x325373...38710d` | ⚠️ Unaudited |
| TimelockController | governance | project_anchor | own_supporting | 0 | ethereum | unit-240108 | `0x3518db...354707` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (69)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240092 | `0x01980b...4f3db7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240093 | `0x051589...8f1839` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240094 | `0x054c80...229795` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240100 | `0x1a5730...8fe042` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240103 | `0x28b090...38123b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240110 | `0x368216...a8a43e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240114 | `0x40693b...3b06e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240115 | `0x460494...cb2da2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240119 | `0x51afd3...948e18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240121 | `0x56c589...178ca9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240122 | `0x5a5e77...b7a4fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240123 | `0x5c5ab8...164d32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240128 | `0x6c971d...728c8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240129 | `0x70312a...8cde3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240130 | `0x7127bb...6f840e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240134 | `0x7ad77f...412ef7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240138 | `0x880a37...80071b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240139 | `0x8852b1...a7c3c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240141 | `0x8fffff...6818f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240145 | `0x986841...2e5440` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240151 | `0xa8777c...1ca33e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240152 | `0xaa3d5f...fca23b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240153 | `0xaa48ec...2bd23c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240155 | `0xaee64c...18b5d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240156 | `0xb213e8...e92c22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240161 | `0xbdd800...97c68b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240162 | `0xbe4050...b20055` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240164 | `0xc67d96...8453d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240167 | `0xcb2105...4f7355` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240169 | `0xd25f96...a947e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240170 | `0xd2e4a5...2639e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240178 | `0xeb4821...7f7625` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240181 | `0xf47bb6...3e1885` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240182 | `0xf7d85e...3e9c9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240183 | `0xfaed20...0b1157` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240187 | `0x02e9ba...51f95c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240188 | `0x051589...8f1839` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240189 | `0x054c80...229795` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240198 | `0x368216...a8a43e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240199 | `0x38b971...7555d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240205 | `0x56c589...178ca9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240206 | `0x5a5e77...b7a4fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240207 | `0x5c5ab8...164d32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240208 | `0x5d3d9e...a816bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240214 | `0x7127bb...6f840e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240215 | `0x727bc1...5b1837` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240217 | `0x7a2fd3...cf8b47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240218 | `0x7ad77f...412ef7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240222 | `0x880a37...80071b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240223 | `0x8b98e4...69147b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240224 | `0x8e0fa0...beff12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240228 | `0x986841...2e5440` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240230 | `0x9b4aa6...56b66d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240232 | `0xa8777c...1ca33e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240233 | `0xaa3d5f...fca23b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240235 | `0xae65fd...5a16eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240237 | `0xb213e8...e92c22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240239 | `0xb6f498...84ae86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240241 | `0xbb155f...14c18e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240242 | `0xbdd800...97c68b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240243 | `0xbe4050...b20055` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240244 | `0xc67d96...8453d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240246 | `0xcb2c01...607edc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240247 | `0xd25f96...a947e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240249 | `0xd6587e...0ac553` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sonic | unit-240251 | `0xe4372d...93674a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240256 | `0xefd7d5...b705e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240258 | `0xf47bb6...3e1885` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240259 | `0xf7d85e...3e9c9c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x9676e6...ec18e0` | CircuitBreaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcb170b...4d90de` | CircuitBreaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x9676e6...ec18e0` | CircuitBreaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdc86ad...74c7ea` | CircuitBreakerGuardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xdc86ad...74c7ea` | CircuitBreakerGuardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x765224...24994d` | CircuitBreakerOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x765224...24994d` | CircuitBreakerOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x6ec218...7455ae` | DeltaNeutralStakingStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xea95e4...27b6da` | EpochRewardsVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5aee4b...20e841` | EpochRewardsVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5dd1a7...88082c` | FT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5dd1a7...88082c` | FT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5dd1a7...88082c` | FT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5dd1a7...88082c` | FT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x5dd1a7...88082c` | FT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa09d08...1359eb` | ftACL | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x095d8b...bbbf59` | ftYieldWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x267df6...07cb36` | ftYieldWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9d96ba...44e305` | ftYieldWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa143a9...337573` | ftYieldWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe5270e...8c97b6` | ftYieldWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe6880f...1b5625` | ftYieldWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x267df6...07cb36` | ftYieldWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x28cca8...2347d6` | ftYieldWrapperV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6aaf84...7e837d` | ftYieldWrapperV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb44a9c...8cb87f` | ftYieldWrapperV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x0237a6...97ab6a` | ftYieldWrapperV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x9acdce...82cd0b` | ftYieldWrapperV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8263a0...f140e2` | LeverageRfqEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x8263a0...f140e2` | LeverageRfqEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x09cd85...29ef69` | LongTailIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x09cd85...29ef69` | LongTailIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x07ec85...25d12f` | MajorIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x07ec85...25d12f` | MajorIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3633eb...1c29f2` | MetaActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x3633eb...1c29f2` | MetaActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4f83ac...3a3497` | MetaSessionActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x4f83ac...3a3497` | MetaSessionActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x0c6f8e...50ee31` | MintAndRedeem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa4215d...ce04f2` | pFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x312486...cf570c` | pFTMarketplace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x90ae2c...69922a` | PutManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xba49d0...75ebaa` | PutManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x823a97...1f53f4` | RelayerAuth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x823a97...1f53f4` | RelayerAuth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeb00b3...39dc32` | RfqEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xeb00b3...39dc32` | RfqEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x325373...38710d` | StableIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x325373...38710d` | StableIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 53 |
| upstream | 19 |
| standard_library | 2 |
| needs_review | 69 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
