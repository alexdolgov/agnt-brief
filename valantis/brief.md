# Agentic Audit Brief: Valantis

## Project Overview

- Project: Valantis (`valantis`)
- Website: [https://www.valantis.xyz](https://www.valantis.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:04.231Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, ethereum, hyperliquid
- Contract surface: 38 unique implementations (38 raw deployments)
- DeFi Llama TVL: $187,765,211.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 37 project-authored contract(s) across 3 chain(s); 11 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 24 common project-authored base contract(s) (erc20basic, blacklistable, basictoken). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 38; live-surface contracts included: 38 (38 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 13/36 (36.1%)
- Deployed-live implementations: 38 of 38 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 13/38
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 38
- Raw deployments: 38
- Audits discovered: 22 (22 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 12
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 10 fresh, 6 aging, 5 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 13 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zenith | Tier 2 | 5 | 13.2% | 2025-08 |
| Statemind | Tier 2 | 4 | 10.5% | 2024-09 |
| Guardian | Tier 2 | 3 | 7.9% | 2026-01 |
| Hexens | Tier 2 | 3 | 7.9% | 2025-05 |
| Three Sigma | Tier 2 | 3 | 7.9% | 2025-02 |
| Obsidian | Tier 2 | 2 | 5.3% | 2026-04 |
| WatchPug | Tier 2 | 2 | 5.3% | 2024-03 |
| Pashov Audit Group | Tier 2 | 1 | 2.6% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Overseer | unknown | hyperliquid | n/a | [`0xac43e7a1467bf6a4db24bf1f121fb59be6c9f831`](./contracts/hyperliquid-999/0xac43e7a1467bf6a4db24bf1f121fb59be6c9f831/) | ✅ Audited |
| ProtocolFactory | unknown | arbitrum | n/a | [`0x0557c48a558ade9a8f0f6b64ee648284af297a09`](./contracts/arbitrum-42161/0x0557c48a558ade9a8f0f6b64ee648284af297a09/) | ✅ Audited |
| SovereignPool | unknown | hyperliquid | n/a | [`0x5365b6ef09253c7abc0a9286ec578a9f4b413b7d`](./contracts/hyperliquid-999/0x5365b6ef09253c7abc0a9286ec578a9f4b413b7d/) | ✅ Audited |
| SovereignPoolFactory | unknown | arbitrum | n/a | [`0x4e789beaef3523fa49fa1e1efcac413f71441bc4`](./contracts/arbitrum-42161/0x4e789beaef3523fa49fa1e1efcac413f71441bc4/) | ✅ Audited |
| StakeAccountManager | unknown | hyperliquid | n/a | [`0x44a22b0c71efb3bd7546d246ff66e83844a293c2`](./contracts/hyperliquid-999/0x44a22b0c71efb3bd7546d246ff66e83844a293c2/) | ✅ Audited |
| StakingModuleExternalAccount | unknown | hyperliquid | n/a | [`0x40911282501795fc20da3ebcd9d92726a99d25b1`](./contracts/hyperliquid-999/0x40911282501795fc20da3ebcd9d92726a99d25b1/) | ✅ Audited |
| STEXAMM | unknown | hyperliquid | n/a | [`0x38257bbec97bbfd605d8c9770e66cfa0e7a47242`](./contracts/hyperliquid-999/0x38257bbec97bbfd605d8c9770e66cfa0e7a47242/) | ✅ Audited |
| STEXRatioSwapFeeModule | unknown | hyperliquid | n/a | [`0x69317cecf77fb5dc68abe5c7aafb283de46956d9`](./contracts/hyperliquid-999/0x69317cecf77fb5dc68abe5c7aafb283de46956d9/) | ✅ Audited |
| stHYPE | unknown | hyperliquid | n/a | [`0xe71caf5c1fe56d8897c7b604295d23968049e057`](./contracts/hyperliquid-999/0xe71caf5c1fe56d8897c7b604295d23968049e057/) | ✅ Audited |
| stHYPEWithdrawalModule | unknown | hyperliquid | n/a | [`0x1da0ea7f6464d715b0da6922aeb45c382cc8ab15`](./contracts/hyperliquid-999/0x1da0ea7f6464d715b0da6922aeb45c382cc8ab15/) | ✅ Audited |
| ValantisSwapRouter | unknown | arbitrum | n/a | [`0x021b6a81fef43bb86ef46e211008e54765da97eb`](./contracts/arbitrum-42161/0x021b6a81fef43bb86ef46e211008e54765da97eb/) | ✅ Audited |
| ValidlyFactory | unknown | arbitrum | n/a | [`0x101635d1ace278063e651692dce17b528680f9f2`](./contracts/arbitrum-42161/0x101635d1ace278063e651692dce17b528680f9f2/) | ✅ Audited |
| wstHYPE | unknown | hyperliquid | n/a | [`0x104324863cfb2220756c60384efa9bb67a57aaf7`](./contracts/hyperliquid-999/0x104324863cfb2220756c60384efa9bb67a57aaf7/) | ✅ Audited |

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountFactory | unknown | hyperliquid | n/a | [`0x07ec2df59852eadaaaa830be0aa1ff3cb011c3b0`](./contracts/hyperliquid-999/0x07ec2df59852eadaaaa830be0aa1ff3cb011c3b0/) | ⚠️ Unaudited |
| Agent | unknown | hyperliquid | n/a | [`0x0e3e92403858f80c02b53d7e8f5dbd8892590698`](./contracts/hyperliquid-999/0x0e3e92403858f80c02b53d7e8f5dbd8892590698/) | ⚠️ Unaudited |
| BootstrapHandoffManager | unknown | hyperliquid | n/a | [`0x00da5e6ee624729937ef76767198e20a2e87575f`](./contracts/hyperliquid-999/0x00da5e6ee624729937ef76767198e20a2e87575f/) | ⚠️ Unaudited |
| DepositWrapper | unknown | hyperliquid | n/a | [`0x644195021278674bd8f7574e17018d32d8e75a98`](./contracts/hyperliquid-999/0x644195021278674bd8f7574e17018d32d8e75a98/) | ⚠️ Unaudited |
| FiatToken | unknown | ethereum | n/a | [`0x8cbde23b1416cac07a52591bba744c744d77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | ethereum | n/a | [`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FiatTokenUtil | unknown | ethereum | n/a | [`0x6315aa908c50376d1028412c028aa0629f0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | ethereum | n/a | [`0x0882477e7895bdc5cea7cb1552ed914ab157fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | ⚠️ Unaudited |
| FiatTokenV2 | unknown | ethereum | n/a | [`0xb7277a6e95992041568d9391d09d0122023778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | ethereum | n/a | [`0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | ⚠️ Unaudited |
| GaslessSwapEntrypoint | unknown | arbitrum | n/a | [`0x133f6beb2a2914fcdf7721c0c7b05771da8fad13`](./contracts/arbitrum-42161/0x133f6beb2a2914fcdf7721c0c7b05771da8fad13/) | ⚠️ Unaudited |
| HOT | unknown | ethereum | n/a | [`0x3269994964dfe4aa5f8dd0c99ed40e881562132a`](./contracts/ethereum-1/0x3269994964dfe4aa5f8dd0c99ed40e881562132a/) | ⚠️ Unaudited |
| HyperCoreSubAccountFactory | unknown | hyperliquid | n/a | [`0x23d57281db1a74c7f8b920c6e44c44d006fb8662`](./contracts/hyperliquid-999/0x23d57281db1a74c7f8b920c6e44c44d006fb8662/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | n/a | [`0x566c11b5c2201b69c9269fe924e4395873674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | ⚠️ Unaudited |
| MiniMeTokenFactory | unknown | ethereum | n/a | [`0x003ea7f54b6dcf6cee86986edc18143a35f15505`](./contracts/ethereum-1/0x003ea7f54b6dcf6cee86986edc18143a35f15505/) | ⚠️ Unaudited |
| NEC | unknown | ethereum | n/a | [`0xcc80c051057b774cd75067dc48f8987c4eb97a5e`](./contracts/ethereum-1/0xcc80c051057b774cd75067dc48f8987c4eb97a5e/) | ⚠️ Unaudited |
| NectarController | unknown | ethereum | n/a | [`0x8d5a41e85f4ce2433beef476305d307b9205d98d`](./contracts/ethereum-1/0x8d5a41e85f4ce2433beef476305d307b9205d98d/) | ⚠️ Unaudited |
| ReserveMath | unknown | ethereum | n/a | [`0xcc5e67887272b039670c14b39c4959d8c74e057e`](./contracts/ethereum-1/0xcc5e67887272b039670c14b39c4959d8c74e057e/) | ⚠️ Unaudited |
| StakeAccountManagerReader | unknown | hyperliquid | n/a | [`0xdf1bc585e3ce9cb18bf52852dafd6aefeb3dc19b`](./contracts/hyperliquid-999/0xdf1bc585e3ce9cb18bf52852dafd6aefeb3dc19b/) | ⚠️ Unaudited |
| STEXLens | unknown | hyperliquid | n/a | [`0x68675dc8406252b6950128f6504a5e287ef24ed0`](./contracts/hyperliquid-999/0x68675dc8406252b6950128f6504a5e287ef24ed0/) | ⚠️ Unaudited |
| TetherToken | unknown | ethereum | n/a | [`0x0e98db51010dd1ade14dd3fb164e218805fdba1b`](./contracts/ethereum-1/0x0e98db51010dd1ade14dd3fb164e218805fdba1b/) | ⚠️ Unaudited |
| TimelockController | unknown | hyperliquid | n/a | [`0xc5ded4f7f53919c714059a17d31371ae847e23d2`](./contracts/hyperliquid-999/0xc5ded4f7f53919c714059a17d31371ae847e23d2/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | [`0x3d88847a4d6f92164056eec7d6e052c8a18c9c06`](./contracts/hyperliquid-999/0x3d88847a4d6f92164056eec7d6e052c8a18c9c06/) | ⚠️ Unaudited |
| WithdrawalModuleManager | unknown | hyperliquid | n/a | [`0x80c7f89398160fcd9e74519f63f437459e5d02e2`](./contracts/hyperliquid-999/0x80c7f89398160fcd9e74519f63f437459e5d02e2/) | ⚠️ Unaudited |
| WrapperLockEth | unknown | ethereum | n/a | [`0x991f0e5c5775ca9dd02e30e67f545c36cff3690e`](./contracts/ethereum-1/0x991f0e5c5775ca9dd02e30e67f545c36cff3690e/) | ⚠️ Unaudited |

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
| [Three Sigma - February 2025](https://github.com/ValantisLabs/audits/blob/main/Three_Sigma_Feb_25.pdf) | Three Sigma | Audit | 2025-02 | aging | Direct | contract_name | 3 | high |
| [Pashov, October 2025](https://github.com/pashov/audits/blob/master/team/pdf/stHYPE-security-review_2025-10-13.pdf) | Pashov Audit Group | Audit | 2025-10 | fresh | Direct | contract_name | 1 | high |
| [Pashov - November 2025](https://github.com/ValantisLabs/audits/blob/main/pashov_nov_2025.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [Guardian - November 2025](https://github.com/ValantisLabs/audits/blob/main/guardian_nov_2025.pdf) | Guardian | Audit | 2025-11 | fresh | Direct | contract_name | 1 | high |
| [Guardian - January 2026](https://github.com/ValantisLabs/audits/blob/main/guardian_jan_2026.pdf) | Guardian | Audit | 2026-01 | fresh | Direct | contract_name | 3 | high |
| [Obsidian - April 2026](https://github.com/ValantisLabs/audits/blob/main/obsidian_april_2026.pdf) | Obsidian | Audit | 2026-04 | fresh | Direct | contract_name | 2 | high |
| [Obsidian - February 2026](https://github.com/ObsidianAudits/audits/blob/main/2026-02-valantis.pdf) | Obsidian | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [Hexens, January 2024](https://github.com/ValantisLabs/valantis-core/blob/main/audits/hexens_Jan24.pdf) | Hexens | Audit | 2024-01 | stale | Direct | contract_name | 2 | high |
| [Statemind, March 2024](https://github.com/ValantisLabs/valantis-core/blob/main/audits/Valantis%20Core%20report.pdf) | Statemind | Audit | 2024-03 | stale | Direct | contract_name | 3 | high |
| [Statemind, September 2024](https://github.com/ValantisLabs/valantis-periphery/blob/main/audits/statemind_audit_report.pdf) | Statemind | Audit | 2024-09 | aging | Direct | contract_name | 1 | high |
| [Hexens, March 2025](https://github.com/ValantisLabs/valantis-stex/blob/main/audits/hexens-march-25.pdf) | Hexens | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [Zenith, March 2025](https://github.com/ValantisLabs/valantis-stex/blob/main/audits/zenith-march-25.pdf) | Zenith | Audit | 2025-03 | aging | Direct | contract_name | 5 | high |
| [Hexens, May 2025](https://github.com/ValantisLabs/valantis-stex/blob/main/audits/hexens-may-25.pdf) | Hexens | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Watchpugg, March 2024](https://github.com/ValantisLabs/valantis-hot/blob/main/audits/watchpug_report.pdf) | WatchPug | Audit | 2024-03 | stale | Direct | contract_name | 2 | high |
| [Statemind, April 2024](https://github.com/ValantisLabs/valantis-hot/blob/main/audits/statemind_report.pdf) | Statemind | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [Sherlock, July 2024](https://github.com/ValantisLabs/valantis-hot/blob/main/audits/sherlock_report.pdf) | Sherlock | Contest | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [valantis-audit-sept-2024(Public).pdf](https://github.com/ValantisLabs/Validly/blob/main/audits/valantis-audit-sept-2024(Public).pdf) | Hexens | Audit | 2024-09 | aging | Direct | contract_name | 3 | high |
| [pashov_oct_25.pdf](https://github.com/ValantisLabs/audits/blob/main/pashov_oct_25.pdf) | Pashov Audit Group | Audit | 2025-10 | fresh | Direct | contract_name | 1 | high |
| [stHYPE Health Report - April 1 2026.pdf](https://github.com/ValantisLabs/audits/blob/main/stHYPE%20Health%20Report%20-%20April%201%202026.pdf) | Unknown | Audit | 2026 | fresh | Direct | n/a | 0 | n/a |
| [stHYPE Health Report - March 1 2026.pdf](https://github.com/ValantisLabs/audits/blob/main/stHYPE%20Health%20Report%20-%20March%201%202026.pdf) | Unknown | Audit | 2026 | fresh | Direct | n/a | 0 | n/a |
| [zenith-aug-25-lending-modules.pdf](https://github.com/ValantisLabs/valantis-stex/blob/main/audits/zenith-aug-25-lending-modules.pdf) | Zenith | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://app.valantis.xyz/terms_and_services.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | [`0x07ec2df59852eadaaaa830be0aa1ff3cb011c3b0`](./contracts/hyperliquid-999/0x07ec2df59852eadaaaa830be0aa1ff3cb011c3b0/) | AccountFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x0e3e92403858f80c02b53d7e8f5dbd8892590698`](./contracts/hyperliquid-999/0x0e3e92403858f80c02b53d7e8f5dbd8892590698/) | Agent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x00da5e6ee624729937ef76767198e20a2e87575f`](./contracts/hyperliquid-999/0x00da5e6ee624729937ef76767198e20a2e87575f/) | BootstrapHandoffManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x644195021278674bd8f7574e17018d32d8e75a98`](./contracts/hyperliquid-999/0x644195021278674bd8f7574e17018d32d8e75a98/) | DepositWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8cbde23b1416cac07a52591bba744c744d77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | FiatToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6315aa908c50376d1028412c028aa0629f0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | FiatTokenUtil | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0882477e7895bdc5cea7cb1552ed914ab157fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | FiatTokenV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7277a6e95992041568d9391d09d0122023778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | FiatTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | FiatTokenV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x133f6beb2a2914fcdf7721c0c7b05771da8fad13`](./contracts/arbitrum-42161/0x133f6beb2a2914fcdf7721c0c7b05771da8fad13/) | GaslessSwapEntrypoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3269994964dfe4aa5f8dd0c99ed40e881562132a`](./contracts/ethereum-1/0x3269994964dfe4aa5f8dd0c99ed40e881562132a/) | HOT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x23d57281db1a74c7f8b920c6e44c44d006fb8662`](./contracts/hyperliquid-999/0x23d57281db1a74c7f8b920c6e44c44d006fb8662/) | HyperCoreSubAccountFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x566c11b5c2201b69c9269fe924e4395873674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x003ea7f54b6dcf6cee86986edc18143a35f15505`](./contracts/ethereum-1/0x003ea7f54b6dcf6cee86986edc18143a35f15505/) | MiniMeTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc80c051057b774cd75067dc48f8987c4eb97a5e`](./contracts/ethereum-1/0xcc80c051057b774cd75067dc48f8987c4eb97a5e/) | NEC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d5a41e85f4ce2433beef476305d307b9205d98d`](./contracts/ethereum-1/0x8d5a41e85f4ce2433beef476305d307b9205d98d/) | NectarController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc5e67887272b039670c14b39c4959d8c74e057e`](./contracts/ethereum-1/0xcc5e67887272b039670c14b39c4959d8c74e057e/) | ReserveMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xdf1bc585e3ce9cb18bf52852dafd6aefeb3dc19b`](./contracts/hyperliquid-999/0xdf1bc585e3ce9cb18bf52852dafd6aefeb3dc19b/) | StakeAccountManagerReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x68675dc8406252b6950128f6504a5e287ef24ed0`](./contracts/hyperliquid-999/0x68675dc8406252b6950128f6504a5e287ef24ed0/) | STEXLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e98db51010dd1ade14dd3fb164e218805fdba1b`](./contracts/ethereum-1/0x0e98db51010dd1ade14dd3fb164e218805fdba1b/) | TetherToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x80c7f89398160fcd9e74519f63f437459e5d02e2`](./contracts/hyperliquid-999/0x80c7f89398160fcd9e74519f63f437459e5d02e2/) | WithdrawalModuleManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x991f0e5c5775ca9dd02e30e67f545c36cff3690e`](./contracts/ethereum-1/0x991f0e5c5775ca9dd02e30e67f545c36cff3690e/) | WrapperLockEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=12
- Match method counts: extraction_exact=27

Zero-match audit list:

- [18516] Pashov - November 2025
- [18520] Obsidian - February 2026
- [18524] Hexens, March 2025
- [18526] Hexens, May 2025
- [18528] Statemind, April 2024
- [18529] Sherlock, July 2024
- [18532] stHYPE Health Report - April 1 2026.pdf
- [18533] stHYPE Health Report - March 1 2026.pdf
- [18534] zenith-aug-25-lending-modules.pdf
- [18535] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
