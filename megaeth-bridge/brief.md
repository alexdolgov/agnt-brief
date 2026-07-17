# Agentic Audit Brief: MegaETH Bridge

## Project Overview

- Project: MegaETH Bridge (`megaeth-bridge`)
- Website: [https://www.megaeth.com/](https://www.megaeth.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.556Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum
- Contract surface: 29 unique implementations (29 raw deployments)
- DeFi Llama TVL: $8,965,575.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 27 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 19 common project-authored base contract(s) (oapp, oappsender, oappcore). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 29; live-surface contracts included: 29 (29 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/9 (0.0%)
- Deployed-live implementations: 29 of 29 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/29
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 29
- Raw deployments: 29
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

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CapToken | unknown | ethereum | n/a | [`0xcccc62962d17b8914c62d74ffb843d73b2a3cccc`](./contracts/ethereum-1/0xcccc62962d17b8914c62d74ffb843d73b2a3cccc/) | ⚠️ Unaudited |
| Create2Deployer | unknown | ethereum | n/a | [`0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2`](./contracts/ethereum-1/0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2/) | ⚠️ Unaudited |
| CreateX | unknown | ethereum | n/a | [`0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed`](./contracts/ethereum-1/0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed/) | ⚠️ Unaudited |
| EntryPoint | unknown | ethereum | n/a | [`0x0000000071727de22e5e9d8baf0edac6f37da032`](./contracts/ethereum-1/0x0000000071727de22e5e9d8baf0edac6f37da032/) | ⚠️ Unaudited |
| ERC1820Registry | unknown | ethereum | n/a | [`0x1820a4b7618bde71dce8cdc73aab6c95905fad24`](./contracts/ethereum-1/0x1820a4b7618bde71dce8cdc73aab6c95905fad24/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x88887be419578051ff9f4eb6c858a951921d8888`](./contracts/ethereum-1/0x88887be419578051ff9f4eb6c858a951921d8888/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0xec2af1c8b110a61fd9c3fa6a554a031ca9943926`](./contracts/ethereum-1/0xec2af1c8b110a61fd9c3fa6a554a031ca9943926/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x69f4d1788e39c87893c980c06edf4b7f686e2938`](./contracts/ethereum-1/0x69f4d1788e39c87893c980c06edf4b7f686e2938/) | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | ethereum | n/a | [`0xfb1bffc9d739b8d520daf37df666da4c687191ea`](./contracts/ethereum-1/0xfb1bffc9d739b8d520daf37df666da4c687191ea/) | ⚠️ Unaudited |
| L1ChugSplashProxy | unknown | ethereum | n/a | [`0x0ca3a2fbc3d770b578223fbb6b062fa875a2ee75`](./contracts/ethereum-1/0x0ca3a2fbc3d770b578223fbb6b062fa875a2ee75/) | ⚠️ Unaudited |
| Merge | unknown | ethereum | n/a | [`0x17fef0d05ffed818af08ae00bec06b65c4319618`](./contracts/ethereum-1/0x17fef0d05ffed818af08ae00bec06b65c4319618/) | ⚠️ Unaudited |
| Multicall3 | unknown | ethereum | n/a | [`0xca11bde05977b3631167028862be2a173976ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| MultiSend | unknown | ethereum | n/a | [`0x998739bfdaadde7c933b942a68053933098f9eda`](./contracts/ethereum-1/0x998739bfdaadde7c933b942a68053933098f9eda/) | ⚠️ Unaudited |
| MultiSendCallOnly | unknown | ethereum | n/a | [`0xa1dabef33b3b82c7814b6d82a79e50f4ac44102b`](./contracts/ethereum-1/0xa1dabef33b3b82c7814b6d82a79e50f4ac44102b/) | ⚠️ Unaudited |
| Permit2 | unknown | ethereum | n/a | [`0x000000000022d473030f116ddee9f6b43ac78ba3`](./contracts/ethereum-1/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x037b8fd9056a6d66422e4c471417564f35650049`](./contracts/ethereum-1/0x037b8fd9056a6d66422e4c471417564f35650049/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x10a5ef23c1ed5f06e157999dccb20b0c0be75c9b`](./contracts/ethereum-1/0x10a5ef23c1ed5f06e157999dccb20b0c0be75c9b/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x1ed92e1bc9a2735216540eddd0191144681cb77e`](./contracts/ethereum-1/0x1ed92e1bc9a2735216540eddd0191144681cb77e/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x3d8ee269f87a7f3f0590c5c0d825fff06212a242`](./contracts/ethereum-1/0x3d8ee269f87a7f3f0590c5c0d825fff06212a242/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x7f82f57f0dd546519324392e408b01fcc7d709e8`](./contracts/ethereum-1/0x7f82f57f0dd546519324392e408b01fcc7d709e8/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x8546840adf796875cd9aacc5b3b048f6b2c9d563`](./contracts/ethereum-1/0x8546840adf796875cd9aacc5b3b048f6b2c9d563/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0xf875030b9464001fc0f964e47546b0afeebd7c61`](./contracts/ethereum-1/0xf875030b9464001fc0f964e47546b0afeebd7c61/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x2a46427f3ed4e4b6f61a642143473d1df1a7fe9f`](./contracts/ethereum-1/0x2a46427f3ed4e4b6f61a642143473d1df1a7fe9f/) | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | ethereum | n/a | [`0x6c7198250087b29a8040ec63903bc130f4831cc9`](./contracts/ethereum-1/0x6c7198250087b29a8040ec63903bc130f4831cc9/) | ⚠️ Unaudited |
| SenderCreator | unknown | ethereum | n/a | [`0x7fc98430eaedbb6070b35b39d798725049088348`](./contracts/ethereum-1/0x7fc98430eaedbb6070b35b39d798725049088348/) | ⚠️ Unaudited |
| StakedUSDeOFTAdapter | unknown | ethereum | n/a | [`0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2`](./contracts/ethereum-1/0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xb0f70c0bd6fd87dbeb7c10dc692a2a6106817072`](./contracts/ethereum-1/0xb0f70c0bd6fd87dbeb7c10dc692a2a6106817072/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xecac9c5f704e954931349da37f60e39f515c11c1`](./contracts/ethereum-1/0xecac9c5f704e954931349da37f60e39f515c11c1/) | ⚠️ Unaudited |
| USDeOFTAdapter | unknown | ethereum | n/a | [`0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34`](./contracts/ethereum-1/0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34/) | ⚠️ Unaudited |

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
| [blocksec.com/audit-report/audit-report-megaeth--megaevm--stateless-validator---salt](https://blocksec.com/audit-report/audit-report-megaeth--megaevm--stateless-validator---salt) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [blocksec_megaeth_dtf_v1.0-signed.pdf](https://github.com/blocksecteam/audit-reports/blob/main/mixed/blocksec%5Fmegaeth%5Fdtf%5Fv1.0-signed.pdf) | BlockSec | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xcccc62962d17b8914c62d74ffb843d73b2a3cccc`](./contracts/ethereum-1/0xcccc62962d17b8914c62d74ffb843d73b2a3cccc/) | CapToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0000000071727de22e5e9d8baf0edac6f37da032`](./contracts/ethereum-1/0x0000000071727de22e5e9d8baf0edac6f37da032/) | EntryPoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1820a4b7618bde71dce8cdc73aab6c95905fad24`](./contracts/ethereum-1/0x1820a4b7618bde71dce8cdc73aab6c95905fad24/) | ERC1820Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ca3a2fbc3d770b578223fbb6b062fa875a2ee75`](./contracts/ethereum-1/0x0ca3a2fbc3d770b578223fbb6b062fa875a2ee75/) | L1ChugSplashProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17fef0d05ffed818af08ae00bec06b65c4319618`](./contracts/ethereum-1/0x17fef0d05ffed818af08ae00bec06b65c4319618/) | Merge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c7198250087b29a8040ec63903bc130f4831cc9`](./contracts/ethereum-1/0x6c7198250087b29a8040ec63903bc130f4831cc9/) | ResolvedDelegateProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fc98430eaedbb6070b35b39d798725049088348`](./contracts/ethereum-1/0x7fc98430eaedbb6070b35b39d798725049088348/) | SenderCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2`](./contracts/ethereum-1/0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2/) | StakedUSDeOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34`](./contracts/ethereum-1/0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34/) | USDeOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 20 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21120] blocksec.com/audit-report/audit-report-megaeth--megaevm--stateless-validator---salt
- [21121] blocksec_megaeth_dtf_v1.0-signed.pdf

Fork inheritance lineage and inherited audits are included when available.
