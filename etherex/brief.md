# Agentic Audit Brief: Etherex

⚠️ Lifecycle status: DECLINING - TVL dropped 82.0% over 90 days

## Project Overview

- Project: Etherex (`etherex`)
- Website: [https://etherex.finance/](https://etherex.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-11T11:52:32.272Z
- Pipeline run: v2-pipeline-2026-06-11-9658c2-4b54
- Chains: linea
- Contract surface: 58 unique implementations (130 raw deployments)
- DeFi Llama TVL: $1,355,190.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Etherex is a concentrated-liquidity decentralized exchange on Linea with x(3,3)/metaDEX tokenomics. It enables token swaps, liquidity provision, gauges, voting, and fee distribution, and its deployed surface also includes classic AMM, gauge, and governance components.

### Architecture

The Core and Concentrated Liquidity families share the Access Control infrastructure for upgrades and governance. Both families use separate but parallel factory and gauge systems, with the Voter contract in Core directing emissions across both pool types.

## Audit Coverage Summary

- Verified implementations audited: 17/47 (36.2%)
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 2
- Unverified implementations: 11
- Unique implementations: 58
- Raw deployments: 130
- Audits discovered: 4
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Staleness: 1 fresh, 2 aging, 0 stale, 1 unknown
- Tier 1 coverage: 36.2% (Spearbit)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 17 | 36.2% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (16)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AccessHub | unknown | linea | 27 deployments: linea [`0x00cc29...423b67`](./contracts/linea-59144/0x00cc296010664ff909aa90795a919046d1423b67/); linea `0x09aaa5...fbea2a`; linea `0x09d128...fc72a3`; linea `0x0cc5a7...2d666c`; linea `0x0d8ff3...e66422`; linea `0x3fd55d...d6d071`; linea `0x44f551...22f508`; linea `0x51a269...e80006`; linea `0x55cab4...4b40b1`; linea `0x582f3f...031c7a`; linea `0x5aae85...da036b`; linea `0x5e2f4d...e4b4e7`; linea `0x683035...8ed5f3`; linea `0x6a0673...1c99c1`; linea `0x7026f9...8dd004`; linea `0x7ac793...8c9026`; linea `0x8af8a0...71b734`; linea `0x8e394f...5b49e1`; linea `0x93948c...4351ed`; linea `0x967a7a...37854c`; linea `0x9ce2fb...709346`; linea `0xb61396...31a7b6`; linea `0xb66d0c...9fd40b`; linea `0xbb100b...008e31`; linea `0xd434fe...06805e`; linea `0xe345ad...ddc6bc`; linea `0xe6d0d3...cb5298` | ✅ Audited |
| Etherex | unknown | linea | 3 deployments: linea [`0xbe8b8d...69f11d`](./contracts/linea-59144/0xbe8b8dcbc1e5cda63c667e76d539dbf5d369f11d/); linea `0xefd81e...31e348`; linea `0xf0c89c...0bd9eb` | ✅ Audited |
| FeeCollector | unknown | linea | 2 deployments: linea [`0x51a2a0...7f21a1`](./contracts/linea-59144/0x51a2a0b162d27254e30473b7072d95f4b37f21a1/); linea `0x532c15...54e0f3` | ✅ Audited |
| FeeDistributor | operational_periphery | linea | [`0xc2b256...767b7c`](./contracts/linea-59144/0xc2b256f2977b4c7eff6d39e35dbe245efd767b7c/) | ✅ Audited |
| FeeDistributorFactory | operational_periphery | linea | 2 deployments: linea [`0x61c56a...6f3f6f`](./contracts/linea-59144/0x61c56ad143e364dacbb60fc901f7993e9e6f3f6f/); linea `0xfde487...e6b7bf` | ✅ Audited |
| Minter | operational_periphery | linea | 4 deployments: linea [`0x0b6d3b...ecc3eb`](./contracts/linea-59144/0x0b6d3b42861ee8abfcaac818033694e758ecc3eb/); linea `0x462e26...d2a966`; linea `0x76da79...da9f8f`; linea `0xf83962...0b6255` | ✅ Audited |
| NonfungiblePositionManager | governance | linea | [`0xa04a9f...bb2f58`](./contracts/linea-59144/0xa04a9f0a961f8fcc4a94bcf53e676b236cbb2f58/) | ✅ Audited |
| RamsesTreasuryHelper | operational_periphery | linea | [`0x15325a...5636a5`](./contracts/linea-59144/0x15325a2ec4bf164d47cf48d5d6a9edda385636a5/) | ✅ Audited |
| RamsesV3Factory | registry | linea | [`0xae334f...cf80f1`](./contracts/linea-59144/0xae334f70a7fc44fcc2df9e6a37bc032497cf80f1/) | ✅ Audited |
| RamsesV3PoolDeployer | core_logic | linea | [`0x80dca1...c7bec8`](./contracts/linea-59144/0x80dca113b33ce4da3a7aac15c2e62fc6d6c7bec8/) | ✅ Audited |
| RamsesV3PositionManager | governance | linea | [`0xb56542...cd1798`](./contracts/linea-59144/0xb56542bf1822c3fea210d920c8ab0fcaabcd1798/) | ✅ Audited |
| RewardValidator | unknown | linea | 2 deployments: linea [`0x7930ec...b1e0fc`](./contracts/linea-59144/0x7930ec744ff2a62c34ac730afd9e7cc462b1e0fc/); linea `0xe57600...c0a97c` | ✅ Audited |
| REX33 | unknown | linea | 5 deployments: linea [`0x312b67...433ec0`](./contracts/linea-59144/0x312b67a8de4291ce2c3628d24fa62eb04f433ec0/); linea `0xbf42f6...639dff`; linea `0xc4b578...31509c`; linea `0xccfc11...f15749`; linea `0xe4eeb4...f051c4` | ✅ Audited |
| VoteModule | unknown | linea | 2 deployments: linea [`0xedd7cb...9c15b1`](./contracts/linea-59144/0xedd7cbc9c47547d0b552d5bc2be76135f49c15b1/); linea `0xf70dc8...631ee4` | ✅ Audited |
| Voter | unknown | linea | 11 deployments: linea [`0x1dac11...a94046`](./contracts/linea-59144/0x1dac11c6578c3a6ddffcb3bf1741cf3d11a94046/); linea `0x4961f7...fc7679`; linea `0x56ebcf...dd256f`; linea `0x5f26a6...06fc19`; linea `0x706e4a...f157e1`; linea `0x891d28...45141c`; linea `0x942117...f889c1`; linea `0x982c01...caa125`; linea `0xa0b937...d4f116`; linea `0xade917...9d56d1`; linea `0xe8e8e8...2f8468` | ✅ Audited |
| XRex | unknown | linea | 2 deployments: linea [`0x58d034...146997`](./contracts/linea-59144/0x58d034c3c22851e9dc8fc2f07055659cf9146997/); linea `0xc93b31...f366cc` | ✅ Audited |

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AutomatedFeeNotifier | unknown | linea | 8 deployments: linea [`0x2e5c9e...7c10df`](./contracts/linea-59144/0x2e5c9e4146f57c5dc6dcb88a86bdf5e8087c10df/); linea `0x4bc655...6cb1f3`; linea `0x4dd0c2...ea2a4c`; linea `0x5ad9ec...b0e48c`; linea `0xb0b55d...af5939`; linea `0xbf0743...780d36`; linea `0xd7cb73...81ac2c`; linea `0xfd29fa...cf80e7` | ⚠️ Unaudited |
| BribeHolder | operational_periphery | linea | [`0xf7a8b3...f9ea9b`](./contracts/linea-59144/0xf7a8b3770f661059f4ea0d79ad7fe8d642f9ea9b/) | ⚠️ Unaudited |
| FeeLiquidator | operational_periphery | linea | 2 deployments: linea [`0x3add83...ba039b`](./contracts/linea-59144/0x3add8307bcc1b6c757cf1d7664b2f37c9bba039b/); linea `0xe78966...98e856` | ⚠️ Unaudited |
| FeeRecipientFactory | operational_periphery | linea | [`0x75430c...02d6a7`](./contracts/linea-59144/0x75430c78a65bfb7dcdf89a3f0daa8da36402d6a7/) | ⚠️ Unaudited |
| FrogAirdrop | operational_periphery | linea | 2 deployments: linea [`0x97b1b7...e38912`](./contracts/linea-59144/0x97b1b762ae52e1fe4a96dd6db6f15e117ee38912/); linea `0xbe9d87...3a78c3` | ⚠️ Unaudited |
| LGEHelper | periphery | linea | 2 deployments: linea [`0x4c4190...b224ce`](./contracts/linea-59144/0x4c4190d22fedd723d7eba37149977767feb224ce/); linea `0x6b43ac...7c8812` | ⚠️ Unaudited |
| MevModule | unknown | linea | 3 deployments: linea [`0x614f11...703abd`](./contracts/linea-59144/0x614f116c0e64190512d4764b4c2122f9e2703abd/); linea `0x90fc1f...b4940d`; linea `0xdf2787...088d5b` | ⚠️ Unaudited |
| MinimalizedFeePusher | unknown | linea | 2 deployments: linea [`0x1b4e17...1c4efb`](./contracts/linea-59144/0x1b4e17d4263a7f751d8965ae514293c0461c4efb/); linea `0x98af61...eb4a8c` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | linea | [`0x59037f...3712a6`](./contracts/linea-59144/0x59037f2c0337a5150c0cd08cb2df684e043712a6/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | linea | [`0xfc65c6...8453c4`](./contracts/linea-59144/0xfc65c6308765ebbb0d87df8b6502674b868453c4/) | ⚠️ Unaudited |
| Oracle | operational_periphery | linea | [`0x389df9...7e7d55`](./contracts/linea-59144/0x389df9430143880ddb13bdd5fd30daf2d57e7d55/) | ⚠️ Unaudited |
| PairFactory | registry | linea | [`0xc0b920...644592`](./contracts/linea-59144/0xc0b920f6f1d6122b8187c031554dc8194f644592/) | ⚠️ Unaudited |
| Position | operational_periphery | linea | [`0x2832e1...bf9d6f`](./contracts/linea-59144/0x2832e19221631e7082926e2bb354497613bf9d6f/) | ⚠️ Unaudited |
| ProtocolActions | unknown | linea | [`0x34413f...3140fd`](./contracts/linea-59144/0x34413f3cddafef7db46f92296a7cea444b3140fd/) | ⚠️ Unaudited |
| ProxyAdmin | governance | linea | 2 deployments: linea [`0x3950d9...542dc3`](./contracts/linea-59144/0x3950d9b43c77cf5e165ee9aa5c59efdc5a542dc3/); linea `0xdc78e9...3d384e` | ⚠️ Unaudited |
| Quoter | periphery | linea | [`0xb593fa...4fe335`](./contracts/linea-59144/0xb593fa9d853ad89bfcf77c9a22d24936774fe335/) | ⚠️ Unaudited |
| QuoterV2 | periphery | linea | [`0xe660c9...aba037`](./contracts/linea-59144/0xe660c95e17884b6c81b01445efc24556f8aba037/) | ⚠️ Unaudited |
| Revivoor | unknown | linea | [`0x5da973...c5a3e9`](./contracts/linea-59144/0x5da9735b19cdd050b6ada1b31ef52ae704c5a3e9/) | ⚠️ Unaudited |
| Router | adapter | linea | [`0x32db39...929c54`](./contracts/linea-59144/0x32db39c56c171b4c96e974ddede8e42498929c54/) | ⚠️ Unaudited |
| SafeL2 | unknown | linea | [`0xde4b22...d388f7`](./contracts/linea-59144/0xde4b22eb9f9c2c55e72e330c87663b28e9d388f7/) | ⚠️ Unaudited |
| SafeProxy | unknown | linea | [`0x007e78...539cce`](./contracts/linea-59144/0x007e783be0f271510ef919357466c122fd539cce/) | ⚠️ Unaudited |
| SwapRouter | adapter | linea | [`0x8be024...a5052a`](./contracts/linea-59144/0x8be024b5c546b5d45cbb23163e1a4dca8fa5052a/) | ⚠️ Unaudited |
| TickLens | periphery | linea | [`0x432a52...e8e2b8`](./contracts/linea-59144/0x432a5219320d4ae3ebf33a84ae9944f655e8e2b8/) | ⚠️ Unaudited |
| TimeLock | governance | linea | [`0xf9a153...d89944`](./contracts/linea-59144/0xf9a15373c36f50e0dea03e80a568f03392d89944/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | linea | [`0xf26431...1bb458`](./contracts/linea-59144/0xf2643190116ed2a9c3cfbd3c489a60d4a51bb458/) | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | linea | [`0x1211fb...ee5b3e`](./contracts/linea-59144/0x1211fb02d3c61fd576e76675ce9cb38230ee5b3e/) | ⚠️ Unaudited |
| UniversalAirdrop | operational_periphery | linea | [`0xae16b9...d13dcf`](./contracts/linea-59144/0xae16b93d29aadccb9fc616aabfbca95682d13dcf/) | ⚠️ Unaudited |
| UniversalRouter | adapter | linea | [`0x859744...07826e`](./contracts/linea-59144/0x85974429677c2a701af470b82f3118e74307826e/) | ⚠️ Unaudited |
| VeClaim | unknown | linea | 2 deployments: linea [`0x9dec69...269cad`](./contracts/linea-59144/0x9dec69a9d329b8431070774e299a54c0eb269cad/); linea `0xce65f3...2d4c6d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| GaugeV3 | operational_periphery | linea | 7 deployments: linea [`0x18068c...3b0b25`](./contracts/linea-59144/0x18068c050d237d46310f59f40559bd0c6b3b0b25/); linea `0x499aed...dd8fcb`; linea `0x84b465...04201b`; linea `0x9270d3...f81a74`; linea `0x9d5c0e...dc9cb4`; linea `0xeba9eb...eacb40`; linea `0xfb8561...c4950d` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| GaugeFactory | unknown | linea | 2 deployments: linea [`0x1ddf72...7944b3`](./contracts/linea-59144/0x1ddf722c565ed8e9b6918a6bea34e9825a7944b3/); linea `0xd766d9...c4a200` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | linea | `0x05733c...ec3289` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x35e755...ad5a69` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x3f91dd...3e7ce7` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x471750...eb3e34` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x7601df...7497b2` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x762e61...7ecb16` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x88c987...d56756` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x971634...461ee0` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xcd73c9...635d61` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xd0dad8...1c3f5f` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xf458a2...7f3d8e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e](https://cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | 72 | medium |
| [cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c](https://cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c) | Spearbit | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [diligence.consensys.io/audits/2024/08/ramses-v3](https://diligence.security/audits/2024/08/ramses-v3) | Consensys Diligence | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Report](https://code4rena.com/reports/2024-10-ramses-exchange) | Code4rena | Contest | 2024-10 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | [`0x2e5c9e...7c10df`](./contracts/linea-59144/0x2e5c9e4146f57c5dc6dcb88a86bdf5e8087c10df/) | AutomatedFeeNotifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xf7a8b3...f9ea9b`](./contracts/linea-59144/0xf7a8b3770f661059f4ea0d79ad7fe8d642f9ea9b/) | BribeHolder | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x3add83...ba039b`](./contracts/linea-59144/0x3add8307bcc1b6c757cf1d7664b2f37c9bba039b/) | FeeLiquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x75430c...02d6a7`](./contracts/linea-59144/0x75430c78a65bfb7dcdf89a3f0daa8da36402d6a7/) | FeeRecipientFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x97b1b7...e38912`](./contracts/linea-59144/0x97b1b762ae52e1fe4a96dd6db6f15e117ee38912/) | FrogAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1ddf72...7944b3`](./contracts/linea-59144/0x1ddf722c565ed8e9b6918a6bea34e9825a7944b3/) | GaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x4c4190...b224ce`](./contracts/linea-59144/0x4c4190d22fedd723d7eba37149977767feb224ce/) | LGEHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x614f11...703abd`](./contracts/linea-59144/0x614f116c0e64190512d4764b4c2122f9e2703abd/) | MevModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1b4e17...1c4efb`](./contracts/linea-59144/0x1b4e17d4263a7f751d8965ae514293c0461c4efb/) | MinimalizedFeePusher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x59037f...3712a6`](./contracts/linea-59144/0x59037f2c0337a5150c0cd08cb2df684e043712a6/) | MixedRouteQuoterV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xfc65c6...8453c4`](./contracts/linea-59144/0xfc65c6308765ebbb0d87df8b6502674b868453c4/) | NonfungibleTokenPositionDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x389df9...7e7d55`](./contracts/linea-59144/0x389df9430143880ddb13bdd5fd30daf2d57e7d55/) | Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xc0b920...644592`](./contracts/linea-59144/0xc0b920f6f1d6122b8187c031554dc8194f644592/) | PairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x2832e1...bf9d6f`](./contracts/linea-59144/0x2832e19221631e7082926e2bb354497613bf9d6f/) | Position | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x34413f...3140fd`](./contracts/linea-59144/0x34413f3cddafef7db46f92296a7cea444b3140fd/) | ProtocolActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xb593fa...4fe335`](./contracts/linea-59144/0xb593fa9d853ad89bfcf77c9a22d24936774fe335/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xe660c9...aba037`](./contracts/linea-59144/0xe660c95e17884b6c81b01445efc24556f8aba037/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x5da973...c5a3e9`](./contracts/linea-59144/0x5da9735b19cdd050b6ada1b31ef52ae704c5a3e9/) | Revivoor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x32db39...929c54`](./contracts/linea-59144/0x32db39c56c171b4c96e974ddede8e42498929c54/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x8be024...a5052a`](./contracts/linea-59144/0x8be024b5c546b5d45cbb23163e1a4dca8fa5052a/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x432a52...e8e2b8`](./contracts/linea-59144/0x432a5219320d4ae3ebf33a84ae9944f655e8e2b8/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xf9a153...d89944`](./contracts/linea-59144/0xf9a15373c36f50e0dea03e80a568f03392d89944/) | TimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xae16b9...d13dcf`](./contracts/linea-59144/0xae16b93d29aadccb9fc616aabfbca95682d13dcf/) | UniversalAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x859744...07826e`](./contracts/linea-59144/0x85974429677c2a701af470b82f3118e74307826e/) | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x9dec69...269cad`](./contracts/linea-59144/0x9dec69a9d329b8431070774e299a54c0eb269cad/) | VeClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 52 |
| upstream | 1 |
| standard_library | 5 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: medium=1
- Match method counts: extraction_exact=72

Zero-match audit list:

- [2725] cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c
- [11903] diligence.consensys.io/audits/2024/08/ramses-v3
- [11904] Report

Fork inheritance lineage and inherited audits are included when available.
