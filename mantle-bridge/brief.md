# Agentic Audit Brief: Mantle Bridge

## Project Overview

- Project: Mantle Bridge (`mantle-bridge`)
- Website: [https://app.mantle.xyz/bridge](https://app.mantle.xyz/bridge)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.396Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum, mantle
- Contract surface: 42 unique implementations (42 raw deployments)
- DeFi Llama TVL: $132,219,197.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 29 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 8 common project-authored base contract(s) (delegationsharebase, delegationcallbackbase, crossdomainenabled). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 42; live-surface contracts included: 42 (42 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 11/33 (33.3%)
- Deployed-live implementations: 42 of 42 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 18/42
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 42
- Raw deployments: 42
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 9 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 18 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Secure3 | Tier 2 | 18 | 42.9% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ChugSplashDictator | unknown | ethereum | n/a | [`0x0b5978...f478e8`](./contracts/ethereum-1/0x0b59785f4dd909b6d2c94090fda6a2d447f478e8/) | ✅ Audited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0x3f7537...8967ae`](./contracts/ethereum-1/0x3f75372387670ab855e45c5a498b2c271e8967ae/) | ✅ Audited |
| L1ERC721Bridge | unknown | ethereum | n/a | [`0x2cc62e...007222`](./contracts/ethereum-1/0x2cc62ecbb6c99eb687acc079ce367eafec007222/) | ✅ Audited |
| L1StandardBridge | unknown | ethereum | n/a | [`0x89e186...52901a`](./contracts/ethereum-1/0x89e186deedc9e9007f3daa0a45b3a6849d52901a/) | ✅ Audited |
| L2OutputOracle | unknown | ethereum | n/a | [`0xb9b386...ecd723`](./contracts/ethereum-1/0xb9b386a4a96e21223b20c21d02aef75da4ecd723/) | ✅ Audited |
| OPSuccinctL2OutputOracle | unknown | ethereum | n/a | [`0x31d543...b9f481`](./contracts/ethereum-1/0x31d543e7be1da6efdc2206ef7822879045b9f481/) | ✅ Audited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | [`0x3b96c8...e00eb2`](./contracts/ethereum-1/0x3b96c878cc334a7d9ea994ec4b6c28bddde00eb2/) | ✅ Audited |
| OptimismPortal | unknown | ethereum | n/a | [`0x11a66a...d331ab`](./contracts/ethereum-1/0x11a66afa64ef16822706e448ade722890bd331ab/) | ✅ Audited |
| PortalSender | unknown | ethereum | n/a | [`0x65ca5f...3e0502`](./contracts/ethereum-1/0x65ca5f4eafc1509909d0dde211ffc6ea2a3e0502/) | ✅ Audited |
| Proxy | unknown | ethereum | n/a | [`0x1c5d35...caeca3`](./contracts/ethereum-1/0x1c5d358a3beb84b1d71e030c8e0eea74d9caeca3/) | ✅ Audited |
| Proxy | unknown | mantle | n/a | [`0x420000...000007`](./contracts/mantle-5000/0x4200000000000000000000000000000000000007/) | ✅ Audited |
| Proxy | unknown | mantle | n/a | [`0x420000...000010`](./contracts/mantle-5000/0x4200000000000000000000000000000000000010/) | ✅ Audited |
| Proxy | unknown | mantle | n/a | [`0x420000...000011`](./contracts/mantle-5000/0x4200000000000000000000000000000000000011/) | ✅ Audited |
| Proxy | unknown | mantle | n/a | [`0x420000...000013`](./contracts/mantle-5000/0x4200000000000000000000000000000000000013/) | ✅ Audited |
| Proxy | unknown | mantle | n/a | [`0x420000...000016`](./contracts/mantle-5000/0x4200000000000000000000000000000000000016/) | ✅ Audited |
| Proxy | unknown | mantle | n/a | [`0x420000...000019`](./contracts/mantle-5000/0x4200000000000000000000000000000000000019/) | ✅ Audited |
| SystemConfig | unknown | ethereum | n/a | [`0x427ea0...386caf`](./contracts/ethereum-1/0x427ea0710fa5252057f0d88274f7aeb308386caf/) | ✅ Audited |
| SystemDictator | unknown | ethereum | n/a | [`0x28399b...431d17`](./contracts/ethereum-1/0x28399b58989d43a3c04ee20c73076653a4431d17/) | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressDictator | unknown | ethereum | n/a | [`0xfe92ac...937d0d`](./contracts/ethereum-1/0xfe92ac303841f9ee446828e5215affb044937d0d/) | ⚠️ Unaudited |
| AgniPool | unknown | mantle | n/a | [`0x1858d5...17144f`](./contracts/mantle-5000/0x1858d52cf57c07a018171d7a1e68dc081f17144f/) | ⚠️ Unaudited |
| AssertionMap | unknown | ethereum | n/a | [`0x1872ce...7bd993`](./contracts/ethereum-1/0x1872ce78a362c58d093ee107cadee2667b7bd993/) | ⚠️ Unaudited |
| BondManager | unknown | ethereum | n/a | [`0x31abe1...79b650`](./contracts/ethereum-1/0x31abe1c466c2a8b95fd84258dd1471472979b650/) | ⚠️ Unaudited |
| BVM_EigenDataLayrChain | unknown | ethereum | n/a | [`0x50fa42...15b23a`](./contracts/ethereum-1/0x50fa427235c7c8caa4a0c21b5009f5a0d015b23a/) | ⚠️ Unaudited |
| BVM_EigenDataLayrFee | unknown | ethereum | n/a | [`0xf037ba...e994ef`](./contracts/ethereum-1/0xf037ba8b0e82439ad82325d986e097fd19e994ef/) | ⚠️ Unaudited |
| CanonicalTransactionChain | unknown | ethereum | n/a | [`0x291dc3...4aae93`](./contracts/ethereum-1/0x291dc3819b863e19b0a9b9809f8025d2eb4aae93/) | ⚠️ Unaudited |
| ChainStorageContainer | unknown | ethereum | n/a | [`0x5dd48e...677f3e`](./contracts/ethereum-1/0x5dd48ef85b99e3e3d711ca8b41cbc07da1677f3e/) | ⚠️ Unaudited |
| EmptyContract | unknown | ethereum | n/a | [`0x3e6475...ee9f2f`](./contracts/ethereum-1/0x3e6475fc2b78fdb0b03fdce4c8a2ee4106ee9f2f/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | mantle | n/a | [`0x4e59e7...aed40f`](./contracts/mantle-5000/0x4e59e778a0fb77fbb305637435c62faed9aed40f/) | ⚠️ Unaudited |
| IONX | unknown | mantle | n/a | [`0x6968f3...625a42`](./contracts/mantle-5000/0x6968f3f16c3e64003f02e121cf0d5ccbf5625a42/) | ⚠️ Unaudited |
| L1MantleToken | unknown | ethereum | n/a | [`0x3c3a81...6bf354`](./contracts/ethereum-1/0x3c3a81e81dc49a522a592e7622a7e711c06bf354/) | ⚠️ Unaudited |
| Lib_AddressManager | unknown | ethereum | n/a | [`0x6968f3...625a42`](./contracts/ethereum-1/0x6968f3f16c3e64003f02e121cf0d5ccbf5625a42/) | ⚠️ Unaudited |
| MantleTokenMigrator | unknown | ethereum | n/a | [`0xffb94c...8d1295`](./contracts/ethereum-1/0xffb94c81d9a283ab4373ab4ba3534dc4fb8d1295/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x0cac2b...399add`](./contracts/ethereum-1/0x0cac2b1a172ac24012621101634dd5abd6399add/) | ⚠️ Unaudited |
| Rollup | unknown | ethereum | n/a | [`0x242a33...c42a0d`](./contracts/ethereum-1/0x242a33ca49c564cafc9c83c700b79f1074c42a0d/) | ⚠️ Unaudited |
| StateCommitmentChain | unknown | ethereum | n/a | [`0x89e9d3...0ad7fa`](./contracts/ethereum-1/0x89e9d387555af0cde22cb98833bae40d640ad7fa/) | ⚠️ Unaudited |
| TssDelegation | unknown | ethereum | n/a | [`0x7126f6...222246`](./contracts/ethereum-1/0x7126f676ac359ece8d5244120ff9e78ed3222246/) | ⚠️ Unaudited |
| TssDelegationManager | unknown | ethereum | n/a | [`0x988ddc...7a9187`](./contracts/ethereum-1/0x988ddc2b0ad9ba5ade892e1bf848308e8c7a9187/) | ⚠️ Unaudited |
| TssDelegationSlasher | unknown | ethereum | n/a | [`0x910265...516eb7`](./contracts/ethereum-1/0x910265c29c099eac87ef6d374b6f3be45b516eb7/) | ⚠️ Unaudited |
| TssGroupManager | unknown | ethereum | n/a | [`0x399ca6...19cacf`](./contracts/ethereum-1/0x399ca67660b79f7aa8a7efd5bef9836a4c19cacf/) | ⚠️ Unaudited |
| TssStakingSlashing | unknown | ethereum | n/a | [`0x09b276...3dc431`](./contracts/ethereum-1/0x09b276f9ecb83fb6a37970e655863b04143dc431/) | ⚠️ Unaudited |
| VerifierEntry | unknown | ethereum | n/a | [`0x3f77d4...821c2a`](./contracts/ethereum-1/0x3f77d44e1789d47e076a4d5f2779a1fcab821c2a/) | ⚠️ Unaudited |
| WMANTLE | unknown | mantle | n/a | [`0x78c1b0...7f4cb8`](./contracts/mantle-5000/0x78c1b0c915c4faa5fffa6cabf0219da63d7f4cb8/) | ⚠️ Unaudited |

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
| [Mantle Op-Geth Audit Final Report (March 2024).pdf](https://github.com/mantle-xyz/mantle-v2/blob/release/v1.0.0/technical-documents/security-reviews/OpenZeppelin/Mantle%20Op-Geth%20Audit%20Final%20Report%20(March%202024).pdf) | OpenZeppelin | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [Mantle V2 Solidity Contracts Audit Report (March 2024).pdf](https://github.com/mantle-xyz/mantle-v2/blob/release/v1.0.0/technical-documents/security-reviews/OpenZeppelin/Mantle%20V2%20Solidity%20Contracts%20Audit%20Report%20(March%202024).pdf) | OpenZeppelin | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf](https://github.com/mantle-xyz/mantle-v2/blob/release/v1.0.0/technical-documents/security-reviews/OpenZeppelin/Mantle%20Node%2C%20Batcher%2C%20Proposer%2C%20and%20Tooling%20Incremental%20Final%20Audit%20Report%20(March%202024).pdf) | OpenZeppelin | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf](https://github.com/mantle-xyz/mantle-v2/blob/release/v1.0.0/technical-documents/security-reviews/SigmaPrime/Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [Mantle Op-Geth Audit Final Report (March 2024).pdf](https://raw.githubusercontent.com/mantle-xyz/mantle-v2/01f238b03b6fca137aac35248e89bffa55d15fa7/technical-documents/security-reviews/OpenZeppelin/Mantle%20Op-Geth%20Audit%20Final%20Report%20(March%202024).pdf) | Secure3 | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [Mantle V2 Solidity Contracts Audit Report (March 2024).pdf](https://raw.githubusercontent.com/mantle-xyz/mantle-v2/01f238b03b6fca137aac35248e89bffa55d15fa7/technical-documents/security-reviews/OpenZeppelin/Mantle%20V2%20Solidity%20Contracts%20Audit%20Report%20(March%202024).pdf) | Secure3 | Audit | 2024-03 | stale | Direct | contract_name | 8 | high |
| [Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf](https://raw.githubusercontent.com/mantle-xyz/mantle-v2/01f238b03b6fca137aac35248e89bffa55d15fa7/technical-documents/security-reviews/OpenZeppelin/Mantle%20Node%2C%20Batcher%2C%20Proposer%2C%20and%20Tooling%20Incremental%20Final%20Audit%20Report%20(March%202024).pdf) | Secure3 | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf](https://raw.githubusercontent.com/mantle-xyz/mantle-v2/01f238b03b6fca137aac35248e89bffa55d15fa7/technical-documents/security-reviews/SigmaPrime/Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf) | Secure3 | Audit | 2024-04 | stale | Direct | contract_name | 18 | high |
| [Mantle_V2_ Secure3 Audit Report.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/mantle-xyz/mantle-v2/01f238b03b6fca137aac35248e89bffa55d15fa7/technical-documents/security-reviews/Secure3/Mantle_V2_%20Secure3%20Audit%20Report.pdf) | Secure3 | Audit | 2024-03 | stale | Direct | contract_name|n/a | 7 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xfe92ac...937d0d`](./contracts/ethereum-1/0xfe92ac303841f9ee446828e5215affb044937d0d/) | AddressDictator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x1858d5...17144f`](./contracts/mantle-5000/0x1858d52cf57c07a018171d7a1e68dc081f17144f/) | AgniPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1872ce...7bd993`](./contracts/ethereum-1/0x1872ce78a362c58d093ee107cadee2667b7bd993/) | AssertionMap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31abe1...79b650`](./contracts/ethereum-1/0x31abe1c466c2a8b95fd84258dd1471472979b650/) | BondManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50fa42...15b23a`](./contracts/ethereum-1/0x50fa427235c7c8caa4a0c21b5009f5a0d015b23a/) | BVM_EigenDataLayrChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf037ba...e994ef`](./contracts/ethereum-1/0xf037ba8b0e82439ad82325d986e097fd19e994ef/) | BVM_EigenDataLayrFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x291dc3...4aae93`](./contracts/ethereum-1/0x291dc3819b863e19b0a9b9809f8025d2eb4aae93/) | CanonicalTransactionChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5dd48e...677f3e`](./contracts/ethereum-1/0x5dd48ef85b99e3e3d711ca8b41cbc07da1677f3e/) | ChainStorageContainer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e6475...ee9f2f`](./contracts/ethereum-1/0x3e6475fc2b78fdb0b03fdce4c8a2ee4106ee9f2f/) | EmptyContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x6968f3...625a42`](./contracts/mantle-5000/0x6968f3f16c3e64003f02e121cf0d5ccbf5625a42/) | IONX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c3a81...6bf354`](./contracts/ethereum-1/0x3c3a81e81dc49a522a592e7622a7e711c06bf354/) | L1MantleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6968f3...625a42`](./contracts/ethereum-1/0x6968f3f16c3e64003f02e121cf0d5ccbf5625a42/) | Lib_AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xffb94c...8d1295`](./contracts/ethereum-1/0xffb94c81d9a283ab4373ab4ba3534dc4fb8d1295/) | MantleTokenMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x242a33...c42a0d`](./contracts/ethereum-1/0x242a33ca49c564cafc9c83c700b79f1074c42a0d/) | Rollup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x89e9d3...0ad7fa`](./contracts/ethereum-1/0x89e9d387555af0cde22cb98833bae40d640ad7fa/) | StateCommitmentChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7126f6...222246`](./contracts/ethereum-1/0x7126f676ac359ece8d5244120ff9e78ed3222246/) | TssDelegation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x988ddc...7a9187`](./contracts/ethereum-1/0x988ddc2b0ad9ba5ade892e1bf848308e8c7a9187/) | TssDelegationManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x910265...516eb7`](./contracts/ethereum-1/0x910265c29c099eac87ef6d374b6f3be45b516eb7/) | TssDelegationSlasher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x399ca6...19cacf`](./contracts/ethereum-1/0x399ca67660b79f7aa8a7efd5bef9836a4c19cacf/) | TssGroupManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09b276...3dc431`](./contracts/ethereum-1/0x09b276f9ecb83fb6a37970e655863b04143dc431/) | TssStakingSlashing | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f77d4...821c2a`](./contracts/ethereum-1/0x3f77d44e1789d47e076a4d5f2779a1fcab821c2a/) | VerifierEntry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x78c1b0...7f4cb8`](./contracts/mantle-5000/0x78c1b0c915c4faa5fffa6cabf0219da63d7f4cb8/) | WMANTLE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 0 |
| standard_library | 9 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=33

Zero-match audit list:

- [21151] Mantle Op-Geth Audit Final Report (March 2024).pdf
- [21152] Mantle V2 Solidity Contracts Audit Report (March 2024).pdf
- [21153] Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf
- [21154] Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf
- [21155] Mantle Op-Geth Audit Final Report (March 2024).pdf
- [21157] Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf

Fork inheritance lineage and inherited audits are included when available.
