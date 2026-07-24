# Agentic Audit Brief: Integral

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Integral (`integral`)
- Website: [https://integral.link/](https://integral.link/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, ethereum
- Contract surface: 213 unique implementations (214 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $405,364.96
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Integral. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, ethereum. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 22 contracts are derived from known codebases. 22 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x048f0e7ea2cfd522a4a058d1b1bdd574a0486c46`, chain 1)
- UnnamedContract (`0x29b57d56a114ae5be3c129240898b3321a70a300`, chain 1)
- UnnamedContract (`0x2fe16dd18bba26e457b7dd2080d5674312b026a2`, chain 1)
- UnnamedContract (`0x37f6df71b40c50b2038329cabf5fda3682df1ebf`, chain 1)
- UnnamedContract (`0x43f0e5f2304f261dfa5359a0b74ff030e498d904`, chain 1)
- UnnamedContract (`0x61fa1cee13ceeaf20c30611c5e6da48c595f7db2`, chain 1)
- UnnamedContract (`0x6ec472b613012a492693697fa551420e60567ea7`, chain 1)
- UnnamedContract (`0xbdbcdfbca3b6eb90f251b41806a40569c6eb18cd`, chain 1)
- UnnamedContract (`0xbee7ef1adfaa628536ebc0c1ebf082dbdc27265f`, chain 1)
- UnnamedContract (`0xc480b33ee5229de3fbdfad1d2dcd3f3bad0c56c6`, chain 1)
- UnnamedContract (`0xd17b3c9784510e33cd5b87b490e79253bcd81e2e`, chain 1)
- UnnamedContract (`0xd4d2140ed70dcf8794a986f0cfd07560ee738c71`, chain 1)
- UnnamedContract (`0xd66f214fb49f81ac5610e0339a351d7e1c67c35e`, chain 1)
- UnnamedContract (`0x24e24acd861642b4244bb1297d8944d84c2e9625`, chain 42161)
- UnnamedContract (`0x3c6951fdb433b5b8442e7aa126d50fbfb54b5f42`, chain 42161)
- UnnamedContract (`0x4bca34ad27df83566016b55c60dd80a9eb14913b`, chain 42161)
- UnnamedContract (`0x7a0f899ef730fe178e0574b8dab4440ca336e415`, chain 42161)
- UnnamedContract (`0x7b96662d4dbbf6894a888ba53afbe2f98359c973`, chain 42161)
- UnnamedContract (`0xf31778748b3364fc43d6ab6aac4f52e2c29b6353`, chain 42161)
- UnnamedContract (`0xfa5aa52f6b5baf76bd095504ad097e7d5bb9a88a`, chain 42161)
- TwapFactory (`0x717ef162cf831db83c51134734a15d1ebe9e516a`, chain 42161)
- TwapPair (`0x045950a37c59d75496bb4af68c05f9066a4c7e27`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 22/22 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 22 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 191 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 22 of 213 unique; 191 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/25
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 188
- Unique implementations: 213
- Raw deployments: 214
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

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddLiquidity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09ca90fe99b39fb715e5a77f79fdd1a33597d93d` | ⚠️ Unaudited |
| BuyHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1412524711d58c4927de00446682aabb3f33c6e5` | ⚠️ Unaudited |
| ExecutionHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x057d2e0b82896344cb06f05da7b7ca973d25afda` | ⚠️ Unaudited |
| IntegralDelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22812ea96a0047f3e19769256c2f5374e486606b` | ⚠️ Unaudited |
| IntegralMerkleTimeRelease | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aa7aa9e0d24417992e6af8ec014843201554e37` | ⚠️ Unaudited |
| IntegralOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dea32afe46508bc786215660e667ba8302e14c1` | ⚠️ Unaudited |
| IntegralOracleV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x289596138e443a19ff0ca7486dbe7822e72fff16` | ⚠️ Unaudited |
| IntegralPriceReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75e4955dd2b608eb7a821eefcbbacb5f9dc978af` | ⚠️ Unaudited |
| IntegralStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36bd665392236b20bd42e161f02bf0ae1d9441ff` | ⚠️ Unaudited |
| IntegralTimeRelease | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x657dfb33fb88308fa1335b222700322f3ad54538` | ⚠️ Unaudited |
| IntegralToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bc96017dccaca53601d92125c5c6db81d000da5` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaec732f0bfebf15c2f41b62ec571168be82bb1f8` | ⚠️ Unaudited |
| Orders | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x033f27c32ed52f31163189fc2f5e4cbf2a650b08` | ⚠️ Unaudited |
| TokenShares | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1441f0c929fdcb2d13d35d892ebca928a45b9d79` | ⚠️ Unaudited |
| TwapDelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x010876b123810718fa4d93a8ded0bcdf919c436b` | ⚠️ Unaudited |
| TwapFactory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387584 | `0x717ef162cf831db83c51134734a15d1ebe9e516a` | ⚠️ Unaudited |
| TwapFactoryGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0800fcf3d8b46d56510f8360a4a4d9301cd78d91`; arbitrum `0x0dea32afe46508bc786215660e667ba8302e14c1` | ⚠️ Unaudited |
| TwapLPTokenRewarderL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4b40336649718a76cb2b882968fc82a6048714a` | ⚠️ Unaudited |
| TwapLPTokenRewarderTokenTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdb8c9bcc43c71e07415bc90904e2be289b65d46c` | ⚠️ Unaudited |
| TwapOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1addb93a08a3c79a8f115706a3e30d25c2b837ee` | ⚠️ Unaudited |
| TwapOracleV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a9934f099a877736cf1cd6a22ab8b903bc62379` | ⚠️ Unaudited |
| TwapPair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387567 | `0x045950a37c59d75496bb4af68c05f9066a4c7e27` | ⚠️ Unaudited |
| TwapReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5c08263c1d2c9651ea6d91a9908460e40095f7c` | ⚠️ Unaudited |
| TwapRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e83e4273efb4128a8c15809c97071d87482406c` | ⚠️ Unaudited |
| WithdrawHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19f6bc0755fd4a465b3961fb335d6e55ab8b9eaa` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (188)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387568 | `0x048f0e7ea2cfd522a4a058d1b1bdd574a0486c46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec2323adafbebc6c80257c7359692bcceb0b3f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1796b639d9159199f909c0a9f48428a75ce754a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b84ecc3c7fb7e753e61e4223059441e60e9d785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c857a1e3a9687dd788a1b3921de34210708991e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dbc623da3f6bf0d92dff1b59c72288c3e6d23af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22f37b3a20a62c314979d37624d730babc2dbdc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24b2d6c379d30113282f17b5dd1661b3dc17dede` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387569 | `0x29b57d56a114ae5be3c129240898b3321a70a300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aa8cc5cb2b19799ee300ebd25e153c38f901f7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b93b9abfa3c3377330fd45f9525d01dd9b8c020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c66ea3f4d8d056a20ffa14fcfc7956bbefeb5fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fbf594fe41625f554080b9a0477686786ba7bfe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387570 | `0x2fe16dd18bba26e457b7dd2080d5674312b026a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30b96462b08519315c79697c1274c2a623a9c0f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33b1ee377d97ef58b5cba81e69afdb2a4008dbb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x350232f55a38254320c0200c216ac899f6808014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35cb375799b28c8d6b7c5c8d494ed180ae2e60cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3661a53b76b3ac0eb0bc454b87df434762f045e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387571 | `0x37f6df71b40c50b2038329cabf5fda3682df1ebf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a09fa6c7cb82fc94c377087cf59ec9529094e61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3eedc524c234a5b72c09a4b052e7da695e9e7713` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x412da11751b0a36d03b060890f4e41b7ce32971e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41d3b774f2533629dab4d0a0d1c198422aaf6242` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42ac95f3dd079aaee572fec9704a51c449879d6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387572 | `0x43f0e5f2304f261dfa5359a0b74ff030e498d904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x465e0b6518603e0d75b4737dac052845cf855925` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48c1a83c9496f0d6f0000b6d7f78c7b23f9e9c5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49a4d1d76c8a478706ea0ef5bc4592f2e6ee683b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a1dbc839b4ebad8db9058e856e90cb41dffce1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a95f34078254bc82b64b8ac9040e375d8f5d6aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b20626f774b8945797d7e0cfbf273265afe458c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b4de1fa81446602fd86192ce1fb7ebc49b050a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b5324b6b73714a2f2f1c6691d5108ee7b1f612f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ce38a34c5b101dfb1d04d2a2feef956239fdcbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d6740c0224e4ae4d9cb5b4900435d768dbff204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e954ad5dff8ffc37dece524df11b7d303ffc7e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5073708f735bc0948f55cb604a44ae382561a92f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51ea69ec87ba5282c2b20d177dc71f907fec1b8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x523efe16f074b33addae23dbcb1bfa25761b91be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x538cffecf85f5232511f7e9204f1dee84fcca9bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5474bbeedf0e33f248ec6a05f50b94c9c6b8a59f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x555b43aaaf8673a9306c254bc18ef9c6ca03227e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x568723f044b1e1e24f7058bcdeaa3cc1387fbb42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x580de7dfdf1ed5cce84dc113ffb1d30d3ba9e195` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5adbc8e7458f5ba581bd8d3f4ec46cd765a6706b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d0434d41c77e4d9a858000f3939c0c4a05b0e26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6195015b38773f468dd43620dd5a64e9bb63c2e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387573 | `0x61fa1cee13ceeaf20c30611c5e6da48c595f7db2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6336788a85f54d8856782d58c1ca63c7d3844531` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6402d7909d5052df45c3faf6915eac5b9a127d20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64d492d658bef32ed2e422d317bd66a4380340d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66bc3ee5b95f45cc564cc494de74af53802cc250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67b9857211717184059de923e4c7038c80decf18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a16630e78f95eebb11a74de0ba1503b9d0984d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b225b3797892c6582a06d17bcfe0a96f0b9087c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c080b1b01e941f8c761973886dc425dbacab04d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387574 | `0x6ec472b613012a492693697fa551420e60567ea7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6edc38c9e4c49019cc8b712c6d96377dce0b8b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f3014c58d8c2699c2ac94ab99691bf4bc64ce58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70739a5450a5465ec435266d9131abd1666d4274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70dd6c4ac567285e3195cb8faccf05a784f35797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x717ef162cf831db83c51134734a15d1ebe9e516a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77b1e5d58247bc3300a8e646b018fcebfee5a59c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x782534550e2553a42cdff8d5a94066d8c7b6729b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ed8eb6ed3d68b921306dc34847ab8213ebb8fc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80246ac7a8f51d61856a1f62b2df8ad0fcee24d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x832d9aa12e9b3593d9b9c7f3e28ec531dc083f34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x842362006863c9bf35a2b7397c3c6df051dc4c4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x851456ebee49c8a2a4dd66fe3d19c431dd8f56ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x851cb798b29560188bd0f87ef945154bbb3971c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85204098ad33da81fac67bece54ad4107bdd7442` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85fd81ec651d69c692cd6173aba425e88a2ae94a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x860ce7c7c35c297513d27fc1a3e5c01396d6842a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8705456e062369ea747a3dbd8e060dd047e3d24c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87367d3ca8468b9c077043139225e20c590e22d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8743cc30727e9e460a5e69e217893f42dfad1650` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87f12125e628c6ad487b2213db1ca376b3d20538` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c619390beaebd818e3861de93e52f42303ffc83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c8582a6685367b9bf6b2c329fc34c2126fc81b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90477da311c24db29e0f50d869e4abe0820ecae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99e35d0a557fd7966bca0efc71e384faaf13c9d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c701d158058b6b195fae26c9f05d3b5f17fde10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cb505f2b41aa426257ed2a0bba005fff0af9e9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e8b626d0f79df146b2ac722fd1080e0c810a95f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa12a0ab13e43c3f9a501be4b809afbb639113320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa17e1d78f4f159294b851d44879b9289f074cea7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa18dfd4f5097d946a182f7c0960c4590fe4909f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa33efea216b31f7c16697654fbd8d6c857965d96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4bea71eb0f3b20cf672b4e4784099dface0533c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa567cbeca45ed0694850753d3572c92602246f1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7e989c0c0e2510ed56c0dd7b5720e7ce8543754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf780de01dc9c6ff4c29c6556b4666e852951584` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafff044da328739b934cd8afc0bd19d06f89f9b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0abc66f199fb295dc3f6e968e8ba0db03821102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb28c804e3dacff80701bbbafd106dbfb416a5168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb291730099d3ac9975abd4003ba3bd47401fd2fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6a9ebf596729969612a3888af55330b603dac9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb859c55565d4314218394b3632f1ba95a9e78965` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba2c125565b5db2e36725a1072b5c11380c632ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb41a701d5d91efa8c5718d66113c3948d00ad3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbe23abcec15428916ecfb3fd121296a914413a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387575 | `0xbdbcdfbca3b6eb90f251b41806a40569c6eb18cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387576 | `0xbee7ef1adfaa628536ebc0c1ebf082dbdc27265f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf3a77604f290b777f2d7eaec613751304508f37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc13d8a028a41a5b24da8f672770a5d595e4bbaf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc31fe768e2bb210b268fb09aa59d085d7b5cc876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3a99a855d060d727367c599ecb2423e0bebee24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387577 | `0xc480b33ee5229de3fbdfad1d2dcd3f3bad0c56c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6342b505d8c1f32883ad85af65402ce160b1ab9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc64a01a0072e1d75170086e9cac458e6126228cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6e93bc0d07907a521a4df64e9aa5da84447d557` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8805cebd927941a3b26e2edced20d666fb118ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9c5f71a9dc5240a2b05f26b0b157d3a785ef4d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb1620778a758e9e7ab2de567ecf3fbbaec8f71e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387578 | `0xd17b3c9784510e33cd5b87b490e79253bcd81e2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd25c6da73adbbb68508778621621568e07a1f284` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387579 | `0xd4d2140ed70dcf8794a986f0cfd07560ee738c71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd502f487e1841fdc805130e13eae80c61186bc98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387580 | `0xd66f214fb49f81ac5610e0339a351d7e1c67c35e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe02c42a6a5099430834893be473c6a8452adb90b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe85fcb42c37a3856dc503a6a896072b841487d84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe92b1734fc37f8acc950d0d13a41475372958730` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe95fee72450bac57ed45749c8c61829ecea5d299` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe96f5a2680981aec61c4980f2f7b9ad666698e61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb244fb424b56ccb96d42bd1983fb0d67037b27e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf422b267b1d145e373b7b2f0e313f4ae8e003059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4418d9fe76a788f2868a558dd216549ad2d869b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5352c5035344d1ac36d2e4c2b6a237b13e82ffc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7a1a407667e5f59791ea082b78ed40b09fc32cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc165621ae25a56c16441cb2328628a836ab04cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcdd9b584d38fbceecd9add2b7d920bf6e8bbd1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfded703178fac52799320bc0244aed7dde0b330f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff407b033077b5cabdef809e953cadbe4b322126` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffc0eac1a1ae79c697607229aca43ef422625a40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ac75de41e50010a59296a3917a00de397f8e418` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0edc96c6070fef121cb4a1af50fc8e02fe6a8486` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x164937c5bfd4d4807855bb4b3f284db8bfe5b647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1724fe9888ff11b7ec6b3d0287676e903cb2304f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1796b639d9159199f909c0a9f48428a75ce754a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a983ca929f75b2c699a61d2618dac5e2cd84602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c7154c40b07d434c45929fcb027f7813ec2708c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387581 | `0x24e24acd861642b4244bb1297d8944d84c2e9625` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x27fb8d961bd2fde5c1c1abe629995c0d6b3983f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29965e2b89afaa6257ace7963172e259e0739dad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x33fa0602cf504a896b874d417a802170c8e66975` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c2fc28b0fd0ac4f2603866007ee88e2c1b627e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387582 | `0x3c6951fdb433b5b8442e7aa126d50fbfb54b5f42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3dcd2c0427894d057942749d60bd79f93a35f868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44366f0efc3ba7080baae5174265e2239cd907c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4507f5292fd6f2458ed8777039bb2c5b85483a79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387583 | `0x4bca34ad27df83566016b55c60dd80a9eb14913b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c435d01cea5ef0ce54351878e8169203fdce39b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x635e1edea94eda4afcb5ec404c029257ceecf064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6bfed197fb03b56588b653b10f294ac6ddf5d0a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6caf97d27abcd37f1ff26dee618eb0d7003ab839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6cfd49860757c06e5efcd0e88bbb1ebbb890d1bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e5b2798c7ccd502306b6e685d0fccebad957e75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7225c9bd588c8b2e17b344d60b65a41a4da588d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77d7d1c3d2efb641cba6795ebf18b55f45470000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387585 | `0x7a0f899ef730fe178e0574b8dab4440ca336e415` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387586 | `0x7b96662d4dbbf6894a888ba53afbe2f98359c973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7f2ff401faa8d7e6a6e971f25781839591128244` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x888cc9f7a813e055bd8ea8bb74c808c7febcbae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b892a99de54b2b9e44c1f2c03a23789118053c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8bfed1e49610576f0bd2a83540aecac5a1b8819d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9e47452696174bdcfb7db8575c4b079dfda8b102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa12a0ab13e43c3f9a501be4b809afbb639113320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa1f563cc7da98a87983aec5d5d3dfdb53ef4c974` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa400bad76f6bc487ef6acfcda3d68edd2a513d2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa991c8a6113fc30270b1ef7f4a89d2628796907d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb0abc66f199fb295dc3f6e968e8ba0db03821102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb0cdb1b55bd52afa3fb15751cc83599c7952d38f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc1963430691708bee5d24b4e7d66ca8c9191a208` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc667daa1b33485a5ef1705750819b60199607ee1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc7903ce6cfae211a0cbbcf1a8d721ee71a297466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc8e061d62fbaad5c9bea74fe5d295bdddfee1892` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd113ce440674b2d9e9f71f41070af577c04bd87a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe340dd73f7fde9ac36f15be4f61f2c91566755ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4699fd99766e273ffa6d22a6ab9c9f2cba0314d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6340418ff0e9d5dd00528c940e6f71e8caded94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe8009610734842455289e255349db7f14e90636b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeedc27a4699f85dd4242b4c029c504a72df3ceb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387587 | `0xf31778748b3364fc43d6ab6aac4f52e2c29b6353` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf5c1ee7be0bbe1d77158b114dc77d8a94f2fec02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf7678a34474e477f012527f9bf71069f202274f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387588 | `0xfa5aa52f6b5baf76bd095504ad097e7d5bb9a88a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe70d9211aaadfb4465958a943dde04c5ebc68e6` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 169
- Live contracts: 0
- Unknown liveness contracts: 169
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=169

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0ac75de41e50010a59296a3917a00de397f8e418` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0dea32afe46508bc786215660e667ba8302e14c1` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0edc96c6070fef121cb4a1af50fc8e02fe6a8486` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x164937c5bfd4d4807855bb4b3f284db8bfe5b647` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1724fe9888ff11b7ec6b3d0287676e903cb2304f` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1796b639d9159199f909c0a9f48428a75ce754a3` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1a983ca929f75b2c699a61d2618dac5e2cd84602` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1c7154c40b07d434c45929fcb027f7813ec2708c` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x27fb8d961bd2fde5c1c1abe629995c0d6b3983f9` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x29965e2b89afaa6257ace7963172e259e0739dad` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x33fa0602cf504a896b874d417a802170c8e66975` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3c2fc28b0fd0ac4f2603866007ee88e2c1b627e7` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3dcd2c0427894d057942749d60bd79f93a35f868` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x44366f0efc3ba7080baae5174265e2239cd907c9` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4507f5292fd6f2458ed8777039bb2c5b85483a79` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5c435d01cea5ef0ce54351878e8169203fdce39b` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x635e1edea94eda4afcb5ec404c029257ceecf064` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6bfed197fb03b56588b653b10f294ac6ddf5d0a9` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6caf97d27abcd37f1ff26dee618eb0d7003ab839` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6cfd49860757c06e5efcd0e88bbb1ebbb890d1bf` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6e5b2798c7ccd502306b6e685d0fccebad957e75` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7225c9bd588c8b2e17b344d60b65a41a4da588d2` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x77d7d1c3d2efb641cba6795ebf18b55f45470000` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7f2ff401faa8d7e6a6e971f25781839591128244` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x888cc9f7a813e055bd8ea8bb74c808c7febcbae3` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8b892a99de54b2b9e44c1f2c03a23789118053c0` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8bfed1e49610576f0bd2a83540aecac5a1b8819d` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9e47452696174bdcfb7db8575c4b079dfda8b102` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa12a0ab13e43c3f9a501be4b809afbb639113320` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa1f563cc7da98a87983aec5d5d3dfdb53ef4c974` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa400bad76f6bc487ef6acfcda3d68edd2a513d2a` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa991c8a6113fc30270b1ef7f4a89d2628796907d` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb0abc66f199fb295dc3f6e968e8ba0db03821102` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb0cdb1b55bd52afa3fb15751cc83599c7952d38f` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc1963430691708bee5d24b4e7d66ca8c9191a208` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc667daa1b33485a5ef1705750819b60199607ee1` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc7903ce6cfae211a0cbbcf1a8d721ee71a297466` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc8e061d62fbaad5c9bea74fe5d295bdddfee1892` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd113ce440674b2d9e9f71f41070af577c04bd87a` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe340dd73f7fde9ac36f15be4f61f2c91566755ae` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe4699fd99766e273ffa6d22a6ab9c9f2cba0314d` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe6340418ff0e9d5dd00528c940e6f71e8caded94` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe8009610734842455289e255349db7f14e90636b` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xeedc27a4699f85dd4242b4c029c504a72df3ceb1` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf5c1ee7be0bbe1d77158b114dc77d8a94f2fec02` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf7678a34474e477f012527f9bf71069f202274f0` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfe70d9211aaadfb4465958a943dde04c5ebc68e6` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0ec2323adafbebc6c80257c7359692bcceb0b3f1` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1796b639d9159199f909c0a9f48428a75ce754a3` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1b84ecc3c7fb7e753e61e4223059441e60e9d785` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1c857a1e3a9687dd788a1b3921de34210708991e` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1dbc623da3f6bf0d92dff1b59c72288c3e6d23af` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x22f37b3a20a62c314979d37624d730babc2dbdc2` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x24b2d6c379d30113282f17b5dd1661b3dc17dede` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2aa8cc5cb2b19799ee300ebd25e153c38f901f7e` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2b93b9abfa3c3377330fd45f9525d01dd9b8c020` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2c66ea3f4d8d056a20ffa14fcfc7956bbefeb5fd` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2fbf594fe41625f554080b9a0477686786ba7bfe` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x30b96462b08519315c79697c1274c2a623a9c0f6` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x33b1ee377d97ef58b5cba81e69afdb2a4008dbb2` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x350232f55a38254320c0200c216ac899f6808014` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x35cb375799b28c8d6b7c5c8d494ed180ae2e60cb` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3661a53b76b3ac0eb0bc454b87df434762f045e0` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3a09fa6c7cb82fc94c377087cf59ec9529094e61` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3eedc524c234a5b72c09a4b052e7da695e9e7713` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x412da11751b0a36d03b060890f4e41b7ce32971e` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41d3b774f2533629dab4d0a0d1c198422aaf6242` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x42ac95f3dd079aaee572fec9704a51c449879d6d` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x465e0b6518603e0d75b4737dac052845cf855925` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x48c1a83c9496f0d6f0000b6d7f78c7b23f9e9c5a` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x49a4d1d76c8a478706ea0ef5bc4592f2e6ee683b` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4a1dbc839b4ebad8db9058e856e90cb41dffce1f` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4a95f34078254bc82b64b8ac9040e375d8f5d6aa` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4b20626f774b8945797d7e0cfbf273265afe458c` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4b4de1fa81446602fd86192ce1fb7ebc49b050a8` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4b5324b6b73714a2f2f1c6691d5108ee7b1f612f` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4ce38a34c5b101dfb1d04d2a2feef956239fdcbc` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4d6740c0224e4ae4d9cb5b4900435d768dbff204` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4e954ad5dff8ffc37dece524df11b7d303ffc7e2` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5073708f735bc0948f55cb604a44ae382561a92f` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x51ea69ec87ba5282c2b20d177dc71f907fec1b8b` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x523efe16f074b33addae23dbcb1bfa25761b91be` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x538cffecf85f5232511f7e9204f1dee84fcca9bd` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5474bbeedf0e33f248ec6a05f50b94c9c6b8a59f` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x555b43aaaf8673a9306c254bc18ef9c6ca03227e` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x568723f044b1e1e24f7058bcdeaa3cc1387fbb42` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x580de7dfdf1ed5cce84dc113ffb1d30d3ba9e195` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5adbc8e7458f5ba581bd8d3f4ec46cd765a6706b` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5d0434d41c77e4d9a858000f3939c0c4a05b0e26` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6195015b38773f468dd43620dd5a64e9bb63c2e3` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6336788a85f54d8856782d58c1ca63c7d3844531` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6402d7909d5052df45c3faf6915eac5b9a127d20` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x64d492d658bef32ed2e422d317bd66a4380340d7` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x66bc3ee5b95f45cc564cc494de74af53802cc250` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x67b9857211717184059de923e4c7038c80decf18` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6a16630e78f95eebb11a74de0ba1503b9d0984d0` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6b225b3797892c6582a06d17bcfe0a96f0b9087c` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6c080b1b01e941f8c761973886dc425dbacab04d` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6edc38c9e4c49019cc8b712c6d96377dce0b8b76` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6f3014c58d8c2699c2ac94ab99691bf4bc64ce58` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x70739a5450a5465ec435266d9131abd1666d4274` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x70dd6c4ac567285e3195cb8faccf05a784f35797` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x717ef162cf831db83c51134734a15d1ebe9e516a` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x77b1e5d58247bc3300a8e646b018fcebfee5a59c` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x782534550e2553a42cdff8d5a94066d8c7b6729b` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7ed8eb6ed3d68b921306dc34847ab8213ebb8fc8` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x80246ac7a8f51d61856a1f62b2df8ad0fcee24d2` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x832d9aa12e9b3593d9b9c7f3e28ec531dc083f34` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x842362006863c9bf35a2b7397c3c6df051dc4c4d` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x851456ebee49c8a2a4dd66fe3d19c431dd8f56ae` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x851cb798b29560188bd0f87ef945154bbb3971c1` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x85204098ad33da81fac67bece54ad4107bdd7442` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x85fd81ec651d69c692cd6173aba425e88a2ae94a` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x860ce7c7c35c297513d27fc1a3e5c01396d6842a` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8705456e062369ea747a3dbd8e060dd047e3d24c` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x87367d3ca8468b9c077043139225e20c590e22d9` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8743cc30727e9e460a5e69e217893f42dfad1650` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x87f12125e628c6ad487b2213db1ca376b3d20538` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8c619390beaebd818e3861de93e52f42303ffc83` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8c8582a6685367b9bf6b2c329fc34c2126fc81b5` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x90477da311c24db29e0f50d869e4abe0820ecae8` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x99e35d0a557fd7966bca0efc71e384faaf13c9d0` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9c701d158058b6b195fae26c9f05d3b5f17fde10` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9cb505f2b41aa426257ed2a0bba005fff0af9e9a` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9e8b626d0f79df146b2ac722fd1080e0c810a95f` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa12a0ab13e43c3f9a501be4b809afbb639113320` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa17e1d78f4f159294b851d44879b9289f074cea7` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa18dfd4f5097d946a182f7c0960c4590fe4909f4` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa33efea216b31f7c16697654fbd8d6c857965d96` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa4bea71eb0f3b20cf672b4e4784099dface0533c` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa567cbeca45ed0694850753d3572c92602246f1a` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa7e989c0c0e2510ed56c0dd7b5720e7ce8543754` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaf780de01dc9c6ff4c29c6556b4666e852951584` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xafff044da328739b934cd8afc0bd19d06f89f9b2` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb0abc66f199fb295dc3f6e968e8ba0db03821102` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb28c804e3dacff80701bbbafd106dbfb416a5168` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb291730099d3ac9975abd4003ba3bd47401fd2fd` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb6a9ebf596729969612a3888af55330b603dac9f` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb859c55565d4314218394b3632f1ba95a9e78965` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xba2c125565b5db2e36725a1072b5c11380c632ad` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbb41a701d5d91efa8c5718d66113c3948d00ad3d` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbbe23abcec15428916ecfb3fd121296a914413a5` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbf3a77604f290b777f2d7eaec613751304508f37` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc13d8a028a41a5b24da8f672770a5d595e4bbaf5` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc31fe768e2bb210b268fb09aa59d085d7b5cc876` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc3a99a855d060d727367c599ecb2423e0bebee24` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc6342b505d8c1f32883ad85af65402ce160b1ab9` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc64a01a0072e1d75170086e9cac458e6126228cc` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc6e93bc0d07907a521a4df64e9aa5da84447d557` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc8805cebd927941a3b26e2edced20d666fb118ba` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc9c5f71a9dc5240a2b05f26b0b157d3a785ef4d4` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcb1620778a758e9e7ab2de567ecf3fbbaec8f71e` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd25c6da73adbbb68508778621621568e07a1f284` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd502f487e1841fdc805130e13eae80c61186bc98` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe02c42a6a5099430834893be473c6a8452adb90b` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe85fcb42c37a3856dc503a6a896072b841487d84` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe92b1734fc37f8acc950d0d13a41475372958730` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe95fee72450bac57ed45749c8c61829ecea5d299` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe96f5a2680981aec61c4980f2f7b9ad666698e61` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeb244fb424b56ccb96d42bd1983fb0d67037b27e` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf422b267b1d145e373b7b2f0e313f4ae8e003059` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf4418d9fe76a788f2868a558dd216549ad2d869b` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf5352c5035344d1ac36d2e4c2b6a237b13e82ffc` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf7a1a407667e5f59791ea082b78ed40b09fc32cd` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfc165621ae25a56c16441cb2328628a836ab04cb` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfcdd9b584d38fbceecd9add2b7d920bf6e8bbd1c` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfded703178fac52799320bc0244aed7dde0b330f` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xff407b033077b5cabdef809e953cadbe4b322126` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xffc0eac1a1ae79c697607229aca43ef422625a40` | non_address_book | unknown | unknown | unverified | n/a | `0xab066655a991550debaec0aa1cdd4f3bd7bb5483` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Rendered PDF capture](https://assets.integral.link/Integral+Risk+Factor+Exhibit.pdf) | Immunefi | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/integral/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20588] Rendered PDF capture — no match: The document is a risk factor disclosure for Integral Tokens, not a smart contract audit report. No contracts, source files, or audit date are mentioned.
- [20589] Active Bug Bounty Program — no match: The document is a bug bounty program description, not an audit report. No contracts in scope are explicitly listed; only general categories like 'smart contracts' are mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x717ef162cf831db83c51134734a15d1ebe9e516a` | TwapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x045950a37c59d75496bb4af68c05f9066a4c7e27` | TwapPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 188 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=2
- Match method counts: n/a

Zero-match audit list:

- [20588] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
