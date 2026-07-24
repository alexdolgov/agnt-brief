# Agentic Audit Brief: MegaETH Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: MegaETH Bridge (`megaeth-bridge`)
- Website: [https://www.megaeth.com/](https://www.megaeth.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 67 unique implementations (67 raw deployments)
- Coverage basis: 0/17 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $8,965,575.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for MegaETH Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 17 contract row(s) across ethereum. Structural roles: 12 core, 5 supporting. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 17
- Structural roles: core (12), supporting (5)
- Contract kinds: contract (17)
- Detected standards: erc1967proxy (6), erc165 (1), ownable (1), pausable (1)
- Frameworks: openzeppelin (11), openzeppelin-upgradeable (6), solmate (6), permit2 (1)
- Upgradeable-pattern rows: 6

## Fork Analysis

0 of 23 contracts are derived from known codebases. 23 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x150355311f965af4937fcca526f9df0573fd5b85`, chain 1)
- UnnamedContract (`0x4e59b44847b379578588920ca78fbf26c0b4956c`, chain 1)
- UnnamedContract (`0x5d0ff601bc8580d8682c0462df55343cb0b99285`, chain 1)
- UnnamedContract (`0x5ff137d4b0fdcd49dca30c7cf57e578a026d2789`, chain 1)
- UnnamedContract (`0x914d7fec6aac8cd542e72bca78b30650d45643d7`, chain 1)
- UnnamedContract (`0xefc2c1444ebcc4db75e7613d20c6a62ff67a167c`, chain 1)
- Create2Deployer (`0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2`, chain 1)
- CreateX (`0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed`, chain 1)
- EntryPoint (`0x0000000071727de22e5e9d8baf0edac6f37da032`, chain 1)
- ERC1967Proxy (`0xec2af1c8b110a61fd9c3fa6a554a031ca9943926`, chain 1)
- GnosisSafe (`0x69f4d1788e39c87893c980c06edf4b7f686e2938`, chain 1)
- GnosisSafeL2 (`0xfb1bffc9d739b8d520daf37df666da4c687191ea`, chain 1)
- L1ChugSplashProxy (`0x0ca3a2fbc3d770b578223fbb6b062fa875a2ee75`, chain 1)
- MultiSend (`0x998739bfdaadde7c933b942a68053933098f9eda`, chain 1)
- MultiSendCallOnly (`0xa1dabef33b3b82c7814b6d82a79e50f4ac44102b`, chain 1)
- Permit2 (`0x000000000022d473030f116ddee9f6b43ac78ba3`, chain 1)
- Proxy (`0x1ed92e1bc9a2735216540eddd0191144681cb77e`, chain 1)
- Proxy (`0x3d8ee269f87a7f3f0590c5c0d825fff06212a242`, chain 1)
- Proxy (`0x7f82f57f0dd546519324392e408b01fcc7d709e8`, chain 1)
- Proxy (`0x8546840adf796875cd9aacc5b3b048f6b2c9d563`, chain 1)
- Proxy (`0xf875030b9464001fc0f964e47546b0afeebd7c61`, chain 1)
- ResolvedDelegateProxy (`0x6c7198250087b29a8040ec63903bc130f4831cc9`, chain 1)
- SenderCreator (`0x7fc98430eaedbb6070b35b39d798725049088348`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 17; live-surface rows included: 17 (17 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/28 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/17 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 23 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 44 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 5 standard proxy/library)
- Proxy deployments represented within implementation groups: 14
- Confirmed-live implementations: 23 of 67 unique; 44 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/29
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 38
- Unique implementations: 67
- Raw deployments: 67
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CapToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcccc62962d17b8914c62d74ffb843d73b2a3cccc` | ⚠️ Unaudited |
| Create2Deployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246285 | `0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2` | ⚠️ Unaudited |
| CreateX | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246298 | `0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed` | ⚠️ Unaudited |
| EntryPoint | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246283 | `0x0000000071727de22e5e9d8baf0edac6f37da032` | ⚠️ Unaudited |
| ERC1820Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1820a4b7618bde71dce8cdc73aab6c95905fad24` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x88887be419578051ff9f4eb6c858a951921d8888` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-246307 | `0xec2af1c8b110a61fd9c3fa6a554a031ca9943926` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246293 | `0x69f4d1788e39c87893c980c06edf4b7f686e2938` | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246301 | `0xfb1bffc9d739b8d520daf37df666da4c687191ea` | ⚠️ Unaudited |
| L1ChugSplashProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-246302 | `0x0ca3a2fbc3d770b578223fbb6b062fa875a2ee75` | ⚠️ Unaudited |
| Merge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17fef0d05ffed818af08ae00bec06b65c4319618` | ⚠️ Unaudited |
| Multicall3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca11bde05977b3631167028862be2a173976ca11` | ⚠️ Unaudited |
| MultiSend | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246296 | `0x998739bfdaadde7c933b942a68053933098f9eda` | ⚠️ Unaudited |
| MultiSendCallOnly | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246297 | `0xa1dabef33b3b82c7814b6d82a79e50f4ac44102b` | ⚠️ Unaudited |
| Permit2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246282 | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x037b8fd9056a6d66422e4c471417564f35650049` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x10a5ef23c1ed5f06e157999dccb20b0c0be75c9b` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-246309 | `0x1ed92e1bc9a2735216540eddd0191144681cb77e` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-246308 | `0x3d8ee269f87a7f3f0590c5c0d825fff06212a242` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-246305 | `0x7f82f57f0dd546519324392e408b01fcc7d709e8` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-246303 | `0x8546840adf796875cd9aacc5b3b048f6b2c9d563` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-246304 | `0xf875030b9464001fc0f964e47546b0afeebd7c61` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a46427f3ed4e4b6f61a642143473d1df1a7fe9f` | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-246306 | `0x6c7198250087b29a8040ec63903bc130f4831cc9` | ⚠️ Unaudited |
| SenderCreator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246294 | `0x7fc98430eaedbb6070b35b39d798725049088348` | ⚠️ Unaudited |
| StakedUSDeOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xb0f70c0bd6fd87dbeb7c10dc692a2a6106817072` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xecac9c5f704e954931349da37f60e39f515c11c1` | ⚠️ Unaudited |
| USDeOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (38)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246286 | `0x150355311f965af4937fcca526f9df0573fd5b85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15b271d9012b5820fc42b1c495b4c1e206547de5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c639463bf04158df053b37ffc5f1e5c4d06548a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28b7e77f82b25b95953825f1e3ea0e36c1c29861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ea493384f42d7ea78564f3ef4c86986eab4a890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f55e14f0b2b2118d2026d20ad2c39eacbdcac47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32090fb1399a31cc095e6341a6353b7c09ba84fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000000000000000000000000000000000000f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000042` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246288 | `0x4e59b44847b379578588920ca78fbf26c0b4956c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246290 | `0x5d0ff601bc8580d8682c0462df55343cb0b99285` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246291 | `0x5ff137d4b0fdcd49dca30c7cf57e578a026d2789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6691d67ece85ed950244c2cb5848d6498134321f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6976594d5a85434a3425ae6cdf8056c729e1143d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246295 | `0x914d7fec6aac8cd542e72bca78b30650d45643d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9367a0c482703d8d9bda995b03f8e71056a72500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x978e53b644e32b6fcc2778e567a9b593b0f6b01a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x996ce957408804fec19237d866799d9c7076e48c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a96e366f6b2ed5850a38b58d355a80afd998411` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8f7e228738c499731f92ff65e2fd3e5122530fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab48b73a9e59af01afe91e18ca0774295581d07a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacc34c4d95def9f0bcf8c434f624d2d696d64029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2f34f8849a8607fd73e06d6849bda07c2b7de38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc903c68c1d389ced76fee0349067a4295828e6c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8c7e4ee4325ff4ef6c7e3f8a14b9afd35438c36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246300 | `0xefc2c1444ebcc4db75e7613d20c6a62ff67a167c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7d2f0d0b0517cbdbf87c86910ce10faaab3589d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfafddbb3fc7688494971a79cc65dca3ef82079e7` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 7
- Live contracts: 0
- Unknown liveness contracts: 7
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=7

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x1c639463bf04158df053b37ffc5f1e5c4d06548a` | non_address_book | unknown | unknown | unverified | n/a | `0x8b21106e95634b69433cb96da93fc703d5bdba64` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6976594d5a85434a3425ae6cdf8056c729e1143d` | non_address_book | unknown | unknown | unverified | n/a | `0x8b21106e95634b69433cb96da93fc703d5bdba64` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x978e53b644e32b6fcc2778e567a9b593b0f6b01a` | non_address_book | unknown | unknown | unverified | n/a | `0x8b21106e95634b69433cb96da93fc703d5bdba64` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa8f7e228738c499731f92ff65e2fd3e5122530fb` | non_address_book | unknown | unknown | unverified | n/a | `0x8b21106e95634b69433cb96da93fc703d5bdba64` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xab48b73a9e59af01afe91e18ca0774295581d07a` | non_address_book | unknown | unknown | unverified | n/a | `0x8b21106e95634b69433cb96da93fc703d5bdba64` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xacc34c4d95def9f0bcf8c434f624d2d696d64029` | non_address_book | unknown | unknown | unverified | n/a | `0x8b21106e95634b69433cb96da93fc703d5bdba64` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd8c7e4ee4325ff4ef6c7e3f8a14b9afd35438c36` | non_address_book | unknown | unknown | unverified | n/a | `0x8b21106e95634b69433cb96da93fc703d5bdba64` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [blocksec.com/audit-report/audit-report-megaeth--megaevm--stateless-validator---salt](https://blocksec.com/audit-report/audit-report-megaeth--megaevm--stateless-validator---salt) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [blocksec_megaeth_dtf_v1.0-signed.pdf](https://github.com/blocksecteam/audit-reports/blob/main/mixed/blocksec%5Fmegaeth%5Fdtf%5Fv1.0-signed.pdf) | BlockSec | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21120] blocksec.com/audit-report/audit-report-megaeth--megaevm--stateless-validator---salt — no match: The report explicitly lists three components in scope: MegaEVM, SALT, and Stateless Validator. No specific file paths or contract addresses are provided. The audit end date is November 28, 2025.
- [21121] blocksec_megaeth_dtf_v1.0-signed.pdf — no match: Extracted three main targets: MegaEVM, Stateless Validator, and SALT, along with their sub-components and reference implementations from scope tables.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| blocksec.com/audit-report/audit-report-megaeth--megaevm--stateless-validator---salt | MegaEVM | unmatched — not counted | — | described as a specialized EVM implementation in scope | no |
| blocksec.com/audit-report/audit-report-megaeth--megaevm--stateless-validator---salt | SALT | unmatched — not counted | — | described as core state management component in scope | no |
| blocksec.com/audit-report/audit-report-megaeth--megaevm--stateless-validator---salt | Stateless Validator | unmatched — not counted | — | described as Rust implementation of a stateless blockchain validator in scope | no |
| blocksec_megaeth_dtf_v1.0-signed.pdf | MegaEVM | unmatched — not counted | — | listed in scope as target | no |
| blocksec_megaeth_dtf_v1.0-signed.pdf | Stateless Validator | unmatched — not counted | — | listed in scope as target | no |
| blocksec_megaeth_dtf_v1.0-signed.pdf | SALT | unmatched — not counted | — | listed in scope table | no |
| blocksec_megaeth_dtf_v1.0-signed.pdf | op-revm | unmatched — not counted | — | listed in scope as reference implementation | no |
| blocksec_megaeth_dtf_v1.0-signed.pdf | mega-evm | unmatched — not counted | — | listed in scope table | no |
| blocksec_megaeth_dtf_v1.0-signed.pdf | mega-reth | unmatched — not counted | — | listed in scope table | no |
| blocksec_megaeth_dtf_v1.0-signed.pdf | stateless-validator | unmatched — not counted | — | listed in scope table | no |
| blocksec_megaeth_dtf_v1.0-signed.pdf | chain-ops | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x0000000071727de22e5e9d8baf0edac6f37da032` | EntryPoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0ca3a2fbc3d770b578223fbb6b062fa875a2ee75` | L1ChugSplashProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6c7198250087b29a8040ec63903bc130f4831cc9` | ResolvedDelegateProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7fc98430eaedbb6070b35b39d798725049088348` | SenderCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 20 |
| needs_review | 38 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 11 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [21120] blocksec.com/audit-report/audit-report-megaeth--megaevm--stateless-validator---salt
- [21121] blocksec_megaeth_dtf_v1.0-signed.pdf

Fork inheritance lineage and inherited audits are included when available.
