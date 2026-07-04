# Agentic Audit Brief: Abstract

## Project Overview

- Project: Abstract (`abstract`)
- Website: [https://www.abs.xyz/](https://www.abs.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:52:57.973Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum
- Contract surface: 15 unique implementations (15 raw deployments)
- DeFi Llama TVL: $23,025,118.29
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Chain. Structurally: 9 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/9 (0.0%)
- Deployed-live implementations: 15 of 15 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 15
- Raw deployments: 15
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ChainAdmin | unknown | ethereum | n/a | [`0xa1f75f...05a661`](./contracts/ethereum-1/0xa1f75f491f630037c4ccaa2bfa22363cec05a661/) | ⚠️ Unaudited |
| DefaultUpgrade | unknown | ethereum | n/a | [`0x4d3767...7e855d`](./contracts/ethereum-1/0x4d376798ba8f69ced59642c3ae8687c7457e855d/) | ⚠️ Unaudited |
| DiamondProxy | unknown | ethereum | n/a | [`0x2edc71...80fbb9`](./contracts/ethereum-1/0x2edc71e9991a962c7fe172212d1aa9e50480fbb9/) | ⚠️ Unaudited |
| IdentityRegistryUpgradeable | unknown | ethereum | n/a | [`0x8004a1...39a432`](./contracts/ethereum-1/0x8004a169fb4a3325136eb29fa0ceb6d2e539a432/) | ⚠️ Unaudited |
| MailboxFacet | unknown | ethereum | n/a | [`0x324000...000324`](./contracts/ethereum-1/0x32400084c286cf3e17e7b677ea9583e60a000324/) | ⚠️ Unaudited |
| Multicall3 | unknown | ethereum | n/a | [`0xca11bd...76ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x491727...c823c4`](./contracts/ethereum-1/0x49172720a082ed424f48451d90f5d6461ec823c4/) | ⚠️ Unaudited |
| ReputationRegistryUpgradeable | unknown | ethereum | n/a | [`0x8004ba...de9b63`](./contracts/ethereum-1/0x8004baa17c55a88189ae136b182e5fda19de9b63/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0x7f3eab...631063`](./contracts/ethereum-1/0x7f3eab9ccf1d8b9705f7ede895d3b4ac1b631063/) | ⚠️ Unaudited |
| SingletonFactory | unknown | ethereum | n/a | [`0xce0042...fdcf9f`](./contracts/ethereum-1/0xce0042b868300000d44a59004da54a005ffdcf9f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x303a46...eb5213`](./contracts/ethereum-1/0x303a465b659cbb0ab36ee643ea362c509eeb5213/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xc2ee6b...0f5f5c`](./contracts/ethereum-1/0xc2ee6b6af7d616f6e27ce7f4a451aedc2b0f5f5c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xd7f9f5...8cb2cb`](./contracts/ethereum-1/0xd7f9f54194c633f36ccd5f3da84ad4a1c38cb2cb/) | ⚠️ Unaudited |
| ValidatorTimelock | unknown | ethereum | n/a | [`0x5d8ba1...bad06e`](./contracts/ethereum-1/0x5d8ba173dc6c3c90c8f7c04c9288bef5fdbad06e/) | ⚠️ Unaudited |
| Verifier | unknown | ethereum | n/a | [`0x70f3fb...de9604`](./contracts/ethereum-1/0x70f3fbf8a427155185ec90bed8a3434203de9604/) | ⚠️ Unaudited |

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
| [2024-11-02-AGW-Security-Review-Pashov.pdf](https://github.com/Abstract-Foundation/audits/blob/main/agw/2024-11-02-AGW-Security-Review-Pashov.pdf) | Pashov Audit Group | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [2024-11-11-AGW-Clave-Diff-Review-Trust.pdf](https://github.com/Abstract-Foundation/audits/blob/main/agw/2024-11-11-AGW-Clave-Diff-Review-Trust.pdf) | Trust | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [2024-12-23-Session-Key-Security-Review-Pashov.pdf](https://github.com/Abstract-Foundation/audits/blob/main/agw/2024-12-23-Session-Key-Security-Review-Pashov.pdf) | Pashov Audit Group | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa1f75f...05a661`](./contracts/ethereum-1/0xa1f75f491f630037c4ccaa2bfa22363cec05a661/) | ChainAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d3767...7e855d`](./contracts/ethereum-1/0x4d376798ba8f69ced59642c3ae8687c7457e855d/) | DefaultUpgrade | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2edc71...80fbb9`](./contracts/ethereum-1/0x2edc71e9991a962c7fe172212d1aa9e50480fbb9/) | DiamondProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8004a1...39a432`](./contracts/ethereum-1/0x8004a169fb4a3325136eb29fa0ceb6d2e539a432/) | IdentityRegistryUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x324000...000324`](./contracts/ethereum-1/0x32400084c286cf3e17e7b677ea9583e60a000324/) | MailboxFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8004ba...de9b63`](./contracts/ethereum-1/0x8004baa17c55a88189ae136b182e5fda19de9b63/) | ReputationRegistryUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce0042...fdcf9f`](./contracts/ethereum-1/0xce0042b868300000d44a59004da54a005ffdcf9f/) | SingletonFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d8ba1...bad06e`](./contracts/ethereum-1/0x5d8ba173dc6c3c90c8f7c04c9288bef5fdbad06e/) | ValidatorTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70f3fb...de9604`](./contracts/ethereum-1/0x70f3fbf8a427155185ec90bed8a3434203de9604/) | Verifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19448] 2024-11-02-AGW-Security-Review-Pashov.pdf
- [19449] 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf
- [19450] 2024-12-23-Session-Key-Security-Review-Pashov.pdf

Fork inheritance lineage and inherited audits are included when available.
