# Agentic Audit Brief: Cronos zkEVM Bridge

## Project Overview

- Project: Cronos zkEVM Bridge (`cronos-zkevm-bridge`)
- Website: [https://zkevm.cronos.org/](https://zkevm.cronos.org/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.621Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 9 unique implementations (9 raw deployments)
- DeFi Llama TVL: $17,420,469.54
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 7 project-authored contract(s) across 1 chain(s); 1 ERC20 token, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 3 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/7 (0.0%)
- Deployed-live implementations: 9 of 9 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 9
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

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgeMiddleware | unknown | ethereum | n/a | [`0x248c731b155af4cae198af705fb803f087a0b01e`](./contracts/ethereum-1/0x248c731b155af4cae198af705fb803f087a0b01e/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x28ff2e4dd1b58efeb0fc138602a28d5ae81e44e2`](./contracts/ethereum-1/0x28ff2e4dd1b58efeb0fc138602a28d5ae81e44e2/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x76bf2d1e6dfda645c0c17440b17eccc181dfc351`](./contracts/ethereum-1/0x76bf2d1e6dfda645c0c17440b17eccc181dfc351/) | ⚠️ Unaudited |
| EthereumDeposit | unknown | ethereum | n/a | [`0xe8dd4838c47ebf87d8fdb63e7f6dd02c7432d2ac`](./contracts/ethereum-1/0xe8dd4838c47ebf87d8fdb63e7f6dd02c7432d2ac/) | ⚠️ Unaudited |
| YbEthBridge | unknown | ethereum | n/a | [`0xd91629518a1ec964cfce27c2a939f689dcbdf73f`](./contracts/ethereum-1/0xd91629518a1ec964cfce27c2a939f689dcbdf73f/) | ⚠️ Unaudited |
| YbEthNft | unknown | ethereum | n/a | [`0x43df9d854d3fcb882847b9a638cabd06fe86d2c5`](./contracts/ethereum-1/0x43df9d854d3fcb882847b9a638cabd06fe86d2c5/) | ⚠️ Unaudited |
| YBUSD | unknown | ethereum | n/a | [`0xd501a4d2141799f3228c40af972df622c632b7ce`](./contracts/ethereum-1/0xd501a4d2141799f3228c40af972df622c632b7ce/) | ⚠️ Unaudited |
| YBUSDBridge | unknown | ethereum | n/a | [`0x17dacad8aa962963830136422e2eaa8d27d014f8`](./contracts/ethereum-1/0x17dacad8aa962963830136422e2eaa8d27d014f8/) | ⚠️ Unaudited |
| ZkCroMintAndBridge | unknown | ethereum | n/a | [`0xe69a535730858fd8dc386b448972a9f801ab4e12`](./contracts/ethereum-1/0xe69a535730858fd8dc386b448972a9f801ab4e12/) | ⚠️ Unaudited |

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
| ethereum | [`0x248c731b155af4cae198af705fb803f087a0b01e`](./contracts/ethereum-1/0x248c731b155af4cae198af705fb803f087a0b01e/) | BridgeMiddleware | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe8dd4838c47ebf87d8fdb63e7f6dd02c7432d2ac`](./contracts/ethereum-1/0xe8dd4838c47ebf87d8fdb63e7f6dd02c7432d2ac/) | EthereumDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd91629518a1ec964cfce27c2a939f689dcbdf73f`](./contracts/ethereum-1/0xd91629518a1ec964cfce27c2a939f689dcbdf73f/) | YbEthBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43df9d854d3fcb882847b9a638cabd06fe86d2c5`](./contracts/ethereum-1/0x43df9d854d3fcb882847b9a638cabd06fe86d2c5/) | YbEthNft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd501a4d2141799f3228c40af972df622c632b7ce`](./contracts/ethereum-1/0xd501a4d2141799f3228c40af972df622c632b7ce/) | YBUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17dacad8aa962963830136422e2eaa8d27d014f8`](./contracts/ethereum-1/0x17dacad8aa962963830136422e2eaa8d27d014f8/) | YBUSDBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe69a535730858fd8dc386b448972a9f801ab4e12`](./contracts/ethereum-1/0xe69a535730858fd8dc386b448972a9f801ab4e12/) | ZkCroMintAndBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
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
