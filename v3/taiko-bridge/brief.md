# Agentic Audit Brief: Taiko Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 23 across 6 audit(s)
- Eligible audit results: 8 (6 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Taiko Bridge (`taiko-bridge`)
- Website: [https://bridge.taiko.xyz/](https://bridge.taiko.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 93 unique implementations (232 raw deployments)
- Coverage basis: 6/7 confirmed own live verified implementations (85.7%); conservative 85.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $11,772,373.58
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Taiko Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across ethereum. Structural roles: 12 unclassified, 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: unclassified (12), core (1)
- Contract kinds: contract (13)
- Detected standards: erc1967proxy (1), ownable (1), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x10dea6...54d800`, chain 1)
- MainnetSharedAddressManager (`0xec1a9a...0c6449`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 13; live-surface rows included: 13 (11 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/10 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/7 (85.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 85 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 22
- Confirmed-live implementations: 8 of 93 unique; 85 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 6/65
- Verified + Unaudited implementations: 59
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 93
- Raw deployments: 232
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 85.7% (Code4rena, OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 6 | 9.2% | 2026-01 |
| Quill Audits | Tier 2 | 5 | 7.7% | 2024-02 |
| Sigma Prime | Tier 2 | 5 | 7.7% | 2024-02 |
| Code4rena | Tier 1 | 3 | 4.6% | 2024-03 |
| Halborn | Tier 2 | 1 | 1.5% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MainnetBridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257940 | `0xd60247...ddd8ec` | ✅ Audited |
| MainnetERC1155Vault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257941 | 2 deployments: ethereum `0x838ed4...99b9c8`; ethereum `0xaf1459...881702` | ✅ Audited |
| MainnetERC20Vault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257938 | `0x996282...4415ab` | ✅ Audited |
| MainnetERC721Vault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257942 | 2 deployments: ethereum `0x0b470d...f419aa`; ethereum `0xa4c5c2...274c49` | ✅ Audited |
| QuotaManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257943 | 2 deployments: ethereum `0x91f671...22f29e`; ethereum `0xdb627b...5bbc64` | ✅ Audited |
| SignalService | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257939 | `0x9e0a24...35c77c` | ✅ Audited |

### ⚠️ Verified + Unaudited (59)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9ca1ab...9c6a15`; ethereum `0xd912ab...360440`; ethereum `0xf1ca1f...e80943` | ⚠️ Unaudited |
| AssignmentHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x25206c...ada046`; ethereum `0x4f6642...dda170`; ethereum `0xe226fa...36fb0d` | ⚠️ Unaudited |
| AssignmentHook | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x537a2f...1796f6`; ethereum `0xf77cbf...5e53f2` | ⚠️ Unaudited |
| AutomataDcapV3Attestation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5f73f0...84e0b5`; ethereum `0x8d7c95...7ca8a3` | ⚠️ Unaudited |
| AutomataDcapV3Attestation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xde1b1f...303323`; ethereum `0xee8fc1...fcdafc` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x01e7d3...789986`; ethereum `0x02f21b...d782be`; ethereum `0x271bc3...f0b218`; ethereum `0x40f8be...d603f7`; ethereum `0x4a1091...cf853d`; ethereum `0x4cab75...7eabd0`; ethereum `0x71c2f4...8d6cd0`; ethereum `0x91d593...7bcf6f`; ethereum `0xc71cc3...a645ba`; ethereum `0xd28f2c...052561`; ethereum `0xe148cc...611e57` | ⚠️ Unaudited |
| BridgedERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x39e4c1...42791d`; ethereum `0x3c9096...9c2c40`; ethereum `0xe7782d...0d689d` | ⚠️ Unaudited |
| BridgedERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x79bc0a...3653e3`; ethereum `0xcc5d48...de7372` | ⚠️ Unaudited |
| BridgedERC20V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x656661...09a2e1`; ethereum `0x7714f5...860f8c` | ⚠️ Unaudited |
| BridgedERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc33109...6a1bf7`; ethereum `0xc4096e...c12de7` | ⚠️ Unaudited |
| ERC1155Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x01329a...2332fa`; ethereum `0x097bbb...a47dc3`; ethereum `0x7748da...3c6396`; ethereum `0xca9288...1a59c8`; ethereum `0xd90b5f...1cdcfe` | ⚠️ Unaudited |
| ERC20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x15d9f7...4a4bec`; ethereum `0x4f750d...374ca1`; ethereum `0x540fe6...0b56ff`; ethereum `0x75b5e2...80eb22`; ethereum `0xa30378...722689`; ethereum `0xc722d9...b9bf8e`; ethereum `0xf8bdac...74e737` | ⚠️ Unaudited |
| ERC721Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x2dfef0...3163ed`; ethereum `0x41a7bd...1495fa`; ethereum `0x55b5df...4732c4`; ethereum `0x7dae64...b1ed5c`; ethereum `0xec0484...94f692` | ⚠️ Unaudited |
| GuardianProver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x253e47...64b65e`; ethereum `0x468f6a...942d5c`; ethereum `0x717dc5...4ce9cf`; ethereum `0x750221...7942d2`; ethereum `0x7e717f...5bc8a4`; ethereum `0x97f5a0...03b28c`; ethereum `0xce6b40...877e15` | ⚠️ Unaudited |
| L1RollupAddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x29a88d...154900`; ethereum `0x8af466...d07a9a`; ethereum `0x8eef31...903af6` | ⚠️ Unaudited |
| L1SharedAddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x25d846...672b5c`; ethereum `0x949650...398a17` | ⚠️ Unaudited |
| MainnetBridge | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257936 | `0x2705b1...67da2f` | ⚠️ Unaudited |
| MainnetBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3abf0f...75abf2`; ethereum `0x68756c...12f179`; ethereum `0xac96ff...915af3` | ⚠️ Unaudited |
| MainnetERC1155Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x89c68b...85617b`; ethereum `0xec0fd4...e8674d` | ⚠️ Unaudited |
| MainnetERC20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x76d73a...b3ab63`; ethereum `0x7acfbb...c3ff30` | ⚠️ Unaudited |
| MainnetERC20Vault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257937 | `0xb20c8f...790e63` | ⚠️ Unaudited |
| MainnetERC721Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd961e3...5e3fec` | ⚠️ Unaudited |
| MainnetGuardianProver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c40cc...c8df98` | ⚠️ Unaudited |
| MainnetGuardianProver | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x579a8d...9e985c`; ethereum `0xb866e9...4f7b47`; ethereum `0xe3d777...5f43ac` | ⚠️ Unaudited |
| MainnetInbox | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x06a9ab...feb19a` | ⚠️ Unaudited |
| MainnetProverSet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x280eab...fb55fa`; ethereum `0xa01d46...a9ddb3` | ⚠️ Unaudited |
| MainnetProverSet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3022ed...5e8763`; ethereum `0x74828e...72d652`; ethereum `0xce5a11...f2b15a`; ethereum `0xd0d3f0...a4f30b` | ⚠️ Unaudited |
| MainnetRollupAddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0079a7...79b36d`; ethereum `0x579f40...290780` | ⚠️ Unaudited |
| MainnetRollupAddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x08aab2...a0a6db`; ethereum `0x190d5d...e096be`; ethereum `0x3202fc...04ee37`; ethereum `0x4f6d5d...18e8e9`; ethereum `0x52ca3c...4fc788`; ethereum `0x6d8e6e...f6fb3d`; ethereum `0x85cd63...4f7bf6` | ⚠️ Unaudited |
| MainnetSgxVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7ee4ce...0f07f3`; ethereum `0xee5f66...88ff24` | ⚠️ Unaudited |
| MainnetSgxVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x81dfea...7f0838`; ethereum `0xb0f318...b31f81` | ⚠️ Unaudited |
| MainnetSharedAddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2f7126...08e2fd`; ethereum `0xc99d6f...00bc5f` | ⚠️ Unaudited |
| MainnetSharedAddressManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257944 | 2 deployments: ethereum `0xec1a9a...0c6449`; ethereum `0xef9eaa...65fbaa` | ⚠️ Unaudited |
| MainnetSignalService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x45fed1...f499f3`; ethereum `0x6e8804...51896a`; ethereum `0xbddf61...f7d37c`; ethereum `0xdf8642...f315df` | ⚠️ Unaudited |
| MainnetTaikoL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x0205ea...aa4040`; ethereum `0x1de54d...64141a`; ethereum `0x278442...37588d`; ethereum `0x30923a...3ee5d9`; ethereum `0x4229d1...cdab2d`; ethereum `0x4b4051...6f1fd4`; ethereum `0x511063...74d7ca`; ethereum `0xa3e75e...dcdb17`; ethereum `0xb74a66...758162`; ethereum `0xba1d90...d83231`; ethereum `0xd4896d...d65e1c`; ethereum `0xe7c4b4...8e9a5b`; ethereum `0xede3c9...e395bc`; ethereum `0xf0e6d3...ffdf2f` | ⚠️ Unaudited |
| MainnetTierRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x02d6ab...33f915`; ethereum `0x082fb5...2fa572`; ethereum `0x1c02d1...0f34e3`; ethereum `0x2ae894...c26065`; ethereum `0x2cd242...c7afd0`; ethereum `0x394e30...1935b0`; ethereum `0x44d307...c86db6`; ethereum `0x46d230...3bfcce`; ethereum `0x6cc408...db269e`; ethereum `0x7037ae...a7bb75`; ethereum `0x8a4c69...e52e66`; ethereum `0x8f1c1d...6b5542`; ethereum `0xe93588...a58814`; ethereum `0xfb6a87...019d06` | ⚠️ Unaudited |
| P256Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11a9eb...fbeab0` | ⚠️ Unaudited |
| PEMCertChainLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02772b...f46169` | ⚠️ Unaudited |
| PreconfRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd5aa0e...a9688a` | ⚠️ Unaudited |
| PreconfWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xfd0194...29b2ac` | ⚠️ Unaudited |
| ProverSet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x500735...9742b9`; ethereum `0x518845...953c9a`; ethereum `0x5d5282...0bf5fd`; ethereum `0xd0aee9...14d85f`; ethereum `0xd547ca...18f9d1` | ⚠️ Unaudited |
| ProxylessAssignmentHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa641a2...085248` | ⚠️ Unaudited |
| QuotaManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49c5e5...25ef22` | ⚠️ Unaudited |
| Risc0Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x55902b...508edc`; ethereum `0xefe30a...d9a2c3` | ⚠️ Unaudited |
| RiscZeroGroth16Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x48e32e...83dd98`; ethereum `0x683a78...6192a9`; ethereum `0x7e8ce5...8f2da5`; ethereum `0xcf706d...e5308d`; ethereum `0xf31de4...2855e9` | ⚠️ Unaudited |
| SgxVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3f5406...aad175`; ethereum `0xb0b782...cc8e9f`; ethereum `0xf38186...2257e9` | ⚠️ Unaudited |
| SignalService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3d59c1...e0f0bb`; ethereum `0xb11cd7...1e652d`; ethereum `0xe1d91b...c33c72` | ⚠️ Unaudited |
| SigVerifyLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47bb41...80e6e9` | ⚠️ Unaudited |
| SP1Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x00c048...257c7b`; ethereum `0x1e1845...5a34bf` | ⚠️ Unaudited |
| SP1Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x0ad6f4...588b8c`; ethereum `0x2d33d7...16d067`; ethereum `0x2d4ce7...3b22dc`; ethereum `0x5673e3...942448`; ethereum `0x68593a...4f7371`; ethereum `0x7c3498...5bbe50`; ethereum `0x7e0fbf...f24e05`; ethereum `0xd024e0...0926c0`; ethereum `0xd05aed...e68287` | ⚠️ Unaudited |
| SP1Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5c44f2...8af452`; ethereum `0x5f5b83...6d7219` | ⚠️ Unaudited |
| SP1Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6e520f...536fa8`; ethereum `0xd31868...07d08f` | ⚠️ Unaudited |
| TaikoL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x046874...7a20d5`; ethereum `0x3505a0...bf2944`; ethereum `0x4b2743...e4f3c5`; ethereum `0x5fc547...f1e31b`; ethereum `0x78bcda...7c2f00`; ethereum `0x99ba70...d85501`; ethereum `0x9fbbed...d712fe`; ethereum `0xa200c2...a85ceb`; ethereum `0xb9e1e5...334388`; ethereum `0xcee590...edd2c3`; ethereum `0xe0a5d3...4b44ef` | ⚠️ Unaudited |
| TaikoToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x55833d...39bcf6`; ethereum `0x7df8bf...c4830f`; ethereum `0xcfe803...3869df`; ethereum `0xea53c0...6e9b3c` | ⚠️ Unaudited |
| TierProviderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x33879c...e931f2`; ethereum `0xf8254f...7fd52e` | ⚠️ Unaudited |
| TierProviderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3a1a90...b71ddd`; ethereum `0x4cffe5...ae3a23` | ⚠️ Unaudited |
| TierRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e997f...43155a` | ⚠️ Unaudited |
| TokenUnlock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x10edc3...cdefde`; ethereum `0x816628...b898a7`; ethereum `0xd6a337...6ff5e7` | ⚠️ Unaudited |
| TokenUnlocking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x244108...191a62` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0857cd...b59ab0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257935 | `0x10dea6...54d800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167000...000001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167000...000002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167000...000003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167000...000004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167000...000005` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167000...000006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167013...000001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167013...000002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167013...000003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167013...000004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167013...000005` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167013...000006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e7797...fd61d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x464cc5...ba3691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4876e7...bdf768` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c70b7...9ed811` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a4cf6...18ed80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x779b67...c316c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79895c...9042d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bbacc...e01b62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81ff6c...2c92c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x920598...ac6416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4f138...98c5e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdff555...f528ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe462cc...4f6a55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3b83e...e963da` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [code4rena-2024-03-taiko-final-report.md](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/code4rena-2024-03-taiko-final-report.md) | Code4rena | Contest | 2024-03 | stale | Direct | contract_name | matched | 4 | 3 | 0 | 33 | high |
| [halborn-taiko-alethia-protocol-audit-for-pacaya-upgrade.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/halborn-taiko-alethia-protocol-audit-for-pacaya-upgrade.pdf) | Halborn | Audit | 2025-03 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |
| [halborn-taiko-dao-contract-audit.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/halborn-taiko-dao-contract-audit.pdf) | Halborn | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [open_zeppelin_taiko_protocol_audit_june_2024.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/open_zeppelin_taiko_protocol_audit_june_2024.pdf) | OpenZeppelin | Audit | 2024-06 | stale | Direct | contract_name | matched | 7 | 6 | 0 | 60 | high |
| [open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf) | OpenZeppelin | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf) | OpenZeppelin | Audit | 2026-01 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 31 | high |
| [quill_audits_taiko_smart_contract_audit_report.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/quill_audits_taiko_smart_contract_audit_report.pdf) | Quill Audits | Audit | 2024-02 | stale | Direct | contract_name | matched | 5 | 5 | 0 | 6 | high |
| [sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf) | Sigma Prime | Audit | 2024-02 | stale | Direct | contract_name | matched | 5 | 5 | 0 | 24 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21026] code4rena-2024-03-taiko-final-report.md — matched: Extracted 37 contract names from the audit report scope and findings. The audit date is the end date of the audit period (March 6-27, 2024).
- [21027] halborn-taiko-alethia-protocol-audit-for-pacaya-upgrade.pdf — matched: Scope section explicitly lists four contracts: ERC20Vault.sol, TaikoWrapper.sol, ForcedInclusionStore.sol, TaikoInbox.sol. Audit date from engagement end date March 7, 2025.
- [21028] halborn-taiko-dao-contract-audit.pdf — no match: Extracted 13 contract names from the scope section listing files and repository. Audit date from engagement end date: February 24th, 2025.
- [21029] open_zeppelin_taiko_protocol_audit_june_2024.pdf — matched: Extracted all contracts from the Scope section (Phases 1,2,3) and the file listings. The audit date is from the cover page: 'June 19, 2024'.
- [21030] open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf — no match: All contracts listed in the Scope section of the audit report.
- [21031] open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf — matched: Extracted all contracts from the Scope section file listing. Audit date from cover page.
- [21032] quill_audits_taiko_smart_contract_audit_report.pdf — matched: Extracted contract names from audit report scope and findings. Audit date inferred from 'February, 2024' on cover and last page, using last day of month.
- [21033] sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf — matched: Scope explicitly lists all Solidity files in directories: 4844/, bridge/, common/, L1/, L2/, libs/, signal/, thirdparty/, tokenvaults/. Excludes OpenZeppelin dependencies. Audit date from cover page: 'February, 2024' -> last day of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| code4rena-2024-03-taiko-final-report.md | TaikoL2 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | LibProving | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | LibVerifying | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | ERC20Airdrop2 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | AssignmentHook | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | LibProposing | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | TimelockTokenPool | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | LibDepositing | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | TaikoL1 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | Bridge | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xd60247...ddd8ec` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena-2024-03-taiko-final-report.md | ERC20Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x996282...4415ab` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena-2024-03-taiko-final-report.md | USDCAdapter | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | TaikoToken | own contract | 0x10dea6… (selected) `0x10dea6...54d800` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena-2024-03-taiko-final-report.md | EssentialContract | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | AddressResolver | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | GuardianProver | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | MainnetTierProvider | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | TestnetTierProvider | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | PEMCertChainLib | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | SgxVerifier | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | AutomataDcapV3Attestation | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | Lib1559Math | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | LibSignals | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | SignalService | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9e0a24...35c77c` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena-2024-03-taiko-final-report.md | IBridgedERC20 | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | IMessageInvocable | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | ITierProvider | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | IAddressManager | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | IHook | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | ISignalService | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | ITaikoL1 | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | LibTiers | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | TaikoData | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | IPEMCertChainLib | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | TCBInfoStruct | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | X509DateUtils | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | ECDSA | unmatched — not counted | — | referenced in findings | no |
| halborn-taiko-alethia-protocol-audit-for-pacaya-upgrade.pdf | ERC20Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x996282...4415ab` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn-taiko-alethia-protocol-audit-for-pacaya-upgrade.pdf | TaikoWrapper | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-alethia-protocol-audit-for-pacaya-upgrade.pdf | ForcedInclusionStore | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-alethia-protocol-audit-for-pacaya-upgrade.pdf | TaikoInbox | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | ITaikoL1 | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | StandardProposalCondition | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | TaikoDaoFactory | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | proxy | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | EmergencyMultisigPluginSetup | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | MultisigPluginSetup | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | OptimisticTokenVotingPluginSetup | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | DelegationWall | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | EmergencyMultisig | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | EncryptionRegistry | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | Multisig | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | OptimisticTokenVotingPlugin | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | SignerList | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | Bridge | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xd60247...ddd8ec` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | IBridge | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | AddressManager | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | AddressResolver | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | EssentialContract | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | IAddressManager | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | IAddressResolver | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | ITaikoL1 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoData | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoErrors | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoEvents | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoL1 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoToken | own contract | 0x10dea6… (selected) `0x10dea6...54d800` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoGovernor | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoTimelockController | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | AssignmentHook | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | IHook | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibDepositing | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibProposing | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibProving | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibUtils | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibVerifying | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | GuardianProver | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | Guardians | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | DevnetTierProvider | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | ITierProvider | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | MainnetTierProvider | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TestnetTierProvider | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | CrossChainOwned | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | Lib1559Math | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoL2 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoL2EIP1559Configurable | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | Lib4844 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibAddress | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibMath | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibTrieProof | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | ISignalService | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibSignals | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | SignalService | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9e0a24...35c77c` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TimelockTokenPool | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | ERC20Airdrop | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | MerkleClaimable | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | ExcessivelySafeCall | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | Bytes | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | RLPReader | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | RLPWriter | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | MerkleTrie | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | SecureMerkleTrie | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibFixedPointMath | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | BaseNFTVault | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | BaseVault | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | BridgedERC1155 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | BridgedERC20 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | BridgedERC20Base | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | BridgedERC721 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | ERC1155Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xaf1459...881702` — deployed 2024-05-01 11:03:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | ERC20Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x996282...4415ab` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | ERC721Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x0b470d...f419aa` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | IBridgedERC20 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibBridgedToken | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | USDCAdapter | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | GuardianVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | IVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | SgxVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | DelegateOwner | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | QuotaManager | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x91f671...22f29e` — deployed 2024-05-13 08:27:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | BridgedTaikoToken | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | LibBonds | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | LibData | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | LibProposing | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | LibProving | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | LibUtils | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | LibVerifying | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | TaikoData | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | TaikoL1 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | ComposeVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | TeeAnyVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | ZkAndTeeVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | ZkAnyVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | Lib1559Math | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | TaikoL2 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | IBondManager | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | ICodec | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | IForcedInclusionStore | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | IInbox | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | IProverWhitelist | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | Codec | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | Inbox | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | ProverWhitelist | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibBonds | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibBlobs | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibForcedInclusion | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibHashOptimized | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibInboxSetup | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibPackUnpack | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibProposeInputCodec | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibProposedEventCodec | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibProveInputCodec | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibTransitionCodec | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | MainnetInbox | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | PreconfWhitelist | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | IProofVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibPublicInput | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | Risc0Verifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | SP1Verifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | SgxVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | ComposeVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | Anchor | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | AnchorForkRouter | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | BondManager | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | IBondProcessor | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | ForkRouter | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | SignalService | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9e0a24...35c77c` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| quill_audits_taiko_smart_contract_audit_report.pdf | Bridge | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xd60247...ddd8ec` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| quill_audits_taiko_smart_contract_audit_report.pdf | ERC20Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x996282...4415ab` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| quill_audits_taiko_smart_contract_audit_report.pdf | ERC721Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x0b470d...f419aa` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| quill_audits_taiko_smart_contract_audit_report.pdf | ERC1155Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xaf1459...881702` — deployed 2024-05-01 11:03:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| quill_audits_taiko_smart_contract_audit_report.pdf | BridgedERC721 | unmatched — not counted | — | mentioned in findings | no |
| quill_audits_taiko_smart_contract_audit_report.pdf | BridgedERC1155 | unmatched — not counted | — | mentioned in findings | no |
| quill_audits_taiko_smart_contract_audit_report.pdf | SignalService | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9e0a24...35c77c` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| quill_audits_taiko_smart_contract_audit_report.pdf | OwnerUUPSUpgradable | unmatched — not counted | — | mentioned in findings | no |
| quill_audits_taiko_smart_contract_audit_report.pdf | AddressManager | unmatched — not counted | — | mentioned in findings | no |
| quill_audits_taiko_smart_contract_audit_report.pdf | EssentialContract | unmatched — not counted | — | mentioned in findings | no |
| quill_audits_taiko_smart_contract_audit_report.pdf | LibAddress | unmatched — not counted | — | mentioned in findings | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | Bridge | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xd60247...ddd8ec` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | SignalService | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9e0a24...35c77c` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | SgxVerifier | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | ERC20Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x996282...4415ab` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | LibProposing | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | AssignmentHook | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | LibProving | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | TaikoL1 | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | LibVerifying | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | TaikoL2 | unmatched — not counted | — | listed in scope directories: L2/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | BridgedERC20Base | unmatched — not counted | — | listed in scope directories: tokenvaults/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | LibBytesUtils | unmatched — not counted | — | listed in scope directories: thirdparty/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | Lib4844 | unmatched — not counted | — | listed in scope directories: 4844/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | TaikoTimelockController | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | PseZkVerifier | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | Guardians | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | TaikoGovernor | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | TaikoA6TierProvider | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | AddressManager | unmatched — not counted | — | listed in scope directories: common/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | LibDepositing | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | LibMerkleTrie | unmatched — not counted | — | listed in scope directories: thirdparty/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | LibRLPReader | unmatched — not counted | — | listed in scope directories: thirdparty/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | LibUint512Math | unmatched — not counted | — | listed in scope directories: thirdparty/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | ERC1155Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xaf1459...881702` — deployed 2024-05-01 11:03:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | ERC721Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x0b470d...f419aa` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | AuthorizableContract | unmatched — not counted | — | listed in scope directories: common/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | EssentialContract | unmatched — not counted | — | listed in scope directories: common/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | OwnerUUPSUpgradable | unmatched — not counted | — | listed in scope directories: common/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | AddressResolver | unmatched — not counted | — | listed in scope directories: common/ | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xec1a9a...0c6449` | MainnetSharedAddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 65 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 28 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 23 own (21 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 184 unmatched
- Matched-own operational status: 23 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8
- Match method counts: unique_name=23

Zero-match audit list:

- [21028] halborn-taiko-dao-contract-audit.pdf
- [21030] open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf

Fork inheritance lineage and inherited audits are included when available.
