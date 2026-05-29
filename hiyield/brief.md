# Agentic Audit Brief: HiYield

## Project Overview

- Project: HiYield (`hiyield`)
- Website: [https://www.hiyield.xyz](https://www.hiyield.xyz)
- Lifecycle: active (Tier 0, 33.6% below peak)
- Generated: 2026-05-29T19:11:03.814Z
- Pipeline run: v2-pipeline-2026-05-29-691c43-e9c3
- Chains: avalanche, canto, ethereum
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $2,727,183.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

HiYield is a Real World Asset (RWA) protocol that tokenizes off-chain assets, enabling users to earn yield from real-world financial instruments on-chain.

### Architecture

The HiYield family represents the core protocol logic, while the Mainnet family contains the deployed instances on Ethereum mainnet, sharing the same deployer cluster and likely interacting through shared token standards or oracle infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 36
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 36 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0xaf5baa...cfeac2` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x0e4289...4c3f72` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x847550...307b3e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xce6050...59e660` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SUMMARY.md](https://github.com/lydialabs/ord/blob/master/docs/src/SUMMARY.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [bounties.md](https://github.com/lydialabs/ord/blob/master/docs/src/bounties.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0.md](https://github.com/lydialabs/ord/blob/master/docs/src/bounty/0.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [1.md](https://github.com/lydialabs/ord/blob/master/docs/src/bounty/1.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2.md](https://github.com/lydialabs/ord/blob/master/docs/src/bounty/2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [3.md](https://github.com/lydialabs/ord/blob/master/docs/src/bounty/3.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [contributing.md](https://github.com/lydialabs/ord/blob/master/docs/src/contributing.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [digital-artifacts.md](https://github.com/lydialabs/ord/blob/master/docs/src/digital-artifacts.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [donate.md](https://github.com/lydialabs/ord/blob/master/docs/src/donate.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [faq.md](https://github.com/lydialabs/ord/blob/master/docs/src/faq.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [guides.md](https://github.com/lydialabs/ord/blob/master/docs/src/guides.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [batch-inscribing.md](https://github.com/lydialabs/ord/blob/master/docs/src/guides/batch-inscribing.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [collecting.md](https://github.com/lydialabs/ord/blob/master/docs/src/guides/collecting.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [sparrow-wallet.md](https://github.com/lydialabs/ord/blob/master/docs/src/guides/collecting/sparrow-wallet.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [explorer.md](https://github.com/lydialabs/ord/blob/master/docs/src/guides/explorer.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [moderation.md](https://github.com/lydialabs/ord/blob/master/docs/src/guides/moderation.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [reindexing.md](https://github.com/lydialabs/ord/blob/master/docs/src/guides/reindexing.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [sat-hunting.md](https://github.com/lydialabs/ord/blob/master/docs/src/guides/sat-hunting.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [settings.md](https://github.com/lydialabs/ord/blob/master/docs/src/guides/settings.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [teleburning.md](https://github.com/lydialabs/ord/blob/master/docs/src/guides/teleburning.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [testing.md](https://github.com/lydialabs/ord/blob/master/docs/src/guides/testing.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [wallet.md](https://github.com/lydialabs/ord/blob/master/docs/src/guides/wallet.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [inscriptions.md](https://github.com/lydialabs/ord/blob/master/docs/src/inscriptions.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [delegate.md](https://github.com/lydialabs/ord/blob/master/docs/src/inscriptions/delegate.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [metadata.md](https://github.com/lydialabs/ord/blob/master/docs/src/inscriptions/metadata.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pointer.md](https://github.com/lydialabs/ord/blob/master/docs/src/inscriptions/pointer.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [provenance.md](https://github.com/lydialabs/ord/blob/master/docs/src/inscriptions/provenance.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [recursion.md](https://github.com/lydialabs/ord/blob/master/docs/src/inscriptions/recursion.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [rendering.md](https://github.com/lydialabs/ord/blob/master/docs/src/inscriptions/rendering.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [introduction.md](https://github.com/lydialabs/ord/blob/master/docs/src/introduction.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [overview.md](https://github.com/lydialabs/ord/blob/master/docs/src/overview.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [runes.md](https://github.com/lydialabs/ord/blob/master/docs/src/runes.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [specification.md](https://github.com/lydialabs/ord/blob/master/docs/src/runes/specification.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 36
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [8653] SUMMARY.md
- [8654] bounties.md
- [8655] 0.md
- [8656] 1.md
- [8657] 2.md
- [8658] 3.md
- [8659] contributing.md
- [8660] digital-artifacts.md
- [8661] donate.md
- [8662] faq.md
- [8663] guides.md
- [8664] batch-inscribing.md
- [8665] collecting.md
- [8666] sparrow-wallet.md
- [8667] explorer.md
- [8668] moderation.md
- [8669] reindexing.md
- [8670] sat-hunting.md
- [8671] settings.md
- [8672] teleburning.md
- [8673] testing.md
- [8674] wallet.md
- [8675] inscriptions.md
- [8676] delegate.md
- [8677] metadata.md
- [8678] pointer.md
- [8679] provenance.md
- [8680] recursion.md
- [8681] rendering.md
- [8682] introduction.md
- [8683] overview.md
- [8684] runes.md
- [8685] specification.md
- [8686] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [8687] 0002-metadata-manifest-and-pull-command.md
- [8688] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
