# Agentic Audit Brief: Boba Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 13 (0 matched; 13 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 9.9% over 90 days

## Project Overview

- Project: Boba Bridge (`boba-bridge`)
- Website: [https://gateway.boba.network](https://gateway.boba.network)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 70 unique implementations (105 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $2,628,741.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Boba Bridge in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 70 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 20
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/58
- Verified + Unaudited implementations: 58
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 70
- Raw deployments: 105
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (58)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressDeprecator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6f919...90221e` | ⚠️ Unaudited |
| BondManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60660e...65b627` | ⚠️ Unaudited |
| CanonicalTransactionChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbd254...04c3db` | ⚠️ Unaudited |
| ChainStorageContainer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x13992b...e87d93`; ethereum `0x171482...691231`; ethereum `0x5f0030...eccd8d` | ⚠️ Unaudited |
| DelayedWETH | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7e021d...6638a6` | ⚠️ Unaudited |
| DisputeGameFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf45a5f...6af852` | ⚠️ Unaudited |
| EthBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x05273e...b21b45`; ethereum `0x51c3db...e27f3f`; ethereum `0x5d7824...59040f`; ethereum `0x648276...5400de`; ethereum `0x76b822...207d72`; ethereum `0x79c7c8...60e32c`; ethereum `0xbe6817...a67485`; ethereum `0xd5c567...ed939e` | ⚠️ Unaudited |
| EthBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1a36e2...e03e55` | ⚠️ Unaudited |
| EthBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6f5378...da2f41` | ⚠️ Unaudited |
| EthBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9dd420...434e7e` | ⚠️ Unaudited |
| EthBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb0003e...38c490` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x56121a...5b9bc4` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12acf6...e47820` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3b4859...b1b077`; ethereum `0x6d4528...dff69e` | ⚠️ Unaudited |
| L1CrossDomainMessengerFast | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x329996...1c7c8c`; ethereum `0x4cd194...460996` | ⚠️ Unaudited |
| L1ERC1155Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72c455...49c8ce` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x999481...db9318` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa6ad22...8bf87e` | ⚠️ Unaudited |
| L1LiquidityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1a26ef...361a14`; ethereum `0xd24484...d53cb1` | ⚠️ Unaudited |
| L1LiquidityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x2b4c53...46e92c`; ethereum `0x3d95be...13ec25`; ethereum `0x9dadbc...468da6`; ethereum `0x9eace4...c2ced7`; ethereum `0xec99d7...9b2813`; ethereum `0xecb03b...6f97a0` | ⚠️ Unaudited |
| L1LiquidityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3256bd...3f7879`; ethereum `0x87b6c8...fd541c` | ⚠️ Unaudited |
| L1MultiMessageRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fd2cf...a0070b` | ⚠️ Unaudited |
| L1MultiMessageRelayerFast | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x16650a...3e0d59`; ethereum `0x2d6134...5f9622` | ⚠️ Unaudited |
| L1NFTBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x8db3b7...fdba82`; ethereum `0xb095a3...49c8ff`; ethereum `0xb88883...2684ae`; ethereum `0xbf313a...c9a582` | ⚠️ Unaudited |
| L1StandardBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5eb029...58520f`; ethereum `0xede17d...6e2633` | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xdc1664...2f1c00` | ⚠️ Unaudited |
| L2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x31f395...517017`; ethereum `0xbb7ad3...068741` | ⚠️ Unaudited |
| Lib_AddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8376ac...02f089` | ⚠️ Unaudited |
| Lib_ResolvedDelegateProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x841979...b495c1`; ethereum `0xc891f4...d5b088` | ⚠️ Unaudited |
| mockOVM_BondManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4f8cd...29ec27` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4d898f...81f0c3` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd080a3...0f15b2` | ⚠️ Unaudited |
| OptimismPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd80562...261826` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7b02d1...21ee7e` | ⚠️ Unaudited |
| OVM_CanonicalTransactionChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b5d9e...c272f2` | ⚠️ Unaudited |
| OVM_ChainStorageContainer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x318d4d...5372d1`; ethereum `0x33938f...0d4c50`; ethereum `0xa7557b...522c46` | ⚠️ Unaudited |
| OVM_ExecutionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa230d4...c8b646`; ethereum `0xe6dc42...55bcba` | ⚠️ Unaudited |
| OVM_FraudVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x872c65...e4f4b8` | ⚠️ Unaudited |
| OVM_L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x251091...a537f3`; ethereum `0xae6b04...ef38fd` | ⚠️ Unaudited |
| OVM_L1CrossDomainMessengerFast | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cc555...e205b0` | ⚠️ Unaudited |
| OVM_L1CrossDomainMessengerFast | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb7e757...3b4855`; ethereum `0xd05b8f...a7257e` | ⚠️ Unaudited |
| OVM_L1MultiMessageRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab2af3...42f9ca` | ⚠️ Unaudited |
| OVM_L1MultiMessageRelayerFast | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd982ef...022548` | ⚠️ Unaudited |
| OVM_L1StandardBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1bc6c9...cd8a7b`; ethereum `0x411402...1153d0`; ethereum `0x554eab...77a762`; ethereum `0xc9b56d...71bca9`; ethereum `0xcb701f...d2f149` | ⚠️ Unaudited |
| OVM_SafetyChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85c0ce...7e5884` | ⚠️ Unaudited |
| OVM_StateCommitmentChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17834b...d98ab6` | ⚠️ Unaudited |
| OVM_StateManagerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c4935...146846` | ⚠️ Unaudited |
| OVM_StateTransitionerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6dd73...ffab40` | ⚠️ Unaudited |
| PortalSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc0093...c8ee0f` | ⚠️ Unaudited |
| ProtocolVersions | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x60e761...809a42` | ⚠️ Unaudited |
| ProtocolVersions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b2a3a...38fda7` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e598c...49a0dc` | ⚠️ Unaudited |
| StateCommitmentChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde7355...d441ec` | ⚠️ Unaudited |
| SuperchainConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x996ffd...77c076` | ⚠️ Unaudited |
| SuperchainConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4e0f7...30270f` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x158fd5...9b59eb` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfae274...866f4a` | ⚠️ Unaudited |
| SystemDictator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x010dd8...2e1716`; ethereum `0xe8fb8e...dab64c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c64b8...432df7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2595cf...2b9614` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ccb5e...f46f74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39a047...e34d76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48f20d...77931d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68ac16...d5789e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b4eab...ea7087` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad6e4d...640ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb68a38...0f4714` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3782a...332b43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdef475...9a9cef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9197a...662f59` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Boba Network 1 - Quantstamp final report.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/bobanetwork/boba/develop/boba_audits/Boba%20Network%201%20-%20Quantstamp%20final%20report.pdf) | Quantstamp | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 32 | high |
| [Boba Network 2 & 3 - Quantstamp Final Report.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/bobanetwork/boba/develop/boba_audits/Boba%20Network%202%20%26%203%20-%20Quantstamp%20Final%20Report.pdf) | Quantstamp | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Boba Network - Final Report.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/bobanetwork/boba/develop/boba_audits/Boba%20Network%20-%20Final%20Report.pdf) | Quantstamp | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |
| [Boba Network Layer Zero Brigde - Final Report.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/bobanetwork/boba/develop/boba_audits/Boba%20Network%20Layer%20Zero%20Brigde%20-%20Final%20Report.pdf) | Zokyo | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Boba_Zokyo_audit_report_Aug7_2023.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/bobanetwork/boba/develop/boba_audits/Boba_Zokyo_audit_report_Aug7_2023.pdf) | Zokyo | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 44 | high |
| [PeckShield-Audit-Report-Boba-v1.0.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/bobanetwork/boba/develop/boba_audits/PeckShield-Audit-Report-Boba-v1.0.pdf) | PeckShield | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [index.html](https://certificate.quantstamp.com/full/boba-1-bridges-and-lp-floating-fee/1e5a1e09-bde0-417d-83cd-083234b1409c/index.html) | Quantstamp | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21308] Boba Network 1 - Quantstamp final report.pdf — no match: Extracted contracts from scope paths (LP/*, ERC1155Bridges/*, ERC721Bridges/*, standards/* excluding L2GovernanceERC20 and xL2GovernanceERC20) and additional contracts mentioned in findings. Audit date from timeline: 2023-03-24 through 2023-03-24.
- [21309] Boba Network 2 & 3 - Quantstamp Final Report.pdf — no match: Two contracts in scope: Teleportation and Boba_GasPriceOracle. Audit date from cover page: 2023-04-11.
- [21310] Boba Network - Final Report.pdf — no match: Extracted contract names from scope description, findings, and file signatures. Audit date from cover page.
- [21311] Boba Network Layer Zero Brigde - Final Report.pdf — no match: Contracts explicitly listed in scope section on page 3.
- [21312] Boba_Zokyo_audit_report_Aug7_2023.pdf — no match: Extracted contract names from the scope listing on page 3. The audit date is from the cover page: 'August 7th 2023'.
- [21313] PeckShield-Audit-Report-Boba-v1.0.pdf — no match: Extracted contract names from findings targets and examples. No explicit scope table found, but contracts are clearly audited targets.
- [21314] index.html — no match: The provided text is incomplete and does not contain any contract names or audit details.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Boba Network 1 - Quantstamp final report.pdf | L1LiquidityPool | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | L1LiquidityPoolAltL1 | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | L2LiquidityPool | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | L2LiquidityPoolAltL1 | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | L1NFTBridge | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | L2NFTBridge | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | L2NFTBridgeAltL1 | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | L1ERC1155Bridge | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | L2ERC1155Bridge | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | L2ERC1155BridgeAltL1 | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | DiscretionaryExitFee | unmatched — not counted | — | mentioned in finding BOB1-4 | no |
| Boba Network 1 - Quantstamp final report.pdf | DiscretionaryExitBurn | unmatched — not counted | — | mentioned in finding BOB1-4 | no |
| Boba Network 1 - Quantstamp final report.pdf | L1StandardERC721 | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | L2StandardERC721 | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | L1StandardERC1155 | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | L2StandardERC1155 | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | L1CustomERC721 | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | L2CustomERC721 | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | IL1StandardERC721 | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | IL2StandardERC721 | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | IL1StandardERC1155 | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | IL2StandardERC1155 | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | iL1NFTBridge | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | iL2NFTBridge | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | iL2NFTBridgeAltL1 | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | iSupportBridgeExtraData | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | iL1ERC1155Bridge | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | iL2ERC1155Bridge | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | iL2ERC1155BridgeAltL1 | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | iL1LiquidityPool | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | iL2LiquidityPool | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | Lib_ResolvedDelegateProxy | unmatched — not counted | — | mentioned in findings BOB1-23 and BOB1-26 | no |
| Boba Network 2 & 3 - Quantstamp Final Report.pdf | Teleportation | unmatched — not counted | — | listed in scope | no |
| Boba Network 2 & 3 - Quantstamp Final Report.pdf | Boba_GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| Boba Network - Final Report.pdf | L1LiquidityPool | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network - Final Report.pdf | L2LiquidityPool | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network - Final Report.pdf | BobaFixedSavings | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network - Final Report.pdf | L2StandardERC20 | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | Lib_ResolvedDelegateProxy | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | L1StandardBridge | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | L1CrossDomainMessenger | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | L1CrossDomainMessengerFast | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | L1NFTBridge | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | L2NFTBridge | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | L2StandardERC721 | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | L2GovernanceERC20 | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | L2CrossDomainMessenger | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | L2StandardBridge | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | AtomicSwap | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | CanonicalTransactionChain | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | TokenPool | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | ERC721Genesis | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | ERC721Registry | unmatched — not counted | — | listed in file signatures | no |
| Boba Network - Final Report.pdf | ERC2470 | unmatched — not counted | — | listed in file signatures | no |
| Boba Network - Final Report.pdf | L1MultiMessageRelayerFast | unmatched — not counted | — | listed in file signatures | no |
| Boba Network - Final Report.pdf | Lib_AddressManager | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | L1ChugSplashProxy | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | OVM_DeployerWhitelist | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | OVM_GasPriceOracle | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | Timelock | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | GovernorBravoDelegate | unmatched — not counted | — | listed in file signatures | no |
| Boba Network - Final Report.pdf | GovernorBravoDelegator | unmatched — not counted | — | listed in file signatures | no |
| Boba Network - Final Report.pdf | BOBA | unmatched — not counted | — | listed in file signatures | no |
| Boba Network Layer Zero Brigde - Final Report.pdf | LzApp | unmatched — not counted | — | listed in scope | no |
| Boba Network Layer Zero Brigde - Final Report.pdf | LzLib | unmatched — not counted | — | listed in scope | no |
| Boba Network Layer Zero Brigde - Final Report.pdf | NonblockingLzApp | unmatched — not counted | — | listed in scope | no |
| Boba Network Layer Zero Brigde - Final Report.pdf | AltL1Bridge | unmatched — not counted | — | listed in scope | no |
| Boba Network Layer Zero Brigde - Final Report.pdf | EthBridge | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | EntryPointWrapper | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | BaseAccount | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | EntryPoint | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | NonceManager | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | StakeManager | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | BasePaymaster | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | Helpers | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | SenderCreator | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | IAccount | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | IEntryPoint | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | IPaymaster | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | UserOperation | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | IAggregator | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | INonceManager | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | IStakeManager | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | BobaDepositPaymaster | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | IBobaGasPriceOracle | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | VerifyingPaymaster | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | BobaVerifyingPaymaster | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | IBobaStraw | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | SimpleAccount | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | bls | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | DepositPaymaster | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | SimpleAccountFactory | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | callback | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | GPODepositPaymaster | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | ManualDepositPaymaster | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | TokenPaymaster | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | BLSAccount | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | BLSHelper | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | IBLSAccount | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | BLSAccountFactory | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | BLSSignatureAggregator | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | lib | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | BLSOpen | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | BNPairingPrecompileCostEstimator | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | ModExp | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | TokenCallbackHandler | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | EIP4337Fallback | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | EIP4337Manager | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | GnosisAccountFactory | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | Exec | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | Teleporation | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | Lib_ResolvedDelegateProxy | unmatched — not counted | — | Finding PVE-001 target | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | L1LiquidityPool | unmatched — not counted | — | Finding PVE-002 target | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | L2LiquidityPool | unmatched — not counted | — | Finding PVE-002 target | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | BobaTuringCredit | unmatched — not counted | — | Finding PVE-003 target | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | Boba_GasPriceOracle | unmatched — not counted | — | Finding PVE-004 target | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | FeedRegistry | unmatched — not counted | — | Finding PVE-005 example | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | FluxAggregator | unmatched — not counted | — | Finding PVE-005 example | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | DiscretionaryExitBurn | unmatched — not counted | — | Finding PVE-006 target | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | L1NFTBridge | unmatched — not counted | — | Finding PVE-007 target | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | L2NFTBridge | unmatched — not counted | — | Finding PVE-007 mentioned | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | L1ERC1155Bridge | unmatched — not counted | — | Finding PVE-007 mentioned | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | L2ERC1155Bridge | unmatched — not counted | — | Finding PVE-007 mentioned | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | L1CrossDomainMessenger | unmatched — not counted | — | Finding PVE-007 status | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | L2CrossDomainMessenger | unmatched — not counted | — | Finding PVE-007 status | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 56 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 126 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, low=1
- Match method counts: n/a

Zero-match audit list:

- [21308] Boba Network 1 - Quantstamp final report.pdf
- [21309] Boba Network 2 & 3 - Quantstamp Final Report.pdf
- [21310] Boba Network - Final Report.pdf
- [21311] Boba Network Layer Zero Brigde - Final Report.pdf
- [21312] Boba_Zokyo_audit_report_Aug7_2023.pdf
- [21313] PeckShield-Audit-Report-Boba-v1.0.pdf
- [21314] index.html

Fork inheritance lineage and inherited audits are included when available.
