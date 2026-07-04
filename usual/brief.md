# Agentic Audit Brief: Usual

## Project Overview

- Project: Usual (`usual`)
- Website: [https://usual.money](https://usual.money)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:04.170Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: ethereum
- Contract surface: 11 unique implementations (11 raw deployments)
- DeFi Llama TVL: $112,251,217.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Synthetics. Structurally: 11 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 7 common project-authored base contract(s) (proxy, reentrancyguardupgradeable, noncesupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/8 (100.0%)
- Deployed-live implementations: 11 of 11 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/11
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 11
- Audits discovered: 39 (39 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 17
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 8 fresh, 19 aging, 8 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 8 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 100.0% (Sherlock, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 8 | 72.7% | 2025-11 |
| Spearbit | Tier 1 | 7 | 63.6% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AirdropDistribution | unknown | ethereum | n/a | [`0x89e813...0896ed`](./contracts/ethereum-1/0x89e813661628a277714c76d80c7fcb192a0896ed/) | ✅ Audited |
| DaoCollateral | unknown | ethereum | n/a | [`0x0eec86...22af4e`](./contracts/ethereum-1/0x0eec861d49f15f585d6bb4301fc4f89bce22af4e/) | ✅ Audited |
| DistributionModule | unknown | ethereum | n/a | [`0x373114...adb24b`](./contracts/ethereum-1/0x373114587ca96deb35a73ace1995dbed36adb24b/) | ✅ Audited |
| SwapperEngine | unknown | ethereum | n/a | [`0xf65b0c...6e57d3`](./contracts/ethereum-1/0xf65b0c88f65d620ea325ffb1ad46a5ba8a6e57d3/) | ✅ Audited |
| Usd0 | unknown | ethereum | n/a | [`0xae12f6...fc821e`](./contracts/ethereum-1/0xae12f6f805842e6dafe71a6d2b41b28ba5fc821e/) | ✅ Audited |
| Usd0PP | unknown | ethereum | n/a | [`0xe7859a...dc96a8`](./contracts/ethereum-1/0xe7859a49e6fe8422add6aabd26a3231030dc96a8/) | ✅ Audited |
| Usual | unknown | ethereum | n/a | [`0x2b65f9...6a9c2f`](./contracts/ethereum-1/0x2b65f9d2e4b84a2df6ff0525741b75d1276a9c2f/) | ✅ Audited |
| UsualSP | unknown | ethereum | n/a | [`0x24a246...272f65`](./contracts/ethereum-1/0x24a2461f3e67e82930c2df2ab032e9272a272f65/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x06b964...4d4b8e`](./contracts/ethereum-1/0x06b964d96f5dcf7eae9d7c559b09edce244d4b8e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x094b36...677b89`](./contracts/ethereum-1/0x094b360ae512a65584d4f5be33d68b2e08677b89/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xa6cd24...2a4c01`](./contracts/ethereum-1/0xa6cd248943f3d3415458b264e2c890ff422a4c01/) | ⚠️ Unaudited |

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
| [Rendered PDF capture](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2F663ZJyiBoOzbNZ4SyAbr%2FPegasus%20permissioned%20launch%20-%20Security%20Review%20by%20Cantina.pdf) | Spearbit | Audit | 2024-05 | stale | Direct | contract_name | 2 | medium |
| [Rendered PDF capture](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FKVqreB0coxbKmJoOxJhc%2FUsual%20Pegasus%20-%20Security%20Review%20by%20Cantina.pdf) | Spearbit | Audit | 2024-05 | stale | Direct | contract_name | 4 | high |
| [Rendered PDF capture](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FKv2d0EXVP8O4pSxlmYyL%2FPegasus%20Competition%20by%20Cantina.pdf) | Spearbit | Audit | 2024-05 | stale | Direct | contract_name | 3 | medium |
| [Rendered PDF capture](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2Fd1bkFNZnti2CS90W7kGI%2FL2%20Tokens%20Audit%20by%20Paladin.pdf) | Paladin | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FBtEA47JlsWFteDb5GpwE%2FSpearbit%20Cantina%20Report%20for%20Usual%20Pegasus%20Phase%201.pdf) | Spearbit | Audit | 2024-05 | stale | Direct | contract_name | 2 | high |
| [Rendered PDF capture](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FcXuPxTTIHMM2KNopvVFh%2FSpearbit%20Cantina%20Report%20for%20Usual%20Pegasus%20Phase%202.pdf) | Spearbit | Audit | 2024-05 | stale | Direct | contract_name | 2 | high |
| [Rendered PDF capture](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FKzNfBOtCOLamJuh8pQWF%2FHalborn%20Usual%20V1%20Audit.pdf) | Halborn | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FnJ3MWYlnSYTkLuUFqXz5%2FSherlock%20-%20Usual%20V1%20Audit%20Competition%20Report.pdf) | Sherlock | Contest | 2024-05 | stale | Direct | contract_name | 1 | high |
| [L2 Tokens & Adapter Audit](https://paladinsec.co/projects/usual) | Paladin | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [Blackthorn Audit Report - WrappedM.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FW7YOK5z76EilIY39jmxE%2FBlackthorn%20Audit%20Report%20-%20WrappedM.pdf) | Blackthorn | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [Spearbit Cantina Report for UsualM extension.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FH3vfJZvsgb1QSMC9cML0%2FSpearbit%20Cantina%20Report%20for%20UsualM%20extension.pdf) | Spearbit | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [Spearbit Cantina Report for USD0pp adjustments .pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FJd3MEliEfOdTpLn8Lj1c%2FSpearbit%20Cantina%20Report%20for%20USD0pp%20adjustments%20.pdf) | Spearbit | Audit | 2025-01 | aging | Direct | contract_name | 2 | medium |
| [Spearbit - Audit Report on Redirect & Fee Sweep.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FHtgp95SukDIpq9RSnnt8%2FSpearbit%20-%20Audit%20Report%20on%20Redirect%20%26%20Fee%20Sweep.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | 2 | high |
| [Sherlock - Audit Report on Euler.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FtkQNpfVUW8AybJWRoURx%2FSherlock%20-%20Audit%20Report%20on%20Euler.pdf) | Sherlock | Contest | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Spearbit - Audit Report on USL on Euler.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FM9fwC3lrmoXsV51iAmhX%2FSpearbit%20-%20Audit%20Report%20on%20USL%20on%20Euler.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | 1 | low |
| [OAK Security - Usual USL Economic Risk Assessment.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FJJRRRX0G6wz1CGyDWHI4%2FOAK%20Security%20-%20Usual%20USL%20Economic%20Risk%20Assessment.pdf) | OAK Security | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Sherlock - Audit Report on UsualUSDtB.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FLbD0S1mgQJcVQmpwKPoD%2FSherlock%20-%20Audit%20Report%20on%20UsualUSDtB.pdf) | Sherlock | Contest | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Spearbit - Audit Report on Yield Module.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FW15r2CMqY4ND4OELp9y6%2FSpearbit%20-%20Audit%20Report%20on%20Yield%20Module.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | 1 | medium |
| [Spearbit - Usual USD0++ Investment Vault.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FPpuD1K1dwd2rI5YbqRWP%2FSpearbit%20-%20Usual%20USD0%2B%2B%20Investment%20Vault.pdf) | Spearbit | Audit | 2025-04 | aging | Direct | contract_name | 1 | high |
| [Sherlock - Usual Labs Public Audit Contest.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FuIIECu9Z1z2RSIcirRxf%2FSherlock%20-%20Usual%20Labs%20Public%20Audit%20Contest.pdf) | Sherlock | Contest | 2025-03 | aging | Direct | contract_name | 8 | high |
| [Halborn - USD0++ Investment vault.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FLQrZex8aJ7jDq4mYpjqU%2FHalborn%20-%20USD0%2B%2B%20Investment%20vault.pdf) | Halborn | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Spearbit - Audit report on ETH0.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FX5OW30LK9N0f5UHww6lN%2FSpearbit%20-%20Audit%20report%20on%20ETH0.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | 1 | high |
| [Sherlock - Audit report on on ETH0 Zapper contract.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FIZ2LqzJHKiWarrkwFRji%2FSherlock%20-%20Audit%20report%20on%20on%20ETH0%20Zapper%20contract.pdf) | Sherlock | Contest | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Hexens - Audit report on UsualXLockup.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2F34RgOSQLMEzmUOxpSh2N%2FHexens%20-%20Audit%20report%20on%20UsualXLockup.pdf) | Hexens | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Halborn - Audit report on UsualXLockup.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FRRE8HgRDg1V2qCIVA604%2FHalborn%20-%20Audit%20report%20on%20UsualXLockup.pdf) | Halborn | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Sherlock- Audit report on USD0++ upgrade (Burn Redemption Mechanism).pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2F8gq6et5OGqJHJGphqav6%2FSherlock-%20Audit%20report%20on%20USD0%2B%2B%20upgrade%20(Burn%20Redemption%20Mechanism).pdf) | Sherlock | Contest | 2025-07 | aging | Direct | contract_name | 1 | high |
| [Spearbit - Audit report on Sync Vault remediation.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FzSchlFhZb6F4gUpuYu3E%2FSpearbit%20-%20Audit%20report%20on%20Sync%20Vault%20remediation.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Spearbit - Audit report on Usual USDC.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2Fok3wIxqFWGKqBnRQw1Dw%2FSpearbit%20-%20Audit%20report%20on%20Usual%20USDC.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Sherlock - EUR0 Protocol Audit.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2Fi8N4N5nDayNTlZsshidU%2FSherlock%20-%20EUR0%20Protocol%20Audit.pdf) | Sherlock | Contest | 2025-09 | fresh | Direct | contract_name | 2 | high |
| [Hexens - sUSD0 Protocol Audit.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FW8L1sNcxO9fA7jVvCtUZ%2FHexens%20-%20sUSD0%20Protocol%20Audit.pdf) | Hexens | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Halborn - sUSD0-SEUR0-RDM Audit.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2F0ng3wp3joaciGht2vx48%2FHalborn%20-%20sUSD0-SEUR0-RDM%20Audit.pdf) | Halborn | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Hexens - USD0a Protocol Audit.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FADNHL3PqW4HMQ3m5Vweo%2FHexens%20-%20USD0a%20Protocol%20Audit.pdf) | Hexens | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Sherlock - USD0a Protocol Audit.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FLcHMqp6aagbzqsfUXR33%2FSherlock%20-%20USD0a%20Protocol%20Audit.pdf) | Sherlock | Contest | 2025-11 | fresh | Direct | contract_name | 2 | high |
| [Sherlock - bUSD0 Upgrade Audit.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FroXirXvK4iNSufm3lrik%2FSherlock%20-%20bUSD0%20Upgrade%20Audit.pdf) | Sherlock | Contest | 2025-11 | fresh | Direct | contract_name | 2 | high |
| [Hexens - bUSD0 Upgrade Audit.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FG7sBFMaZHmGWhkg8WPtt%2FHexens%20-%20bUSD0%20Upgrade%20Audit.pdf) | Hexens | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Sherlock - Fira UZR Audit Nov25.pdf](https://3843788673-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyxyZTdJaHRBrumzCYheB%2Fuploads%2Fgit-blob-0e54b2fd3302e5b39a812d04da8f38df2743ac0b%2FSherlock%20-%20Fira%20UZR%20Audit%20Nov25.pdf) | Sherlock | Contest | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [Cantinacode - Fira UZR Audit Nov25.pdf](https://3843788673-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyxyZTdJaHRBrumzCYheB%2Fuploads%2Fgit-blob-2e55243e2c80f4574b96f599d6f58ea327cb2aa8%2FCantinacode%20-%20Fira%20UZR%20Audit%20Nov25.pdf) | Spearbit | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [yAudit - Fira UZR Audit Dec 25.pdf](https://3843788673-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyxyZTdJaHRBrumzCYheB%2Fuploads%2Fgit-blob-49aa88712501071eb47f480f9b7812073e1e54e2%2FyAudit%20-%20Fira%20UZR%20Audit%20Dec%2025.pdf) | yAudit | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [Hexens - Fira V1 Audit Feb26.pdf](https://3843788673-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyxyZTdJaHRBrumzCYheB%2Fuploads%2Fgit-blob-6d09a49e52e729cafea883d9f8ea0b8c0536b0dc%2Fhexens-fira-feb-26.pdf) | Hexens | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 22
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=12, low=1, medium=4
- Match method counts: extraction_exact=37

Zero-match audit list:

- [18477] Rendered PDF capture
- [18480] Rendered PDF capture
- [18482] L2 Tokens & Adapter Audit
- [18484] Blackthorn Audit Report - WrappedM.pdf
- [18485] Spearbit Cantina Report for UsualM extension.pdf
- [18488] Sherlock - Audit Report on Euler.pdf
- [18490] OAK Security - Usual USL Economic Risk Assessment.pdf
- [18491] Sherlock - Audit Report on UsualUSDtB.pdf
- [18495] Halborn - USD0++ Investment vault.pdf
- [18497] Sherlock - Audit report on on ETH0 Zapper contract.pdf
- [18498] Hexens - Audit report on UsualXLockup.pdf
- [18499] Halborn - Audit report on UsualXLockup.pdf
- [18501] Spearbit - Audit report on Sync Vault remediation.pdf
- [18502] Spearbit - Audit report on Usual USDC.pdf
- [18504] Hexens - sUSD0 Protocol Audit.pdf
- [18505] Halborn - sUSD0-SEUR0-RDM Audit.pdf
- [18506] Hexens - USD0a Protocol Audit.pdf
- [18509] Hexens - bUSD0 Upgrade Audit.pdf
- [18510] Sherlock - Fira UZR Audit Nov25.pdf
- [18511] Cantinacode - Fira UZR Audit Nov25.pdf
- [18512] yAudit - Fira UZR Audit Dec 25.pdf
- [18513] Hexens - Fira V1 Audit Feb26.pdf

Fork inheritance lineage and inherited audits are included when available.
