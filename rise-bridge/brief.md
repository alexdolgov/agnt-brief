# Agentic Audit Brief: rise-bridge

## Project Overview

- Project: rise-bridge (`rise-bridge`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:47.088Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 27 unique implementations (27 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 27 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 12 common project-authored base contract(s) (etherpaymentfallback, singleton, modulemanager). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 27; live-surface contracts included: 27 (27 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/8 (0.0%)
- Deployed-live implementations: 27 of 27 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 27
- Raw deployments: 27
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

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessManager | unknown | ethereum | n/a | [`0xf90a72...842d17`](./contracts/ethereum-1/0xf90a72fc295dbef2fd27629fda4b98fd3e842d17/) | ⚠️ Unaudited |
| CompatibilityFallbackHandler | unknown | ethereum | n/a | [`0xf48f2b...0fe5e4`](./contracts/ethereum-1/0xf48f2b2d2a534e402487b3ee7c18c33aec0fe5e4/) | ⚠️ Unaudited |
| Create2Deployer | unknown | ethereum | n/a | [`0x13b0d8...e9bef2`](./contracts/ethereum-1/0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2/) | ⚠️ Unaudited |
| CreateX | unknown | ethereum | n/a | [`0xba5ed0...8ba5ed`](./contracts/ethereum-1/0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed/) | ⚠️ Unaudited |
| EntryPoint | unknown | ethereum | n/a | [`0x000000...7da032`](./contracts/ethereum-1/0x0000000071727de22e5e9d8baf0edac6f37da032/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x69f4d1...6e2938`](./contracts/ethereum-1/0x69f4d1788e39c87893c980c06edf4b7f686e2938/) | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | ethereum | n/a | [`0xfb1bff...7191ea`](./contracts/ethereum-1/0xfb1bffc9d739b8d520daf37df666da4c687191ea/) | ⚠️ Unaudited |
| GnosisSafeProxyFactory | unknown | ethereum | n/a | [`0xa6b71e...896ab2`](./contracts/ethereum-1/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/) | ⚠️ Unaudited |
| L1ChugSplashProxy | unknown | ethereum | n/a | [`0x553257...c6535a`](./contracts/ethereum-1/0x553257678dd11a6668a92934aab005e420c6535a/) | ⚠️ Unaudited |
| Merge | unknown | ethereum | n/a | [`0x17fef0...319618`](./contracts/ethereum-1/0x17fef0d05ffed818af08ae00bec06b65c4319618/) | ⚠️ Unaudited |
| Multicall3 | unknown | ethereum | n/a | [`0xca11bd...76ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| MultiSend | unknown | ethereum | n/a | [`0x998739...8f9eda`](./contracts/ethereum-1/0x998739bfdaadde7c933b942a68053933098f9eda/) | ⚠️ Unaudited |
| MultiSendCallOnly | unknown | ethereum | n/a | [`0xa1dabe...44102b`](./contracts/ethereum-1/0xa1dabef33b3b82c7814b6d82a79e50f4ac44102b/) | ⚠️ Unaudited |
| OPSuccinctFaultDisputeGame | unknown | ethereum | n/a | [`0xa2b42d...a795a1`](./contracts/ethereum-1/0xa2b42dec07a17b2d304f6055630d612ab7a795a1/) | ⚠️ Unaudited |
| Permit2 | unknown | ethereum | n/a | [`0x000000...c78ba3`](./contracts/ethereum-1/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x01a627...14c217`](./contracts/ethereum-1/0x01a6274b9607ac024e8c191e491d0b25ad14c217/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x551a67...373c91`](./contracts/ethereum-1/0x551a672d703966d83c3ec3ea0e844f43c3373c91/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x6a4139...511aa3`](./contracts/ethereum-1/0x6a4139810986cf13408330e14c4ac9daf0511aa3/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0xacedd4...12f6e3`](./contracts/ethereum-1/0xacedd47c946c435154c0c4826e89f7a84412f6e3/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0xad92fa...89db4c`](./contracts/ethereum-1/0xad92fa18eb74e46db844240623124bf46589db4c/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0xb78620...9e79d6`](./contracts/ethereum-1/0xb786207a1edfc724c1d507335f403f53fd9e79d6/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0xd3caf2...26a24f`](./contracts/ethereum-1/0xd3caf2a473dbb5bc2e8fb7f328e01ab9b726a24f/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0xe2b952...c9dbb8`](./contracts/ethereum-1/0xe2b9526277dcd2b27222df760d6427213ac9dbb8/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x4ebc04...77e542`](./contracts/ethereum-1/0x4ebc046b1cfc12659a19e124b0ea8a382777e542/) | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | ethereum | n/a | [`0xc0de1d...63c9c6`](./contracts/ethereum-1/0xc0de1d9b1cd2caf782355c66a6a8e5948e63c9c6/) | ⚠️ Unaudited |
| SafeProxy | unknown | ethereum | n/a | [`0x03b85f...32fb46`](./contracts/ethereum-1/0x03b85faa108c10f6effec1d91954de99da32fb46/) | ⚠️ Unaudited |
| SenderCreator | unknown | ethereum | n/a | [`0x7fc984...088348`](./contracts/ethereum-1/0x7fc98430eaedbb6070b35b39d798725049088348/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xf90a72...842d17`](./contracts/ethereum-1/0xf90a72fc295dbef2fd27629fda4b98fd3e842d17/) | AccessManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000000...7da032`](./contracts/ethereum-1/0x0000000071727de22e5e9d8baf0edac6f37da032/) | EntryPoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6b71e...896ab2`](./contracts/ethereum-1/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/) | GnosisSafeProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x553257...c6535a`](./contracts/ethereum-1/0x553257678dd11a6668a92934aab005e420c6535a/) | L1ChugSplashProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17fef0...319618`](./contracts/ethereum-1/0x17fef0d05ffed818af08ae00bec06b65c4319618/) | Merge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2b42d...a795a1`](./contracts/ethereum-1/0xa2b42dec07a17b2d304f6055630d612ab7a795a1/) | OPSuccinctFaultDisputeGame | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0de1d...63c9c6`](./contracts/ethereum-1/0xc0de1d9b1cd2caf782355c66a6a8e5948e63c9c6/) | ResolvedDelegateProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fc984...088348`](./contracts/ethereum-1/0x7fc98430eaedbb6070b35b39d798725049088348/) | SenderCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 19 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
