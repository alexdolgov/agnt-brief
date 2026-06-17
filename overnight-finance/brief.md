# Agentic Audit Brief: Overnight Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 44.4% over 90 days

## Project Overview

- Project: Overnight Finance (`overnight-finance`)
- Website: [https://overnight.fi](https://overnight.fi)
- Lifecycle: declining (Tier 0, 63.6% below peak)
- Generated: 2026-06-17T07:00:36.730Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, blast, bsc, linea, optimism, polygon, zksync-era
- Contract surface: 47 unique implementations (66 raw deployments)
- DeFi Llama TVL: $9,986,172.89
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Contract Surface Quality

- Indexed contracts: 5100; live-surface contracts included: 66 (66 live, 0 unknown).
- Excluded by liveness: 3477 inactive, 1557 singleton, 0 uninitialized.
- Deployment units: 23/676 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/29 (0.0%)
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 47
- Raw deployments: 66
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AeqDelayRecovery | unknown | bsc | n/a | [`0x4be42e...38e81d`](./contracts/bsc-56/0x4be42e82a3401dbbd9bf5d703f453cc26238e81d/) | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | token | bsc | n/a | 3 deployments: bsc [`0x259b30...bae057`](./contracts/bsc-56/0x259b30c916e440fb79747cd559207ffdabbae057/); base `0xa3d1a8...9d8396`; arbitrum `0xa3d1a8...9d8396` | ⚠️ Unaudited |
| CLGauge | operational_periphery | base | n/a | [`0xd030df...8ea104`](./contracts/base-8453/0xd030df11fa453a222782f6458cc71954a48ea104/) | ⚠️ Unaudited |
| Diamond | unknown | base | n/a | [`0x23da1b...3fccb5`](./contracts/base-8453/0x23da1bca3b73666d22a3167be9ab215ac93fccb5/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | unit-22932 | [`0x687ac8...493dbb`](./contracts/base-8453/0x687ac878bc93610366b705c385cd0a0038493dbb/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | unit-22942 | [`0x86f79d...721313`](./contracts/base-8453/0x86f79d8ce9a5089f196a1e81ced37e22d4721313/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | unit-22968 | [`0xd95ca6...72e028`](./contracts/base-8453/0xd95ca61ce9aaf2143e81ef5462c0c2325172e028/) | ⚠️ Unaudited |
| Exchange | unknown | arbitrum | unit-23063 | [`0x8b80da...ec1ee4`](./contracts/arbitrum-42161/0x8b80da76aab8798fd537a9a83f462cda69ec1ee4/) | ⚠️ Unaudited |
| Exchange | unknown | arbitrum | n/a | [`0xb79dd0...de4376`](./contracts/arbitrum-42161/0xb79dd08ea68a908a97220c76d19a6aa9cbde4376/) | ⚠️ Unaudited |
| Exchange | unknown | arbitrum | unit-23078 (2 proxies) | 2 deployments: arbitrum [`0xbb5ea2...cb685f`](./contracts/arbitrum-42161/0xbb5ea28ec8044e3ce55c459c47eeded8c6cb685f/); arbitrum `0xc8261d...19d4fd` | ⚠️ Unaudited |
| Exchange | unknown | blast | unit-23131 (2 proxies) | 2 deployments: blast [`0x46b0bc...e5d123`](./contracts/blast-81457/0x46b0bc31238195fbdc7258f91fe848fffde5d123/); blast `0x756d97...366789` | ⚠️ Unaudited |
| ExchangeMother | unknown | arbitrum | unit-23050 | [`0x73cb18...e23032`](./contracts/arbitrum-42161/0x73cb180bf0521828d8849bc8cf2b920918e23032/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | unit-22660 | [`0xdfdb46...40065b`](./contracts/bsc-56/0xdfdb46af574fa0ee183841f78554f7f07940065b/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | polygon | unit-22837 | [`0xe5d155...121b33`](./contracts/polygon-137/0xe5d15506088f96252e0c8c80bf5cf7e3b4121b33/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | unit-22952 | [`0xaba227...0bf9bc`](./contracts/base-8453/0xaba227ead919e060b95b02bab2270646840bf9bc/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | unit-23034 | [`0x5cbb21...b1ff2f`](./contracts/arbitrum-42161/0x5cbb2167677c2259f421457542f6e5a805b1ff2f/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | linea | unit-23109 | [`0x05a69d...4f2216`](./contracts/linea-59144/0x05a69d7ac6aa5d1d8119c56c544f47a0984f2216/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | optimism | n/a | 2 deployments: optimism [`0xd439bd...3e0521`](./contracts/optimism-10/0xd439bd5fb6fabb2244c46f03559485c3c33e0521/); blast `0xf9e4a8...1e6e04` | ⚠️ Unaudited |
| Lockup | unknown | optimism | n/a | 9 deployments: optimism [`0x019d17...088ea5`](./contracts/optimism-10/0x019d17272687904f855d235dbba7fd9268088ea5/); optimism `0x0a0831...865004`; optimism `0x3a96a7...bb62fd`; optimism `0x3cb573...853b5b`; optimism `0x58de7f...4fa333`; optimism `0xcfb4d8...ef41e3`; optimism `0xd2e2e4...515735`; optimism `0xe4e83f...78e311`; optimism `0xff7104...66d9e1` | ⚠️ Unaudited |
| Market | unknown | arbitrum | unit-22997 | [`0x149eb6...b171b1`](./contracts/arbitrum-42161/0x149eb6e777ada78d383bd93c57d45a9a71b171b1/) | ⚠️ Unaudited |
| PortfolioManager | governance | arbitrum | unit-23038 | [`0x5fb8ab...537276`](./contracts/arbitrum-42161/0x5fb8ab30e3cc24b976c005e0c4b5eaf88a537276/) | ⚠️ Unaudited |
| UsdPlusToken | token | optimism | unit-22533 (2 proxies) | 2 deployments: optimism [`0x73cb18...e23032`](./contracts/optimism-10/0x73cb180bf0521828d8849bc8cf2b920918e23032/); optimism `0x970d50...a6e011` | ⚠️ Unaudited |
| UsdPlusToken | token | polygon | unit-22698 | [`0x236eec...5cde1f`](./contracts/polygon-137/0x236eec6359fb44cce8f97e99387aa7f8cd5cde1f/) | ⚠️ Unaudited |
| UsdPlusToken | token | arbitrum | unit-23074 (3 proxies) | 3 deployments: arbitrum [`0xb1084d...0edc30`](./contracts/arbitrum-42161/0xb1084db8d3c05cebd5fa9335df95ee4b8a0edc30/); arbitrum `0xd4939d...777aab`; arbitrum `0xeb8e93...aebfe8` | ⚠️ Unaudited |
| UsdPlusToken | token | blast | unit-23132 (2 proxies) | 2 deployments: blast [`0x4fee79...7b9bbd`](./contracts/blast-81457/0x4fee793d435c6d2c10c135983bb9d6d4fc7b9bbd/); blast `0x870a8f...2ed32e` | ⚠️ Unaudited |
| UsdPlusTokenV3 | token | bsc | unit-22619 (2 proxies) | 2 deployments: bsc [`0x5335e8...ec0c8c`](./contracts/bsc-56/0x5335e87930b410b8c5bb4d43c3360aca15ec0c8c/); bsc `0xe80772...afca65` | ⚠️ Unaudited |
| UsdPlusTokenV3 | token | linea | unit-23111 (2 proxies) | 2 deployments: linea [`0x1e1f50...3b7f13`](./contracts/linea-59144/0x1e1f509963a6d33e169d9497b11c7dbfe73b7f13/); linea `0xb79dd0...de4376` | ⚠️ Unaudited |
| WrappedXusdToken | token | arbitrum | unit-23077 | [`0xb86fb1...32440d`](./contracts/arbitrum-42161/0xb86fb1047a955c0186c77ff6263819b37b32440d/) | ⚠️ Unaudited |
| XusdToken | token | arbitrum | unit-23099 | [`0xe80772...afca65`](./contracts/arbitrum-42161/0xe80772eaf6e2e18b651f160bc9158b2a5cafca65/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x13d39b8020a8015cc2ddca4db7deb5cfe7547742) | proxy | arbitrum | unit-23045 | `0x68b433...2b2301` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1cbf0a...e49a3e` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x547cbf...a8268c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x8e86e4...f11557` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xbb8d60...36ef3d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xd09ea5...3f7fdc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1919a8...566ae3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1ca72e...ed50e9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x26dac3...33a2e7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x30c44a...ebe0cb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x431ee9...f3b191` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6a1a3d...66d7a3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x702983...21ba56` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x87832f...752e98` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8e29e6...921496` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0ce026...000b86` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x55746a...116cff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x97cb73...1e818c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ackee_2023-03-03.pdf](https://github.com/ovnstable/ovnstable-core/blob/master/audits/ackee_2023-03-03.pdf) | Ackee Blockchain | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [hacken_2022-02-03.pdf (also discovered via alternate URL)](https://github.com/ovnstable/ovnstable-core/blob/master/audits/hacken_2022-02-03.pdf) | Hacken | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [In 2022, Overnight completed an audit of the USD+ smart contracts with Hacken.io. You can review the Hacken report [here]().](https://hacken.io/audits) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 47 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [7291] ackee_2023-03-03.pdf
- [7292] hacken_2022-02-03.pdf
- [11966] In 2022, Overnight completed an audit of the USD+ smart contracts with Hacken.io. You can review the Hacken report [here]().

Fork inheritance lineage and inherited audits are included when available.
