# Agentic Audit Brief: Xpanse

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Xpanse (`xpanse`)
- Website: [https://xpanse.trade/](https://xpanse.trade/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, bsc
- Contract surface: 109 unique implementations (350 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $240,059.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Xpanse. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across base, bsc. Structural roles: 2 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: erc1967proxy (1), ownable (1), pausable (1)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xa234f3...2648e1`, chain 8453)
- UnnamedContract (`0xde6446...757377`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 107 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 109 unique; 107 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/84
- Verified + Unaudited implementations: 84
- Verified by bytecode match: 0
- Unverified implementations: 25
- Unique implementations: 109
- Raw deployments: 350
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (84)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xbafa1d...52112d`; bsc `0xf505bf...1f2300` | ⚠️ Unaudited |
| BEP20PHB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x040963...87904d`; bsc `0x7f29be...c7222d` | ⚠️ Unaudited |
| BinaryOptionMarketData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a9d3f...fe1842` | ⚠️ Unaudited |
| BinaryOptionMarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeea21e...a1cfd4` | ⚠️ Unaudited |
| BinaryOptionMarketManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5d9e8...207578` | ⚠️ Unaudited |
| CircuitBreaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03ce4f...cf3627` | ⚠️ Unaudited |
| CollateralErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x7e06f8...1bd42a`; bsc `0xca24f3...9b4829` | ⚠️ Unaudited |
| CollateralEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xb72e65...e44120`; bsc `0xff1d16...5b5d98` | ⚠️ Unaudited |
| CollateralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x6bf13f...d9d9c4`; bsc `0xa7833a...dc64b4` | ⚠️ Unaudited |
| CollateralManagerState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7938c...7bafb8` | ⚠️ Unaudited |
| CollateralShort | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x8af9d7...9189c4`; bsc `0xb03346...937f7e` | ⚠️ Unaudited |
| CollateralState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x1b04fc...af6aca`; bsc `0x3996ff...a86a14`; bsc `0xc424ff...aecbd3` | ⚠️ Unaudited |
| CollateralUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xade751...21090f` | ⚠️ Unaudited |
| DappMaintenance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6376e7...6b68f4` | ⚠️ Unaudited |
| DebtCache | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x115583...b21b51`; bsc `0x730a8b...f5d822`; bsc `0xbef7ff...03601c` | ⚠️ Unaudited |
| DelegateApprovals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9657a0...bfbfc8` | ⚠️ Unaudited |
| Depot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b957b...7d114d` | ⚠️ Unaudited |
| DirectIntegrationManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf8139...9589a0` | ⚠️ Unaudited |
| EscrowChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b1779...fb96a7` | ⚠️ Unaudited |
| EternalStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x4edead...cf3a62`; bsc `0xc6be33...3b618a` | ⚠️ Unaudited |
| EtherCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x341e16...5d0c3b` | ⚠️ Unaudited |
| EtherCollateralsUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c6ef7...4469cf` | ⚠️ Unaudited |
| EtherWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbebc70...f912e5` | ⚠️ Unaudited |
| ExchangeCircuitBreaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfbde3c...48a9de` | ⚠️ Unaudited |
| ExchangeRates | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x7f98a6...8e15ae`; bsc `0x95a496...4b9763`; bsc `0xaa739a...a276ea` | ⚠️ Unaudited |
| ExchangerWithVirtualSynth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x0610be...81a839`; bsc `0x867e8a...f6b05b`; bsc `0x88bdc2...cc5b70` | ⚠️ Unaudited |
| ExchangeSettlementLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x332317...53eeee` | ⚠️ Unaudited |
| ExchangeState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf1f5f7...ea5407` | ⚠️ Unaudited |
| FeePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x8afa45...350321`; bsc `0xb80f83...d9d6fd`; bsc `0xd7aba6...01a95e` | ⚠️ Unaudited |
| FeePoolEternalStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x691d89...79f54a` | ⚠️ Unaudited |
| FeePoolState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x030f57...583c13` | ⚠️ Unaudited |
| FlexibleStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde6446...757377` | ⚠️ Unaudited |
| FuturesMarketManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9320be...eb9e2d` | ⚠️ Unaudited |
| HorizonClaimOnBehalf | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa623f2...0f6c21` | ⚠️ Unaudited |
| Issuer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x002a6b...f54f2b`; bsc `0x284105...d5146b`; bsc `0x9a89df...9b0fb9` | ⚠️ Unaudited |
| Liquidations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x5bcdb4...487ad2`; bsc `0x7527d7...abc1c0` | ⚠️ Unaudited |
| Liquidator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a7b78...79f44c` | ⚠️ Unaudited |
| LiquidatorRewards | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x051782...124362` | ⚠️ Unaudited |
| Math | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x122337...bc520e` | ⚠️ Unaudited |
| MultiCollateralSynth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 56 deployments: bsc `0x036ec5...606cd5`; bsc `0x05f80d...faf075`; bsc `0x0920e8...83e966`; bsc `0x130fd0...cb124b`; bsc `0x1ad2b2...ee575b`; bsc `0x1b0237...52f140`; bsc `0x1c36f9...1654ae`; bsc `0x1fbc06...90d97a`; bsc `0x206fcc...d1e8e7`; bsc `0x269c24...767d00`; bsc `0x3063b5...2e4665`; bsc `0x311d02...ea4639`; bsc `0x31572d...0d8d8b`; bsc `0x34af68...1f5fca`; bsc `0x36c0f3...46a2e5`; bsc `0x43d1cb...524c76`; bsc `0x46bcfa...b79d78`; bsc `0x4bb23f...bf01fd`; bsc `0x56a1ce...ead5ac`; bsc `0x58e33d...f3cec8`; bsc `0x58e551...621786`; bsc `0x62e34a...de9323`; bsc `0x64141f...dd87fd`; bsc `0x70e9c9...0b97b9`; bsc `0x77866e...4430f9`; bsc `0x7b595c...9ecdbb`; bsc `0x7d4a8f...b49b11`; bsc `0x7f1112...838ff5`; bsc `0x7fc6e0...43e872`; bsc `0x87f4e0...d1665c`; bsc `0x8a5616...c82ace`; bsc `0x8ec3d9...39c9d7`; bsc `0x8ec653...ebb687`; bsc `0x9683cd...dfe71f`; bsc `0x9b6139...d82d4a`; bsc `0xa0427e...7aa38a`; bsc `0xa0b0b4...0f331a`; bsc `0xa7a9ee...c38f10`; bsc `0xaa5fb1...36727e`; bsc `0xaef693...d8ecd8`; bsc `0xaf4414...c662fb`; bsc `0xb4eb06...63e867`; bsc `0xb79fed...afb048`; bsc `0xbe8de1...10c0a2`; bsc `0xc1cf9a...0cc5a1`; bsc `0xc3b022...7da4e7`; bsc `0xcd5034...78d6fc`; bsc `0xcfa388...8f0155`; bsc `0xdf04c1...71c78f`; bsc `0xe094b5...d4c820`; bsc `0xe0aa8c...b77582`; bsc `0xec662a...c9386e`; bsc `0xf48664...9c6732`; bsc `0xf6f04e...2e86a4`; bsc `0xf98ab4...b21cd0`; bsc `0xfd3afc...69203b` | ⚠️ Unaudited |
| NativeEtherWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5ae33e...2aa46c` | ⚠️ Unaudited |
| OneNetAggregatorDebtRatio | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f43dc...8aa607` | ⚠️ Unaudited |
| OneNetAggregatorIssuedSynths | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe2d657...2ca727` | ⚠️ Unaudited |
| PancakePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xc3bf4e...c88bdf`; bsc `0xdc9a57...430e74` | ⚠️ Unaudited |
| PerpsV2ExchangeRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a7400...b41b40` | ⚠️ Unaudited |
| PerpsV2Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: bsc `0x17ac4c...92ecff`; bsc `0x17c442...514063`; bsc `0x180cee...ed3369`; bsc `0x20894f...41c4e2`; bsc `0x33e20a...091049`; bsc `0x380b71...e1250d`; bsc `0x69eb28...11d727`; bsc `0x823915...22337b`; bsc `0x8b9335...f0b934`; bsc `0x8cf252...782afe`; bsc `0xa4d7a0...90b572`; bsc `0xa6b590...9152f7`; bsc `0xf049e2...183f74` | ⚠️ Unaudited |
| PerpsV2MarketData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad96eb...e6e438` | ⚠️ Unaudited |
| PerpsV2MarketDelayedExecution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: bsc `0x069a4e...c83008`; bsc `0x1a27cf...79ce68`; bsc `0x310f1c...0fc4cf`; bsc `0x3d5bf1...a05648`; bsc `0x4622a0...08e434`; bsc `0x54239c...c59332`; bsc `0x6a273f...c13674`; bsc `0x8f969b...33b080`; bsc `0xa7a4d2...ccab7d`; bsc `0xb748fb...4a8b50`; bsc `0xb7af10...fe0907`; bsc `0xe43930...b0153e`; bsc `0xfc7e77...bea035` | ⚠️ Unaudited |
| PerpsV2MarketDelayedIntent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: bsc `0x061888...063105`; bsc `0x1bed89...ef6ab0`; bsc `0x20ddc5...6caf89`; bsc `0x2ba6b5...0897f5`; bsc `0x2da8a9...70a305`; bsc `0x5eb2a9...a363fa`; bsc `0x66f355...2e5607`; bsc `0x697e61...1e2061`; bsc `0x8d128d...e20e2c`; bsc `0x99ae4e...a50d24`; bsc `0xd905b7...139d2e`; bsc `0xdbe3c3...8e8dc5`; bsc `0xfb01a6...f17a88` | ⚠️ Unaudited |
| PerpsV2MarketLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: bsc `0x02a161...bc344d`; bsc `0x0ef31a...7c0b04`; bsc `0x20ddc7...d680cc`; bsc `0x5024ae...e69da3`; bsc `0x51ef2e...3a52d4`; bsc `0x8e4bb9...794f9f`; bsc `0xa82ca6...a2a1da`; bsc `0xbb4922...c6d67e`; bsc `0xce7a36...e684cc`; bsc `0xe709c7...4a61e9`; bsc `0xee7d56...7c9e3f`; bsc `0xf7c77f...4beb76`; bsc `0xfe60d4...58dc36` | ⚠️ Unaudited |
| PerpsV2MarketSettings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcab82c...f27f95` | ⚠️ Unaudited |
| PerpsV2MarketState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: bsc `0x06f146...a1676d`; bsc `0x175b2a...0860bb`; bsc `0x5d2fbb...7ec506`; bsc `0x6f08c7...cb8b4b`; bsc `0x785446...3c8da9`; bsc `0x8b0c00...07bbe0`; bsc `0x90f905...12968a`; bsc `0xa1095d...236be0`; bsc `0xaa5248...2dae3f`; bsc `0xc05e82...f41a0a`; bsc `0xd64755...937cb3`; bsc `0xeb0117...3c5db7`; bsc `0xefc146...ccbb1f` | ⚠️ Unaudited |
| PerpsV2MarketViews | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: bsc `0x0666f5...99139f`; bsc `0x094328...274db0`; bsc `0x140631...a379a3`; bsc `0x559fa3...171729`; bsc `0x5fa9d2...6e0b7d`; bsc `0x6bbf34...2099b5`; bsc `0x9daa76...b3446f`; bsc `0xa51e4f...7b1024`; bsc `0xaa41e5...c56913`; bsc `0xac2597...aa2022`; bsc `0xbfc286...2de57f`; bsc `0xc2daed...ccac3f`; bsc `0xfd3268...e9eeee` | ⚠️ Unaudited |
| PhbStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0b29cc...914fb1`; bsc `0xada58c...282285` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x2d4dfd...f7589e`; bsc `0x3c969c...810872`; bsc `0xfcf3af...d1367f` | ⚠️ Unaudited |
| ProxyERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 27 deployments: bsc `0x0bd9c6...312591`; bsc `0x22879e...9cce3e`; bsc `0x25b012...e1cdb6`; bsc `0x2e4466...d3cf8b`; bsc `0x2fee19...bff3ee`; bsc `0x3a42e7...0229eb`; bsc `0x3d3c76...4ecb62`; bsc `0x49a7f0...a30e8c`; bsc `0x549d68...e8cb39`; bsc `0x57e2a4...4e77da`; bsc `0x5ad70d...d01e87`; bsc `0x6400d8...2b217c`; bsc `0x65678d...51f34c`; bsc `0x6d4e17...295c70`; bsc `0x6dedce...80b204`; bsc `0x6e9266...5f87fb`; bsc `0x82236c...224f77`; bsc `0x870d11...2fcdf3`; bsc `0x8a72d4...459be9`; bsc `0x8e044e...72f56b`; bsc `0x914510...4f4c30`; bsc `0x916fa4...4b0745`; bsc `0xab3f54...18d615`; bsc `0xc0eff7...a917cd`; bsc `0xd47663...2957f5`; bsc `0xf01864...4ae7b9`; bsc `0xf6c31f...cd9875` | ⚠️ Unaudited |
| ProxyPerpsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: bsc `0x19ecf0...72f2ad`; bsc `0x743e69...cea876`; bsc `0x7a35c8...d509ff`; bsc `0x7e3743...fb7630`; bsc `0x863945...46fce2`; bsc `0x8d824c...750735`; bsc `0x92091f...815a92`; bsc `0xa02ef2...203d53`; bsc `0xa1cf92...68293b`; bsc `0xada278...6d69a2`; bsc `0xaeaf40...e7024a`; bsc `0xb2dacf...a4b9e4`; bsc `0xd87a39...9d5139` | ⚠️ Unaudited |
| PurgeableSynth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x510a2b...c1e3f6`; bsc `0xd8aa71...6292cc` | ⚠️ Unaudited |
| ReadProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x263a82...7470c6` | ⚠️ Unaudited |
| RewardEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c5db2...28f3da` | ⚠️ Unaudited |
| RewardEscrowV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x41b978...490474`; bsc `0xe21e39...e42099` | ⚠️ Unaudited |
| RewardEscrowV2Storage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3cc110...60ab75` | ⚠️ Unaudited |
| RewardsDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xceb497...719dac` | ⚠️ Unaudited |
| SafeDecimalMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x81126b...7a8c30`; bsc `0xbd782d...9cf856` | ⚠️ Unaudited |
| SignedSafeDecimalMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e0644...32d885` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 12 deployments: bsc `0x307326...a139e1`; bsc `0x56075e...cfd6d8`; bsc `0x5646aa...959a85`; bsc `0x67d5a9...65bf98`; bsc `0x84838d...cc1da8`; bsc `0xa1771d...b5e33e`; bsc `0xb9c6c9...e949b6`; bsc `0xcc5645...9d483a`; bsc `0xd4552f...5caeec`; bsc `0xe53bd3...6340d2`; bsc `0xecbdc8...f63972`; bsc `0xed0fcd...f474f2` | ⚠️ Unaudited |
| SupplySchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x3beb03...204ca8`; bsc `0x45151b...165a55`; bsc `0xcb4e2f...5e25e0`; bsc `0xd5ac10...ee39b2` | ⚠️ Unaudited |
| Synthetix | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x0110bc...745ffc`; bsc `0x10de8e...5e58cd`; bsc `0x9ef253...218d13` | ⚠️ Unaudited |
| SynthetixBridgeEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x53f6de...6d664a` | ⚠️ Unaudited |
| SynthetixBridgeToOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ceb5c...1630fb` | ⚠️ Unaudited |
| SynthetixDebtShare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf76c37...b165fc` | ⚠️ Unaudited |
| SynthetixEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x073c0c...d329cc` | ⚠️ Unaudited |
| SynthetixState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf71ecc...9a956b` | ⚠️ Unaudited |
| SynthRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05af42...f4f186` | ⚠️ Unaudited |
| SynthUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x02a73e...354582`; bsc `0xed8bb5...f1fbd9` | ⚠️ Unaudited |
| SystemSettings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x39989d...6cbdba`; bsc `0x422043...77576a`; bsc `0x53ca7c...99a027` | ⚠️ Unaudited |
| SystemSettingsLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ff3ed...c8d56f` | ⚠️ Unaudited |
| SystemStatus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x344b08...d64209`; bsc `0x49043e...397f51`; bsc `0xb695dd...84290f` | ⚠️ Unaudited |
| TokenState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 28 deployments: bsc `0x000c98...8cbeee`; bsc `0x10d628...270c91`; bsc `0x2bd677...570c1a`; bsc `0x32c056...5f5185`; bsc `0x35d637...94155f`; bsc `0x3c0ac2...9920f6`; bsc `0x474be0...533389`; bsc `0x53d1c5...75fbde`; bsc `0x546fa1...dff766`; bsc `0x5d1c2c...c01d0d`; bsc `0x6946bf...57e4b0`; bsc `0x783d72...1dd61e`; bsc `0x828c83...687b90`; bsc `0x8326bf...615d18`; bsc `0x86235d...3d8980`; bsc `0x89f950...595232`; bsc `0x8c0f8a...492c32`; bsc `0x915218...6f3173`; bsc `0x9abeb0...3c44c2`; bsc `0xa22694...150b2f`; bsc `0xa93208...0b29bc`; bsc `0xb41c89...31cb4a`; bsc `0xcacac3...c28032`; bsc `0xe6066d...845eea`; bsc `0xe63725...815f03`; bsc `0xea207a...d922df`; bsc `0xf8d6da...03078b`; bsc `0xfc6687...074823` | ⚠️ Unaudited |
| TradingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x41cf27...eb8577`; bsc `0x8863cb...8611e2` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | base | unit-397136 | `0xa234f3...2648e1` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | base | unit-397137 | `0xde6446...757377` | ⚠️ Unaudited |
| VirtualSynthMastercopy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb09c9...1fcbed` | ⚠️ Unaudited |
| WrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa03817...c6ef99` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (25)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02615d...408b8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09567b...2e6d43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0aeedb...31de81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a61c1...76ff81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c3b0a...1e7eda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x252b92...5c3334` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5064b0...d54154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5338b0...e7b9f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60fccf...f3b7fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b0c95...88e916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x727075...3c72d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ada1b...3642e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83b9a5...0bc797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8bdc32...8d4f51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93c978...b9abe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2ff32...e7cff9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc09e3d...1b5bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8df3c...f00264` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc937d5...f1af0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4965b...6603db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc0a78...0bd0a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde1b3c...1f7286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe2d816...839978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeeca33...2cfede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc1b65...ad6dbc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Horizon-Protocol-Smart-Contract-Audit-Report.pdf](https://static.horizonprotocol.com/Horizon-Protocol-Smart-Contract-Audit-Report.pdf) | unknown | Audit | 2021-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 121 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14145] Horizon-Protocol-Smart-Contract-Audit-Report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | AddressResolver | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | AddressSetLib | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | BaseSynthetix | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | BinaryOption | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | BinaryOptionMarket | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | BinaryOptionMarketData | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | BinaryOptionMarketFactory | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | BinaryOptionMarketManager | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ContractStorage | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | DappMaintenance | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | DebtCache | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | DelegateApprovals | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Depot | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | EmptyEtherCollateral | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | EscrowChecker | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | EternalStorage | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | EtherCollateral | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | EtherCollateralsUSD | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ExchangeRates | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ExchangeState | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Exchanger | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ExchangerWithVirtualSynth | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ExternStateToken | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | FakeTradingRewards | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | FeePool | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | FeePoolEternalStorage | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | FeePoolState | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | FixedSupplySchedule | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | FlexibleStorage | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | GenericMock | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IAddressResolver | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IBinaryOption | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IBinaryOptionMarket | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IBinaryOptionMarketManager | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IDebtCache | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IDelegateApprovals | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IDepot | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IERC20 | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IEtherCollateral | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IEtherCollateralsUSD | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IExchangeRates | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IExchangeState | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IExchanger | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IFeePool | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IFlexibleStorage | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IHasBalance | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IIssuer | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ILiquidations | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IRewardEscrow | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IRewardsDistribution | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IStakingRewards | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ISupplySchedule | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ISynth | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ISynthetix | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ISynthetixBridgeToBase | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ISynthetixBridgeToOptimism | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ISynthetixState | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ISystemSettings | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ISystemStatus | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ITradingRewards | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IVirtualSynth | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Issuer | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | LimitedSetup | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Liquidations | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Math | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MintableSynthetix | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MixinResolver | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MixinSystemSettings | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockAggregatorV2V3 | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockBinaryOptionMarket | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockBinaryOptionMarketManager | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockContractStorage | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockEtherCollateral | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockExchanger | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockFlagsInterface | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockMintableSynthetix | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockMutator | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockRewardsRecipient | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockSynth | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MultiCollateralSynth | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | OneWeekSetup | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Owned | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Pausable | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Proxy | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ProxyERC20 | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Proxyable | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | PublicEST | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | PublicMath | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | PublicSafeDecimalMath | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | PurgeableSynth | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ReadProxy | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | RealtimeDebtCache | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | RewardEscrow | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | RewardsDistribution | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | RewardsDistributionRecipient | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SafeDecimalMath | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | StakingRewards | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | State | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SupplySchedule | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SwapWithVirtualSynth | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Synth | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SynthSummaryUtil | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SynthUtil | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Synthetix | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SynthetixBridgeToBase | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SynthetixBridgeToOptimism | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SynthetixEscrow | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SynthetixState | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SystemSettings | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SystemStatus | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TestableAddressSet | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TestableBinaryOptionMarket | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TestableDebtCache | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TestableMixinResolver | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TestablePausable | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TestableState | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TokenExchanger | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TokenState | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TradingRewards | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | UsingReadProxy | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | VirtualSynth | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 81 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 121 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14145] Horizon-Protocol-Smart-Contract-Audit-Report.pdf

Fork inheritance lineage and inherited audits are included when available.
