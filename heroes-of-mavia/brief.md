# Agentic Audit Brief: heroes-of-mavia

## Project Overview

- Project: heroes-of-mavia (`heroes-of-mavia`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.434Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: base, ethereum
- Contract surface: 13 unique implementations (13 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 13 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 11 common project-authored base contract(s) (oappupgradeable, oappsenderupgradeable, oappcoreupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 13 (13 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/11 (0.0%)
- Deployed-live implementations: 13 of 13 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/13
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 13
- Raw deployments: 13
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MaviaMarketplaceV3 | unknown | base | n/a | [`0xb926ac...70d803`](./contracts/base-8453/0xb926aca9eead652b7647c63c37f69dc44b70d803/) | ⚠️ Unaudited |
| MaviaMarketPool | unknown | base | n/a | [`0x10e0b6...136e50`](./contracts/base-8453/0x10e0b62df92df52ab70c0c8ec6bf5422dd136e50/) | ⚠️ Unaudited |
| MaviaNFTAirdrop | unknown | base | n/a | [`0x09dfc6...202e4b`](./contracts/base-8453/0x09dfc6080e36b1f83c27d8f8b5d45140bc202e4b/) | ⚠️ Unaudited |
| MaviaNFTLandBridgeL1 | unknown | ethereum | n/a | [`0x1a67e8...894b73`](./contracts/ethereum-1/0x1a67e86c028fd840cdc466542c0ff1ca53894b73/) | ⚠️ Unaudited |
| MaviaNFTLandBridgeL2 | unknown | base | n/a | [`0x145cfd...008c6a`](./contracts/base-8453/0x145cfd4121b99e38fe18ac398621555c28008c6a/) | ⚠️ Unaudited |
| MaviaOFT | unknown | base | n/a | [`0x24fcfc...c93584`](./contracts/base-8453/0x24fcfc492c1393274b6bcd568ac9e225bec93584/) | ⚠️ Unaudited |
| MaviaOFTAdapter | unknown | ethereum | n/a | [`0xe6c2b6...7abd4d`](./contracts/ethereum-1/0xe6c2b672b3eb64a1f460adcd9676a3b6c67abd4d/) | ⚠️ Unaudited |
| MaviaPresaleRounds | unknown | ethereum | n/a | [`0x36ccbf...df584c`](./contracts/ethereum-1/0x36ccbfa07891ca6d4ecb2226a6d0b699efdf584c/) | ⚠️ Unaudited |
| MaviaStakingPoolOne | unknown | base | n/a | [`0x21890f...58c8c0`](./contracts/base-8453/0x21890f88fc8a8b0142025935415017ada358c8c0/) | ⚠️ Unaudited |
| MaviaToken | unknown | ethereum | n/a | [`0x24fcfc...c93584`](./contracts/ethereum-1/0x24fcfc492c1393274b6bcd568ac9e225bec93584/) | ⚠️ Unaudited |
| MaviaTokenAirdropFlat | unknown | ethereum | n/a | [`0x1a01b0...982379`](./contracts/ethereum-1/0x1a01b00b91ae19fb6e08ec796b15f848ee982379/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | base | n/a | [`0x0fcffe...63a7a2`](./contracts/base-8453/0x0fcffeae426179a5dd72f370c49dbe13ad63a7a2/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0x154ab3...12e009`](./contracts/base-8453/0x154ab34852443eda282244d0127518a0e212e009/) | ⚠️ Unaudited |

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
| [index.html](https://certificate.quantstamp.com/full/mavia-token/c5aa6f84-0a01-4b9e-813d-6aa7201646dd/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xb926ac...70d803`](./contracts/base-8453/0xb926aca9eead652b7647c63c37f69dc44b70d803/) | MaviaMarketplaceV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x10e0b6...136e50`](./contracts/base-8453/0x10e0b62df92df52ab70c0c8ec6bf5422dd136e50/) | MaviaMarketPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x09dfc6...202e4b`](./contracts/base-8453/0x09dfc6080e36b1f83c27d8f8b5d45140bc202e4b/) | MaviaNFTAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a67e8...894b73`](./contracts/ethereum-1/0x1a67e86c028fd840cdc466542c0ff1ca53894b73/) | MaviaNFTLandBridgeL1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x145cfd...008c6a`](./contracts/base-8453/0x145cfd4121b99e38fe18ac398621555c28008c6a/) | MaviaNFTLandBridgeL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x24fcfc...c93584`](./contracts/base-8453/0x24fcfc492c1393274b6bcd568ac9e225bec93584/) | MaviaOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6c2b6...7abd4d`](./contracts/ethereum-1/0xe6c2b672b3eb64a1f460adcd9676a3b6c67abd4d/) | MaviaOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36ccbf...df584c`](./contracts/ethereum-1/0x36ccbfa07891ca6d4ecb2226a6d0b699efdf584c/) | MaviaPresaleRounds | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x21890f...58c8c0`](./contracts/base-8453/0x21890f88fc8a8b0142025935415017ada358c8c0/) | MaviaStakingPoolOne | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24fcfc...c93584`](./contracts/ethereum-1/0x24fcfc492c1393274b6bcd568ac9e225bec93584/) | MaviaToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a01b0...982379`](./contracts/ethereum-1/0x1a01b00b91ae19fb6e08ec796b15f848ee982379/) | MaviaTokenAirdropFlat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20722] index.html

Fork inheritance lineage and inherited audits are included when available.
