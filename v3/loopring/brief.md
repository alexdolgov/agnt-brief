# Agentic Audit Brief: Loopring

## Project Overview

- Project: Loopring (`loopring`)
- Website: [https://loopring.org/#/](https://loopring.org/#/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:21.692Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: base, ethereum
- Contract surface: 123 unique implementations (316 raw deployments)
- DeFi Llama TVL: $8,125,806.63
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 83 project-authored contract(s) across 2 chain(s); 1 ERC20 token, 5 ERC1155 multi-tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 26 common project-authored base contract(s) (upgradeabilityproxy, proxy, iloopring). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 414; live-surface contracts included: 311 (216 live, 95 unknown).
- Excluded by liveness: 103 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/30 (10.0%)
- Deployed-live implementations: 30 of 123 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/30
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 93
- Unique implementations: 123
- Raw deployments: 316
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2019-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 10.0% | 2019-11 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BlockVerifier | periphery | base | n/a | 5 deployments: base [`0x18d587...2f15f9`](./contracts/base-8453/0x18d5879a890b135b36190f6df06f9046c32f15f9/); base `0x921c0e...c44f91`; base `0x95bd4d...f396e3`; base `0xae8de5...0032ad`; base `0xc9a437...591c94` | ✅ Audited |
| LoopringV3 | unknown | base | n/a | 4 deployments: base [`0x1a75c2...894718`](./contracts/base-8453/0x1a75c2a6ccedfe038c12574aaaa93f5118894718/); base `0x267b9b...836c94`; base `0x3edbc7...211b5f`; base `0x571d92...73b67d` | ✅ Audited |
| ProtocolFeeVault | core_logic | base | n/a | 5 deployments: base [`0x277c2c...2ba8e4`](./contracts/base-8453/0x277c2c086f7435496e7d892ac370e5bede2ba8e4/); base `0x69ef9d...b5e965`; base `0x883f31...9fc7ac`; base `0xa3ac9b...8fc765`; base `0xe3a12f...978c09` | ✅ Audited |

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AgentRegistry | registry | base | n/a | 5 deployments: base [`0x0d9b7f...87786b`](./contracts/base-8453/0x0d9b7f5bf6b81f0418233a1c2bffe6b4fd87786b/); base `0x1b5544...fd1e69`; base `0x46c362...26644c`; base `0x533379...4f9f25`; base `0xd06824...f04eff` | ⚠️ Unaudited |
| BatchVerifier | unknown | ethereum | n/a | [`0x3edbc7...211b5f`](./contracts/ethereum-1/0x3edbc702aee93b470ca9e586b4eec0ff6a211b5f/) | ⚠️ Unaudited |
| DefaultDepositContract | core_logic | base | n/a | 4 deployments: ethereum `0x674bdf...66bd3f`; base [`0x4ee77c...2bec55`](./contracts/base-8453/0x4ee77ca36a8df5ff9c4bc9edc1b3a5ced22bec55/); base `0x65b0c7...442010`; base `0x732771...dc99fe` | ⚠️ Unaudited |
| DepositAgent | unknown | base | n/a | 2 deployments: base [`0x1b561b...764d9f`](./contracts/base-8453/0x1b561b2d785eb5344d489901fe4b724e5d764d9f/); base `0xfb8c97...85459a` | ⚠️ Unaudited |
| ExchangeAdmins | unknown | base | n/a | 7 deployments: ethereum `0x410ac9...51b942`; ethereum `0x6b797b...07905b`; ethereum `0x919551...aa83c9`; ethereum `0xa0564f...1713ea`; ethereum `0xb9c5d8...ec3891`; ethereum `0xd06824...f04eff`; base [`0x0e77d9...4a691c`](./contracts/base-8453/0x0e77d9716e3f6a6ee4763fcc59ed164cf74a691c/) | ⚠️ Unaudited |
| ExchangeBalances | unknown | base | n/a | 7 deployments: ethereum `0x0845ab...2347ee`; ethereum `0x3a9c3e...6fe38d`; ethereum `0x4e4ea2...6501c2`; ethereum `0x6ce48c...7ea441`; ethereum `0x735720...9dd8bb`; ethereum `0x90e222...f05c3c`; base [`0x013aa5...826069`](./contracts/base-8453/0x013aa50dc4a1b11c6a1b37c2961895c9dc826069/) | ⚠️ Unaudited |
| ExchangeBlocks | unknown | ethereum | n/a | 9 deployments: ethereum [`0x03fec3...e6538d`](./contracts/ethereum-1/0x03fec3d0b8690e3ebbe7f5949a3cce8221e6538d/); ethereum `0x17d3ef...addf3b`; ethereum `0x5316ca...b4d8b7`; ethereum `0x571d92...73b67d`; ethereum `0x8c5b8e...7b4d3c`; ethereum `0x94cdf6...d2e84e`; ethereum `0xb01e1b...c797f3`; ethereum `0xb1fe32...067988`; base `0x874507...8002c7` | ⚠️ Unaudited |
| ExchangeDeposits | unknown | ethereum | n/a | 4 deployments: ethereum [`0x07f50b...0872cc`](./contracts/ethereum-1/0x07f50b5a6a3f1f069c27ea11ffa62b53a20872cc/); ethereum `0x7e185c...d4359c`; ethereum `0xe9d639...6f2975`; base `0x7e185c...d4359c` | ⚠️ Unaudited |
| ExchangeGenesis | unknown | ethereum | n/a | 7 deployments: ethereum [`0x013aa5...826069`](./contracts/ethereum-1/0x013aa50dc4a1b11c6a1b37c2961895c9dc826069/); ethereum `0x0e3229...693d38`; ethereum `0x77fad7...c325b9`; ethereum `0x86aa01...b55c4d`; ethereum `0x8e0110...4a8681`; ethereum `0xa2f334...0afb9f`; base `0x0d75ce...3c1764` | ⚠️ Unaudited |
| ExchangeTokens | unknown | ethereum | n/a | 7 deployments: ethereum [`0x24f51f...010b29`](./contracts/ethereum-1/0x24f51fadc255dfcbc436615167c325cac7010b29/); ethereum `0x432bcd...0fa7f6`; ethereum `0x52c0df...e448bb`; ethereum `0x6be34a...cd1b03`; ethereum `0x846d93...ba5037`; ethereum `0xa3ac9b...8fc765`; base `0x99ce8b...8a96e9` | ⚠️ Unaudited |
| ExchangeV3 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0baba1...8f1ea4`](./contracts/ethereum-1/0x0baba1ad5be3a5c0a66e7ac838a129bf948f1ea4/); ethereum `0x26d8ba...ae7e82` | ⚠️ Unaudited |
| ExchangeV3 | unknown | base | n/a | 2 deployments: base [`0x879938...4b4773`](./contracts/base-8453/0x8799388f62121dd7b71d34440b80a3846c4b4773/); base `0xb58d10...64b121` | ⚠️ Unaudited |
| ExchangeWithdrawals | unknown | ethereum | n/a | 8 deployments: ethereum [`0x0e77d9...4a691c`](./contracts/ethereum-1/0x0e77d9716e3f6a6ee4763fcc59ed164cf74a691c/); ethereum `0x110a4f...f0ce4a`; ethereum `0x2058db...0df826`; ethereum `0x46a71e...fa9989`; ethereum `0x4d6924...d88d68`; ethereum `0x5045b1...2d0809`; ethereum `0xb1d6e6...c0a692`; base `0xc2d1e8...846105` | ⚠️ Unaudited |
| FastWithdrawalAgent | operational_periphery | base | n/a | 2 deployments: base [`0x2023c4...20d99f`](./contracts/base-8453/0x2023c4c0ef8fe9a1883ec8a08b456e0c9b20d99f/); base `0x41a2e4...aae769` | ⚠️ Unaudited |
| ForcedWithdrawalAgent | operational_periphery | base | n/a | 2 deployments: base [`0x058b93...7efcac`](./contracts/base-8453/0x058b93012eedef1795b1028f41080ed5387efcac/); base `0xceefae...d86415` | ⚠️ Unaudited |
| LoopringAmmPool | unknown | ethereum | n/a | 117 deployments: ethereum [`0x008908...99d727`](./contracts/ethereum-1/0x0089081950b4ebbf362689519c1d54827e99d727/); ethereum `0x06ac0e...8dae4d`; ethereum `0x0818e9...cbe2d5`; ethereum `0x093137...f92bbf`; ethereum `0x0aa4d2...c8d786`; ethereum `0x0bcd57...329683`; ethereum `0x1230f7...1b8133`; ethereum `0x145f20...22db07`; ethereum `0x17baa2...186c48`; ethereum `0x18920d...c95036`; ethereum `0x18a1a6...d0b652`; ethereum `0x194db3...3c215a`; ethereum `0x1ad74c...fbe810`; ethereum `0x1b04a2...a1e94e`; ethereum `0x1cb97a...0bc438`; ethereum `0x1d28b2...2a4d74`; ethereum `0x1f78cd...0669ac`; ethereum `0x1f94ea...4753bd`; ethereum `0x22844c...10f5f4`; ethereum `0x24e4cf...cd96ef`; ethereum `0x2eab32...cecdb9`; ethereum `0x2ed5d3...db7b8a`; ethereum `0x2fac66...8ecfe5`; ethereum `0x33df02...5cc0fa`; ethereum `0x348412...48861a`; ethereum `0x37b6aa...44c1b1`; ethereum `0x3ec139...d28e3b`; ethereum `0x41e3b4...47dbe4`; ethereum `0x43eca2...005d6b`; ethereum `0x447356...e1d41f`; ethereum `0x4a7e38...d5afc5`; ethereum `0x4e585b...5fe74b`; ethereum `0x4f23ca...77c407`; ethereum `0x4facf6...8403d6`; ethereum `0x502b55...a404e5`; ethereum `0x5359f0...521b5c`; ethereum `0x554be7...24534e`; ethereum `0x567c1a...701e66`; ethereum `0x583208...e17df2`; ethereum `0x5c159d...f14842`; ethereum `0x5f24c3...64626b`; ethereum `0x5f6a99...9461b8`; ethereum `0x636a31...5d634f`; ethereum `0x66fad4...1aa276`; ethereum `0x69a8bd...0689c0`; ethereum `0x6bf006...5edba1`; ethereum `0x6ff8a3...c0adba`; ethereum `0x70c8e0...79d638`; ethereum `0x73b7bc...a5ffa8`; ethereum `0x746eeb...a9093b`; ethereum `0x759c0d...99a9f5`; ethereum `0x76d8ea...adf3d0`; ethereum `0x78a585...5bef29`; ethereum `0x7ab580...45afb1`; ethereum `0x7af6e5...27075b`; ethereum `0x7b854d...1c0677`; ethereum `0x7cd787...9fba73`; ethereum `0x8195be...0fb1f9`; ethereum `0x8303f8...f16251`; ethereum `0x83c11c...fe181f`; ethereum `0x83df13...8e1205`; ethereum `0x8572b8...b77563`; ethereum `0x85f2e9...6ddbde`; ethereum `0x8a6ba9...7f8582`; ethereum `0x8a9866...c725e1`; ethereum `0x8cf6c5...a2fd3d`; ethereum `0x8e8979...dc484c`; ethereum `0x8efad0...fc6b42`; ethereum `0x8f5a6e...8f8310`; ethereum `0x8f871a...3c087f`; ethereum `0x9387e0...343901`; ethereum `0x93bb5b...8c16d0`; ethereum `0x977544...5e4c69`; ethereum `0x9795f5...f5256c`; ethereum `0x97db7f...bf6c9a`; ethereum `0x994f94...eed4a8`; ethereum `0x9a94a8...df2635`; ethereum `0x9b7a20...4cc5f2`; ethereum `0x9c6013...6e7702`; ethereum `0xa0059a...4fb4b2`; ethereum `0xa186e2...d425f3`; ethereum `0xa2acf6...1bfde7`; ethereum `0xa2f4a8...e0b19a`; ethereum `0xa41e49...0fcbbb`; ethereum `0xa738de...fe1420`; ethereum `0xa762d8...2a86b0`; ethereum `0xa9d46d...007b81`; ethereum `0xaced28...10f961`; ethereum `0xb27b1f...453d7c`; ethereum `0xb81089...0ae7e6`; ethereum `0xba64cd...555795`; ethereum `0xbbb360...b8f0d7`; ethereum `0xbbca47...6502e8`; ethereum `0xbdc384...3a7c48`; ethereum `0xbec0c5...b44437`; ethereum `0xc36306...9772ab`; ethereum `0xc418a3...4e178d`; ethereum `0xc50138...cf6f78`; ethereum `0xc6bc13...a698a4`; ethereum `0xc8f242...c5ba4b`; ethereum `0xcac495...858258`; ethereum `0xd04069...28f8cd`; ethereum `0xd4df78...4db07d`; ethereum `0xd85f59...6906b6`; ethereum `0xd9d681...318a09`; ethereum `0xe6cc0d...ad5743`; ethereum `0xe6f1c2...07191d`; ethereum `0xe7e807...80104b`; ethereum `0xee6a9d...9b1414`; ethereum `0xf11702...2037de`; ethereum `0xf85f03...c3d57f`; ethereum `0xf88de0...b6156e`; ethereum `0xf8e4ab...957c47`; ethereum `0xfa6680...568d98`; ethereum `0xfb64c2...d8ab9f`; ethereum `0xfd997e...b6e01c`; ethereum `0xfe88c4...9a1cda` | ⚠️ Unaudited |
| LoopringAmmPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x47ce50...d7bc2d`](./contracts/ethereum-1/0x47ce50ff181baef9139187273f66c54796d7bc2d/); ethereum `0xa573c5...9ebaa1` | ⚠️ Unaudited |
| LoopringAmmPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6d5377...15a73c`](./contracts/ethereum-1/0x6d537764355bc23d4eadba7829048dac8215a73c/); ethereum `0xee017d...872164` | ⚠️ Unaudited |
| LoopringAmmPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe6abfc...862430`](./contracts/ethereum-1/0xe6abfcabe24f06197a7a20dc9c81c251f2862430/); ethereum `0xe8ea36...5f5e20` | ⚠️ Unaudited |
| LoopringIOExchangeOwner | unknown | ethereum | n/a | 4 deployments: ethereum [`0x153cdd...aa8512`](./contracts/ethereum-1/0x153cddd727e407cb951f728f24beb9a5faaa8512/); base `0x43d05b...501afe`; base `0x68499b...3737a4`; base `0xadcd97...5bcc59` | ⚠️ Unaudited |
| NFTFactory | registry | ethereum | n/a | [`0x97be94...b911db`](./contracts/ethereum-1/0x97be94250aef1df307749afaed27f9bc8ab911db/) | ⚠️ Unaudited |
| OwnedUpgradabilityProxy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x00ce6c...a0d151`](./contracts/ethereum-1/0x00ce6c2312b725baec331f6047c2fd20b7a0d151/); ethereum `0x3ea4a2...979712`; base `0xe2f623...1fd927` | ⚠️ Unaudited |
| OwnedUpgradabilityProxy | unknown | ethereum | n/a | [`0x399d89...1421fc`](./contracts/ethereum-1/0x399d89611e01cb94c7d0b30731013e1e431421fc/) | ⚠️ Unaudited |
| OwnedUpgradabilityProxy | unknown | base | n/a | 2 deployments: base [`0x40598b...a94cf7`](./contracts/base-8453/0x40598b41cc17a7e56dd72f415e8223aacca94cf7/); base `0xee38e9...fd686d` | ⚠️ Unaudited |
| OwnedUpgradabilityProxy | unknown | base | n/a | 2 deployments: base [`0x873685...a5c221`](./contracts/base-8453/0x873685f032c6aa1572766401f3198a1f09a5c221/); base `0xb3c408...9356fc` | ⚠️ Unaudited |
| RabbitWithdrawalAgent | operational_periphery | base | n/a | 3 deployments: ethereum `0xab78c3...9d3264`; base [`0x3b740f...553f93`](./contracts/base-8453/0x3b740fee3ed82fa676286938e124a8bb74553f93/); base `0xd06d38...6fae3c` | ⚠️ Unaudited |
| StakingBridge | operational_periphery | ethereum | n/a | [`0x199ca6...8ca079`](./contracts/ethereum-1/0x199ca6e284f344210f9a3090d1eaf7d3b88ca079/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (93)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0182c5...20bd92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x01b707...7cca45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08afa2...c9e361` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e4c71...d85634` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x158fe7...3abd39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x200d5e...50accf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2133fb...a44b9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2bdac2...910b0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31830e...9e3ec4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35133b...011acd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35d957...324848` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x361dbc...f4893c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b141e...58c6c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bfc65...910c3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c8edb...0bf79e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x43bdce...0fbd44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4acae0...9d3ea3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53a08a...7895aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d96a9...ead697` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6065f5...561823` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x626c61...3b2b61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x650fbb...754dc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x682870...8aa133` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68499b...3737a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7794c4...e66c8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x852f6b...c7e9d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x866c99...52461e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c9b0b...ba082a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9230c4...1c369e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95cb9c...6c045b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e37cf...6ccebe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa81719...cb57d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac23c0...38809e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae6987...01ecb0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb1dd3...4c2087` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb6399...abc62e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc02731...a5d5c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc52264...e11021` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca7871...251378` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd80bd6...d2d2c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda046b...4986c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd369f...85c16a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe376f7...874fa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5e8e6...b2d5bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec6c4e...26c2b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedeafa...6b7286` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x02427f...9c008b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x038363...fadd53` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x04f6de...805466` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0b6c46...21402c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x17ca15...0e08a1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x18dd1d...960ac7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2a716e...d9545e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2d5a52...3aae45` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x318485...4c192e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x330e34...6e994f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3354e9...cf62f7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3c9d36...80e599` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x415403...2251f5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x48b65e...1c37dd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4c2103...77611f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5507e4...ffe31c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x55911b...68763c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x59d0e7...4cc22a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5bb8ef...1f1cb1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6175bf...4e2c92` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6ae781...184034` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6d6505...7b13b8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7e7bd6...446570` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x82f58f...d75158` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x849432...2734ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x891f07...22d503` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8e7e54...0303da` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x925af9...877cc8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9a45ea...5b5930` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9aefb2...a90a1f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa45802...4d8b8f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa9c123...457b44` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaeb439...817bc1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaf92b8...7e62cb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb3263d...cba317` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb5ca74...be2cdd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe18e3...dac9da` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe639c...b8db46` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc7ee2c...61be59` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcc39ac...f12154` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcd14b3...b43f67` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd89483...fa4aad` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdef4f4...1c6253` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe87654...ea98ae` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xed8dec...cd4e82` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf3392d...21ac08` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf4662b...8a4a5b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [LoopringV3_1_Report_EN.pdf](https://github.com/Loopring/protocols/blob/master/packages/loopring_v3/security_audit/LoopringV3_1_Report_EN.pdf) | unknown | Audit | 2019-11 | stale | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 123 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Fork inheritance lineage and inherited audits are included when available.
