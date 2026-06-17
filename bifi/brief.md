# Agentic Audit Brief: BiFi

## Project Overview

- Project: BiFi (`bifi`)
- Website: [https://bifi.finance/](https://bifi.finance/)
- Lifecycle: active (Tier 0, 84.2% below peak)
- Generated: 2026-06-17T07:00:41.478Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: avalanche, ethereum, klaytn
- Contract surface: 14 unique implementations (14 raw deployments)
- DeFi Llama TVL: $6,959,644.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

BiFi is a cross-chain lending and borrowing platform powered by Bifrost, positioned around native cross-chain functionality without relying on bridges or wrapped tokens. Its current Cross-chain BiFi deployment on Bifrost Network and Binance/BSC should be distinguished from legacy Ethereum, Avalanche, and Klaytn lending deployments that used handler/manager-style contracts and proxy-based upgradeability.

### Architecture

All handler proxies (e.g., UsdtHandlerProxy, DaiHandlerProxy) delegate to shared implementation contracts (TokenHandler or CoinHandler) and are managed by the TokenManager (HandlerManager implementation). The XFactory likely deploys or configures these handlers, forming a unified lending infrastructure.

## Contract Surface Quality

- Indexed contracts: 238; live-surface contracts included: 14 (6 live, 8 unknown).
- Excluded by liveness: 206 inactive, 18 singleton, 0 uninitialized.
- Deployment units: 0/7 live.
- Detected codebases: none
- Unverified dependencies: 1/5.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 14
- Raw deployments: 14
- Audits discovered: 7
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Staleness: 0 fresh, 0 aging, 7 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CoinHandlerDataStorage | unknown | ethereum | n/a | [`0xbb0aee...17db03`](./contracts/ethereum-1/0xbb0aee2fe7e9d73a5dc3354136231a617717db03/) | ⚠️ Unaudited |
| etherLiquidationManager | governance | ethereum | n/a | [`0xfd514b...73285d`](./contracts/ethereum-1/0xfd514b33a361b82fe5d89070db6917cd4f73285d/) | ⚠️ Unaudited |
| Manager | governance | avalanche | n/a | [`0x74326d...a347fd`](./contracts/avalanche-43114/0x74326d2bfbf22312158850ac3b4f7ae8a0a347fd/) | ⚠️ Unaudited |
| MarketHandlerDataStorage | unknown | ethereum | n/a | [`0x2ed04c...77bb1f`](./contracts/ethereum-1/0x2ed04ce9a032b9a101975172f59a8d33e877bb1f/) | ⚠️ Unaudited |
| ReqTokenProxy | token | avalanche | n/a | [`0xe89323...837943`](./contracts/avalanche-43114/0xe893233515b7d02dd4e3d888162d4c87dc837943/) | ⚠️ Unaudited |
| UsdtHandlerDataStorage | token | ethereum | n/a | [`0xfdc7d0...6a1c42`](./contracts/ethereum-1/0xfdc7d058bede981ea865fb64d06382a2206a1c42/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | klaytn | n/a | `0x07970f...adff89` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x480057...d5f0da` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x4bae7b...7666ee` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x808c70...5caae1` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x829fcf...dbad13` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xa6ade2...8c1598` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xe03487...615043` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xe0e67b...c1ec11` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [bifrost_bifix_audit.pdf](https://github.com/bifrost-platform/BiFi-X/blob/main/docs/bifrost_bifix_audit.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 0 | n/a |
| [(ENG)_BiFi_BIFROST_Extension_Theori.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFi_BIFROST_Extension_Theori.pdf) | unknown | Audit | 2021-08 | stale | Direct | n/a | 0 | n/a |
| [(ENG)_BiFi_Lending_Sooho_EN_Public.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFi_Lending_Sooho_EN_Public.pdf) | unknown | Audit | 2020-11 | stale | Direct | contract_name | 0 | n/a |
| [(ENG)_BiFi_Token_Hexlant_EN.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFi_Token_Hexlant_EN.pdf) | unknown | Audit | 2021-05 | stale | Direct | n/a | 0 | n/a |
| [(ENG)_BiFrost_BTC_Extension_CertiK.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFrost_BTC_Extension_CertiK.pdf) | CertiK | Audit | 2021-08 | stale | Direct | n/a | 0 | n/a |
| [BiFi Lending Protocol](https://github.com/bifrost-platform/BIFI/blob/master/docs/bifrost_bifi_audit.pdf) | Theori | Audit | 2021-02 | stale | Direct | contract_name | 0 | n/a |
| [BiFi Staking & Pooling Protocol](https://github.com/bifrost-platform/BiFi-staking-protocol/blob/main/docs/theori-audit-rev-2.0.pdf) | Theori | Audit | 2020-12 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xbb0aee...17db03`](./contracts/ethereum-1/0xbb0aee2fe7e9d73a5dc3354136231a617717db03/) | CoinHandlerDataStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfd514b...73285d`](./contracts/ethereum-1/0xfd514b33a361b82fe5d89070db6917cd4f73285d/) | etherLiquidationManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x74326d...a347fd`](./contracts/avalanche-43114/0x74326d2bfbf22312158850ac3b4f7ae8a0a347fd/) | Manager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ed04c...77bb1f`](./contracts/ethereum-1/0x2ed04ce9a032b9a101975172f59a8d33e877bb1f/) | MarketHandlerDataStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe89323...837943`](./contracts/avalanche-43114/0xe893233515b7d02dd4e3d888162d4c87dc837943/) | ReqTokenProxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfdc7d0...6a1c42`](./contracts/ethereum-1/0xfdc7d058bede981ea865fb64d06382a2206a1c42/) | UsdtHandlerDataStorage | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=113

Zero-match audit list:

- [2154] bifrost_bifix_audit.pdf
- [2155] (ENG)_BiFi_BIFROST_Extension_Theori.pdf
- [2156] (ENG)_BiFi_Lending_Sooho_EN_Public.pdf
- [2157] (ENG)_BiFi_Token_Hexlant_EN.pdf
- [2158] (ENG)_BiFrost_BTC_Extension_CertiK.pdf
- [2159] BiFi Lending Protocol
- [2160] BiFi Staking & Pooling Protocol

Fork inheritance lineage and inherited audits are included when available.
