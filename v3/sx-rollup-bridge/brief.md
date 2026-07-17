# Agentic Audit Brief: SX Rollup Bridge

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: SX Rollup Bridge (`sx-rollup-bridge`)
- Website: [https://sx.bet/wallet/bridge](https://sx.bet/wallet/bridge)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 146 unique implementations (149 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $11,467,761.79
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for SX Rollup Bridge in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 145 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 13
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/81
- Verified + Unaudited implementations: 81
- Verified by bytecode match: 0
- Unverified implementations: 65
- Unique implementations: 146
- Raw deployments: 149
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

### ⚠️ Verified + Unaudited (81)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AffiliateRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0f6b3225fff49e408adfb1baf561d34079d4330` | ⚠️ Unaudited |
| APR2021Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c0962df5dcba5374c77008d28219835dd5965ae` | ⚠️ Unaudited |
| APR2022Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bd591d6aab29bfd41fd97780337a0ea39448c82` | ⚠️ Unaudited |
| APR2023Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9e72ba0e8cfdddc130e22903dcd93fc61d6eee6` | ⚠️ Unaudited |
| APR2024Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf769c708469c40836b916dd7ce9bc2ccef49b5db` | ⚠️ Unaudited |
| AUG2021Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe90d5fef6f7fdb97dcb9ea0e18d4d615df34a591` | ⚠️ Unaudited |
| AUG2022Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4130eebfd8784fb65018d1771be5c43102f59f71` | ⚠️ Unaudited |
| AUG2023Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52a6da441321ce961d19bd39823c6839200cd193` | ⚠️ Unaudited |
| AUG2024Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49ee78939b248a037623f75c4169cc80213f5880` | ⚠️ Unaudited |
| CancelOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cda8770cc55cf2daba702483cb11aaa8c87fc73` | ⚠️ Unaudited |
| ChallengeManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x73cfa0f6ae141212115657ad91ad918e5d34d882` | ⚠️ Unaudited |
| DEC2021Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ffef36c74b8cda0699498487007e2f3083b5fb6` | ⚠️ Unaudited |
| DEC2022Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3822cbfe81f15251c5fb3eb27f6b9c22db5ca9af` | ⚠️ Unaudited |
| DEC2023Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0acdb3dcc1b38bc44860e763919c6092dd4f01a8` | ⚠️ Unaudited |
| DEC2024Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7768455ed769d5d16af0164a1a7da45625ac57df` | ⚠️ Unaudited |
| EIP712FillHasher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90c997f83885b4bd16d3ef8add73b9d901d49095` | ⚠️ Unaudited |
| ERC20Bridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa104c0426e95a5538e89131dbb4163d230c35f86` | ⚠️ Unaudited |
| ERC20Inbox | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xea83e8907c89bc0d9517632f0ba081972e328631` | ⚠️ Unaudited |
| ERC20Outbox | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb360b2f57c645e847148d7c479b7468abf6f707d` | ⚠️ Unaudited |
| ERC20RollupEventInbox | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9f1045201f8b9d0b12f6d1e40e8b8e6c047a81e3` | ⚠️ Unaudited |
| Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0efab66d0c050519c734bc8b7034ed68cb0f9323` | ⚠️ Unaudited |
| FEB2021Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35708e18f5c82fd52879d5898a5c25f9ce4259c1` | ⚠️ Unaudited |
| FEB2022Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11455d922171924ef0b1a459f091183237019354` | ⚠️ Unaudited |
| FEB2023Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8d495c6a824c74171ebaca1c5aaae2460a04251` | ⚠️ Unaudited |
| FEB2024Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09f7f7aa162c9f76bf756814910d51b92cf7025c` | ⚠️ Unaudited |
| FeeSchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8aedef4fb61094d0105b67f0678f02ab83d4cb8` | ⚠️ Unaudited |
| FillOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x868845f1dc7ccc15bce50d7c90e1e644971cfe10` | ⚠️ Unaudited |
| Fills | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d5323e0b722647dfe44512017f451dc1a2f3a8a` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xddb901e4e9a2e659aa1d6476d5d7a2833e7c3dfa` | ⚠️ Unaudited |
| JAN2022Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6342b5b98e21b53e856987e4251453c3030f430` | ⚠️ Unaudited |
| JAN2023Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc469c31d90947cc030a2198cbc982ccf3c6cd7a8` | ⚠️ Unaudited |
| JAN2024Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fd0017de5b2365bff751f83fdf9dab721f6422f` | ⚠️ Unaudited |
| JAN2025Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d68d6a2b4442715d4e5fe9178cd4b22f1f33566` | ⚠️ Unaudited |
| JUL2021Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb35f9915c7a8de95fae220e8c4c2f9624fc6e09f` | ⚠️ Unaudited |
| JUL2022Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc9afca881585c423edc6658b22a8ec6095500b2` | ⚠️ Unaudited |
| JUL2023Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x577bd40697bf152a0d56dcc424ab834081677565` | ⚠️ Unaudited |
| JUL2024Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe49c917acd650a988bd37ef559dc276cf864ccf1` | ⚠️ Unaudited |
| JUN2021Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd793da244b0d247fb6bf00f7489b229a171b3fcc` | ⚠️ Unaudited |
| JUN2022Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x534bd3476b748d034d2943614942bf84e558fc08` | ⚠️ Unaudited |
| JUN2023Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3829f0da1f7ad3897b0a3a4d03e619f566948384` | ⚠️ Unaudited |
| JUN2024Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdd02682c3d216c16fa555a4323d2df465948553` | ⚠️ Unaudited |
| L1OrbitERC20Gateway | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb4968c66becc8fb4f73b50354301c1adb2abaa91` | ⚠️ Unaudited |
| L1OrbitGatewayRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5f00446d785421d65b50c192d7129e3c3906438a` | ⚠️ Unaudited |
| MAR2021Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x463999d48e2a7f1b8552ffdf73735dac5131adac` | ⚠️ Unaudited |
| MAR2022Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a664594737911c1061ffc0a47b365655781be15` | ⚠️ Unaudited |
| MAR2023Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8802c724e7005bfcf5c43bd72a184a600a5c17f1` | ⚠️ Unaudited |
| MAR2024Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe78e833631038353048a11fdd98fd90ea7e3a673` | ⚠️ Unaudited |
| MAY2021Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc782be9a5092aae8fe0fc8701b58a678db718c0e` | ⚠️ Unaudited |
| MAY2022Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3d650af7df6333eefb6fa2e4c46296d926db0a2` | ⚠️ Unaudited |
| MAY2023Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6a5f65d688ff89d06f9643997fd10786a592810` | ⚠️ Unaudited |
| MAY2024Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc135232368b84a47e32338b859571c481ee99f61` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48c9f2f01b1a4f43172159f55c752c3a4c86e5fa` | ⚠️ Unaudited |
| NOV2021Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc03fc0fafee684015c42093245afe3f678c60c06` | ⚠️ Unaudited |
| NOV2022Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x508cd8776fd1800edb1eff31deca7493c84040a9` | ⚠️ Unaudited |
| NOV2023Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3acca6587dac14ded598e772b801c3ad6aa48710` | ⚠️ Unaudited |
| NOV2024Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ab080164bf344d188b25314ced199dcce717763` | ⚠️ Unaudited |
| OCT2021Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cedd5867ad6fb9ed0f1bba84e6430b45c03c2c4` | ⚠️ Unaudited |
| OCT2022Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfeb191494a4b6b3849e71c6d16e9ca636cfa852` | ⚠️ Unaudited |
| OCT2023Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f5cace9652ef3875131470da15f28ae7c084a8d` | ⚠️ Unaudited |
| OCT2024Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ac27564b09ed524b5c7af2daffb9829d20c5a77` | ⚠️ Unaudited |
| OrderValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3305399e1954441300138f71fdfe96a8943b3119` | ⚠️ Unaudited |
| OutcomeReporter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78b5731afa14bf0f023f803220a6c24edf04de75` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8606a55d105ef857f187c32ae0e9a168af8f497` | ⚠️ Unaudited |
| RollupAdminLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x36c6c69a6186d4475fc5c21181cd980bd6e5e11f` | ⚠️ Unaudited |
| Safe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xa4c325e25215c1fb2405eb28d81d2dfdbfc8d24c` | ⚠️ Unaudited |
| SEP2021Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a69fde4b7ccb0e1bc515fda13b97bf7736859bc` | ⚠️ Unaudited |
| SEP2022Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5083b37dab6825705bfaed8cae77c9dcf40e3e60` | ⚠️ Unaudited |
| SEP2023Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f55893f65261e08b8df6290676f68b891999e19` | ⚠️ Unaudited |
| SEP2024Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe28332068ea01a7ec27a4cc60a87484a925c454c` | ⚠️ Unaudited |
| SequencerInbox | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd80a805c86c14c879420ec6acb366d04d318fc0c` | ⚠️ Unaudited |
| SportX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99fe3b1391503a1bc1788051347a1324bff41452` | ⚠️ Unaudited |
| SuperAdminRole | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87d712688a706d4343704eeb382cb72abe76452e` | ⚠️ Unaudited |
| SX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2571e3232ea10140b676c42b4bd1956c08d974fc` | ⚠️ Unaudited |
| SX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xd26ea9134d0bd0534ed8e546e2d2c5184ab38a1a`; ethereum `0xf6db956538df64f7221a0cf807e15da00f50ea4a` | ⚠️ Unaudited |
| SXNetwork | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x309ef6c302f4b617a6723a8a26d9bb2503d07c41`; ethereum `0xbe9f61555f50dd6167f2772e9cf7519790d96624` | ⚠️ Unaudited |
| SXNTokenClaim | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8f92b2aa53639319c67498ef955345fa1b57eb3` | ⚠️ Unaudited |
| SystemParameters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e8f796146f3767c770d27edf43b6190848553f3` | ⚠️ Unaudited |
| TokenTransferProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60e8aa8a997da2c58bc9894aaa08a28524e63bb5` | ⚠️ Unaudited |
| UpgradeExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x44ec40d86b4643bd5110ed07be188f8473ad2d3a` | ⚠️ Unaudited |
| WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d7c2a11322416436f0827e7bbdb3ae40ba693f9` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xde4728956c0f86450a604335c8787a540494296f`; ethereum `0xfd8e8302519171670718d7a066c40082d22cbebf` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (65)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01af28275a3e914386761fa0c978f33fcb3d2ba1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x041670ff3ffda1da64bf54b5ae009eda19bab8a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08c53a3b8f02d81773a1f9f529e623549fcc2435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09365010860d3dac50da21c762ee0705b3e54eb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x093dc82d38459445e9152d35e4cd79d4d86a9f4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11c9c2ba8e1290184831c1ac9a070d6f0e8fee91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x179fc2063e3bc3f61fb931016604b2d3e91d9780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1983199e6e3c93c13a903fa13352f155ce393067` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d730f26293fc2f3495a8acb199b8726c24a6cde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x218e3eb698b7e6641ac82469ce3f4e8625470d26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23340e240eb31c65c88540971897b0b7794863a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28fd7cdcd2a0cd1cbbc0d3835a2375bc52e26193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2add68db8208399892cc4eaa215da90092ec079b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bd34a0ab6810b2a43a132cad6c88f6cdd0c6dfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37acc54582b433822100ba3e4d7890795a5abade` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37ec9aaaabaa14cfabdde471a13635b8a56186b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38aef22152bc8965bf0af7cf53586e4b0c4e9936` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x398995122d4c5215991c15c2c5efb96882695d1a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257718 | `0x3e96b0a25d51e3cc89c557f152797c33b839968f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fc10903f92a37ce2568e8bee3a4003e9e0b9c95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4109a2520f6def242658e46350cb288b0e8cf468` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41ec5a80db4bf0a50a037475ae4724f2acb6ccd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x481675d673864526d8dc365fd77748b5f8a8399d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4891f40a7e108eea40f63c186ca880e2110c27a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49046f66cabf79d458ac925eff56072fd7499538` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a507dcac2053a7eacdd1f3589f223caa29aaa1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a7a274feaac5c646c13a66b80b9475c728b8700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eeb63be15ec381df24ac5126659209165e033c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b02262a934f9795981ec1801375d865fb83107d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e5744fd9381f9fda9107b325bbac59c9e2da6bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61802102539cc50be7793ca972b1bb3b4f3dc49f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61b59c9bd23239861c12e5ecb64004ca8bd39931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x620ab4d9bd74fef2f68eeac36ec54398180b5a1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x672961f0253c69bca9d7f4325e47793d32af3d4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6abde3606968e08e5ad95e6faab497362b4153ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7010e7dad9e67093f0c4ced769449207b3b1d925` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7eabe502597e24abd456acd5caa3e4f81a2c5bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83e894599247b481a583b8fcb560de7a789c45a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84f7bfcc8de286c5668844fe88c8d6ae657a48e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c1f2ffc96020d9539b0489a4cb221b952ad2f0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9039a2f174ca7aff96c983cafb6eac356a87ede7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95b90dba0516fd2aa991a2f4afa7817546ffb06d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97e2878b4a4b1014c6477cb5f5fd1595206a1c9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b1d8300b8e71bf0fe14a699289927d4c9c6dad5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa21ac1436f7fcd43008c9473a78433339e222fca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6ea1ed4aec85df277fae3512f8a6cbb40c1fe7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadcc70c8ed258023101969933d208cff96378dc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb07043361e4e6079f101311865ca6d68a4ca4d75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1562b25c44f48250856306b9f5d202ed5b78792` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6cd10a879b0008d00f525cb514f17edf0e53a8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc077bcdb405f3fc53f6afe15821468b93e0c24d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc4fbba7d0e0f2a03113f42f5d3ae80d9b2ad55d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2d94821bd09753614d70ba05781d36902f9af8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddbbd448e5c4b102063c845e1456e38d8279636a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe40329de8f14fb6e905a3c87f0101d5f9a74cc66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5c7da5485626167942e6358c263e52d1425b1d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec2452b628a4193bdf3144d1895e214b3d88725d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeeebec924711751631f05775f4094571f36e858c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0890b331ac014de0d43a2ca883a538fa8981984` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf15885c79413f91d30b0e0c515c503f1fe0bec6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf859c91fec5eb3df899e644ab70348b144f59fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfacf5ffe5a98ac364fec689593b69bbfdf61f5ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb28cc6da271ad7931541c4b54a3514c98b9a412` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd92bd39aac1fd36075d900faa895c3ee16847b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd960a3ece6de268cc69c23aa34597ddc3f955e0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 78 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 65 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
