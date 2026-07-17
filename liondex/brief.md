# Agentic Audit Brief: LionDEX

## Project Overview

- Project: LionDEX (`liondex`)
- Website: [https://liondex.com](https://liondex.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.073Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: arbitrum
- Contract surface: 36 unique implementations (36 raw deployments)
- DeFi Llama TVL: $0.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 22 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 2 common project-authored base contract(s) (proxy, erc1967upgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 67; live-surface contracts included: 36 (4 live, 32 unknown).
- Excluded by liveness: 31 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/4 (25.0%)
- Deployed-live implementations: 4 of 36 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/4
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 32
- Unique implementations: 36
- Raw deployments: 36
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 25.0% | 2023-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | unknown | arbitrum | n/a | [`0xbcbbe8a7d3f1ff4b947c42784e90f41ace109c5d`](./contracts/arbitrum-42161/0xbcbbe8a7d3f1ff4b947c42784e90f41ace109c5d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LionDEXRouter | adapter | arbitrum | n/a | [`0x9eb55af68de2d3eb8d0fb223140ab3d8d40669b6`](./contracts/arbitrum-42161/0x9eb55af68de2d3eb8d0fb223140ab3d8d40669b6/) | ⚠️ Unaudited |
| LionDexToken | token | arbitrum | n/a | [`0x8ebb85d53e6955e557b7c53acde1d42fd68561ec`](./contracts/arbitrum-42161/0x8ebb85d53e6955e557b7c53acde1d42fd68561ec/) | ⚠️ Unaudited |
| LPToken | token | arbitrum | n/a | [`0x03229fb11e3d7e8aca8c758dbd0ea737950d6cd0`](./contracts/arbitrum-42161/0x03229fb11e3d7e8aca8c758dbd0ea737950d6cd0/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (32)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LionDEXBlindBox | unknown | arbitrum | n/a | `0xf1d8d23fc07edee0bfcd83481c78489de295d3fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0400f3f86a88a936c195fafdb64902e49887e3b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0bb3a93749116ddffe75f36637ca8ae2b9a2932a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x108058b097f8399bf935b894e17810599525f2b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x189ead40662ef4fe1a26c61dde588179a15b61a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3b6a743ae92001988274f6db954181ee21008034` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x41b4eee42f8268daa279f74adc6c400de7284d4b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d998bfc0625a718a7d0a7a1ca8da1ef493edc0a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x51588d2961093e4b483943248a2866a05c7d1256` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x53300849fdc711a496b507559baf325c914bc84b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x62357f19d47f9222e0f2f250308183482d1e6678` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x689336e1cc4d6b1da6c952c846fe934258e23ac3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x69b61a75271ae5944ed8c0299daf4a5c665aed47` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6e1ab596dad8319248caa8075eb00b09541dd9f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7c750fe8e0082c90fe00f75d89c56de123a62ef7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7f959d33822c88b3b08b48197bd592972b1d9113` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8c1ad802de843b2ceafe8361ba58e2e71fb2e4af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8d9dfeead1def443b64da294de8f4249adb283f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8f548fee26f8b5bccc4d805b41535b9b3b07862a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x94606428836e1bd11bb3037eb07f06c47cd17995` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9e907614d4f7a07252895536026890f6d2f4b2a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f78e99d1cbfb705268f45bf0427bb85eb6b18dd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa0e719f75789de97d73b9b710972ad8db871580d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb674324a76ab06cc1f2c379da74a064674a8db7f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb8d76cb8b00def16bb3ed54c087d7d9eed13a7a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbbaebe7d73e5352c591344f0ee0942f3e62ab5ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd5b18b660f81ffdebcf328712114fb7c3543544d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd6abe7d5cfd234746f542d528d920850cd9c27c1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe2fac7e2bf516a5e56d9eaee6ebc5644cdcbdeee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe30110805030fbd6902d5650ff856531744dd043` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe671336ea6038d9f591c18278b66c73d4d59f687` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xea8a781d49ec9627562a41db893543d03efc9998` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-LionDEX-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-LionDEX-v1.0.pdf) | PeckShield | Audit | 2023-06 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x9eb55af68de2d3eb8d0fb223140ab3d8d40669b6`](./contracts/arbitrum-42161/0x9eb55af68de2d3eb8d0fb223140ab3d8d40669b6/) | LionDEXRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8ebb85d53e6955e557b7c53acde1d42fd68561ec`](./contracts/arbitrum-42161/0x8ebb85d53e6955e557b7c53acde1d42fd68561ec/) | LionDexToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x03229fb11e3d7e8aca8c758dbd0ea737950d6cd0`](./contracts/arbitrum-42161/0x03229fb11e3d7e8aca8c758dbd0ea737950d6cd0/) | LPToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 32 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
