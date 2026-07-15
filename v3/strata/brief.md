# Agentic Audit Brief: Strata

## Export Authority

- Production state: **published scope**
- Raw selected rows: 17 across 3 audit(s)
- Eligible audit results: 7 (3 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Strata (`strata`)
- Website: [https://strata.money](https://strata.money)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 83 unique implementations (83 raw deployments)
- Coverage basis: 10/82 confirmed own live verified implementations (12.2%); conservative 12.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $66,577,693.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Strata. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 144 contract row(s) across ethereum. Structural roles: 117 unclassified, 10 infra, 10 supporting, 7 core. 12 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 144
- Structural roles: unclassified (117), infra (10), supporting (10), core (7)
- Contract kinds: contract (144)
- Detected standards: erc1967proxy (8), accesscontrol (5), erc165 (5), ownable (3), ownable2step (3)
- Frameworks: openzeppelin (25), openzeppelin-upgradeable (4)
- Upgradeable-pattern rows: 12

## Fork Analysis

0 of 82 contracts are derived from known codebases. 82 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x277d26...2cea5b`, chain 1)
- AaveAprPairProvider (`0x1c1377...f0af73`, chain 1)
- AaveOracleAprPairProvider (`0x991e78...b929aa`, chain 1)
- AccessControlManager (`0x040ef2...f8c74a`, chain 1)
- AccessControlManager (`0x06e84a...8203e4`, chain 1)
- AccessControlManager (`0x6ce1aa...601c36`, chain 1)
- AccessControlManager (`0xd5d18d...e44014`, chain 1)
- AccessControlManager (`0xd61990...d399b8`, chain 1)
- ConstantOracleAprPairProvider (`0x8b7258...018bf0`, chain 1)
- ConstantOracleAprPairProvider (`0xd7bac4...b9eadc`, chain 1)
- FigureCooldownRequestImpl (`0x837ab0...127da4`, chain 1)
- GnosisSafeProxy (`0xa27ca9...b68b50`, chain 1)
- MidasCooldownRequestImpl (`0x6ce2fa...a12348`, chain 1)
- MidasCooldownRequestImpl (`0xb4605c...f7752e`, chain 1)
- SafeProxy (`0x4be374...694ef4`, chain 1)
- SaturnAprPairProvider (`0x4bcc15...854be8`, chain 1)
- SaturnCooldownRequestImpl (`0xfb8db7...9ac84e`, chain 1)
- sNUSDAprPairProvider (`0x12db79...2f9eab`, chain 1)
- StrataMasterChef (`0x4f2682...7e022d`, chain 1)
- StrataMasterChef (`0xb2a3cf...77b706`, chain 1)
- TransparentUpgradeableProxy (`0x011e55...5a455d`, chain 1)
- TransparentUpgradeableProxy (`0x03dbbc...11dbcc`, chain 1)
- TransparentUpgradeableProxy (`0x0404ea...cdf1ce`, chain 1)
- TransparentUpgradeableProxy (`0x0e90b8...6267d7`, chain 1)
- TransparentUpgradeableProxy (`0x0f93ba...818994`, chain 1)
- TransparentUpgradeableProxy (`0x1695a2...b4d171`, chain 1)
- TransparentUpgradeableProxy (`0x180f7b...e8cf88`, chain 1)
- TransparentUpgradeableProxy (`0x1abc3c...907990`, chain 1)
- TransparentUpgradeableProxy (`0x21d616...579115`, chain 1)
- TransparentUpgradeableProxy (`0x25138d...2929ab`, chain 1)
- TransparentUpgradeableProxy (`0x2a5236...2bc749`, chain 1)
- TransparentUpgradeableProxy (`0x2bb416...800ec2`, chain 1)
- TransparentUpgradeableProxy (`0x35bff7...9232eb`, chain 1)
- TransparentUpgradeableProxy (`0x39c7e6...27e6cf`, chain 1)
- TransparentUpgradeableProxy (`0x3cef2c...b5de88`, chain 1)
- TransparentUpgradeableProxy (`0x3d7d6f...cdc003`, chain 1)
- TransparentUpgradeableProxy (`0x440938...1bfbaa`, chain 1)
- TransparentUpgradeableProxy (`0x4c2680...72296e`, chain 1)
- TransparentUpgradeableProxy (`0x50e850...52f47e`, chain 1)
- TransparentUpgradeableProxy (`0x5efe7c...a2aa52`, chain 1)
- TransparentUpgradeableProxy (`0x60dae2...47eb79`, chain 1)
- TransparentUpgradeableProxy (`0x613d17...120e5f`, chain 1)
- TransparentUpgradeableProxy (`0x616af7...9381ac`, chain 1)
- TransparentUpgradeableProxy (`0x627ea6...129b53`, chain 1)
- TransparentUpgradeableProxy (`0x65a445...f589db`, chain 1)
- TransparentUpgradeableProxy (`0x6f6904...d681c1`, chain 1)
- TransparentUpgradeableProxy (`0x71ec07...788fda`, chain 1)
- TransparentUpgradeableProxy (`0x735edd...610f74`, chain 1)
- TransparentUpgradeableProxy (`0x7910cb...08805c`, chain 1)
- TransparentUpgradeableProxy (`0x7945e4...cb4bf7`, chain 1)
- TransparentUpgradeableProxy (`0x7a0f6f...89b30e`, chain 1)
- TransparentUpgradeableProxy (`0x7b6c96...bedd10`, chain 1)
- TransparentUpgradeableProxy (`0x80187f...f51c9e`, chain 1)
- TransparentUpgradeableProxy (`0x807150...fd184d`, chain 1)
- TransparentUpgradeableProxy (`0x83c11b...0a59e1`, chain 1)
- TransparentUpgradeableProxy (`0x908b39...6c0e20`, chain 1)
- TransparentUpgradeableProxy (`0xa436c5...355102`, chain 1)
- TransparentUpgradeableProxy (`0xa61776...fb846b`, chain 1)
- TransparentUpgradeableProxy (`0xaf32d4...f2b228`, chain 1)
- TransparentUpgradeableProxy (`0xbe71d2...e324be`, chain 1)
- TransparentUpgradeableProxy (`0xc58d04...a53d8f`, chain 1)
- TransparentUpgradeableProxy (`0xcced21...c40d60`, chain 1)
- TransparentUpgradeableProxy (`0xce7043...deb3f1`, chain 1)
- TransparentUpgradeableProxy (`0xce7b00...97b090`, chain 1)
- TransparentUpgradeableProxy (`0xd1fc85...82e4e9`, chain 1)
- TransparentUpgradeableProxy (`0xd2923d...e32044`, chain 1)
- TransparentUpgradeableProxy (`0xd6dad1...6a6faf`, chain 1)
- TransparentUpgradeableProxy (`0xd8ea64...2e7823`, chain 1)
- TransparentUpgradeableProxy (`0xdbf4fb...e7099f`, chain 1)
- TransparentUpgradeableProxy (`0xe4a3a2...bb2a4a`, chain 1)
- TransparentUpgradeableProxy (`0xe851de...455b66`, chain 1)
- TransparentUpgradeableProxy (`0xeb205d...78714b`, chain 1)
- TransparentUpgradeableProxy (`0xeb30f8...b4f693`, chain 1)
- TransparentUpgradeableProxy (`0xece480...f28d64`, chain 1)
- TransparentUpgradeableProxy (`0xeed127...c18c75`, chain 1)
- TransparentUpgradeableProxy (`0xef9911...e7a95a`, chain 1)
- TransparentUpgradeableProxy (`0xf4c91f...4c2f27`, chain 1)
- TransparentUpgradeableProxy (`0xf4ff82...7c4ddc`, chain 1)
- TransparentUpgradeableProxy (`0xf7eb8d...821688`, chain 1)
- TransparentUpgradeableProxy (`0xfaa9a0...53d066`, chain 1)
- TransparentUpgradeableProxy (`0xfc8070...25e772`, chain 1)
- TransparentUpgradeableProxy (`0xff408b...71c234`, chain 1)

## Contract Surface Quality

- Indexed contracts: 144; live-surface contracts included: 144 (82 live, 62 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 83/83 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 10/82 (12.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 83 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 64
- Deployed-live implementations: 83 of 83 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 10/82
- Verified + Unaudited implementations: 72
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 83
- Raw deployments: 83
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 3 fresh, 0 aging, 0 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: 12.2% (Cyfrin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 10 | 12.2% | 2026-01 |
| Guardian | Tier 2 | 6 | 7.3% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Accounting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257198 | `0x5efe7c...a2aa52` | ✅ Audited |
| ERC20Cooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257162 | `0xd6dad1...6a6faf` | ✅ Audited |
| SharesCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257159 | `0x0404ea...cdf1ce` | ✅ Audited |
| StrataCDO | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257149 | `0x7b6c96...bedd10` | ✅ Audited |
| StrataCDO | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257180 | `0x908b39...6c0e20` | ✅ Audited |
| StrataMasterChef | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257128 | `0x4f2682...7e022d` | ✅ Audited |
| sUSDeCooldownRequestImpl | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257121 | `0x00a960...26dde2` | ✅ Audited |
| sUSDeStrategy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257148 | `0xdbf4fb...e7099f` | ✅ Audited |
| TwoStepConfigManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257151 | `0x60dae2...47eb79` | ✅ Audited |
| UnstakeCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257188 | `0x735edd...610f74` | ✅ Audited |

### ⚠️ Verified + Unaudited (72)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveAprPairProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257125 | `0x1c1377...f0af73` | ⚠️ Unaudited |
| AaveOracleAprPairProvider | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-257134 | `0x991e78...b929aa` | ⚠️ Unaudited |
| AccessControlManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-257122 | `0x040ef2...f8c74a` | ⚠️ Unaudited |
| AccessControlManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-257123 | `0x06e84a...8203e4` | ⚠️ Unaudited |
| AccessControlManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-257129 | `0x6ce1aa...601c36` | ⚠️ Unaudited |
| AccessControlManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-257137 | `0xd5d18d...e44014` | ⚠️ Unaudited |
| AccessControlManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-257138 | `0xd61990...d399b8` | ⚠️ Unaudited |
| Accounting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257169 | `0x180f7b...e8cf88` | ⚠️ Unaudited |
| Accounting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257156 | `0xa436c5...355102` | ⚠️ Unaudited |
| AprPairFeed | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257166 | `0x1695a2...b4d171` | ⚠️ Unaudited |
| AprPairFeed | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257193 | `0x21d616...579115` | ⚠️ Unaudited |
| AprPairFeed | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257163 | `0x2bb416...800ec2` | ⚠️ Unaudited |
| AprPairFeed | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257200 | `0xd1fc85...82e4e9` | ⚠️ Unaudited |
| AprPairFeed | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257184 | `0xd2923d...e32044` | ⚠️ Unaudited |
| AprPairFeed | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257203 | `0xece480...f28d64` | ⚠️ Unaudited |
| ConstantOracleAprPairProvider | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-257132 | `0x8b7258...018bf0` | ⚠️ Unaudited |
| ConstantOracleAprPairProvider | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-257139 | `0xd7bac4...b9eadc` | ⚠️ Unaudited |
| DiscreteAccounting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257190 | `0x0e90b8...6267d7` | ⚠️ Unaudited |
| DiscreteAccounting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257192 | `0xaf32d4...f2b228` | ⚠️ Unaudited |
| DiscreteAccounting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257158 | `0xe4a3a2...bb2a4a` | ⚠️ Unaudited |
| ERC20Cooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257177 | `0x1abc3c...907990` | ⚠️ Unaudited |
| ERC20Cooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257173 | `0x25138d...2929ab` | ⚠️ Unaudited |
| ERC20Cooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257164 | `0x4c2680...72296e` | ⚠️ Unaudited |
| ERC20Cooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257155 | `0x71ec07...788fda` | ⚠️ Unaudited |
| ERC20Cooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257185 | `0xbe71d2...e324be` | ⚠️ Unaudited |
| FigureCooldownRequestImpl | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257131 | `0x837ab0...127da4` | ⚠️ Unaudited |
| FigureStrategy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257153 | `0x80187f...f51c9e` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-257194 | `0xa27ca9...b68b50` | ⚠️ Unaudited |
| MidasCooldownRequestImpl | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257130 | `0x6ce2fa...a12348` | ⚠️ Unaudited |
| MidasCooldownRequestImpl | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257136 | `0xb4605c...f7752e` | ⚠️ Unaudited |
| MidasStrategy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257167 | `0x807150...fd184d` | ⚠️ Unaudited |
| MidasStrategy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257175 | `0xeed127...c18c75` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257150 | `0x4be374...694ef4` | ⚠️ Unaudited |
| SaturnAprPairProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257127 | `0x4bcc15...854be8` | ⚠️ Unaudited |
| SaturnCooldownRequestImpl | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257140 | `0xfb8db7...9ac84e` | ⚠️ Unaudited |
| SaturnStrategy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257187 | `0xce7b00...97b090` | ⚠️ Unaudited |
| SharesCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257146 | `0x83c11b...0a59e1` | ⚠️ Unaudited |
| SharesCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257170 | `0xce7043...deb3f1` | ⚠️ Unaudited |
| SharesCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257178 | `0xe851de...455b66` | ⚠️ Unaudited |
| SharesCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257182 | `0xeb30f8...b4f693` | ⚠️ Unaudited |
| sNUSDAprPairProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257124 | `0x12db79...2f9eab` | ⚠️ Unaudited |
| sNUSDStrategy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257154 | `0x3cef2c...b5de88` | ⚠️ Unaudited |
| StrataCDO | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257174 | `0x39c7e6...27e6cf` | ⚠️ Unaudited |
| StrataCDO | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257143 | `0x613d17...120e5f` | ⚠️ Unaudited |
| StrataCDO | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257201 | `0xa61776...fb846b` | ⚠️ Unaudited |
| StrataCDO | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257172 | `0xff408b...71c234` | ⚠️ Unaudited |
| StrataMasterChef | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257135 | `0xb2a3cf...77b706` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257157 | `0x011e55...5a455d` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257171 | `0x35bff7...9232eb` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257195 | `0x3d7d6f...cdc003` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257152 | `0x627ea6...129b53` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257168 | `0x65a445...f589db` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257196 | `0xc58d04...a53d8f` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257199 | `0xcced21...c40d60` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257176 | `0xeb205d...78714b` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257204 | `0xf4c91f...4c2f27` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257181 | `0xf7eb8d...821688` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257183 | `0xfaa9a0...53d066` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257186 | `0xfc8070...25e772` | ⚠️ Unaudited |
| TrancheDepositor | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257161 | `0x50e850...52f47e` | ⚠️ Unaudited |
| TrancheDepositor | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257145 | `0x7945e4...cb4bf7` | ⚠️ Unaudited |
| TrancheDepositor | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257144 | `0xd8ea64...2e7823` | ⚠️ Unaudited |
| TwoStepConfigManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257160 | `0x03dbbc...11dbcc` | ⚠️ Unaudited |
| TwoStepConfigManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257142 | `0x0f93ba...818994` | ⚠️ Unaudited |
| TwoStepConfigManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257141 | `0x7a0f6f...89b30e` | ⚠️ Unaudited |
| TwoStepConfigManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257191 | `0xef9911...e7a95a` | ⚠️ Unaudited |
| TwoStepConfigManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257179 | `0xf4ff82...7c4ddc` | ⚠️ Unaudited |
| UnstakeCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257147 | `0x2a5236...2bc749` | ⚠️ Unaudited |
| UnstakeCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257197 | `0x440938...1bfbaa` | ⚠️ Unaudited |
| UnstakeCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257189 | `0x616af7...9381ac` | ⚠️ Unaudited |
| UnstakeCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257165 | `0x6f6904...d681c1` | ⚠️ Unaudited |
| UnstakeCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257202 | `0x7910cb...08805c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257126 | `0x277d26...2cea5b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audits.md](https://docs.strata.markets/technical-documentation/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [index.html](https://certificate.quantstamp.com/full/strata-discrete-accounting/02318e87-e35f-4e96-81ad-192253203d55/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf) | Cyfrin | Audit | 2026-01 | fresh | Direct | contract_name | matched | 5 | 5 | 0 | 1 | high |
| [2025-10-08-cyfrin-strata-tranches-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-10-08-cyfrin-strata-tranches-v2.0.pdf) | Cyfrin | Audit | 2025-10 | fresh | Direct | contract_name | matched | 6 | 4 | 0 | 9 | high |
| [Strata_Tranches_report.pdf](https://github.com/GuardianAudits/Audits/blob/main/Strata/Strata_Tranches_report.pdf) | Guardian | Audit | 2025-10 | fresh | Direct | contract_name | matched | 6 | 4 | 0 | 10 | high |
| [www.papermark.com/view/cmgm9mjyd0001l204bjrh6r1b](https://www.papermark.com/view/cmgm9mjyd0001l204bjrh6r1b) | Cyfrin | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [www.papermark.com/view/cmgm9op9b0003l404g395i6a5](https://www.papermark.com/view/cmgm9op9b0003l404g395i6a5) | Quantstamp | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4595] audits.md — no match: The document is an index page listing audit reports but does not contain specific contract names or a scope section with file paths. No contracts in scope are identifiable.
- [4596] index.html — no match: The provided text is incomplete and does not contain any contract names or audit details.
- [4597] 2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf — matched: Audit scope section lists 6 contracts. Date from cover page: January 23, 2026.
- [4600] 2025-10-08-cyfrin-strata-tranches-v2.0.pdf — matched: All 15 contracts listed in the 'Audit Scope' section were extracted. The audit date is explicitly stated on the cover page as 'October 8, 2025'.
- [4601] Strata_Tranches_report.pdf — matched: Extracted 16 contract names from the scope table on page 5. Audit date found on cover page and delivery date.
- [4602] www.papermark.com/view/cmgm9mjyd0001l204bjrh6r1b — no match: The provided text is not an audit report; it is a title/header for a product called Papermark. No contracts, scope, or audit date were found.
- [4603] www.papermark.com/view/cmgm9op9b0003l404g395i6a5 — no match: The provided text is not an audit report; it is a title/header for a product called Papermark. No contracts, scope, or audit date were found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf | SharesCooldown | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0xeb30f8...b4f693` — deployed 2026-05-18 02:21:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x0404ea...cdf1ce` — deployed 2026-02-05 19:43:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xce7043...deb3f1` — deployed 2026-03-30 12:09:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe851de...455b66` — deployed 2026-04-25 01:33:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x83c11b...0a59e1` — deployed 2026-04-10 11:14:23+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2026-02-05 was 13d from audit; next candidate 66d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf | sUSDeStrategy | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xdbf4fb...e7099f` — deployed 2025-10-02 23:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf | Tranche | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x3d7d6f...cdc003` — deployed 2025-10-02 23:09:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfc8070...25e772` — deployed 2026-02-05 20:17:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xcced21...c40d60` — deployed 2026-04-10 11:40:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xeb205d...78714b` — deployed 2026-03-30 12:15:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf7eb8d...821688` — deployed 2026-04-10 11:40:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x35bff7...9232eb` — deployed 2026-05-18 02:27:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfaa9a0...53d066` — deployed 2026-04-25 01:42:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x011e55...5a455d` — deployed 2026-04-25 01:42:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x627ea6...129b53` — deployed 2026-03-30 12:16:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc58d04...a53d8f` — deployed 2025-10-02 23:03:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf4c91f...4c2f27` — deployed 2026-05-18 02:26:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x65a445...f589db` — deployed 2026-02-05 20:18:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf | StrataCDO | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x613d17...120e5f` — deployed 2026-04-10 11:09:23+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (selected) `0x7b6c96...bedd10` — deployed 2026-02-05 19:29:23+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x39c7e6...27e6cf` — deployed 2026-03-30 12:07:11+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xff408b...71c234` — deployed 2026-05-18 02:20:35+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x908b39...6c0e20` — deployed 2025-10-02 22:54:35+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xa61776...fb846b` — deployed 2026-04-25 01:31:47+03 — liveness: live (proxy_unit_reachable) | deployment-date disambiguation: 2026-02-05 was 13d from audit; next candidate 66d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf | Accounting | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x180f7b...e8cf88` — deployed 2026-04-25 01:41:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xa436c5...355102` — deployed 2025-10-02 23:02:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x5efe7c...a2aa52` — deployed 2026-02-05 19:48:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2026-02-05 was 13d from audit; next candidate 92d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf | TwoStepConfigManager | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x03dbbc...11dbcc` — deployed 2026-04-25 02:03:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef9911...e7a95a` — deployed 2026-03-30 13:23:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x60dae2...47eb79` — deployed 2026-02-05 20:42:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7a0f6f...89b30e` — deployed 2026-04-10 11:59:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x0f93ba...818994` — deployed 2025-11-27 16:33:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf4ff82...7c4ddc` — deployed 2026-05-18 02:35:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2026-02-05 was 13d from audit; next candidate 57d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | AccessControlled | unmatched — not counted | — | listed in scope | no |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | AccessControlManager | ambiguous — not counted | AccessControlManager (alternative) `0xd5d18d...e44014` — deployed 2026-05-18 02:20:11+03 — liveness: live (current_address_book_code)<br>AccessControlManager (alternative) `0x6ce1aa...601c36` — deployed 2026-04-25 01:31:11+03 — liveness: live (code_present_context)<br>AccessControlManager (alternative) `0xd61990...d399b8` — deployed 2026-03-30 12:06:23+03 — liveness: live (code_present_context)<br>AccessControlManager (alternative) `0x040ef2...f8c74a` — deployed 2026-04-10 11:08:47+03 — liveness: live (current_address_book_code)<br>AccessControlManager (alternative) `0x06e84a...8203e4` — deployed 2026-02-05 18:39:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | StrataMasterChef | own contract | StrataMasterChef (selected) `0x4f2682...7e022d` — deployed 2025-10-31 17:42:23+03 — liveness: live (current_address_book_code)<br>StrataMasterChef (alternative) `0xb2a3cf...77b706` — deployed 2025-08-02 03:07:35+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-31 was 23d from audit; next candidate 67d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | ERC20Cooldown | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd6dad1...6a6faf` — deployed 2025-10-02 22:55:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4c2680...72296e` — deployed 2026-04-10 11:12:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xbe71d2...e324be` — deployed 2026-05-18 02:21:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x25138d...2929ab` — deployed 2026-04-25 01:32:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x71ec07...788fda` — deployed 2026-03-30 12:08:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x1abc3c...907990` — deployed 2026-02-05 19:42:59+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-02 was 6d from audit; next candidate 120d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | UnstakeCooldown | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x440938...1bfbaa` — deployed 2026-05-18 02:21:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2a5236...2bc749` — deployed 2026-02-05 19:43:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x6f6904...d681c1` — deployed 2026-04-10 11:13:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7910cb...08805c` — deployed 2026-03-30 12:08:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x735edd...610f74` — deployed 2025-10-02 22:56:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x616af7...9381ac` — deployed 2026-04-25 01:33:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-02 was 6d from audit; next candidate 120d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | CDOComponent | unmatched — not counted | — | listed in scope | no |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | Tranche | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x3d7d6f...cdc003` — deployed 2025-10-02 23:09:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfc8070...25e772` — deployed 2026-02-05 20:17:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xcced21...c40d60` — deployed 2026-04-10 11:40:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xeb205d...78714b` — deployed 2026-03-30 12:15:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf7eb8d...821688` — deployed 2026-04-10 11:40:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x35bff7...9232eb` — deployed 2026-05-18 02:27:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfaa9a0...53d066` — deployed 2026-04-25 01:42:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x011e55...5a455d` — deployed 2026-04-25 01:42:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x627ea6...129b53` — deployed 2026-03-30 12:16:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc58d04...a53d8f` — deployed 2025-10-02 23:03:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf4c91f...4c2f27` — deployed 2026-05-18 02:26:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x65a445...f589db` — deployed 2026-02-05 20:18:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | AprTupleFeed | unmatched — not counted | — | listed in scope | no |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | sUSDeCooldownRequestImpl | own contract | sUSDeCooldownRequestImpl (selected) `0x00a960...26dde2` — deployed 2025-10-02 22:56:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | sUSDeStrategy | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xdbf4fb...e7099f` — deployed 2025-10-02 23:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | UD60x18Extra | unmatched — not counted | — | listed in scope | no |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | StrataCDO | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x613d17...120e5f` — deployed 2026-04-10 11:09:23+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7b6c96...bedd10` — deployed 2026-02-05 19:29:23+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x39c7e6...27e6cf` — deployed 2026-03-30 12:07:11+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xff408b...71c234` — deployed 2026-05-18 02:20:35+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (selected) `0x908b39...6c0e20` — deployed 2025-10-02 22:54:35+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xa61776...fb846b` — deployed 2026-04-25 01:31:47+03 — liveness: live (proxy_unit_reachable) | deployment-date disambiguation: 2025-10-02 was 6d from audit; next candidate 120d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | YieldAccounting | unmatched — not counted | — | listed in scope | no |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | StrataCDOStorage | unmatched — not counted | — | listed in scope | no |
| Strata_Tranches_report.pdf | StrataCDO | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x613d17...120e5f` — deployed 2026-04-10 11:09:23+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7b6c96...bedd10` — deployed 2026-02-05 19:29:23+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x39c7e6...27e6cf` — deployed 2026-03-30 12:07:11+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xff408b...71c234` — deployed 2026-05-18 02:20:35+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (selected) `0x908b39...6c0e20` — deployed 2025-10-02 22:54:35+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xa61776...fb846b` — deployed 2026-04-25 01:31:47+03 — liveness: live (proxy_unit_reachable) | deployment-date disambiguation: 2025-10-02 was 8d from audit; next candidate 118d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Strata_Tranches_report.pdf | StrataCDOStorage | unmatched — not counted | — | listed in scope table | no |
| Strata_Tranches_report.pdf | YieldAccounting | unmatched — not counted | — | listed in scope table | no |
| Strata_Tranches_report.pdf | AccessControlManager | ambiguous — not counted | AccessControlManager (alternative) `0xd5d18d...e44014` — deployed 2026-05-18 02:20:11+03 — liveness: live (current_address_book_code)<br>AccessControlManager (alternative) `0x6ce1aa...601c36` — deployed 2026-04-25 01:31:11+03 — liveness: live (code_present_context)<br>AccessControlManager (alternative) `0xd61990...d399b8` — deployed 2026-03-30 12:06:23+03 — liveness: live (code_present_context)<br>AccessControlManager (alternative) `0x040ef2...f8c74a` — deployed 2026-04-10 11:08:47+03 — liveness: live (current_address_book_code)<br>AccessControlManager (alternative) `0x06e84a...8203e4` — deployed 2026-02-05 18:39:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Strata_Tranches_report.pdf | AccessControlled | unmatched — not counted | — | listed in scope table | no |
| Strata_Tranches_report.pdf | StrataMasterChef | own contract | StrataMasterChef (selected) `0x4f2682...7e022d` — deployed 2025-10-31 17:42:23+03 — liveness: live (current_address_book_code)<br>StrataMasterChef (alternative) `0xb2a3cf...77b706` — deployed 2025-08-02 03:07:35+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-31 was 21d from audit; next candidate 69d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Strata_Tranches_report.pdf | UD60x18Extra | unmatched — not counted | — | listed in scope table | no |
| Strata_Tranches_report.pdf | Strategy | unmatched — not counted | — | listed in scope table | no |
| Strata_Tranches_report.pdf | AprTupleFeed | unmatched — not counted | — | listed in scope table | no |
| Strata_Tranches_report.pdf | CDOComponent | unmatched — not counted | — | listed in scope table | no |
| Strata_Tranches_report.pdf | Tranche | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x3d7d6f...cdc003` — deployed 2025-10-02 23:09:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfc8070...25e772` — deployed 2026-02-05 20:17:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xcced21...c40d60` — deployed 2026-04-10 11:40:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xeb205d...78714b` — deployed 2026-03-30 12:15:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf7eb8d...821688` — deployed 2026-04-10 11:40:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x35bff7...9232eb` — deployed 2026-05-18 02:27:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfaa9a0...53d066` — deployed 2026-04-25 01:42:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x011e55...5a455d` — deployed 2026-04-25 01:42:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x627ea6...129b53` — deployed 2026-03-30 12:16:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc58d04...a53d8f` — deployed 2025-10-02 23:03:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf4c91f...4c2f27` — deployed 2026-05-18 02:26:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x65a445...f589db` — deployed 2026-02-05 20:18:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Strata_Tranches_report.pdf | IsUSDe | unmatched — not counted | — | listed in scope table | no |
| Strata_Tranches_report.pdf | sUSDeCooldownRequestImpl | own contract | sUSDeCooldownRequestImpl (selected) `0x00a960...26dde2` — deployed 2025-10-02 22:56:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Strata_Tranches_report.pdf | sUSDeStrategy | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xdbf4fb...e7099f` — deployed 2025-10-02 23:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Strata_Tranches_report.pdf | ERC20Cooldown | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd6dad1...6a6faf` — deployed 2025-10-02 22:55:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4c2680...72296e` — deployed 2026-04-10 11:12:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xbe71d2...e324be` — deployed 2026-05-18 02:21:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x25138d...2929ab` — deployed 2026-04-25 01:32:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x71ec07...788fda` — deployed 2026-03-30 12:08:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x1abc3c...907990` — deployed 2026-02-05 19:42:59+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-02 was 8d from audit; next candidate 118d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Strata_Tranches_report.pdf | UnstakeCooldown | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x440938...1bfbaa` — deployed 2026-05-18 02:21:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2a5236...2bc749` — deployed 2026-02-05 19:43:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x6f6904...d681c1` — deployed 2026-04-10 11:13:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7910cb...08805c` — deployed 2026-03-30 12:08:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x735edd...610f74` — deployed 2025-10-02 22:56:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x616af7...9381ac` — deployed 2026-04-25 01:33:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-02 was 8d from audit; next candidate 118d; normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x040ef2...f8c74a` | AccessControlManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x06e84a...8203e4` | AccessControlManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ce1aa...601c36` | AccessControlManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd5d18d...e44014` | AccessControlManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd61990...d399b8` | AccessControlManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x180f7b...e8cf88` | Accounting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa436c5...355102` | Accounting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1695a2...b4d171` | AprPairFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x21d616...579115` | AprPairFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2bb416...800ec2` | AprPairFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd1fc85...82e4e9` | AprPairFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd2923d...e32044` | AprPairFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xece480...f28d64` | AprPairFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8b7258...018bf0` | ConstantOracleAprPairProvider | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd7bac4...b9eadc` | ConstantOracleAprPairProvider | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0e90b8...6267d7` | DiscreteAccounting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaf32d4...f2b228` | DiscreteAccounting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe4a3a2...bb2a4a` | DiscreteAccounting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1abc3c...907990` | ERC20Cooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x25138d...2929ab` | ERC20Cooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4c2680...72296e` | ERC20Cooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x71ec07...788fda` | ERC20Cooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbe71d2...e324be` | ERC20Cooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x837ab0...127da4` | FigureCooldownRequestImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x80187f...f51c9e` | FigureStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ce2fa...a12348` | MidasCooldownRequestImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb4605c...f7752e` | MidasCooldownRequestImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x807150...fd184d` | MidasStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeed127...c18c75` | MidasStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4bcc15...854be8` | SaturnAprPairProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfb8db7...9ac84e` | SaturnCooldownRequestImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xce7b00...97b090` | SaturnStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x83c11b...0a59e1` | SharesCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xce7043...deb3f1` | SharesCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe851de...455b66` | SharesCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeb30f8...b4f693` | SharesCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x12db79...2f9eab` | sNUSDAprPairProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3cef2c...b5de88` | sNUSDStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x39c7e6...27e6cf` | StrataCDO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x613d17...120e5f` | StrataCDO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa61776...fb846b` | StrataCDO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xff408b...71c234` | StrataCDO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb2a3cf...77b706` | StrataMasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x011e55...5a455d` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x35bff7...9232eb` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3d7d6f...cdc003` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x627ea6...129b53` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x65a445...f589db` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc58d04...a53d8f` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcced21...c40d60` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeb205d...78714b` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf4c91f...4c2f27` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf7eb8d...821688` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfaa9a0...53d066` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfc8070...25e772` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x50e850...52f47e` | TrancheDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7945e4...cb4bf7` | TrancheDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd8ea64...2e7823` | TrancheDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x03dbbc...11dbcc` | TwoStepConfigManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0f93ba...818994` | TwoStepConfigManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7a0f6f...89b30e` | TwoStepConfigManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xef9911...e7a95a` | TwoStepConfigManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf4ff82...7c4ddc` | TwoStepConfigManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2a5236...2bc749` | UnstakeCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x440938...1bfbaa` | UnstakeCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x616af7...9381ac` | UnstakeCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6f6904...d681c1` | UnstakeCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7910cb...08805c` | UnstakeCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 78 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 17 own (13 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 5 ambiguous, 15 unmatched
- Matched-own operational status: 17 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=4
- Match method counts: temporal_name=12, unique_name=5

Zero-match audit list:

- [4595] audits.md
- [4596] index.html
- [4602] www.papermark.com/view/cmgm9mjyd0001l204bjrh6r1b
- [4603] www.papermark.com/view/cmgm9op9b0003l404g395i6a5

Fork inheritance lineage and inherited audits are included when available.
