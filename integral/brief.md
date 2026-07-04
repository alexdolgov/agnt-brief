# Agentic Audit Brief: Integral

## Project Overview

- Project: Integral (`integral`)
- Website: [https://integral.link/](https://integral.link/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:22.088Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: arbitrum, ethereum
- Contract surface: 25 unique implementations (25 raw deployments)
- DeFi Llama TVL: $405,364.96
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 19 project-authored contract(s) across 2 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 4 common project-authored base contract(s) (reserves, twaplptoken, abstracterc20). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 25; live-surface contracts included: 25 (25 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/24 (0.0%)
- Deployed-live implementations: 25 of 25 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/25
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 25
- Raw deployments: 25
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/integral/information))
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

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddLiquidity | unknown | arbitrum | n/a | [`0x09ca90...97d93d`](./contracts/arbitrum-42161/0x09ca90fe99b39fb715e5a77f79fdd1a33597d93d/) | ⚠️ Unaudited |
| BuyHelper | unknown | ethereum | n/a | [`0x141252...33c6e5`](./contracts/ethereum-1/0x1412524711d58c4927de00446682aabb3f33c6e5/) | ⚠️ Unaudited |
| ExecutionHelper | unknown | arbitrum | n/a | [`0x057d2e...25afda`](./contracts/arbitrum-42161/0x057d2e0b82896344cb06f05da7b7ca973d25afda/) | ⚠️ Unaudited |
| IntegralDelay | unknown | ethereum | n/a | [`0x22812e...86606b`](./contracts/ethereum-1/0x22812ea96a0047f3e19769256c2f5374e486606b/) | ⚠️ Unaudited |
| IntegralMerkleTimeRelease | unknown | ethereum | n/a | [`0x0aa7aa...554e37`](./contracts/ethereum-1/0x0aa7aa9e0d24417992e6af8ec014843201554e37/) | ⚠️ Unaudited |
| IntegralOracle | unknown | ethereum | n/a | [`0x0dea32...2e14c1`](./contracts/ethereum-1/0x0dea32afe46508bc786215660e667ba8302e14c1/) | ⚠️ Unaudited |
| IntegralOracleV3 | unknown | ethereum | n/a | [`0x289596...2fff16`](./contracts/ethereum-1/0x289596138e443a19ff0ca7486dbe7822e72fff16/) | ⚠️ Unaudited |
| IntegralPriceReader | unknown | ethereum | n/a | [`0x75e495...c978af`](./contracts/ethereum-1/0x75e4955dd2b608eb7a821eefcbbacb5f9dc978af/) | ⚠️ Unaudited |
| IntegralStaking | unknown | ethereum | n/a | [`0x36bd66...9441ff`](./contracts/ethereum-1/0x36bd665392236b20bd42e161f02bf0ae1d9441ff/) | ⚠️ Unaudited |
| IntegralTimeRelease | unknown | ethereum | n/a | [`0x657dfb...d54538`](./contracts/ethereum-1/0x657dfb33fb88308fa1335b222700322f3ad54538/) | ⚠️ Unaudited |
| IntegralToken | unknown | ethereum | n/a | [`0x5bc960...000da5`](./contracts/ethereum-1/0x5bc96017dccaca53601d92125c5c6db81d000da5/) | ⚠️ Unaudited |
| Multicall | unknown | arbitrum | n/a | [`0xaec732...2bb1f8`](./contracts/arbitrum-42161/0xaec732f0bfebf15c2f41b62ec571168be82bb1f8/) | ⚠️ Unaudited |
| Orders | unknown | ethereum | n/a | [`0x033f27...650b08`](./contracts/ethereum-1/0x033f27c32ed52f31163189fc2f5e4cbf2a650b08/) | ⚠️ Unaudited |
| TokenShares | unknown | ethereum | n/a | [`0x1441f0...5b9d79`](./contracts/ethereum-1/0x1441f0c929fdcb2d13d35d892ebca928a45b9d79/) | ⚠️ Unaudited |
| TwapDelay | unknown | arbitrum | n/a | [`0x010876...9c436b`](./contracts/arbitrum-42161/0x010876b123810718fa4d93a8ded0bcdf919c436b/) | ⚠️ Unaudited |
| TwapFactory | unknown | arbitrum | n/a | [`0x717ef1...9e516a`](./contracts/arbitrum-42161/0x717ef162cf831db83c51134734a15d1ebe9e516a/) | ⚠️ Unaudited |
| TwapFactoryGovernor | unknown | arbitrum | n/a | [`0x0800fc...d78d91`](./contracts/arbitrum-42161/0x0800fcf3d8b46d56510f8360a4a4d9301cd78d91/) | ⚠️ Unaudited |
| TwapLPTokenRewarderL1 | unknown | ethereum | n/a | [`0xa4b403...48714a`](./contracts/ethereum-1/0xa4b40336649718a76cb2b882968fc82a6048714a/) | ⚠️ Unaudited |
| TwapLPTokenRewarderTokenTransfer | unknown | arbitrum | n/a | [`0xdb8c9b...65d46c`](./contracts/arbitrum-42161/0xdb8c9bcc43c71e07415bc90904e2be289b65d46c/) | ⚠️ Unaudited |
| TwapOracle | unknown | ethereum | n/a | [`0x1addb9...b837ee`](./contracts/ethereum-1/0x1addb93a08a3c79a8f115706a3e30d25c2b837ee/) | ⚠️ Unaudited |
| TwapOracleV3 | unknown | ethereum | n/a | [`0x0a9934...c62379`](./contracts/ethereum-1/0x0a9934f099a877736cf1cd6a22ab8b903bc62379/) | ⚠️ Unaudited |
| TwapPair | unknown | ethereum | n/a | [`0x045950...4c7e27`](./contracts/ethereum-1/0x045950a37c59d75496bb4af68c05f9066a4c7e27/) | ⚠️ Unaudited |
| TwapReader | unknown | ethereum | n/a | [`0xb5c082...095f7c`](./contracts/ethereum-1/0xb5c08263c1d2c9651ea6d91a9908460e40095f7c/) | ⚠️ Unaudited |
| TwapRelayer | unknown | ethereum | n/a | [`0x0e83e4...82406c`](./contracts/ethereum-1/0x0e83e4273efb4128a8c15809c97071d87482406c/) | ⚠️ Unaudited |
| WithdrawHelper | unknown | ethereum | n/a | [`0x19f6bc...8b9eaa`](./contracts/ethereum-1/0x19f6bc0755fd4a465b3961fb335d6e55ab8b9eaa/) | ⚠️ Unaudited |

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
| [Rendered PDF capture](https://assets.integral.link/Integral+Risk+Factor+Exhibit.pdf) | Immunefi | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/integral/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x09ca90...97d93d`](./contracts/arbitrum-42161/0x09ca90fe99b39fb715e5a77f79fdd1a33597d93d/) | AddLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x141252...33c6e5`](./contracts/ethereum-1/0x1412524711d58c4927de00446682aabb3f33c6e5/) | BuyHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x057d2e...25afda`](./contracts/arbitrum-42161/0x057d2e0b82896344cb06f05da7b7ca973d25afda/) | ExecutionHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22812e...86606b`](./contracts/ethereum-1/0x22812ea96a0047f3e19769256c2f5374e486606b/) | IntegralDelay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0aa7aa...554e37`](./contracts/ethereum-1/0x0aa7aa9e0d24417992e6af8ec014843201554e37/) | IntegralMerkleTimeRelease | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0dea32...2e14c1`](./contracts/ethereum-1/0x0dea32afe46508bc786215660e667ba8302e14c1/) | IntegralOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x289596...2fff16`](./contracts/ethereum-1/0x289596138e443a19ff0ca7486dbe7822e72fff16/) | IntegralOracleV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75e495...c978af`](./contracts/ethereum-1/0x75e4955dd2b608eb7a821eefcbbacb5f9dc978af/) | IntegralPriceReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36bd66...9441ff`](./contracts/ethereum-1/0x36bd665392236b20bd42e161f02bf0ae1d9441ff/) | IntegralStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x657dfb...d54538`](./contracts/ethereum-1/0x657dfb33fb88308fa1335b222700322f3ad54538/) | IntegralTimeRelease | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5bc960...000da5`](./contracts/ethereum-1/0x5bc96017dccaca53601d92125c5c6db81d000da5/) | IntegralToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x033f27...650b08`](./contracts/ethereum-1/0x033f27c32ed52f31163189fc2f5e4cbf2a650b08/) | Orders | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1441f0...5b9d79`](./contracts/ethereum-1/0x1441f0c929fdcb2d13d35d892ebca928a45b9d79/) | TokenShares | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x010876...9c436b`](./contracts/arbitrum-42161/0x010876b123810718fa4d93a8ded0bcdf919c436b/) | TwapDelay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x717ef1...9e516a`](./contracts/arbitrum-42161/0x717ef162cf831db83c51134734a15d1ebe9e516a/) | TwapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0800fc...d78d91`](./contracts/arbitrum-42161/0x0800fcf3d8b46d56510f8360a4a4d9301cd78d91/) | TwapFactoryGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4b403...48714a`](./contracts/ethereum-1/0xa4b40336649718a76cb2b882968fc82a6048714a/) | TwapLPTokenRewarderL1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdb8c9b...65d46c`](./contracts/arbitrum-42161/0xdb8c9bcc43c71e07415bc90904e2be289b65d46c/) | TwapLPTokenRewarderTokenTransfer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1addb9...b837ee`](./contracts/ethereum-1/0x1addb93a08a3c79a8f115706a3e30d25c2b837ee/) | TwapOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a9934...c62379`](./contracts/ethereum-1/0x0a9934f099a877736cf1cd6a22ab8b903bc62379/) | TwapOracleV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x045950...4c7e27`](./contracts/ethereum-1/0x045950a37c59d75496bb4af68c05f9066a4c7e27/) | TwapPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb5c082...095f7c`](./contracts/ethereum-1/0xb5c08263c1d2c9651ea6d91a9908460e40095f7c/) | TwapReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e83e4...82406c`](./contracts/ethereum-1/0x0e83e4273efb4128a8c15809c97071d87482406c/) | TwapRelayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19f6bc...8b9eaa`](./contracts/ethereum-1/0x19f6bc0755fd4a465b3961fb335d6e55ab8b9eaa/) | WithdrawHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20588] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
