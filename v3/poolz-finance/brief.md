# Agentic Audit Brief: poolz-finance

## Project Overview

- Project: poolz-finance (`poolz-finance`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:42.971Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum, avalanche, base, bsc, ethereum, manta, moonbeam, polygon
- Contract surface: 34 unique implementations (34 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 34 project-authored contract(s) across 8 chain(s); 2 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 17 common project-authored base contract(s) (govmanager, erc20helper, ethhelper). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 34; live-surface contracts included: 34 (33 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/33 (0.0%)
- Deployed-live implementations: 33 of 34 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/34
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 34
- Raw deployments: 34
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

### ⚠️ Verified + Unaudited (34)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Benefit | unknown | ethereum | n/a | [`0x2051f9...52b557`](./contracts/ethereum-1/0x2051f98ca620a4d3e6024f144382d3537452b557/) | ⚠️ Unaudited |
| CollateralProvider | unknown | arbitrum | n/a | [`0x2051f9...52b557`](./contracts/arbitrum-42161/0x2051f98ca620a4d3e6024f144382d3537452b557/) | ⚠️ Unaudited |
| DealProvider | unknown | bsc | n/a | [`0x094c45...81b7c1`](./contracts/bsc-56/0x094c456cf51234810e9f34089f783ee42d81b7c1/) | ⚠️ Unaudited |
| DelayVault | unknown | ethereum | n/a | [`0x1a414e...0f14ea`](./contracts/ethereum-1/0x1a414e5808e8e1545b5ad3ffaa8bc78a980f14ea/) | ⚠️ Unaudited |
| DelayVaultMigrator | unknown | bsc | n/a | [`0x10f1da...e774a5`](./contracts/bsc-56/0x10f1da58d6d25b5909d5897ea3ba3e76fce774a5/) | ⚠️ Unaudited |
| DelayVaultProvider | unknown | bsc | n/a | [`0xeb88ff...36b86d`](./contracts/bsc-56/0xeb88ff7799e0e7b187d98232336722ec9936b86d/) | ⚠️ Unaudited |
| DispenserProvider | unknown | polygon | n/a | [`0x55e7bb...4bb29b`](./contracts/polygon-137/0x55e7bbc157d3ce3c9b507ec0a7948782e44bb29b/) | ⚠️ Unaudited |
| ForceWithdraw | unknown | bsc | n/a | [`0x9a423d...820c2f`](./contracts/bsc-56/0x9a423dd2f20c359fc192c904d24d4c790c820c2f/) | ⚠️ Unaudited |
| HodlersWhitelist | unknown | bsc | n/a | [`0x9e583a...f96b2e`](./contracts/bsc-56/0x9e583a975187674d1b7a2270de68e3b2f8f96b2e/) | ⚠️ Unaudited |
| InvestProvider | unknown | bsc | n/a | [`0x80e7dc...01d545`](./contracts/bsc-56/0x80e7dca0b053d044b0ff477c48e891b0af01d545/) | ⚠️ Unaudited |
| LightMigrator | unknown | bsc | n/a | [`0xd9f1b3...9abe06`](./contracts/bsc-56/0xd9f1b3858f4a20424b1e52e59dc2c93f349abe06/) | ⚠️ Unaudited |
| LockDealNFT | unknown | bsc | n/a | [`0x3d2c83...9c21ae`](./contracts/bsc-56/0x3d2c83bbbbfb54087d46b80585253077509c21ae/) | ⚠️ Unaudited |
| LockDealProvider | unknown | moonbeam | n/a | [`0x1e947e...f30553`](./contracts/moonbeam-1284/0x1e947ec4f6b74c746f13604438ce1a3026f30553/) | ⚠️ Unaudited |
| LockedDeal | unknown | ethereum | n/a | [`0x27a155...eabbbc`](./contracts/ethereum-1/0x27a1559533387c1ca729dc0f4fa641049feabbbc/) | ⚠️ Unaudited |
| LockedDealV2 | unknown | ethereum | n/a | [`0x285b48...413d8f`](./contracts/ethereum-1/0x285b4866257ef51ffbdd239c10de5f9493413d8f/) | ⚠️ Unaudited |
| LockTimeOverride | unknown | bsc | n/a | [`0x7a8c76...7bac48`](./contracts/bsc-56/0x7a8c76335f5f31059bfb93d8eb1580a64e7bac48/) | ⚠️ Unaudited |
| MultiSenderV2 | unknown | bsc | n/a | [`0x114dad...4948fa`](./contracts/bsc-56/0x114dadde8112a5c43aabc6373473c282e14948fa/) | ⚠️ Unaudited |
| MultiSig | unknown | ethereum | n/a | [`0x3e4588...820d3e`](./contracts/ethereum-1/0x3e4588c3c4e6ff3da84ab5401490d9c9ea820d3e/) | ⚠️ Unaudited |
| MultiWithdraw | unknown | arbitrum | n/a | [`0x65f62e...1fb511`](./contracts/arbitrum-42161/0x65f62efeb1a43064081443791d8c10db0a1fb511/) | ⚠️ Unaudited |
| POOLX | unknown | bsc | n/a | [`0xbaea9a...eab255`](./contracts/bsc-56/0xbaea9aba1454df334943951d51116ae342eab255/) | ⚠️ Unaudited |
| POOLZSYNT | unknown | bsc | n/a | [`0x19948d...8ea64f`](./contracts/bsc-56/0x19948dbe9331af85894c571f12b59b98a58ea64f/) | ⚠️ Unaudited |
| RefundProvider | unknown | polygon | n/a | [`0x34fbf7...9b7037`](./contracts/polygon-137/0x34fbf73bfe879b868ae2c0f205762798e29b7037/) | ⚠️ Unaudited |
| RefundTimeOverride | unknown | bsc | n/a | [`0x46492b...82be12`](./contracts/bsc-56/0x46492b4dc01da45e4c8c6402712774545682be12/) | ⚠️ Unaudited |
| SafeProxy | unknown | base | n/a | [`0x983235...045de2`](./contracts/base-8453/0x9832355bec09aca6679bb6ca1ab5250c01045de2/) | ⚠️ Unaudited |
| SignUpPool | unknown | bsc | n/a | [`0x41b56b...c27841`](./contracts/bsc-56/0x41b56bf3b21c53f6394a44a2ff84f1d2bbc27841/) | ⚠️ Unaudited |
| SimpleBuilder | unknown | polygon | n/a | [`0x19dc2a...ee1030`](./contracts/polygon-137/0x19dc2a2f214cc7538af8f138637b21d150ee1030/) | ⚠️ Unaudited |
| SimpleRefundBuilder | unknown | arbitrum | n/a | [`0x120893...be44e4`](./contracts/arbitrum-42161/0x120893ab6f67171d4e6b0e72c151ab96aebe44e4/) | ⚠️ Unaudited |
| StakingManager | unknown | base | n/a | [`0x1cc642...819c62`](./contracts/base-8453/0x1cc6427505261b6d84530c850975754c50819c62/) | ⚠️ Unaudited |
| TempMultiSender | unknown | manta | n/a | [`0xb1ecee...a7a9a9`](./contracts/manta-169/0xb1ecee4191daad9381dd38a545b31ddcdba7a9a9/) | ⚠️ Unaudited |
| ThePoolz | unknown | bsc | n/a | [`0x7ff931...726460`](./contracts/bsc-56/0x7ff9315f538df7ec76ec4815249dd30519726460/) | ⚠️ Unaudited |
| TimedDealProvider | unknown | avalanche | n/a | [`0x25ea5c...59be78`](./contracts/avalanche-43114/0x25ea5cf98a46dbabefd042b6ceebc501b659be78/) | ⚠️ Unaudited |
| TokenNFTConnector | unknown | bsc | n/a | [`0x23f561...6c47c5`](./contracts/bsc-56/0x23f561b92aaa13d7c15a1038297cd59bae6c47c5/) | ⚠️ Unaudited |
| VaultManager | unknown | polygon | n/a | [`0x06fd71...d9af3d`](./contracts/polygon-137/0x06fd710fd167f1f08b61e457f41d6e7c7dd9af3d/) | ⚠️ Unaudited |
| WhiteList | unknown | bsc | n/a | [`0x06ed6e...5db525`](./contracts/bsc-56/0x06ed6e9a15d1bae5835544e305e43f5cab5db525/) | ⚠️ Unaudited |

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

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 34 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
