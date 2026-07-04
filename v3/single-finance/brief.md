# Agentic Audit Brief: Single Finance

## Project Overview

- Project: Single Finance (`single-finance`)
- Website: [https://singlefinance.io](https://singlefinance.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:54.290Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum
- Contract surface: 10 unique implementations (10 raw deployments)
- DeFi Llama TVL: $168,389.42
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Leveraged Farming. Structurally: 10 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (administrable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 10; live-surface contracts included: 10 (10 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/10 (0.0%)
- Deployed-live implementations: 10 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 10
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

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnyswapV6ERC20 | unknown | arbitrum | n/a | [`0x55853e...ca8db0`](./contracts/arbitrum-42161/0x55853edc67aa68ec2e3903ac00f2bc5bf2ca8db0/) | ⚠️ Unaudited |
| ERC1155GatewayFactory | unknown | arbitrum | n/a | [`0x312966...a8a43c`](./contracts/arbitrum-42161/0x3129662808bec728a27ab6a6b9afd3cbaca8a43c/) | ⚠️ Unaudited |
| ERC20GatewayFactory | unknown | arbitrum | n/a | [`0xb01371...f94ab3`](./contracts/arbitrum-42161/0xb01371072fdcb9b4433b855e16a682b461f94ab3/) | ⚠️ Unaudited |
| ERC677GatewayFactory | unknown | arbitrum | n/a | [`0xd806a4...247b2b`](./contracts/arbitrum-42161/0xd806a4a473e44578796898a4c546f575d7247b2b/) | ⚠️ Unaudited |
| ERC721GatewayFactory | unknown | arbitrum | n/a | [`0xa87827...3fe353`](./contracts/arbitrum-42161/0xa87827efcac7ab82992665fc178cca16843fe353/) | ⚠️ Unaudited |
| FactoryPortal | unknown | arbitrum | n/a | [`0x58c1bb...a5b064`](./contracts/arbitrum-42161/0x58c1bbb508e96cfec1787acf6afe1c7008a5b064/) | ⚠️ Unaudited |
| MultichainVerseExplore | unknown | arbitrum | n/a | [`0x90d5f3...f5f095`](./contracts/arbitrum-42161/0x90d5f3aa862f87598011e6ef511e4e8ed2f5f095/) | ⚠️ Unaudited |
| RewardMasterChef | unknown | arbitrum | n/a | [`0x123706...5a5b8e`](./contracts/arbitrum-42161/0x123706cdd8e60324e610e9a2cc7012d0f45a5b8e/) | ⚠️ Unaudited |
| Skimmer | unknown | arbitrum | n/a | [`0x82f0b8...6829c1`](./contracts/arbitrum-42161/0x82f0b8b456c1a451378467398982d4834b6829c1/) | ⚠️ Unaudited |
| ValueRouter | unknown | arbitrum | n/a | [`0x7fc567...faf801`](./contracts/arbitrum-42161/0x7fc5670b2041d34414b0b2178fc660b1e1faf801/) | ⚠️ Unaudited |

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
| [skynet.certik.com/projects/singlefinance](https://skynet.certik.com/projects/singlefinance) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21000] skynet.certik.com/projects/singlefinance

Fork inheritance lineage and inherited audits are included when available.
