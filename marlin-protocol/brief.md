# Agentic Audit Brief: marlin-protocol

## Project Overview

- Project: marlin-protocol (`marlin-protocol`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.437Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum, bsc, ethereum
- Contract surface: 28 unique implementations (28 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 23 project-authored contract(s) across 3 chain(s); 7 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (attestationautherupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 28; live-surface contracts included: 28 (28 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/26 (0.0%)
- Deployed-live implementations: 28 of 28 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/28
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 28
- Raw deployments: 28
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

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BEP20Token | unknown | bsc | n/a | [`0xa1428370f540b4c4e319224165ecae513a391f77`](./contracts/bsc-56/0xa1428370f540b4c4e319224165ecae513a391f77/) | ⚠️ Unaudited |
| BridgeLogic | unknown | ethereum | n/a | [`0x3897bc9f0a82542abc4319320fc55b533a073e63`](./contracts/ethereum-1/0x3897bc9f0a82542abc4319320fc55b533a073e63/) | ⚠️ Unaudited |
| ClusterRegistry | unknown | ethereum | n/a | [`0x1117fa26adc7e6251144905f65b9cc58b27809ad`](./contracts/ethereum-1/0x1117fa26adc7e6251144905f65b9cc58b27809ad/) | ⚠️ Unaudited |
| ClusterRewards | unknown | arbitrum | n/a | [`0x3d3af827d94743780cabdfb6af8cd47fa30f93c9`](./contracts/arbitrum-42161/0x3d3af827d94743780cabdfb6af8cd47fa30f93c9/) | ⚠️ Unaudited |
| ClusterSelector | unknown | arbitrum | n/a | [`0x86435ebaf3a3af8118c91ad504b3f74c9d1ae5eb`](./contracts/arbitrum-42161/0x86435ebaf3a3af8118c91ad504b3f74c9d1ae5eb/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x02520e5cfa75dfee7b0b51a658bf4a7675edf253`](./contracts/ethereum-1/0x02520e5cfa75dfee7b0b51a658bf4a7675edf253/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | [`0x778c1adeab57dd4b5b930bbdb8c892f8d2606228`](./contracts/arbitrum-42161/0x778c1adeab57dd4b5b930bbdb8c892f8d2606228/) | ⚠️ Unaudited |
| Executors | unknown | arbitrum | n/a | [`0x2fcb1f84491a84b719143959730a1237ae6e55a6`](./contracts/arbitrum-42161/0x2fcb1f84491a84b719143959730a1237ae6e55a6/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | arbitrum | n/a | [`0xaf88d065e77c8cc2239327c5edb3a432268e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | arbitrum | n/a | [`0x0f4fb9474303d10905ab86aa8d5a65fe44b6e04a`](./contracts/arbitrum-42161/0x0f4fb9474303d10905ab86aa8d5a65fe44b6e04a/) | ⚠️ Unaudited |
| GatewayJobs | unknown | arbitrum | n/a | [`0x618566af99c2d27b46a3e35f271710a0bfb5e25d`](./contracts/arbitrum-42161/0x618566af99c2d27b46a3e35f271710a0bfb5e25d/) | ⚠️ Unaudited |
| Gateways | unknown | arbitrum | n/a | [`0x0a526603f4a9d47b272c6653fb26eb64c225d69a`](./contracts/arbitrum-42161/0x0a526603f4a9d47b272c6653fb26eb64c225d69a/) | ⚠️ Unaudited |
| GovernanceTester | unknown | ethereum | n/a | [`0x87f1e73367f406a6546b34ed3781db6e86f57eae`](./contracts/ethereum-1/0x87f1e73367f406a6546b34ed3781db6e86f57eae/) | ⚠️ Unaudited |
| Jobs | unknown | arbitrum | n/a | [`0x3ea9a428e5fdf2f088435a04041e674e33d3d856`](./contracts/arbitrum-42161/0x3ea9a428e5fdf2f088435a04041e674e33d3d856/) | ⚠️ Unaudited |
| KmsRoot | unknown | ethereum | n/a | [`0x0917ee9ef2c8f816f5d773923e9527a77f1c3123`](./contracts/ethereum-1/0x0917ee9ef2c8f816f5d773923e9527a77f1c3123/) | ⚠️ Unaudited |
| L1Gateway | unknown | ethereum | n/a | [`0x73a25543fa5b8419ecef2f8e0e28cdef195c6e19`](./contracts/ethereum-1/0x73a25543fa5b8419ecef2f8e0e28cdef195c6e19/) | ⚠️ Unaudited |
| L2Gateway | unknown | arbitrum | n/a | [`0x31fb91ae83898a73391a469dca4bf6c35d82e74e`](./contracts/arbitrum-42161/0x31fb91ae83898a73391a469dca4bf6c35d82e74e/) | ⚠️ Unaudited |
| MasterMinter | unknown | arbitrum | n/a | [`0x8aff09e2259cacbf4fc4e3e53f3bf799efeeab36`](./contracts/arbitrum-42161/0x8aff09e2259cacbf4fc4e3e53f3bf799efeeab36/) | ⚠️ Unaudited |
| MPond | unknown | arbitrum | n/a | [`0xc606157cdbeb8e0bdb273e40d6ee96e151083194`](./contracts/arbitrum-42161/0xc606157cdbeb8e0bdb273e40d6ee96e151083194/) | ⚠️ Unaudited |
| MPondLogic | unknown | ethereum | n/a | [`0x0b1f6acab2bfb0b72d61c7be8455f0d5f72c617c`](./contracts/ethereum-1/0x0b1f6acab2bfb0b72d61c7be8455f0d5f72c617c/) | ⚠️ Unaudited |
| OysterServerlessCodeContract | unknown | arbitrum | n/a | [`0x061868a3387c5f6a875c111a2fddeb70c66344f4`](./contracts/arbitrum-42161/0x061868a3387c5f6a875c111a2fddeb70c66344f4/) | ⚠️ Unaudited |
| Pond | unknown | arbitrum | n/a | [`0x8b0bca2bb41b126a2bd43453cc0c25a4b8f7cc31`](./contracts/arbitrum-42161/0x8b0bca2bb41b126a2bd43453cc0c25a4b8f7cc31/) | ⚠️ Unaudited |
| ReceiverStaking | unknown | arbitrum | n/a | [`0x272b4b6371e2968b634b18c1800e36d3145c7172`](./contracts/arbitrum-42161/0x272b4b6371e2968b634b18c1800e36d3145c7172/) | ⚠️ Unaudited |
| Relay | unknown | arbitrum | n/a | [`0x96733bd04e0278dfff5e8725301dfdbe5a3a4d2d`](./contracts/arbitrum-42161/0x96733bd04e0278dfff5e8725301dfdbe5a3a4d2d/) | ⚠️ Unaudited |
| RelaySubscriptions | unknown | arbitrum | n/a | [`0x8fb2c621d6e636063f0e49828f4da7748135f3cb`](./contracts/arbitrum-42161/0x8fb2c621d6e636063f0e49828f4da7748135f3cb/) | ⚠️ Unaudited |
| RewardDelegators | unknown | ethereum | n/a | [`0x0e12e9aba385c36cad25858f2fdb8b5e3b3d8d16`](./contracts/ethereum-1/0x0e12e9aba385c36cad25858f2fdb8b5e3b3d8d16/) | ⚠️ Unaudited |
| StakeManager | unknown | ethereum | n/a | [`0x2cae582e2e7efe7b5966e88edb1c02997804f97c`](./contracts/ethereum-1/0x2cae582e2e7efe7b5966e88edb1c02997804f97c/) | ⚠️ Unaudited |
| TokenLogic | unknown | ethereum | n/a | [`0x57b946008913b82e4df85f501cbaed910e58d26c`](./contracts/ethereum-1/0x57b946008913b82e4df85f501cbaed910e58d26c/) | ⚠️ Unaudited |

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
| bsc | [`0xa1428370f540b4c4e319224165ecae513a391f77`](./contracts/bsc-56/0xa1428370f540b4c4e319224165ecae513a391f77/) | BEP20Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3897bc9f0a82542abc4319320fc55b533a073e63`](./contracts/ethereum-1/0x3897bc9f0a82542abc4319320fc55b533a073e63/) | BridgeLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1117fa26adc7e6251144905f65b9cc58b27809ad`](./contracts/ethereum-1/0x1117fa26adc7e6251144905f65b9cc58b27809ad/) | ClusterRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3d3af827d94743780cabdfb6af8cd47fa30f93c9`](./contracts/arbitrum-42161/0x3d3af827d94743780cabdfb6af8cd47fa30f93c9/) | ClusterRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x86435ebaf3a3af8118c91ad504b3f74c9d1ae5eb`](./contracts/arbitrum-42161/0x86435ebaf3a3af8118c91ad504b3f74c9d1ae5eb/) | ClusterSelector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2fcb1f84491a84b719143959730a1237ae6e55a6`](./contracts/arbitrum-42161/0x2fcb1f84491a84b719143959730a1237ae6e55a6/) | Executors | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaf88d065e77c8cc2239327c5edb3a432268e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0f4fb9474303d10905ab86aa8d5a65fe44b6e04a`](./contracts/arbitrum-42161/0x0f4fb9474303d10905ab86aa8d5a65fe44b6e04a/) | FiatTokenV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x618566af99c2d27b46a3e35f271710a0bfb5e25d`](./contracts/arbitrum-42161/0x618566af99c2d27b46a3e35f271710a0bfb5e25d/) | GatewayJobs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0a526603f4a9d47b272c6653fb26eb64c225d69a`](./contracts/arbitrum-42161/0x0a526603f4a9d47b272c6653fb26eb64c225d69a/) | Gateways | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87f1e73367f406a6546b34ed3781db6e86f57eae`](./contracts/ethereum-1/0x87f1e73367f406a6546b34ed3781db6e86f57eae/) | GovernanceTester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3ea9a428e5fdf2f088435a04041e674e33d3d856`](./contracts/arbitrum-42161/0x3ea9a428e5fdf2f088435a04041e674e33d3d856/) | Jobs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0917ee9ef2c8f816f5d773923e9527a77f1c3123`](./contracts/ethereum-1/0x0917ee9ef2c8f816f5d773923e9527a77f1c3123/) | KmsRoot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73a25543fa5b8419ecef2f8e0e28cdef195c6e19`](./contracts/ethereum-1/0x73a25543fa5b8419ecef2f8e0e28cdef195c6e19/) | L1Gateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x31fb91ae83898a73391a469dca4bf6c35d82e74e`](./contracts/arbitrum-42161/0x31fb91ae83898a73391a469dca4bf6c35d82e74e/) | L2Gateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8aff09e2259cacbf4fc4e3e53f3bf799efeeab36`](./contracts/arbitrum-42161/0x8aff09e2259cacbf4fc4e3e53f3bf799efeeab36/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc606157cdbeb8e0bdb273e40d6ee96e151083194`](./contracts/arbitrum-42161/0xc606157cdbeb8e0bdb273e40d6ee96e151083194/) | MPond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b1f6acab2bfb0b72d61c7be8455f0d5f72c617c`](./contracts/ethereum-1/0x0b1f6acab2bfb0b72d61c7be8455f0d5f72c617c/) | MPondLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x061868a3387c5f6a875c111a2fddeb70c66344f4`](./contracts/arbitrum-42161/0x061868a3387c5f6a875c111a2fddeb70c66344f4/) | OysterServerlessCodeContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8b0bca2bb41b126a2bd43453cc0c25a4b8f7cc31`](./contracts/arbitrum-42161/0x8b0bca2bb41b126a2bd43453cc0c25a4b8f7cc31/) | Pond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x272b4b6371e2968b634b18c1800e36d3145c7172`](./contracts/arbitrum-42161/0x272b4b6371e2968b634b18c1800e36d3145c7172/) | ReceiverStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x96733bd04e0278dfff5e8725301dfdbe5a3a4d2d`](./contracts/arbitrum-42161/0x96733bd04e0278dfff5e8725301dfdbe5a3a4d2d/) | Relay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8fb2c621d6e636063f0e49828f4da7748135f3cb`](./contracts/arbitrum-42161/0x8fb2c621d6e636063f0e49828f4da7748135f3cb/) | RelaySubscriptions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e12e9aba385c36cad25858f2fdb8b5e3b3d8d16`](./contracts/ethereum-1/0x0e12e9aba385c36cad25858f2fdb8b5e3b3d8d16/) | RewardDelegators | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cae582e2e7efe7b5966e88edb1c02997804f97c`](./contracts/ethereum-1/0x2cae582e2e7efe7b5966e88edb1c02997804f97c/) | StakeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57b946008913b82e4df85f501cbaed910e58d26c`](./contracts/ethereum-1/0x57b946008913b82e4df85f501cbaed910e58d26c/) | TokenLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
