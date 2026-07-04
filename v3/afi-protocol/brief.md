# Agentic Audit Brief: AFI Protocol

## Project Overview

- Project: AFI Protocol (`afi-protocol`)
- Website: [https://afiprotocol.xyz/](https://afiprotocol.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:24.867Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: base, ethereum
- Contract surface: 8 unique implementations (8 raw deployments)
- DeFi Llama TVL: $225,311,504.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 8 project-authored contract(s) across 2 chain(s); 2 ERC4626 vaults, 2 ERC20 tokens, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 4 common project-authored base contract(s) (erc4626upgradeable, erc20upgradeable, reentrancyguardupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/8 (0.0%)
- Deployed-live implementations: 8 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AfiOracle | unknown | ethereum | n/a | [`0x32f232...a1a582`](./contracts/ethereum-1/0x32f232423829296f035e2cfcdc426911d4a1a582/) | ⚠️ Unaudited |
| afiRwaVault | unknown | ethereum | n/a | [`0x10b3e8...ec1b24`](./contracts/ethereum-1/0x10b3e8015b4bbf3a5ec359314ddafe399fec1b24/) | ⚠️ Unaudited |
| afiToken | unknown | ethereum | n/a | [`0x0b4c65...b40fd1`](./contracts/ethereum-1/0x0b4c655bc989baafe728f8270ff988a7c2b40fd1/) | ⚠️ Unaudited |
| afiVault | unknown | base | n/a | [`0xd0ec96...c24454`](./contracts/base-8453/0xd0ec961a8dc94bc6791184456b6b210408c24454/) | ⚠️ Unaudited |
| Manager | unknown | ethereum | n/a | [`0x38750a...ec7839`](./contracts/ethereum-1/0x38750a3fd3ca0c2fad4ebdd5588ef81164ec7839/) | ⚠️ Unaudited |
| Network | unknown | ethereum | n/a | [`0x1457c0...b64b93`](./contracts/ethereum-1/0x1457c085a609dc3997d99525d4764ccbacb64b93/) | ⚠️ Unaudited |
| Oracle | unknown | ethereum | n/a | [`0x0bb632...946ae4`](./contracts/ethereum-1/0x0bb632c59b13b7254e86ac72aa18241806946ae4/) | ⚠️ Unaudited |
| Yield | unknown | ethereum | n/a | [`0x90e937...b377fb`](./contracts/ethereum-1/0x90e9378e8e73a195580baedb6b27caf8ffb377fb/) | ⚠️ Unaudited |

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
| [### [Quantstamp Private Audit Report ]()](https://certificate.quantstamp.com/full/afi-vault/dc8a68ae-e72b-4b63-bef2-544c709f6fda/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [### [Cantina Private Audit Report ]()](https://cantina.xyz/portfolio/49c4ad16-2ab3-49f0-bcee-356ebf628020) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [cantina_afi_x_jul2025.pdf](https://3912034821-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FEPdvkoJHpBF3QkBeBWkM%2Fuploads%2FfciX3STHOBm9CwoAunz0%2Fcantina_afi_x_jul2025.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [afiUSD_Audit_Review.pdf](https://content.gitbook.com/content/EPdvkoJHpBF3QkBeBWkM/blobs/BGeUsua2k8O7FmZNfj6v/afiUSD_Audit_Review.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19400] ### [Quantstamp Private Audit Report ]()
- [19401] ### [Cantina Private Audit Report ]()
- [19402] cantina_afi_x_jul2025.pdf
- [19403] afiUSD_Audit_Review.pdf

Fork inheritance lineage and inherited audits are included when available.
