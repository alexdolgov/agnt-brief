# Agentic Audit Brief: Midas RWA

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Midas RWA (`midas-rwa`)
- Website: [https://midas.app](https://midas.app)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: 0g, base, bsc, ethereum, etherlink, katana, monad, oasis-sapphire, optimism, plasma, plume, rootstock, tac, xrpl-evm
- Contract surface: 187 unique implementations (187 raw deployments)
- Coverage basis: 0/132 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $113,502,415.22
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Midas RWA. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 132 contract row(s) across 0g, base, bsc, ethereum, etherlink, katana, monad, oasis-sapphire, optimism, plasma, plume, rootstock, tac, xrpl-evm. Structural roles: 132 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 132
- Structural roles: unclassified (132)
- Contract kinds: contract (132)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 187 contracts are derived from known codebases. 187 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- mAPOLLO Smart Contracts: Issuance vault (`0xc21511...0d5921`, chain 1)
- mAPOLLO Smart Contracts: mAPOLLO Token (`0x7cf9de...116c05`, chain 1)
- mAPOLLO Smart Contracts: mAPOLLO/USD Oracle (`0x84303e...b7ee4b`, chain 1)
- mAPOLLO Smart Contracts: Redemption Vault (`0x5aea6d...6af5c0`, chain 1)
- mBASIS Smart Contracts: Instant Redemption vault (`0x0d89c1...17d123`, chain 1)
- mBASIS Smart Contracts: Instant Redemption vault (`0xf804a6...969840`, chain 8453)
- mBASIS Smart Contracts: Instant Redemption vault (`0x02e58d...e5ffc6`, chain 42793)
- mBASIS Smart Contracts: Instant Redemption vault (`0x9b0d0b...ef8b5d`, chain 98866)
- mBASIS Smart Contracts: Issuance vault (`0xa8a5c4...a15d88`, chain 1)
- mBASIS Smart Contracts: Issuance vault (`0x80b666...8f7ce5`, chain 8453)
- mBASIS Smart Contracts: Issuance vault (`0x75c328...f9ae4a`, chain 42793)
- mBASIS Smart Contracts: Issuance vault (`0x8f38a2...3bf8dc`, chain 98866)
- mBASIS Smart Contracts: mBASIS Token (`0x2a8c22...88b656`, chain 1)
- mBASIS Smart Contracts: mBASIS Token (`0x1c2757...be92b2`, chain 8453)
- mBASIS Smart Contracts: mBASIS Token (`0x2247b5...d37ee4`, chain 42793)
- mBASIS Smart Contracts: mBASIS Token (`0x0c78ca...b66d78`, chain 98866)
- mBASIS Smart Contracts: mBASIS/USD Oracle (`0xe4f2ae...390d24`, chain 1)
- mBASIS Smart Contracts: mBASIS/USD Oracle (`0x6d62d3...4823b6`, chain 8453)
- mBASIS Smart Contracts: mBASIS/USD Oracle (`0x31d211...bd50a0`, chain 42793)
- mBASIS Smart Contracts: mBASIS/USD Oracle (`0x01d169...f72ef2`, chain 98866)
- mBASIS Smart Contracts: Standard Redemption vault (`0x19ab19...ca9f0b`, chain 1)
- mBTC Smart Contracts: Issuance vault (`0x10cc8d...f693bd`, chain 1)
- mBTC Smart Contracts: Issuance vault (`0x79a157...e32998`, chain 30)
- mBTC Smart Contracts: mBTC Token (`0x007115...ef7d9d`, chain 1)
- mBTC Smart Contracts: mBTC Token (`0xef8525...03fb53`, chain 30)
- mBTC Smart Contracts: mBTC/USD Oracle (`0xa537ef...a189ee`, chain 1)
- mBTC Smart Contracts: mBTC/USD Oracle (`0xa167bf...421821`, chain 30)
- mBTC Smart Contracts: Redemption Vault (`0x30d9d1...3efc1a`, chain 1)
- mBTC Smart Contracts: Redemption Vault (`0xe7a1a6...a40205`, chain 30)
- mEDGE Smart Contracts: Issuance vault (`0xfe8de1...c668cc`, chain 1)
- mEDGE Smart Contracts: Issuance vault (`0xdf7deb...326fd9`, chain 143)
- mEDGE Smart Contracts: Issuance vault (`0x72a931...800271`, chain 16661)
- mEDGE Smart Contracts: Issuance vault (`0x23de49...7a0ee2`, chain 98866)
- mEDGE Smart Contracts: mEDGE Token (`0xbb51e2...ab7a55`, chain 1)
- mEDGE Smart Contracts: mEDGE Token (`0x1c8ee9...0f50fa`, chain 143)
- mEDGE Smart Contracts: mEDGE Token (`0xa10277...db30ba`, chain 16661)
- mEDGE Smart Contracts: mEDGE Token (`0x690203...ed03ed`, chain 98866)
- mEDGE Smart Contracts: mEDGE/USD Oracle (`0x698da5...0406b7`, chain 1)
- mEDGE Smart Contracts: mEDGE/USD Oracle (`0x33f3cd...88271d`, chain 143)
- mEDGE Smart Contracts: mEDGE/USD Oracle (`0xc0a696...245447`, chain 16661)
- mEDGE Smart Contracts: mEDGE/USD Oracle (`0x7d5622...b7e82d`, chain 98866)
- mEDGE Smart Contracts: Redemption Vault (`0x9b2c5e...6af15d`, chain 1)
- mEDGE Smart Contracts: Redemption Vault (`0x2ce347...82c332`, chain 143)
- mEDGE Smart Contracts: Redemption Vault (`0x9dae50...0eb79b`, chain 16661)
- mEDGE Smart Contracts: Redemption Vault (`0xc87439...bc0f80`, chain 98866)
- mevBTC Smart Contracts: Issuance vault (`0xa6d60a...491e37`, chain 1)
- mevBTC Smart Contracts: mevBTC Token (`0xb64c01...5963dc`, chain 1)
- mevBTC Smart Contracts: mevBTC/USD Oracle (`0xffd462...474b65`, chain 1)
- mevBTC Smart Contracts: Redemption Vault (`0x2d7d5b...9b950c`, chain 1)
- mEVUSD Smart Contracts: Issuance vault (`0x545522...498c2a`, chain 1)
- mEVUSD Smart Contracts: Issuance vault (`0x5f09af...e55d61`, chain 8453)
- mEVUSD Smart Contracts: mEVUSD Oracle (`0x6f51d8...e83be6`, chain 1)
- mEVUSD Smart Contracts: mEVUSD Oracle (`0x4fe7f6...e8080f`, chain 8453)
- mEVUSD Smart Contracts: mEVUSD Token (`0x548857...92785b`, chain 1)
- mEVUSD Smart Contracts: mEVUSD Token (`0xccbad2...b7474a`, chain 8453)
- mEVUSD Smart Contracts: Redemption Vault (`0x9c3743...ac446f`, chain 1)
- mEVUSD Smart Contracts: Redemption Vault (`0x9bf00b...7ee359`, chain 8453)
- mf-ONE Smart Contracts: Issuance vault (`0x414384...a0c3de`, chain 1)
- mf-ONE Smart Contracts: mFONE Token (`0x238a70...e466ba`, chain 1)
- mf-ONE Smart Contracts: mFONE/USD Oracle (`0x8d51db...50e68c`, chain 1)
- mf-ONE Smart Contracts: Redemption Vault (`0x44b044...5fd19c`, chain 1)
- mFARM Smart Contracts: Issuance vault (`0x695fb3...850c81`, chain 1)
- mFARM Smart Contracts: mFARM Token (`0xa19f6e...f5eca6`, chain 1)
- mFARM Smart Contracts: mFARM/USD Oracle (`0x65df72...df039b`, chain 1)
- mFARM Smart Contracts: Redemption Vault (`0xf4f042...a7e600`, chain 1)
- mGLO Smart Contracts: Issuance vault (`0x2b7e9c...701df1`, chain 8453)
- mGLO Smart Contracts: mGLO Token (`0xfcc9cc...3a2584`, chain 8453)
- mGLO Smart Contracts: mGLO/USD Oracle (`0x6b593a...74fcbc`, chain 8453)
- mGLO Smart Contracts: Redemption Vault swapper (`0xa80f9b...018f18`, chain 8453)
- mGLOBAL Smart Contracts: Issuance vault (`0xce29c3...dddef1`, chain 1)
- mGLOBAL Smart Contracts: mGLOBAL Token (`0x743380...ef98a8`, chain 1)
- mGLOBAL Smart Contracts: mGLOBAL/USD Oracle (`0x66aa9f...f75e38`, chain 1)
- mGLOBAL Smart Contracts: Redemption Vault aave (`0x1e0fd6...bf20d7`, chain 1)
- mGLOBAL Smart Contracts: Redemption Vault swapper (`0xa0fc8b...82b01b`, chain 1)
- mHYPER Smart Contracts: Issuance vault (`0xba9fd2...f11024`, chain 1)
- mHYPER Smart Contracts: Issuance vault (`0xa603cf...d4286e`, chain 9745)
- mHYPER Smart Contracts: mHYPER OFT (`0x148c86...4581a0`, chain 1)
- mHYPER Smart Contracts: mHYPER OFT (`0x08bc5e...77f2df`, chain 143)
- mHYPER Smart Contracts: mHYPER Token (`0x9b5528...1191b9`, chain 1)
- mHYPER Smart Contracts: mHYPER Token (`0xd90f6b...95e4e7`, chain 143)
- mHYPER Smart Contracts: mHYPER Token (`0xb31bea...a75f8a`, chain 9745)
- mHYPER Smart Contracts: mHYPER/USD Oracle (`0x43881b...005f68`, chain 1)
- mHYPER Smart Contracts: mHYPER/USD Oracle (`0xf3bbd5...816584`, chain 143)
- mHYPER Smart Contracts: mHYPER/USD Oracle (`0xfc3e47...1a08f0`, chain 9745)
- mHYPER Smart Contracts: Redemption Vault (`0x6be2f5...366e98`, chain 1)
- mHYPER Smart Contracts: Redemption Vault (`0x880661...6cb77c`, chain 9745)
- mHyperBTC Smart Contracts: Issuance vault (`0xed22a9...3fe65e`, chain 1)
- mHyperBTC Smart Contracts: Issuance vault (`0x82dd60...7d7a53`, chain 30)
- mHyperBTC Smart Contracts: mHyperBTC OFT (`0xb67f81...4a445c`, chain 1)
- mHyperBTC Smart Contracts: mHyperBTC OFT (`0xe9977b...5bf874`, chain 143)
- mHyperBTC Smart Contracts: mHyperBTC Token (`0xc8495e...783085`, chain 1)
- mHyperBTC Smart Contracts: mHyperBTC Token (`0x7f71f0...ca3a3c`, chain 30)
- mHyperBTC Smart Contracts: mHyperBTC Token (`0xf7cf28...2892bc`, chain 143)
- mHyperBTC Smart Contracts: mHyperBTC/BTC Oracle (`0x335992...82517c`, chain 1)
- mHyperBTC Smart Contracts: mHyperBTC/BTC Oracle (`0xf940a1...978827`, chain 30)
- mHyperBTC Smart Contracts: mHyperBTC/BTC Oracle (`0x165d2e...20fd8c`, chain 143)
- mHyperBTC Smart Contracts: Redemption Vault (`0x16d4f9...7cdb67`, chain 1)
- mHyperBTC Smart Contracts: Redemption Vault (`0x4f4da2...b8b570`, chain 30)
- mHyperETH Smart Contracts: Issuance vault (`0x57b3be...9ecdab`, chain 1)
- mHyperETH Smart Contracts: mHyperETH Token (`0x5a4286...a2e0c1`, chain 1)
- mHyperETH Smart Contracts: mHyperETH/ETH Oracle (`0x5c81ee...08a0fd`, chain 1)
- mHyperETH Smart Contracts: Redemption Vault (`0x15f724...348c57`, chain 1)
- mM1-USD Smart Contracts: Issuance vault (`0x0f7e32...a8189e`, chain 1)
- mM1-USD Smart Contracts: mM1-USD Token (`0xcc5c22...9ed203`, chain 1)
- mM1-USD Smart Contracts: mM1-USD/USD Oracle (`0xad316a...a10702`, chain 1)
- mM1-USD Smart Contracts: Redemption Vault (`0x70ba32...ce1ffa`, chain 1)
- mMEV Smart Contracts: Issuance vault (`0xe09273...74704f`, chain 1)
- mMEV Smart Contracts: Issuance vault (`0x577617...0774bc`, chain 42793)
- mMEV Smart Contracts: Issuance vault (`0xe6f0c6...636d8c`, chain 98866)
- mMEV Smart Contracts: mMEV Token (`0x030b69...6a0bf3`, chain 1)
- mMEV Smart Contracts: mMEV Token (`0x5542f8...3fd5c8`, chain 42793)
- mMEV Smart Contracts: mMEV Token (`0x7d611d...ef7473`, chain 98866)
- mMEV Smart Contracts: mMEV/USD Oracle (`0x5f09af...e55d61`, chain 1)
- mMEV Smart Contracts: mMEV/USD Oracle (`0x077670...7bb516`, chain 42793)
- mMEV Smart Contracts: mMEV/USD Oracle (`0x4e5b43...852061`, chain 98866)
- mMEV Smart Contracts: Redemption Vault (`0xac14a1...34184d`, chain 1)
- mMEV Smart Contracts: Redemption Vault (`0x403a92...d58166`, chain 42793)
- mMEV Smart Contracts: Redemption Vault (`0x331af8...e7c3cc`, chain 98866)
- mRe7BTC Smart Contracts: Issuance vault (`0x5e1549...0e47f6`, chain 1)
- mRe7BTC Smart Contracts: mRe7BTC Token (`0x9fb442...9f661a`, chain 1)
- mRe7BTC Smart Contracts: mRe7BTC/USD Oracle (`0x9de073...eb8967`, chain 1)
- mRe7BTC Smart Contracts: Redemption Vault (`0x4fd4dd...4321b0`, chain 1)
- mRe7ETH Smart Contracts: Issuance vault (`0xc562f7...91225d`, chain 10)
- mRe7ETH Smart Contracts: mRe7ETH Token (`0xe7ba07...df21b3`, chain 10)
- mRe7ETH Smart Contracts: mRe7ETH/ETH Oracle (`0xcffe26...eb0e5e`, chain 10)
- mRe7ETH Smart Contracts: Redemption Vault (`0x2c8aee...854e6d`, chain 10)
- mRe7SOL Smart Contracts: Issuance vault (`0x175a9b...75268e`, chain 747474)
- mRe7SOL Smart Contracts: mRe7SOL Token (`0xc6135d...70d716`, chain 747474)
- mRe7SOL Smart Contracts: mRe7SOL/USD Oracle (`0x3e4b4b...b9837b`, chain 747474)
- mRe7SOL Smart Contracts: Redemption Vault (`0xe93e6c...2e7cda`, chain 747474)
- mRe7YIELD Smart Contracts: Issuance vault (`0xce0a29...924ac7`, chain 1)
- mRe7YIELD Smart Contracts: Issuance vault (`0xbd2ce9...dd2a69`, chain 239)
- mRe7YIELD Smart Contracts: Issuance vault (`0xbef85e...860753`, chain 42793)
- mRe7YIELD Smart Contracts: mRe7YIELD Token (`0x87c905...afb0cf`, chain 1)
- mRe7YIELD Smart Contracts: mRe7YIELD Token (`0x0a72ed...73d6f0`, chain 239)
- mRe7YIELD Smart Contracts: mRe7YIELD Token (`0x733d50...2f0160`, chain 42793)
- mRe7YIELD Smart Contracts: mRe7YIELD/USD Oracle (`0x0a2a51...722395`, chain 1)
- mRe7YIELD Smart Contracts: mRe7YIELD/USD Oracle (`0xbba185...d61738`, chain 239)
- mRe7YIELD Smart Contracts: mRe7YIELD/USD Oracle (`0x198932...6f3b8e`, chain 42793)
- mRe7YIELD Smart Contracts: Redemption Vault (`0x5356b8...565234`, chain 1)
- mRe7YIELD Smart Contracts: Redemption Vault (`0x911f9a...9d1d79`, chain 239)
- mRe7YIELD Smart Contracts: Redemption Vault (`0xb24056...30de90`, chain 42793)
- mROX Smart Contracts: Issuance vault (`0x511d88...1aede7`, chain 1)
- mROX Smart Contracts: mROX Token (`0x67e1f5...855c05`, chain 1)
- mROX Smart Contracts: mROX/USD Oracle (`0x7ff56c...2b54aa`, chain 1)
- mROX Smart Contracts: Redemption Vault (`0xc33dad...3c4b29`, chain 1)
- msyrupUSD Smart Contracts: Issuance vault (`0x5ae23d...77d1b7`, chain 1)
- msyrupUSD Smart Contracts: msyrupUSD Token (`0x202266...683464`, chain 1)
- msyrupUSD Smart Contracts: msyrupUSD/USD Oracle (`0x41c607...efa663`, chain 1)
- msyrupUSD Smart Contracts: Redemption Vault (`0x9f7dd5...e2f972`, chain 1)
- msyrupUSDp Smart Contracts: Issuance vault (`0x8493f1...73789a`, chain 1)
- msyrupUSDp Smart Contracts: msyrupUSDp Token (`0x2fe058...7d8e50`, chain 1)
- msyrupUSDp Smart Contracts: msyrupUSDp/USD Oracle (`0x337d91...895241`, chain 1)
- msyrupUSDp Smart Contracts: Redemption Vault (`0x71efa7...679c44`, chain 1)
- mTBILL Smart Contracts: Instant Redemption vault (`0x569d7d...c4f0ec`, chain 1)
- mTBILL Smart Contracts: Instant Redemption vault (`0x99d221...67d12f`, chain 30)
- mTBILL Smart Contracts: Instant Redemption vault (`0x2a8c22...88b656`, chain 8453)
- mTBILL Smart Contracts: Instant Redemption vault (`0xf939e8...15a7ee`, chain 23294)
- mTBILL Smart Contracts: Instant Redemption vault (`0x7f938d...53a3b2`, chain 42793)
- mTBILL Smart Contracts: Instant Redemption vault (`0x3ac6b2...91f897`, chain 98866)
- mTBILL Smart Contracts: Issuance vault (`0x993614...796683`, chain 1)
- mTBILL Smart Contracts: Issuance vault (`0xf454a5...6bc03c`, chain 30)
- mTBILL Smart Contracts: Issuance vault (`0x8978e3...ae1470`, chain 8453)
- mTBILL Smart Contracts: Issuance vault (`0xd7fe0e...95bdcc`, chain 23294)
- mTBILL Smart Contracts: Issuance vault (`0xd65bfe...a33a70`, chain 42793)
- mTBILL Smart Contracts: Issuance vault (`0xb05f6a...249224`, chain 98866)
- mTBILL Smart Contracts: mTBILL Token (`0xdd629e...54e438`, chain 1)
- mTBILL Smart Contracts: mTBILL Token (`0xdd629e...54e438`, chain 30)
- mTBILL Smart Contracts: mTBILL Token (`0xdd629e...54e438`, chain 8453)
- mTBILL Smart Contracts: mTBILL Token (`0xdd629e...54e438`, chain 23294)
- mTBILL Smart Contracts: mTBILL Token (`0xdd629e...54e438`, chain 42793)
- mTBILL Smart Contracts: mTBILL Token (`0xe85f2b...e30109`, chain 98866)
- mTBILL Smart Contracts: mTBILL/USD Oracle (`0x056339...6b2e5b`, chain 1)
- mTBILL Smart Contracts: mTBILL/USD Oracle (`0x0ca36a...131ae7`, chain 30)
- mTBILL Smart Contracts: mTBILL/USD Oracle (`0x70e58b...8b8422`, chain 8453)
- mTBILL Smart Contracts: mTBILL/USD Oracle (`0xf76d11...d4d0cf`, chain 23294)
- mTBILL Smart Contracts: mTBILL/USD Oracle (`0x80da45...41b7dd`, chain 42793)
- mTBILL Smart Contracts: mTBILL/USD Oracle (`0xb701ab...d2617b`, chain 98866)
- mTBILL Smart Contracts: Standard Redemption vault (`0xf6e51d...6d4517`, chain 1)
- mXRP Smart Contracts: Issuance vault (`0x30b598...0d924e`, chain 56)
- mXRP Smart Contracts: Issuance vault (`0x30fbc8...02f1bb`, chain 1440000)
- mXRP Smart Contracts: mXRP Token (`0xc8739f...fe9e34`, chain 56)
- mXRP Smart Contracts: mXRP Token (`0x06e0b0...3a3d47`, chain 1440000)
- mXRP Smart Contracts: mXRP/USD Oracle (`0x3bde0b...16e731`, chain 56)
- mXRP Smart Contracts: mXRP/USD Oracle (`0xff6478...3437af`, chain 1440000)
- mXRP Smart Contracts: Redemption Vault (`0x73685b...de8625`, chain 56)
- mXRP Smart Contracts: Redemption Vault (`0xdac1b0...c085d6`, chain 1440000)

## Contract Surface Quality

- Indexed contracts: 132; live-surface contracts included: 132 (132 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 187/190 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/132 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 187 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 187 of 187 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/132
- Verified + Unaudited implementations: 132
- Verified by bytecode match: 0
- Unverified implementations: 55
- Unique implementations: 187
- Raw deployments: 187
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

### ⚠️ Verified + Unaudited (132)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| mAPOLLO Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247821 | `0xc21511...0d5921` | ⚠️ Unaudited |
| mAPOLLO Smart Contracts: mAPOLLO Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247797 | `0x7cf9de...116c05` | ⚠️ Unaudited |
| mAPOLLO Smart Contracts: mAPOLLO/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247799 | `0x84303e...b7ee4b` | ⚠️ Unaudited |
| mAPOLLO Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247783 | `0x5aea6d...6af5c0` | ⚠️ Unaudited |
| mBASIS Smart Contracts: Instant Redemption vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247754 | `0x0d89c1...17d123` | ⚠️ Unaudited |
| mBASIS Smart Contracts: Instant Redemption vault | unknown | project_anchor | own_supporting | 0 | base | unit-247918 | `0xf804a6...969840` | ⚠️ Unaudited |
| mBASIS Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247814 | `0xa8a5c4...a15d88` | ⚠️ Unaudited |
| mBASIS Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | base | unit-247912 | `0x80b666...8f7ce5` | ⚠️ Unaudited |
| mBASIS Smart Contracts: mBASIS Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247764 | `0x2a8c22...88b656` | ⚠️ Unaudited |
| mBASIS Smart Contracts: mBASIS Token | unknown | project_anchor | own_supporting | 0 | base | unit-247904 | `0x1c2757...be92b2` | ⚠️ Unaudited |
| mBASIS Smart Contracts: mBASIS/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247829 | `0xe4f2ae...390d24` | ⚠️ Unaudited |
| mBASIS Smart Contracts: mBASIS/USD Oracle | unknown | project_anchor | own_supporting | 0 | base | unit-247910 | `0x6d62d3...4823b6` | ⚠️ Unaudited |
| mBASIS Smart Contracts: Standard Redemption vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247760 | `0x19ab19...ca9f0b` | ⚠️ Unaudited |
| mBTC Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247756 | `0x10cc8d...f693bd` | ⚠️ Unaudited |
| mBTC Smart Contracts: mBTC Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247750 | `0x007115...ef7d9d` | ⚠️ Unaudited |
| mBTC Smart Contracts: mBTC/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247812 | `0xa537ef...a189ee` | ⚠️ Unaudited |
| mBTC Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247767 | `0x30d9d1...3efc1a` | ⚠️ Unaudited |
| mEDGE Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247833 | `0xfe8de1...c668cc` | ⚠️ Unaudited |
| mEDGE Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | monad | unit-247848 | `0xdf7deb...326fd9` | ⚠️ Unaudited |
| mEDGE Smart Contracts: mEDGE Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247820 | `0xbb51e2...ab7a55` | ⚠️ Unaudited |
| mEDGE Smart Contracts: mEDGE Token | unknown | project_anchor | own_supporting | 0 | monad | unit-247842 | `0x1c8ee9...0f50fa` | ⚠️ Unaudited |
| mEDGE Smart Contracts: mEDGE/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247791 | `0x698da5...0406b7` | ⚠️ Unaudited |
| mEDGE Smart Contracts: mEDGE/USD Oracle | unknown | project_anchor | own_supporting | 0 | monad | unit-247845 | `0x33f3cd...88271d` | ⚠️ Unaudited |
| mEDGE Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247804 | `0x9b2c5e...6af15d` | ⚠️ Unaudited |
| mEDGE Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | monad | unit-247844 | `0x2ce347...82c332` | ⚠️ Unaudited |
| mevBTC Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247813 | `0xa6d60a...491e37` | ⚠️ Unaudited |
| mevBTC Smart Contracts: mevBTC Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247817 | `0xb64c01...5963dc` | ⚠️ Unaudited |
| mevBTC Smart Contracts: mevBTC/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247834 | `0xffd462...474b65` | ⚠️ Unaudited |
| mevBTC Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247765 | `0x2d7d5b...9b950c` | ⚠️ Unaudited |
| mEVUSD Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247777 | `0x545522...498c2a` | ⚠️ Unaudited |
| mEVUSD Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | base | unit-247908 | `0x5f09af...e55d61` | ⚠️ Unaudited |
| mEVUSD Smart Contracts: mEVUSD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247793 | `0x6f51d8...e83be6` | ⚠️ Unaudited |
| mEVUSD Smart Contracts: mEVUSD Oracle | unknown | project_anchor | own_supporting | 0 | base | unit-247907 | `0x4fe7f6...e8080f` | ⚠️ Unaudited |
| mEVUSD Smart Contracts: mEVUSD Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247778 | `0x548857...92785b` | ⚠️ Unaudited |
| mEVUSD Smart Contracts: mEVUSD Token | unknown | project_anchor | own_supporting | 0 | base | unit-247916 | `0xccbad2...b7474a` | ⚠️ Unaudited |
| mEVUSD Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247806 | `0x9c3743...ac446f` | ⚠️ Unaudited |
| mEVUSD Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | base | unit-247914 | `0x9bf00b...7ee359` | ⚠️ Unaudited |
| mf-ONE Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247770 | `0x414384...a0c3de` | ⚠️ Unaudited |
| mf-ONE Smart Contracts: mFONE Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247763 | `0x238a70...e466ba` | ⚠️ Unaudited |
| mf-ONE Smart Contracts: mFONE/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247802 | `0x8d51db...50e68c` | ⚠️ Unaudited |
| mf-ONE Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247773 | `0x44b044...5fd19c` | ⚠️ Unaudited |
| mFARM Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247790 | `0x695fb3...850c81` | ⚠️ Unaudited |
| mFARM Smart Contracts: mFARM Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247811 | `0xa19f6e...f5eca6` | ⚠️ Unaudited |
| mFARM Smart Contracts: mFARM/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247787 | `0x65df72...df039b` | ⚠️ Unaudited |
| mFARM Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247831 | `0xf4f042...a7e600` | ⚠️ Unaudited |
| mGLO Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | base | unit-247906 | `0x2b7e9c...701df1` | ⚠️ Unaudited |
| mGLO Smart Contracts: mGLO Token | unknown | project_anchor | own_supporting | 0 | base | unit-247919 | `0xfcc9cc...3a2584` | ⚠️ Unaudited |
| mGLO Smart Contracts: mGLO/USD Oracle | unknown | project_anchor | own_supporting | 0 | base | unit-247909 | `0x6b593a...74fcbc` | ⚠️ Unaudited |
| mGLO Smart Contracts: Redemption Vault swapper | unknown | project_anchor | own_supporting | 0 | base | unit-247915 | `0xa80f9b...018f18` | ⚠️ Unaudited |
| mGLOBAL Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247826 | `0xce29c3...dddef1` | ⚠️ Unaudited |
| mGLOBAL Smart Contracts: mGLOBAL Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247796 | `0x743380...ef98a8` | ⚠️ Unaudited |
| mGLOBAL Smart Contracts: mGLOBAL/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247788 | `0x66aa9f...f75e38` | ⚠️ Unaudited |
| mGLOBAL Smart Contracts: Redemption Vault aave | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247761 | `0x1e0fd6...bf20d7` | ⚠️ Unaudited |
| mGLOBAL Smart Contracts: Redemption Vault swapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247810 | `0xa0fc8b...82b01b` | ⚠️ Unaudited |
| mHYPER Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247819 | `0xba9fd2...f11024` | ⚠️ Unaudited |
| mHYPER Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | plasma | unit-247921 | `0xa603cf...d4286e` | ⚠️ Unaudited |
| mHYPER Smart Contracts: mHYPER OFT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247757 | `0x148c86...4581a0` | ⚠️ Unaudited |
| mHYPER Smart Contracts: mHYPER OFT | unknown | project_anchor | own_supporting | 0 | monad | unit-247840 | `0x08bc5e...77f2df` | ⚠️ Unaudited |
| mHYPER Smart Contracts: mHYPER Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247805 | `0x9b5528...1191b9` | ⚠️ Unaudited |
| mHYPER Smart Contracts: mHYPER Token | unknown | project_anchor | own_supporting | 0 | monad | unit-247847 | `0xd90f6b...95e4e7` | ⚠️ Unaudited |
| mHYPER Smart Contracts: mHYPER Token | unknown | project_anchor | own_supporting | 0 | plasma | unit-247922 | `0xb31bea...a75f8a` | ⚠️ Unaudited |
| mHYPER Smart Contracts: mHYPER/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247772 | `0x43881b...005f68` | ⚠️ Unaudited |
| mHYPER Smart Contracts: mHYPER/USD Oracle | unknown | project_anchor | own_supporting | 0 | monad | unit-247850 | `0xf3bbd5...816584` | ⚠️ Unaudited |
| mHYPER Smart Contracts: mHYPER/USD Oracle | unknown | project_anchor | own_supporting | 0 | plasma | unit-247923 | `0xfc3e47...1a08f0` | ⚠️ Unaudited |
| mHYPER Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247792 | `0x6be2f5...366e98` | ⚠️ Unaudited |
| mHYPER Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | plasma | unit-247920 | `0x880661...6cb77c` | ⚠️ Unaudited |
| mHyperBTC Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247830 | `0xed22a9...3fe65e` | ⚠️ Unaudited |
| mHyperBTC Smart Contracts: mHyperBTC OFT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247818 | `0xb67f81...4a445c` | ⚠️ Unaudited |
| mHyperBTC Smart Contracts: mHyperBTC OFT | unknown | project_anchor | own_supporting | 0 | monad | unit-247849 | `0xe9977b...5bf874` | ⚠️ Unaudited |
| mHyperBTC Smart Contracts: mHyperBTC Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247823 | `0xc8495e...783085` | ⚠️ Unaudited |
| mHyperBTC Smart Contracts: mHyperBTC Token | unknown | project_anchor | own_supporting | 0 | monad | unit-247851 | `0xf7cf28...2892bc` | ⚠️ Unaudited |
| mHyperBTC Smart Contracts: mHyperBTC/BTC Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247768 | `0x335992...82517c` | ⚠️ Unaudited |
| mHyperBTC Smart Contracts: mHyperBTC/BTC Oracle | unknown | project_anchor | own_supporting | 0 | monad | unit-247841 | `0x165d2e...20fd8c` | ⚠️ Unaudited |
| mHyperBTC Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247759 | `0x16d4f9...7cdb67` | ⚠️ Unaudited |
| mHyperETH Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247780 | `0x57b3be...9ecdab` | ⚠️ Unaudited |
| mHyperETH Smart Contracts: mHyperETH Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247781 | `0x5a4286...a2e0c1` | ⚠️ Unaudited |
| mHyperETH Smart Contracts: mHyperETH/ETH Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247784 | `0x5c81ee...08a0fd` | ⚠️ Unaudited |
| mHyperETH Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247758 | `0x15f724...348c57` | ⚠️ Unaudited |
| mM1-USD Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247755 | `0x0f7e32...a8189e` | ⚠️ Unaudited |
| mM1-USD Smart Contracts: mM1-USD Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247824 | `0xcc5c22...9ed203` | ⚠️ Unaudited |
| mM1-USD Smart Contracts: mM1-USD/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247816 | `0xad316a...a10702` | ⚠️ Unaudited |
| mM1-USD Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247794 | `0x70ba32...ce1ffa` | ⚠️ Unaudited |
| mMEV Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247828 | `0xe09273...74704f` | ⚠️ Unaudited |
| mMEV Smart Contracts: mMEV Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247751 | `0x030b69...6a0bf3` | ⚠️ Unaudited |
| mMEV Smart Contracts: mMEV/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247786 | `0x5f09af...e55d61` | ⚠️ Unaudited |
| mMEV Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247815 | `0xac14a1...34184d` | ⚠️ Unaudited |
| mRe7BTC Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247785 | `0x5e1549...0e47f6` | ⚠️ Unaudited |
| mRe7BTC Smart Contracts: mRe7BTC Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247809 | `0x9fb442...9f661a` | ⚠️ Unaudited |
| mRe7BTC Smart Contracts: mRe7BTC/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247807 | `0x9de073...eb8967` | ⚠️ Unaudited |
| mRe7BTC Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247774 | `0x4fd4dd...4321b0` | ⚠️ Unaudited |
| mRe7ETH Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | optimism | unit-247836 | `0xc562f7...91225d` | ⚠️ Unaudited |
| mRe7ETH Smart Contracts: mRe7ETH Token | unknown | project_anchor | own_supporting | 0 | optimism | unit-247838 | `0xe7ba07...df21b3` | ⚠️ Unaudited |
| mRe7ETH Smart Contracts: mRe7ETH/ETH Oracle | unknown | project_anchor | own_supporting | 0 | optimism | unit-247837 | `0xcffe26...eb0e5e` | ⚠️ Unaudited |
| mRe7ETH Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | optimism | unit-247835 | `0x2c8aee...854e6d` | ⚠️ Unaudited |
| mRe7SOL Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | katana | unit-247900 | `0x175a9b...75268e` | ⚠️ Unaudited |
| mRe7SOL Smart Contracts: mRe7SOL Token | unknown | project_anchor | own_supporting | 0 | katana | unit-247902 | `0xc6135d...70d716` | ⚠️ Unaudited |
| mRe7SOL Smart Contracts: mRe7SOL/USD Oracle | unknown | project_anchor | own_supporting | 0 | katana | unit-247901 | `0x3e4b4b...b9837b` | ⚠️ Unaudited |
| mRe7SOL Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | katana | unit-247903 | `0xe93e6c...2e7cda` | ⚠️ Unaudited |
| mRe7YIELD Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247825 | `0xce0a29...924ac7` | ⚠️ Unaudited |
| mRe7YIELD Smart Contracts: mRe7YIELD Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247801 | `0x87c905...afb0cf` | ⚠️ Unaudited |
| mRe7YIELD Smart Contracts: mRe7YIELD/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247753 | `0x0a2a51...722395` | ⚠️ Unaudited |
| mRe7YIELD Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247776 | `0x5356b8...565234` | ⚠️ Unaudited |
| mROX Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247775 | `0x511d88...1aede7` | ⚠️ Unaudited |
| mROX Smart Contracts: mROX Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247789 | `0x67e1f5...855c05` | ⚠️ Unaudited |
| mROX Smart Contracts: mROX/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247798 | `0x7ff56c...2b54aa` | ⚠️ Unaudited |
| mROX Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247822 | `0xc33dad...3c4b29` | ⚠️ Unaudited |
| msyrupUSD Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247782 | `0x5ae23d...77d1b7` | ⚠️ Unaudited |
| msyrupUSD Smart Contracts: msyrupUSD Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247762 | `0x202266...683464` | ⚠️ Unaudited |
| msyrupUSD Smart Contracts: msyrupUSD/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247771 | `0x41c607...efa663` | ⚠️ Unaudited |
| msyrupUSD Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247808 | `0x9f7dd5...e2f972` | ⚠️ Unaudited |
| msyrupUSDp Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247800 | `0x8493f1...73789a` | ⚠️ Unaudited |
| msyrupUSDp Smart Contracts: msyrupUSDp Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247766 | `0x2fe058...7d8e50` | ⚠️ Unaudited |
| msyrupUSDp Smart Contracts: msyrupUSDp/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247769 | `0x337d91...895241` | ⚠️ Unaudited |
| msyrupUSDp Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247795 | `0x71efa7...679c44` | ⚠️ Unaudited |
| mTBILL Smart Contracts: Instant Redemption vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247779 | `0x569d7d...c4f0ec` | ⚠️ Unaudited |
| mTBILL Smart Contracts: Instant Redemption vault | unknown | project_anchor | own_supporting | 0 | base | unit-247905 | `0x2a8c22...88b656` | ⚠️ Unaudited |
| mTBILL Smart Contracts: Instant Redemption vault | unknown | project_anchor | own_supporting | 0 | oasis-sapphire | unit-247863 | `0xf939e8...15a7ee` | ⚠️ Unaudited |
| mTBILL Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247803 | `0x993614...796683` | ⚠️ Unaudited |
| mTBILL Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | base | unit-247913 | `0x8978e3...ae1470` | ⚠️ Unaudited |
| mTBILL Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | oasis-sapphire | unit-247860 | `0xd7fe0e...95bdcc` | ⚠️ Unaudited |
| mTBILL Smart Contracts: mTBILL Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247827 | `0xdd629e...54e438` | ⚠️ Unaudited |
| mTBILL Smart Contracts: mTBILL Token | unknown | project_anchor | own_supporting | 0 | rootstock | unit-247875 | `0xdd629e...54e438` | ⚠️ Unaudited |
| mTBILL Smart Contracts: mTBILL Token | unknown | project_anchor | own_supporting | 0 | base | unit-247917 | `0xdd629e...54e438` | ⚠️ Unaudited |
| mTBILL Smart Contracts: mTBILL Token | unknown | project_anchor | own_supporting | 0 | oasis-sapphire | unit-247861 | `0xdd629e...54e438` | ⚠️ Unaudited |
| mTBILL Smart Contracts: mTBILL/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247752 | `0x056339...6b2e5b` | ⚠️ Unaudited |
| mTBILL Smart Contracts: mTBILL/USD Oracle | unknown | project_anchor | own_supporting | 0 | base | unit-247911 | `0x70e58b...8b8422` | ⚠️ Unaudited |
| mTBILL Smart Contracts: mTBILL/USD Oracle | unknown | project_anchor | own_supporting | 0 | oasis-sapphire | unit-247862 | `0xf76d11...d4d0cf` | ⚠️ Unaudited |
| mTBILL Smart Contracts: Standard Redemption vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247832 | `0xf6e51d...6d4517` | ⚠️ Unaudited |
| mXRP Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | bsc | unit-247896 | `0x30b598...0d924e` | ⚠️ Unaudited |
| mXRP Smart Contracts: mXRP Token | unknown | project_anchor | own_supporting | 0 | bsc | unit-247899 | `0xc8739f...fe9e34` | ⚠️ Unaudited |
| mXRP Smart Contracts: mXRP/USD Oracle | unknown | project_anchor | own_supporting | 0 | bsc | unit-247897 | `0x3bde0b...16e731` | ⚠️ Unaudited |
| mXRP Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | bsc | unit-247898 | `0x73685b...de8625` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (55)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| mBASIS Smart Contracts: Instant Redemption vault | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247880 | `0x02e58d...e5ffc6` | ❓ Unverified |
| mBASIS Smart Contracts: Instant Redemption vault | unknown | project_anchor | own_supporting | 0 | plume | unit-247934 | `0x9b0d0b...ef8b5d` | ❓ Unverified |
| mBASIS Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247889 | `0x75c328...f9ae4a` | ❓ Unverified |
| mBASIS Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | plume | unit-247933 | `0x8f38a2...3bf8dc` | ❓ Unverified |
| mBASIS Smart Contracts: mBASIS Token | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247883 | `0x2247b5...d37ee4` | ❓ Unverified |
| mBASIS Smart Contracts: mBASIS Token | unknown | project_anchor | own_supporting | 0 | plume | unit-247925 | `0x0c78ca...b66d78` | ❓ Unverified |
| mBASIS Smart Contracts: mBASIS/USD Oracle | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247884 | `0x31d211...bd50a0` | ❓ Unverified |
| mBASIS Smart Contracts: mBASIS/USD Oracle | unknown | project_anchor | own_supporting | 0 | plume | unit-247924 | `0x01d169...f72ef2` | ❓ Unverified |
| mBTC Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | rootstock | unit-247870 | `0x79a157...e32998` | ❓ Unverified |
| mBTC Smart Contracts: mBTC Token | unknown | project_anchor | own_supporting | 0 | rootstock | unit-247877 | `0xef8525...03fb53` | ❓ Unverified |
| mBTC Smart Contracts: mBTC/USD Oracle | unknown | project_anchor | own_supporting | 0 | rootstock | unit-247874 | `0xa167bf...421821` | ❓ Unverified |
| mBTC Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | rootstock | unit-247876 | `0xe7a1a6...a40205` | ❓ Unverified |
| mEDGE Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | 0g | unit-247856 | `0x72a931...800271` | ❓ Unverified |
| mEDGE Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | plume | unit-247926 | `0x23de49...7a0ee2` | ❓ Unverified |
| mEDGE Smart Contracts: mEDGE Token | unknown | project_anchor | own_supporting | 0 | 0g | unit-247858 | `0xa10277...db30ba` | ❓ Unverified |
| mEDGE Smart Contracts: mEDGE Token | unknown | project_anchor | own_supporting | 0 | plume | unit-247930 | `0x690203...ed03ed` | ❓ Unverified |
| mEDGE Smart Contracts: mEDGE/USD Oracle | unknown | project_anchor | own_supporting | 0 | 0g | unit-247859 | `0xc0a696...245447` | ❓ Unverified |
| mEDGE Smart Contracts: mEDGE/USD Oracle | unknown | project_anchor | own_supporting | 0 | plume | unit-247931 | `0x7d5622...b7e82d` | ❓ Unverified |
| mEDGE Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | 0g | unit-247857 | `0x9dae50...0eb79b` | ❓ Unverified |
| mEDGE Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | plume | unit-247937 | `0xc87439...bc0f80` | ❓ Unverified |
| mHyperBTC Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | rootstock | unit-247872 | `0x82dd60...7d7a53` | ❓ Unverified |
| mHyperBTC Smart Contracts: mHyperBTC Token | unknown | project_anchor | own_supporting | 0 | rootstock | unit-247871 | `0x7f71f0...ca3a3c` | ❓ Unverified |
| mHyperBTC Smart Contracts: mHyperBTC/BTC Oracle | unknown | project_anchor | own_supporting | 0 | rootstock | unit-247879 | `0xf940a1...978827` | ❓ Unverified |
| mHyperBTC Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | rootstock | unit-247869 | `0x4f4da2...b8b570` | ❓ Unverified |
| mMEV Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247887 | `0x577617...0774bc` | ❓ Unverified |
| mMEV Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | plume | unit-247938 | `0xe6f0c6...636d8c` | ❓ Unverified |
| mMEV Smart Contracts: mMEV Token | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247886 | `0x5542f8...3fd5c8` | ❓ Unverified |
| mMEV Smart Contracts: mMEV Token | unknown | project_anchor | own_supporting | 0 | plume | unit-247932 | `0x7d611d...ef7473` | ❓ Unverified |
| mMEV Smart Contracts: mMEV/USD Oracle | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247881 | `0x077670...7bb516` | ❓ Unverified |
| mMEV Smart Contracts: mMEV/USD Oracle | unknown | project_anchor | own_supporting | 0 | plume | unit-247929 | `0x4e5b43...852061` | ❓ Unverified |
| mMEV Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247885 | `0x403a92...d58166` | ❓ Unverified |
| mMEV Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | plume | unit-247927 | `0x331af8...e7c3cc` | ❓ Unverified |
| mRe7YIELD Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | tac | unit-247867 | `0xbd2ce9...dd2a69` | ❓ Unverified |
| mRe7YIELD Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247893 | `0xbef85e...860753` | ❓ Unverified |
| mRe7YIELD Smart Contracts: mRe7YIELD Token | unknown | project_anchor | own_supporting | 0 | tac | unit-247864 | `0x0a72ed...73d6f0` | ❓ Unverified |
| mRe7YIELD Smart Contracts: mRe7YIELD Token | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247888 | `0x733d50...2f0160` | ❓ Unverified |
| mRe7YIELD Smart Contracts: mRe7YIELD/USD Oracle | unknown | project_anchor | own_supporting | 0 | tac | unit-247866 | `0xbba185...d61738` | ❓ Unverified |
| mRe7YIELD Smart Contracts: mRe7YIELD/USD Oracle | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247882 | `0x198932...6f3b8e` | ❓ Unverified |
| mRe7YIELD Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | tac | unit-247865 | `0x911f9a...9d1d79` | ❓ Unverified |
| mRe7YIELD Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247892 | `0xb24056...30de90` | ❓ Unverified |
| mTBILL Smart Contracts: Instant Redemption vault | unknown | project_anchor | own_supporting | 0 | rootstock | unit-247873 | `0x99d221...67d12f` | ❓ Unverified |
| mTBILL Smart Contracts: Instant Redemption vault | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247890 | `0x7f938d...53a3b2` | ❓ Unverified |
| mTBILL Smart Contracts: Instant Redemption vault | unknown | project_anchor | own_supporting | 0 | plume | unit-247928 | `0x3ac6b2...91f897` | ❓ Unverified |
| mTBILL Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | rootstock | unit-247878 | `0xf454a5...6bc03c` | ❓ Unverified |
| mTBILL Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247894 | `0xd65bfe...a33a70` | ❓ Unverified |
| mTBILL Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | plume | unit-247935 | `0xb05f6a...249224` | ❓ Unverified |
| mTBILL Smart Contracts: mTBILL Token | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247895 | `0xdd629e...54e438` | ❓ Unverified |
| mTBILL Smart Contracts: mTBILL Token | unknown | project_anchor | own_supporting | 0 | plume | unit-247939 | `0xe85f2b...e30109` | ❓ Unverified |
| mTBILL Smart Contracts: mTBILL/USD Oracle | unknown | project_anchor | own_supporting | 0 | rootstock | unit-247868 | `0x0ca36a...131ae7` | ❓ Unverified |
| mTBILL Smart Contracts: mTBILL/USD Oracle | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247891 | `0x80da45...41b7dd` | ❓ Unverified |
| mTBILL Smart Contracts: mTBILL/USD Oracle | unknown | project_anchor | own_supporting | 0 | plume | unit-247936 | `0xb701ab...d2617b` | ❓ Unverified |
| mXRP Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | xrpl-evm | unit-247853 | `0x30fbc8...02f1bb` | ❓ Unverified |
| mXRP Smart Contracts: mXRP Token | unknown | project_anchor | own_supporting | 0 | xrpl-evm | unit-247852 | `0x06e0b0...3a3d47` | ❓ Unverified |
| mXRP Smart Contracts: mXRP/USD Oracle | unknown | project_anchor | own_supporting | 0 | xrpl-evm | unit-247855 | `0xff6478...3437af` | ❓ Unverified |
| mXRP Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | xrpl-evm | unit-247854 | `0xdac1b0...c085d6` | ❓ Unverified |

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
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 187 |

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
