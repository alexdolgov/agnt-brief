# Agentic Audit Brief: Kine Finance

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

- Project: Kine Finance (`kine-finance`)
- Website: [https://kine.finance/](https://kine.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, polygon
- Contract surface: 51 unique implementations (55 raw deployments)
- Coverage basis: 0/48 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $916,821.05
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Kine Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 66 contract row(s) across bsc, ethereum, polygon. Structural roles: 47 unclassified, 16 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 66
- Structural roles: unclassified (47), core (16), supporting (3)
- Contract kinds: contract (66)
- Detected standards: ownable (12), erc20 (10), pausable (3)
- Frameworks: openzeppelin (13)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 53 contracts are derived from known codebases. 53 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x9636ea...a30cc7`, chain 1)
- UnnamedContract (`0x977746...34a8a4`, chain 1)
- UnnamedContract (`0x01dcdb...eaf12d`, chain 56)
- Kaptain (`0xf8c7b7...7c871f`, chain 1)
- KaptainV2 (`0x1540e5...6a9f0c`, chain 1)
- KaptainV2 (`0xd4c220...896a06`, chain 56)
- KaptainV2 (`0x0544be...a2fc39`, chain 137)
- KErc20Delegator (`0x1568a7...59eba3`, chain 1)
- KErc20Delegator (`0x377f10...f586ab`, chain 1)
- KErc20Delegator (`0x473ccd...878ee8`, chain 1)
- KErc20Delegator (`0x63b63b...dd5a73`, chain 1)
- KErc20Delegator (`0x3a8502...9b57c2`, chain 56)
- KErc20Delegator (`0x670076...f54fa0`, chain 56)
- KErc20Delegator (`0xa58e82...d35780`, chain 56)
- KErc20Delegator (`0xd61867...24b847`, chain 56)
- KErc20Delegator (`0xf8c7b7...7c871f`, chain 56)
- KErc20Delegator (`0x3770eb...f0b259`, chain 137)
- KErc20Delegator (`0x4f6a33...7c49cd`, chain 137)
- KErc20Delegator (`0x6c0ed4...972d91`, chain 137)
- KErc20Delegator (`0x96f451...e64ef7`, chain 137)
- KErc20Delegator (`0xc903e8...0ac1b4`, chain 137)
- KEther (`0xa58e82...d35780`, chain 1)
- KEther (`0x5fbe4e...60b055`, chain 56)
- KEther (`0xf186a6...2425f9`, chain 137)
- Kine (`0xcbfef8...85f05d`, chain 1)
- Kine (`0xbfa9df...752d7f`, chain 56)
- Kine (`0xa9c174...6ccd87`, chain 137)
- KineMultiSigWallet (`0xa6e17a...330191`, chain 1)
- KineMultiSigWallet (`0x6534af...a0446c`, chain 56)
- KineMultiSigWallet (`0xa8c2a4...757198`, chain 137)
- KineOracleV2 (`0xd546a5...2f9494`, chain 137)
- KineRanch (`0xa8d764...9cc692`, chain 1)
- KineUSD (`0xd4c220...896a06`, chain 1)
- KineUSD (`0xd819d9...8d4ab4`, chain 56)
- KineUSD (`0x03324b...fc99a2`, chain 137)
- KMCDDelegator (`0xaf2617...b6555f`, chain 1)
- KMCDDelegator (`0x4f1ab9...177986`, chain 56)
- KMCDDelegator (`0xcd6b46...a0c54c`, chain 137)
- KUSDMinterDelegator (`0xcea2d0...d7d128`, chain 1)
- KUSDMinterDelegator (`0x42fe8e...d28989`, chain 56)
- KUSDMinterDelegator (`0x1b80c2...b774f9`, chain 137)
- KUSDVault (`0xd61867...24b847`, chain 1)
- KUSDVault (`0xaf2617...b6555f`, chain 56)
- KUSDVault (`0x68b973...aa3e47`, chain 137)
- LPStakingRewards (`0x80850d...5e52bf`, chain 1)
- LPStakingRewards (`0x834c3b...33606b`, chain 1)
- LPStakingRewards (`0xc75ba7...a0c9b6`, chain 1)
- StakingRewardsV2 (`0x308043...d919ad`, chain 56)
- StakingRewardsV2 (`0x6c2c7c...85d3d7`, chain 56)
- StakingRewardsV2 (`0x4d7242...2a8636`, chain 137)
- StakingRewardsV2 (`0x69c78c...ceedf9`, chain 137)
- Timelock (`0x9e8e62...e2d03b`, chain 1)
- Unitroller (`0xbb7d94...fd1a92`, chain 1)

## Contract Surface Quality

- Indexed contracts: 66; live-surface contracts included: 66 (52 live, 14 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 51/51 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/48 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 51 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 23
- Deployed-live implementations: 51 of 51 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/48
- Verified + Unaudited implementations: 48
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 51
- Raw deployments: 55
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

### ⚠️ Verified + Unaudited (48)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ControllerV2 | governance | project_anchor | own_supporting | 1 | ethereum | unit-388216 | `0xbb7d94...fd1a92` | ⚠️ Unaudited |
| ControllerV2 | unknown | project_anchor | own_supporting | 1 | bsc | unit-388232 | `0x3c2ddd...32b571` | ⚠️ Unaudited |
| ControllerV2 | unknown | project_anchor | own_supporting | 1 | polygon | unit-388222 | `0xdff18a...b96881` | ⚠️ Unaudited |
| Kaptain | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388196 | `0xf8c7b7...7c871f` | ⚠️ Unaudited |
| KaptainV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388183 | `0x1540e5...6a9f0c` | ⚠️ Unaudited |
| KaptainV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-388213 | `0xd4c220...896a06` | ⚠️ Unaudited |
| KaptainV2 | unknown | project_anchor | own_supporting | 0 | polygon | unit-388198 | `0x0544be...a2fc39` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388218 | `0x1568a7...59eba3` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388217 | `0x377f10...f586ab` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388215 | `0x473ccd...878ee8` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388221 | `0x63b63b...dd5a73` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 5 | bsc | unit-388233 (5 proxies) | 5 deployments: bsc `0x3a8502...9b57c2`; bsc `0x670076...f54fa0`; bsc `0xa58e82...d35780`; bsc `0xd61867...24b847`; bsc `0xf8c7b7...7c871f` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | polygon | unit-388228 | `0x3770eb...f0b259` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | polygon | unit-388223 | `0x4f6a33...7c49cd` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | polygon | unit-388229 | `0x6c0ed4...972d91` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | polygon | unit-388225 | `0x96f451...e64ef7` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | polygon | unit-388227 | `0xc903e8...0ac1b4` | ⚠️ Unaudited |
| KEther | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388189 | `0xa58e82...d35780` | ⚠️ Unaudited |
| KEther | unknown | project_anchor | own_supporting | 0 | bsc | unit-388208 | `0x5fbe4e...60b055` | ⚠️ Unaudited |
| KEther | unknown | project_anchor | own_supporting | 0 | polygon | unit-388205 | `0xf186a6...2425f9` | ⚠️ Unaudited |
| Kine | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388193 | `0xcbfef8...85f05d` | ⚠️ Unaudited |
| Kine | unknown | project_anchor | own_supporting | 0 | bsc | unit-388212 | `0xbfa9df...752d7f` | ⚠️ Unaudited |
| Kine | unknown | project_anchor | own_supporting | 0 | polygon | unit-388203 | `0xa9c174...6ccd87` | ⚠️ Unaudited |
| KineMultiSigWallet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388190 | `0xa6e17a...330191` | ⚠️ Unaudited |
| KineMultiSigWallet | unknown | project_anchor | own_supporting | 0 | bsc | unit-388209 | `0x6534af...a0446c` | ⚠️ Unaudited |
| KineMultiSigWallet | unknown | project_anchor | own_supporting | 0 | polygon | unit-388202 | `0xa8c2a4...757198` | ⚠️ Unaudited |
| KineOracleV2 | unknown | project_anchor | own_supporting | 0 | polygon | unit-388204 | `0xd546a5...2f9494` | ⚠️ Unaudited |
| KineRanch | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388191 | `0xa8d764...9cc692` | ⚠️ Unaudited |
| KineUSD | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388194 | `0xd4c220...896a06` | ⚠️ Unaudited |
| KineUSD | unknown | project_anchor | own_supporting | 0 | bsc | unit-388214 | `0xd819d9...8d4ab4` | ⚠️ Unaudited |
| KineUSD | unknown | project_anchor | own_supporting | 0 | polygon | unit-388197 | `0x03324b...fc99a2` | ⚠️ Unaudited |
| KMCDDelegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388220 | `0xaf2617...b6555f` | ⚠️ Unaudited |
| KMCDDelegate | unknown | project_anchor | own_supporting | 1 | bsc | unit-388230 | `0x4f1ab9...177986` | ⚠️ Unaudited |
| KMCDDelegate | unknown | project_anchor | own_supporting | 1 | polygon | unit-388226 | `0xcd6b46...a0c54c` | ⚠️ Unaudited |
| KUSDMinterV3 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388219 | `0xcea2d0...d7d128` | ⚠️ Unaudited |
| KUSDMinterV3 | unknown | project_anchor | own_supporting | 1 | bsc | unit-388231 | `0x42fe8e...d28989` | ⚠️ Unaudited |
| KUSDMinterV3 | unknown | project_anchor | own_supporting | 1 | polygon | unit-388224 | `0x1b80c2...b774f9` | ⚠️ Unaudited |
| KUSDVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388195 | `0xd61867...24b847` | ⚠️ Unaudited |
| KUSDVault | unknown | project_anchor | own_supporting | 0 | bsc | unit-388211 | `0xaf2617...b6555f` | ⚠️ Unaudited |
| KUSDVault | unknown | project_anchor | own_supporting | 0 | polygon | unit-388200 | `0x68b973...aa3e47` | ⚠️ Unaudited |
| LPStakingRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388184 | `0x80850d...5e52bf` | ⚠️ Unaudited |
| LPStakingRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388185 | `0x834c3b...33606b` | ⚠️ Unaudited |
| LPStakingRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388192 | `0xc75ba7...a0c9b6` | ⚠️ Unaudited |
| StakingRewardsV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-388207 | `0x308043...d919ad` | ⚠️ Unaudited |
| StakingRewardsV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-388210 | `0x6c2c7c...85d3d7` | ⚠️ Unaudited |
| StakingRewardsV2 | unknown | project_anchor | own_supporting | 0 | polygon | unit-388199 | `0x4d7242...2a8636` | ⚠️ Unaudited |
| StakingRewardsV2 | unknown | project_anchor | own_supporting | 0 | polygon | unit-388201 | `0x69c78c...ceedf9` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388188 | `0x9e8e62...e2d03b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388186 | `0x9636ea...a30cc7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388187 | `0x977746...34a8a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-388206 | `0x01dcdb...eaf12d` | ❓ Unverified |

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
| ethereum | `0xbb7d94...fd1a92` | ControllerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3c2ddd...32b571` | ControllerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xdff18a...b96881` | ControllerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf8c7b7...7c871f` | Kaptain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1540e5...6a9f0c` | KaptainV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd4c220...896a06` | KaptainV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x0544be...a2fc39` | KaptainV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1568a7...59eba3` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x377f10...f586ab` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x473ccd...878ee8` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x63b63b...dd5a73` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3a8502...9b57c2` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x3770eb...f0b259` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x4f6a33...7c49cd` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x6c0ed4...972d91` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x96f451...e64ef7` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xc903e8...0ac1b4` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa58e82...d35780` | KEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5fbe4e...60b055` | KEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xf186a6...2425f9` | KEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcbfef8...85f05d` | Kine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xbfa9df...752d7f` | Kine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa9c174...6ccd87` | Kine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa6e17a...330191` | KineMultiSigWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6534af...a0446c` | KineMultiSigWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa8c2a4...757198` | KineMultiSigWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xd546a5...2f9494` | KineOracleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa8d764...9cc692` | KineRanch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd4c220...896a06` | KineUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd819d9...8d4ab4` | KineUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x03324b...fc99a2` | KineUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaf2617...b6555f` | KMCDDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x4f1ab9...177986` | KMCDDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xcd6b46...a0c54c` | KMCDDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcea2d0...d7d128` | KUSDMinterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x42fe8e...d28989` | KUSDMinterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x1b80c2...b774f9` | KUSDMinterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd61867...24b847` | KUSDVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xaf2617...b6555f` | KUSDVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x68b973...aa3e47` | KUSDVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x80850d...5e52bf` | LPStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x834c3b...33606b` | LPStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc75ba7...a0c9b6` | LPStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x308043...d919ad` | StakingRewardsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6c2c7c...85d3d7` | StakingRewardsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x4d7242...2a8636` | StakingRewardsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x69c78c...ceedf9` | StakingRewardsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9e8e62...e2d03b` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 48 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

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
