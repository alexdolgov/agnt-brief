# Agentic Audit Brief: SX Rollup Bridge

⚠️ Lifecycle status: DECLINING - TVL dropped 66.9% over 90 days

## Project Overview

- Project: SX Rollup Bridge (`sx-rollup-bridge`)
- Website: [https://sx.bet/wallet/bridge](https://sx.bet/wallet/bridge)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:59:16.944Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 133 unique implementations (137 raw deployments)
- DeFi Llama TVL: $6,369,742.14
- On-chain TVL (included contracts): $6,117,892.20
- TVL by chain: Ethereum $6,117,892.20

## Project Description

The SX Rollup Bridge is the canonical bridge between Ethereum and the SX Network rollup, enabling asset transfers through the bridge and gateway contracts required for cross-chain deposit and withdrawal flows. SportX/SX.bet application contracts and broader SX token or governance infrastructure should not be treated as bridge operational support unless explicitly tied to bridge operation.

### Architecture

The L1OrbitERC20Gateway manages token deposits and withdrawals, interacting with the ERC20Bridge to relay messages to the rollup. The SX token contract serves as the native asset, while SportX and SXNetwork provide peripheral operational support.

## Audit Coverage Summary

- Verified implementations audited: 0/68 (0.0%)
- Verified + Unaudited implementations: 68
- Verified by bytecode match: 0
- Unverified implementations: 65
- Unique implementations: 133
- Raw deployments: 137
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $6,117,892.20
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $6,117,892.20 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (68)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| L1OrbitERC20Gateway | token | ethereum | [`0xb4968c...abaa91`](./contracts/ethereum-1/0xb4968c66becc8fb4f73b50354301c1adb2abaa91/) | ⚠️ Unaudited |
| AffiliateRegistry | registry | ethereum | [`0xc0f6b3...9d4330`](./contracts/ethereum-1/0xc0f6b3225fff49e408adfb1baf561d34079d4330/) | ⚠️ Unaudited |
| APR2021Timelock | governance | ethereum | [`0x8c0962...5965ae`](./contracts/ethereum-1/0x8c0962df5dcba5374c77008d28219835dd5965ae/) | ⚠️ Unaudited |
| APR2022Timelock | governance | ethereum | [`0x9bd591...448c82`](./contracts/ethereum-1/0x9bd591d6aab29bfd41fd97780337a0ea39448c82/) | ⚠️ Unaudited |
| APR2023Timelock | governance | ethereum | [`0xf9e72b...d6eee6`](./contracts/ethereum-1/0xf9e72ba0e8cfdddc130e22903dcd93fc61d6eee6/) | ⚠️ Unaudited |
| APR2024Timelock | governance | ethereum | [`0xf769c7...49b5db`](./contracts/ethereum-1/0xf769c708469c40836b916dd7ce9bc2ccef49b5db/) | ⚠️ Unaudited |
| AUG2021Timelock | governance | ethereum | [`0xe90d5f...34a591`](./contracts/ethereum-1/0xe90d5fef6f7fdb97dcb9ea0e18d4d615df34a591/) | ⚠️ Unaudited |
| AUG2022Timelock | governance | ethereum | [`0x4130ee...f59f71`](./contracts/ethereum-1/0x4130eebfd8784fb65018d1771be5c43102f59f71/) | ⚠️ Unaudited |
| AUG2023Timelock | governance | ethereum | [`0x52a6da...0cd193`](./contracts/ethereum-1/0x52a6da441321ce961d19bd39823c6839200cd193/) | ⚠️ Unaudited |
| AUG2024Timelock | governance | ethereum | [`0x49ee78...3f5880`](./contracts/ethereum-1/0x49ee78939b248a037623f75c4169cc80213f5880/) | ⚠️ Unaudited |
| CancelOrder | unknown | ethereum | [`0x7cda87...87fc73`](./contracts/ethereum-1/0x7cda8770cc55cf2daba702483cb11aaa8c87fc73/) | ⚠️ Unaudited |
| DEC2021Timelock | governance | ethereum | [`0x2ffef3...3b5fb6`](./contracts/ethereum-1/0x2ffef36c74b8cda0699498487007e2f3083b5fb6/) | ⚠️ Unaudited |
| DEC2022Timelock | governance | ethereum | [`0x3822cb...5ca9af`](./contracts/ethereum-1/0x3822cbfe81f15251c5fb3eb27f6b9c22db5ca9af/) | ⚠️ Unaudited |
| DEC2023Timelock | governance | ethereum | [`0x0acdb3...4f01a8`](./contracts/ethereum-1/0x0acdb3dcc1b38bc44860e763919c6092dd4f01a8/) | ⚠️ Unaudited |
| DEC2024Timelock | governance | ethereum | [`0x776845...ac57df`](./contracts/ethereum-1/0x7768455ed769d5d16af0164a1a7da45625ac57df/) | ⚠️ Unaudited |
| EIP712FillHasher | unknown | ethereum | [`0x90c997...d49095`](./contracts/ethereum-1/0x90c997f83885b4bd16d3ef8add73b9d901d49095/) | ⚠️ Unaudited |
| ERC20Bridge | operational_periphery | ethereum | [`0xa104c0...c35f86`](./contracts/ethereum-1/0xa104c0426e95a5538e89131dbb4163d230c35f86/) | ⚠️ Unaudited |
| Escrow | operational_periphery | ethereum | [`0x0efab6...0f9323`](./contracts/ethereum-1/0x0efab66d0c050519c734bc8b7034ed68cb0f9323/) | ⚠️ Unaudited |
| FEB2021Timelock | governance | ethereum | [`0x35708e...4259c1`](./contracts/ethereum-1/0x35708e18f5c82fd52879d5898a5c25f9ce4259c1/) | ⚠️ Unaudited |
| FEB2022Timelock | governance | ethereum | [`0x11455d...019354`](./contracts/ethereum-1/0x11455d922171924ef0b1a459f091183237019354/) | ⚠️ Unaudited |
| FEB2023Timelock | governance | ethereum | [`0xc8d495...a04251`](./contracts/ethereum-1/0xc8d495c6a824c74171ebaca1c5aaae2460a04251/) | ⚠️ Unaudited |
| FEB2024Timelock | governance | ethereum | [`0x09f7f7...f7025c`](./contracts/ethereum-1/0x09f7f7aa162c9f76bf756814910d51b92cf7025c/) | ⚠️ Unaudited |
| FeeSchedule | unknown | ethereum | [`0xf8aede...3d4cb8`](./contracts/ethereum-1/0xf8aedef4fb61094d0105b67f0678f02ab83d4cb8/) | ⚠️ Unaudited |
| FillOrder | unknown | ethereum | [`0x868845...1cfe10`](./contracts/ethereum-1/0x868845f1dc7ccc15bce50d7c90e1e644971cfe10/) | ⚠️ Unaudited |
| Fills | unknown | ethereum | [`0x9d5323...2f3a8a`](./contracts/ethereum-1/0x9d5323e0b722647dfe44512017f451dc1a2f3a8a/) | ⚠️ Unaudited |
| JAN2022Timelock | governance | ethereum | [`0xb6342b...30f430`](./contracts/ethereum-1/0xb6342b5b98e21b53e856987e4251453c3030f430/) | ⚠️ Unaudited |
| JAN2023Timelock | governance | ethereum | [`0xc469c3...6cd7a8`](./contracts/ethereum-1/0xc469c31d90947cc030a2198cbc982ccf3c6cd7a8/) | ⚠️ Unaudited |
| JAN2024Timelock | governance | ethereum | [`0x8fd001...f6422f`](./contracts/ethereum-1/0x8fd0017de5b2365bff751f83fdf9dab721f6422f/) | ⚠️ Unaudited |
| JAN2025Timelock | governance | ethereum | [`0x9d68d6...f33566`](./contracts/ethereum-1/0x9d68d6a2b4442715d4e5fe9178cd4b22f1f33566/) | ⚠️ Unaudited |
| JUL2021Timelock | governance | ethereum | [`0xb35f99...c6e09f`](./contracts/ethereum-1/0xb35f9915c7a8de95fae220e8c4c2f9624fc6e09f/) | ⚠️ Unaudited |
| JUL2022Timelock | governance | ethereum | [`0xfc9afc...5500b2`](./contracts/ethereum-1/0xfc9afca881585c423edc6658b22a8ec6095500b2/) | ⚠️ Unaudited |
| JUL2023Timelock | governance | ethereum | [`0x577bd4...677565`](./contracts/ethereum-1/0x577bd40697bf152a0d56dcc424ab834081677565/) | ⚠️ Unaudited |
| JUL2024Timelock | governance | ethereum | [`0xe49c91...64ccf1`](./contracts/ethereum-1/0xe49c917acd650a988bd37ef559dc276cf864ccf1/) | ⚠️ Unaudited |
| JUN2021Timelock | governance | ethereum | [`0xd793da...1b3fcc`](./contracts/ethereum-1/0xd793da244b0d247fb6bf00f7489b229a171b3fcc/) | ⚠️ Unaudited |
| JUN2022Timelock | governance | ethereum | [`0x534bd3...58fc08`](./contracts/ethereum-1/0x534bd3476b748d034d2943614942bf84e558fc08/) | ⚠️ Unaudited |
| JUN2023Timelock | governance | ethereum | [`0x3829f0...948384`](./contracts/ethereum-1/0x3829f0da1f7ad3897b0a3a4d03e619f566948384/) | ⚠️ Unaudited |
| JUN2024Timelock | governance | ethereum | [`0xbdd026...948553`](./contracts/ethereum-1/0xbdd02682c3d216c16fa555a4323d2df465948553/) | ⚠️ Unaudited |
| MAR2021Timelock | governance | ethereum | [`0x463999...31adac`](./contracts/ethereum-1/0x463999d48e2a7f1b8552ffdf73735dac5131adac/) | ⚠️ Unaudited |
| MAR2022Timelock | governance | ethereum | [`0x8a6645...81be15`](./contracts/ethereum-1/0x8a664594737911c1061ffc0a47b365655781be15/) | ⚠️ Unaudited |
| MAR2023Timelock | governance | ethereum | [`0x8802c7...5c17f1`](./contracts/ethereum-1/0x8802c724e7005bfcf5c43bd72a184a600a5c17f1/) | ⚠️ Unaudited |
| MAR2024Timelock | governance | ethereum | [`0xe78e83...e3a673`](./contracts/ethereum-1/0xe78e833631038353048a11fdd98fd90ea7e3a673/) | ⚠️ Unaudited |
| MAY2021Timelock | governance | ethereum | [`0xc782be...718c0e`](./contracts/ethereum-1/0xc782be9a5092aae8fe0fc8701b58a678db718c0e/) | ⚠️ Unaudited |
| MAY2022Timelock | governance | ethereum | [`0xe3d650...6db0a2`](./contracts/ethereum-1/0xe3d650af7df6333eefb6fa2e4c46296d926db0a2/) | ⚠️ Unaudited |
| MAY2023Timelock | governance | ethereum | [`0xd6a5f6...592810`](./contracts/ethereum-1/0xd6a5f65d688ff89d06f9643997fd10786a592810/) | ⚠️ Unaudited |
| MAY2024Timelock | governance | ethereum | [`0xc13523...e99f61`](./contracts/ethereum-1/0xc135232368b84a47e32338b859571c481ee99f61/) | ⚠️ Unaudited |
| Migrations | operational_periphery | ethereum | [`0x48c9f2...86e5fa`](./contracts/ethereum-1/0x48c9f2f01b1a4f43172159f55c752c3a4c86e5fa/) | ⚠️ Unaudited |
| NOV2021Timelock | governance | ethereum | [`0xc03fc0...c60c06`](./contracts/ethereum-1/0xc03fc0fafee684015c42093245afe3f678c60c06/) | ⚠️ Unaudited |
| NOV2022Timelock | governance | ethereum | [`0x508cd8...4040a9`](./contracts/ethereum-1/0x508cd8776fd1800edb1eff31deca7493c84040a9/) | ⚠️ Unaudited |
| NOV2023Timelock | governance | ethereum | [`0x3acca6...a48710`](./contracts/ethereum-1/0x3acca6587dac14ded598e772b801c3ad6aa48710/) | ⚠️ Unaudited |
| NOV2024Timelock | governance | ethereum | [`0x5ab080...717763`](./contracts/ethereum-1/0x5ab080164bf344d188b25314ced199dcce717763/) | ⚠️ Unaudited |
| OCT2021Timelock | governance | ethereum | [`0x9cedd5...03c2c4`](./contracts/ethereum-1/0x9cedd5867ad6fb9ed0f1bba84e6430b45c03c2c4/) | ⚠️ Unaudited |
| OCT2022Timelock | governance | ethereum | [`0xcfeb19...cfa852`](./contracts/ethereum-1/0xcfeb191494a4b6b3849e71c6d16e9ca636cfa852/) | ⚠️ Unaudited |
| OCT2023Timelock | governance | ethereum | [`0x7f5cac...084a8d`](./contracts/ethereum-1/0x7f5cace9652ef3875131470da15f28ae7c084a8d/) | ⚠️ Unaudited |
| OCT2024Timelock | governance | ethereum | [`0x0ac275...0c5a77`](./contracts/ethereum-1/0x0ac27564b09ed524b5c7af2daffb9829d20c5a77/) | ⚠️ Unaudited |
| OrderValidator | unknown | ethereum | [`0x330539...3b3119`](./contracts/ethereum-1/0x3305399e1954441300138f71fdfe96a8943b3119/) | ⚠️ Unaudited |
| OutcomeReporter | unknown | ethereum | [`0x78b573...04de75`](./contracts/ethereum-1/0x78b5731afa14bf0f023f803220a6c24edf04de75/) | ⚠️ Unaudited |
| SEP2021Timelock | governance | ethereum | [`0x8a69fd...6859bc`](./contracts/ethereum-1/0x8a69fde4b7ccb0e1bc515fda13b97bf7736859bc/) | ⚠️ Unaudited |
| SEP2022Timelock | governance | ethereum | [`0x5083b3...0e3e60`](./contracts/ethereum-1/0x5083b37dab6825705bfaed8cae77c9dcf40e3e60/) | ⚠️ Unaudited |
| SEP2023Timelock | governance | ethereum | [`0x4f5589...999e19`](./contracts/ethereum-1/0x4f55893f65261e08b8df6290676f68b891999e19/) | ⚠️ Unaudited |
| SEP2024Timelock | governance | ethereum | [`0xe28332...5c454c`](./contracts/ethereum-1/0xe28332068ea01a7ec27a4cc60a87484a925c454c/) | ⚠️ Unaudited |
| SuperAdminRole | unknown | ethereum | [`0x87d712...76452e`](./contracts/ethereum-1/0x87d712688a706d4343704eeb382cb72abe76452e/) | ⚠️ Unaudited |
| SX | unknown | ethereum | 3 deployments: ethereum [`0x2571e3...d974fc`](./contracts/ethereum-1/0x2571e3232ea10140b676c42b4bd1956c08d974fc/); ethereum `0xd26ea9...b38a1a`; ethereum `0xf6db95...50ea4a` | ⚠️ Unaudited |
| SXNetwork | unknown | ethereum | 2 deployments: ethereum [`0x309ef6...d07c41`](./contracts/ethereum-1/0x309ef6c302f4b617a6723a8a26d9bb2503d07c41/); ethereum `0xbe9f61...d96624` | ⚠️ Unaudited |
| SXNTokenClaim | token | ethereum | [`0xe8f92b...b57eb3`](./contracts/ethereum-1/0xe8f92b2aa53639319c67498ef955345fa1b57eb3/) | ⚠️ Unaudited |
| SystemParameters | unknown | ethereum | [`0x8e8f79...8553f3`](./contracts/ethereum-1/0x8e8f796146f3767c770d27edf43b6190848553f3/) | ⚠️ Unaudited |
| TokenTransferProxy | token | ethereum | [`0x60e8aa...e63bb5`](./contracts/ethereum-1/0x60e8aa8a997da2c58bc9894aaa08a28524e63bb5/) | ⚠️ Unaudited |
| WETH | token | ethereum | [`0x9d7c2a...a693f9`](./contracts/ethereum-1/0x9d7c2a11322416436f0827e7bbdb3ae40ba693f9/) | ⚠️ Unaudited |
| Whitelist | unknown | ethereum | 2 deployments: ethereum [`0xde4728...94296f`](./contracts/ethereum-1/0xde4728956c0f86450a604335c8787a540494296f/); ethereum `0xfd8e83...2cbebf` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (65)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x01af28...3d2ba1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x041670...bab8a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x08c53a...cc2435` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x093650...e54eb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x093dc8...6a9f4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x11c9c2...8fee91` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x179fc2...1d9780` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x198319...393067` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1d730f...4a6cde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x218e3e...470d26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x23340e...4863a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x28fd7c...e26193` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2add68...ec079b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2bd34a...0c6dfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x37acc5...5abade` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x37ec9a...6186b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x38aef2...4e9936` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x398995...695d1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3e96b0...39968f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3fc109...0b9c95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4109a2...8cf468` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x41ec5a...b6ccd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x481675...a8399d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4891f4...0c27a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x49046f...499538` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4a507d...9aaa1f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4a7a27...8b8700` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4eeb63...e033c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5b0226...83107d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5e5744...2da6bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x618021...3dc49f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x61b59c...d39931` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x620ab4...0b5a1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x672961...af3d4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6abde3...4153ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7010e7...b1d925` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7eabe5...2c5bdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x83e894...9c45a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x84f7bf...7a48e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8c1f2f...ad2f0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9039a2...87ede7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x95b90d...ffb06d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x97e287...6a1c9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9b1d83...c6dad5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa21ac1...222fca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa6ea1e...c1fe7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xadcc70...378dc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb07043...ca4d75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb1562b...b78792` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb6cd10...e53a8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcc077b...e0c24d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcc4fbb...2ad55d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd2d948...f9af8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xddbbd4...79636a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe40329...74cc66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe5c7da...25b1d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xec2452...88725d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeeebec...6e858c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf0890b...981984` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf15885...0bec6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf859c9...f59fcc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfacf5f...61f5ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfb28cc...b9a412` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfd92bd...6847b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfd960a...f955e0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xb4968c...abaa91`](./contracts/ethereum-1/0xb4968c66becc8fb4f73b50354301c1adb2abaa91/) | L1OrbitERC20Gateway | token | $6,117,892.20 | Verified native implementation with $6,117,892.20 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0f6b3...9d4330`](./contracts/ethereum-1/0xc0f6b3225fff49e408adfb1baf561d34079d4330/) | AffiliateRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c0962...5965ae`](./contracts/ethereum-1/0x8c0962df5dcba5374c77008d28219835dd5965ae/) | APR2021Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9bd591...448c82`](./contracts/ethereum-1/0x9bd591d6aab29bfd41fd97780337a0ea39448c82/) | APR2022Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf9e72b...d6eee6`](./contracts/ethereum-1/0xf9e72ba0e8cfdddc130e22903dcd93fc61d6eee6/) | APR2023Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf769c7...49b5db`](./contracts/ethereum-1/0xf769c708469c40836b916dd7ce9bc2ccef49b5db/) | APR2024Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe90d5f...34a591`](./contracts/ethereum-1/0xe90d5fef6f7fdb97dcb9ea0e18d4d615df34a591/) | AUG2021Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4130ee...f59f71`](./contracts/ethereum-1/0x4130eebfd8784fb65018d1771be5c43102f59f71/) | AUG2022Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52a6da...0cd193`](./contracts/ethereum-1/0x52a6da441321ce961d19bd39823c6839200cd193/) | AUG2023Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49ee78...3f5880`](./contracts/ethereum-1/0x49ee78939b248a037623f75c4169cc80213f5880/) | AUG2024Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7cda87...87fc73`](./contracts/ethereum-1/0x7cda8770cc55cf2daba702483cb11aaa8c87fc73/) | CancelOrder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ffef3...3b5fb6`](./contracts/ethereum-1/0x2ffef36c74b8cda0699498487007e2f3083b5fb6/) | DEC2021Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3822cb...5ca9af`](./contracts/ethereum-1/0x3822cbfe81f15251c5fb3eb27f6b9c22db5ca9af/) | DEC2022Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0acdb3...4f01a8`](./contracts/ethereum-1/0x0acdb3dcc1b38bc44860e763919c6092dd4f01a8/) | DEC2023Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x776845...ac57df`](./contracts/ethereum-1/0x7768455ed769d5d16af0164a1a7da45625ac57df/) | DEC2024Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa104c0...c35f86`](./contracts/ethereum-1/0xa104c0426e95a5538e89131dbb4163d230c35f86/) | ERC20Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0efab6...0f9323`](./contracts/ethereum-1/0x0efab66d0c050519c734bc8b7034ed68cb0f9323/) | Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35708e...4259c1`](./contracts/ethereum-1/0x35708e18f5c82fd52879d5898a5c25f9ce4259c1/) | FEB2021Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11455d...019354`](./contracts/ethereum-1/0x11455d922171924ef0b1a459f091183237019354/) | FEB2022Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8d495...a04251`](./contracts/ethereum-1/0xc8d495c6a824c74171ebaca1c5aaae2460a04251/) | FEB2023Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09f7f7...f7025c`](./contracts/ethereum-1/0x09f7f7aa162c9f76bf756814910d51b92cf7025c/) | FEB2024Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf8aede...3d4cb8`](./contracts/ethereum-1/0xf8aedef4fb61094d0105b67f0678f02ab83d4cb8/) | FeeSchedule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x868845...1cfe10`](./contracts/ethereum-1/0x868845f1dc7ccc15bce50d7c90e1e644971cfe10/) | FillOrder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d5323...2f3a8a`](./contracts/ethereum-1/0x9d5323e0b722647dfe44512017f451dc1a2f3a8a/) | Fills | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb6342b...30f430`](./contracts/ethereum-1/0xb6342b5b98e21b53e856987e4251453c3030f430/) | JAN2022Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc469c3...6cd7a8`](./contracts/ethereum-1/0xc469c31d90947cc030a2198cbc982ccf3c6cd7a8/) | JAN2023Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fd001...f6422f`](./contracts/ethereum-1/0x8fd0017de5b2365bff751f83fdf9dab721f6422f/) | JAN2024Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d68d6...f33566`](./contracts/ethereum-1/0x9d68d6a2b4442715d4e5fe9178cd4b22f1f33566/) | JAN2025Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb35f99...c6e09f`](./contracts/ethereum-1/0xb35f9915c7a8de95fae220e8c4c2f9624fc6e09f/) | JUL2021Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfc9afc...5500b2`](./contracts/ethereum-1/0xfc9afca881585c423edc6658b22a8ec6095500b2/) | JUL2022Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x577bd4...677565`](./contracts/ethereum-1/0x577bd40697bf152a0d56dcc424ab834081677565/) | JUL2023Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe49c91...64ccf1`](./contracts/ethereum-1/0xe49c917acd650a988bd37ef559dc276cf864ccf1/) | JUL2024Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd793da...1b3fcc`](./contracts/ethereum-1/0xd793da244b0d247fb6bf00f7489b229a171b3fcc/) | JUN2021Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x534bd3...58fc08`](./contracts/ethereum-1/0x534bd3476b748d034d2943614942bf84e558fc08/) | JUN2022Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3829f0...948384`](./contracts/ethereum-1/0x3829f0da1f7ad3897b0a3a4d03e619f566948384/) | JUN2023Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbdd026...948553`](./contracts/ethereum-1/0xbdd02682c3d216c16fa555a4323d2df465948553/) | JUN2024Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x463999...31adac`](./contracts/ethereum-1/0x463999d48e2a7f1b8552ffdf73735dac5131adac/) | MAR2021Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a6645...81be15`](./contracts/ethereum-1/0x8a664594737911c1061ffc0a47b365655781be15/) | MAR2022Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8802c7...5c17f1`](./contracts/ethereum-1/0x8802c724e7005bfcf5c43bd72a184a600a5c17f1/) | MAR2023Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe78e83...e3a673`](./contracts/ethereum-1/0xe78e833631038353048a11fdd98fd90ea7e3a673/) | MAR2024Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc782be...718c0e`](./contracts/ethereum-1/0xc782be9a5092aae8fe0fc8701b58a678db718c0e/) | MAY2021Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3d650...6db0a2`](./contracts/ethereum-1/0xe3d650af7df6333eefb6fa2e4c46296d926db0a2/) | MAY2022Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd6a5f6...592810`](./contracts/ethereum-1/0xd6a5f65d688ff89d06f9643997fd10786a592810/) | MAY2023Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc13523...e99f61`](./contracts/ethereum-1/0xc135232368b84a47e32338b859571c481ee99f61/) | MAY2024Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48c9f2...86e5fa`](./contracts/ethereum-1/0x48c9f2f01b1a4f43172159f55c752c3a4c86e5fa/) | Migrations | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc03fc0...c60c06`](./contracts/ethereum-1/0xc03fc0fafee684015c42093245afe3f678c60c06/) | NOV2021Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x508cd8...4040a9`](./contracts/ethereum-1/0x508cd8776fd1800edb1eff31deca7493c84040a9/) | NOV2022Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3acca6...a48710`](./contracts/ethereum-1/0x3acca6587dac14ded598e772b801c3ad6aa48710/) | NOV2023Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ab080...717763`](./contracts/ethereum-1/0x5ab080164bf344d188b25314ced199dcce717763/) | NOV2024Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9cedd5...03c2c4`](./contracts/ethereum-1/0x9cedd5867ad6fb9ed0f1bba84e6430b45c03c2c4/) | OCT2021Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcfeb19...cfa852`](./contracts/ethereum-1/0xcfeb191494a4b6b3849e71c6d16e9ca636cfa852/) | OCT2022Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f5cac...084a8d`](./contracts/ethereum-1/0x7f5cace9652ef3875131470da15f28ae7c084a8d/) | OCT2023Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ac275...0c5a77`](./contracts/ethereum-1/0x0ac27564b09ed524b5c7af2daffb9829d20c5a77/) | OCT2024Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x330539...3b3119`](./contracts/ethereum-1/0x3305399e1954441300138f71fdfe96a8943b3119/) | OrderValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78b573...04de75`](./contracts/ethereum-1/0x78b5731afa14bf0f023f803220a6c24edf04de75/) | OutcomeReporter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a69fd...6859bc`](./contracts/ethereum-1/0x8a69fde4b7ccb0e1bc515fda13b97bf7736859bc/) | SEP2021Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5083b3...0e3e60`](./contracts/ethereum-1/0x5083b37dab6825705bfaed8cae77c9dcf40e3e60/) | SEP2022Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f5589...999e19`](./contracts/ethereum-1/0x4f55893f65261e08b8df6290676f68b891999e19/) | SEP2023Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe28332...5c454c`](./contracts/ethereum-1/0xe28332068ea01a7ec27a4cc60a87484a925c454c/) | SEP2024Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87d712...76452e`](./contracts/ethereum-1/0x87d712688a706d4343704eeb382cb72abe76452e/) | SuperAdminRole | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2571e3...d974fc`](./contracts/ethereum-1/0x2571e3232ea10140b676c42b4bd1956c08d974fc/) | SX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x309ef6...d07c41`](./contracts/ethereum-1/0x309ef6c302f4b617a6723a8a26d9bb2503d07c41/) | SXNetwork | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe8f92b...b57eb3`](./contracts/ethereum-1/0xe8f92b2aa53639319c67498ef955345fa1b57eb3/) | SXNTokenClaim | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e8f79...8553f3`](./contracts/ethereum-1/0x8e8f796146f3767c770d27edf43b6190848553f3/) | SystemParameters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60e8aa...e63bb5`](./contracts/ethereum-1/0x60e8aa8a997da2c58bc9894aaa08a28524e63bb5/) | TokenTransferProxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xde4728...94296f`](./contracts/ethereum-1/0xde4728956c0f86450a604335c8787a540494296f/) | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 66 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 65 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
