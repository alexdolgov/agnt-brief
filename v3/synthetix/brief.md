# Agentic Audit Brief: Synthetix

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Synthetix (`synthetix`)
- Website: [https://synthetix.io](https://synthetix.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, arbitrum-sepolia, base, base-sepolia, ethereum, optimism, sepolia
- Contract surface: 176 unique implementations (176 raw deployments)
- Coverage basis: 0/15 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,304,903.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Synthetix. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 16 contract row(s) across arbitrum, arbitrum-sepolia, base, base-sepolia, ethereum, optimism, sepolia. Structural roles: 9 supporting, 4 unclassified, 2 core, 1 infra. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 16
- Structural roles: supporting (9), unclassified (4), core (2), infra (1)
- Contract kinds: contract (13), abstract (3)
- Detected standards: erc1967proxy (5), erc165 (1)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 89 contracts are derived from known codebases. 89 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0aaf30...cb42e3`, chain 1)
- UnnamedContract (`0x0e4296...d77dac`, chain 1)
- UnnamedContract (`0x10a5f7...09275f`, chain 1)
- UnnamedContract (`0x200d50...8f27a9`, chain 1)
- UnnamedContract (`0x2cd12c...7fa5c0`, chain 1)
- UnnamedContract (`0x3f3ed1...08b9f9`, chain 1)
- UnnamedContract (`0x7b9525...1332d8`, chain 1)
- UnnamedContract (`0xb2f30a...f38175`, chain 1)
- UnnamedContract (`0xc011a7...af2a6f`, chain 1)
- UnnamedContract (`0xd71170...9421b3`, chain 1)
- UnnamedContract (`0xe2c565...5a1e3e`, chain 1)
- UnnamedContract (`0x08b2a7...ce42be`, chain 10)
- UnnamedContract (`0x0aaf30...cb42e3`, chain 10)
- UnnamedContract (`0x0e4296...d77dac`, chain 10)
- UnnamedContract (`0x38908e...c74595`, chain 10)
- UnnamedContract (`0x420000...000006`, chain 10)
- UnnamedContract (`0x421dec...f6bf04`, chain 10)
- UnnamedContract (`0x5a41f6...abb3bf`, chain 10)
- UnnamedContract (`0xa0639f...5b12fe`, chain 10)
- UnnamedContract (`0xb2f30a...f38175`, chain 10)
- UnnamedContract (`0xdfa2d3...bc5adb`, chain 10)
- UnnamedContract (`0xe2c565...5a1e3e`, chain 10)
- UnnamedContract (`0x09d515...1a23c3`, chain 8453)
- UnnamedContract (`0x2ae3f1...0dec22`, chain 8453)
- UnnamedContract (`0x2f64ad...488e65`, chain 8453)
- UnnamedContract (`0x3526d4...50d976`, chain 8453)
- UnnamedContract (`0x3d07cb...e2b264`, chain 8453)
- UnnamedContract (`0x420000...000006`, chain 8453)
- UnnamedContract (`0x4d64e1...ef0237`, chain 8453)
- UnnamedContract (`0x4ea71a...3ccacc`, chain 8453)
- UnnamedContract (`0x63f4dd...8cf5b8`, chain 8453)
- UnnamedContract (`0x729ef3...6616d2`, chain 8453)
- UnnamedContract (`0x7656bd...e20711`, chain 8453)
- UnnamedContract (`0x7a1b3d...2b83fd`, chain 8453)
- UnnamedContract (`0x833589...a02913`, chain 8453)
- UnnamedContract (`0x8f80b2...315c32`, chain 8453)
- UnnamedContract (`0x90e42b...67fe38`, chain 8453)
- UnnamedContract (`0xa7163f...1a1676`, chain 8453)
- UnnamedContract (`0xc1cba3...0ee452`, chain 8453)
- UnnamedContract (`0xc302f3...0a292a`, chain 8453)
- UnnamedContract (`0xc74ea7...6302e7`, chain 8453)
- UnnamedContract (`0xcb68b8...09e8cf`, chain 8453)
- UnnamedContract (`0xcbb7c0...ed33bf`, chain 8453)
- UnnamedContract (`0xe8183a...769052`, chain 8453)
- UnnamedContract (`0xede1d0...bd071c`, chain 8453)
- UnnamedContract (`0xfa24be...7e0080`, chain 8453)
- UnnamedContract (`0x0aaf30...cb42e3`, chain 42161)
- UnnamedContract (`0x0e4296...d77dac`, chain 42161)
- UnnamedContract (`0x211cc4...5fe5d2`, chain 42161)
- UnnamedContract (`0x28b69c...1b6b87`, chain 42161)
- UnnamedContract (`0x357510...cf4dbe`, chain 42161)
- UnnamedContract (`0x3ec3fe...795b1e`, chain 42161)
- UnnamedContract (`0x5979d7...800529`, chain 42161)
- UnnamedContract (`0x5d3a1f...52ef34`, chain 42161)
- UnnamedContract (`0x5eff59...221f17`, chain 42161)
- UnnamedContract (`0x7301a8...a3b871`, chain 42161)
- UnnamedContract (`0x806b9d...5bd55a`, chain 42161)
- UnnamedContract (`0x82af49...3fbab1`, chain 42161)
- UnnamedContract (`0x8b6d64...951fa8`, chain 42161)
- UnnamedContract (`0x8cb5d5...35f13b`, chain 42161)
- UnnamedContract (`0x912ce5...9e6548`, chain 42161)
- UnnamedContract (`0x91935e...531c50`, chain 42161)
- UnnamedContract (`0x95af0b...b8da48`, chain 42161)
- UnnamedContract (`0x9ac841...d7cee5`, chain 42161)
- UnnamedContract (`0xa65538...757d60`, chain 42161)
- UnnamedContract (`0xaf88d0...8e5831`, chain 42161)
- UnnamedContract (`0xb2f30a...f38175`, chain 42161)
- UnnamedContract (`0xb36393...15416a`, chain 42161)
- UnnamedContract (`0xb74da9...617124`, chain 42161)
- UnnamedContract (`0xd237f2...f1f3c5`, chain 42161)
- UnnamedContract (`0xd76296...edc659`, chain 42161)
- UnnamedContract (`0xd93544...1d36c6`, chain 42161)
- UnnamedContract (`0xe3ee09...5c19ca`, chain 42161)
- UnnamedContract (`0xe81be4...452365`, chain 42161)
- UnnamedContract (`0xfa86ab...a80232`, chain 42161)
- Proxy (`0x3acf16...38b2f5`, chain 1)
- Proxy (`0xffffff...875847`, chain 1)
- Proxy (`0x19f03f...66170c`, chain 10)
- Proxy (`0xffffff...875847`, chain 10)
- Proxy (`0x0a2af9...e1c9ce`, chain 8453)
- Proxy (`0x181415...4caa61`, chain 8453)
- Proxy (`0x32c222...72c696`, chain 8453)
- Proxy (`0xffffff...875847`, chain 42161)
- ProxyERC20 (`0x8700da...7599b4`, chain 10)
- PythERC7412Wrapper (`0x9cb0b4...b1953a`, chain 8453)
- RewardsDistributor (`0xe92bcd...28263b`, chain 8453)
- TransparentUpgradeableProxy (`0x6c84a8...d0de40`, chain 42161)
- TrustedMulticallForwarder (`0xe2c565...5a1e3e`, chain 8453)
- TrustedMulticallForwarder (`0xe2c565...5a1e3e`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 16 (15 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 90/176 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/15 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 90 own, 86 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Deployed-live implementations: 90 of 176 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 75
- Unique implementations: 176
- Raw deployments: 176
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CoreRouter | adapter | project_anchor | own_supporting | 1 | ethereum | unit-393822 | `0xffffff...875847` | ⚠️ Unaudited |
| CoreRouter | adapter | project_anchor | own_supporting | 1 | optimism | unit-393823 | `0xffffff...875847` | ⚠️ Unaudited |
| CoreRouter | adapter | project_anchor | own_supporting | 1 | base | unit-393828 | `0x32c222...72c696` | ⚠️ Unaudited |
| CoreRouter | adapter | project_anchor | own_supporting | 1 | arbitrum | unit-393825 | `0xffffff...875847` | ⚠️ Unaudited |
| L2TBTC | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-393826 | `0x6c84a8...d0de40` | ⚠️ Unaudited |
| LegacyMarket | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393821 | `0x3acf16...38b2f5` | ⚠️ Unaudited |
| LegacyMarket | unknown | project_anchor | own_supporting | 1 | optimism | unit-393824 | `0x19f03f...66170c` | ⚠️ Unaudited |
| PerpsMarketRouter | adapter | project_anchor | own_supporting | 1 | base | unit-393829 | `0x0a2af9...e1c9ce` | ⚠️ Unaudited |
| ProxyERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-393672 | `0x8700da...7599b4` | ⚠️ Unaudited |
| PythERC7412Wrapper | unknown | project_anchor | own_supporting | 0 | base | unit-393778 | `0x9cb0b4...b1953a` | ⚠️ Unaudited |
| RewardsDistributor | unknown | project_anchor | own_supporting | 0 | base | unit-393768 | `0x45063d...1d6593` | ⚠️ Unaudited |
| RewardsDistributor | unknown | project_anchor | own_supporting | 0 | base | unit-393787 | `0xe92bcd...28263b` | ⚠️ Unaudited |
| SpotMarketRouter | adapter | project_anchor | own_supporting | 1 | base | unit-393827 | `0x181415...4caa61` | ⚠️ Unaudited |
| TrustedMulticallForwarder | periphery | project_anchor | own_supporting | 0 | base | unit-393785 | `0xe2c565...5a1e3e` | ⚠️ Unaudited |
| TrustedMulticallForwarder | periphery | project_anchor | own_supporting | 0 | arbitrum | unit-393723 | `0xe2c565...5a1e3e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (161)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393654 | `0x0aaf30...cb42e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393655 | `0x0e4296...d77dac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393656 | `0x10a5f7...09275f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393657 | `0x200d50...8f27a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393658 | `0x2cd12c...7fa5c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393659 | `0x3f3ed1...08b9f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393660 | `0x7b9525...1332d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393661 | `0xb2f30a...f38175` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393662 | `0xc011a7...af2a6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393663 | `0xd71170...9421b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393664 | `0xe2c565...5a1e3e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393665 | `0x08b2a7...ce42be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393666 | `0x0aaf30...cb42e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393667 | `0x0e4296...d77dac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393668 | `0x38908e...c74595` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393669 | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393670 | `0x421dec...f6bf04` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393671 | `0x5a41f6...abb3bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393673 | `0xa0639f...5b12fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393674 | `0xb2f30a...f38175` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393675 | `0xdfa2d3...bc5adb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393676 | `0xe2c565...5a1e3e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393762 | `0x09d515...1a23c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393763 | `0x2ae3f1...0dec22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393764 | `0x2f64ad...488e65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393765 | `0x3526d4...50d976` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393766 | `0x3d07cb...e2b264` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393767 | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393769 | `0x4d64e1...ef0237` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393770 | `0x4ea71a...3ccacc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393771 | `0x63f4dd...8cf5b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393772 | `0x729ef3...6616d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393773 | `0x7656bd...e20711` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393774 | `0x7a1b3d...2b83fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393775 | `0x833589...a02913` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393776 | `0x8f80b2...315c32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393777 | `0x90e42b...67fe38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393779 | `0xa7163f...1a1676` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393780 | `0xc1cba3...0ee452` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393781 | `0xc302f3...0a292a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393782 | `0xc74ea7...6302e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393783 | `0xcb68b8...09e8cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393784 | `0xcbb7c0...ed33bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393786 | `0xe8183a...769052` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393788 | `0xede1d0...bd071c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393789 | `0xfa24be...7e0080` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393697 | `0x0aaf30...cb42e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393698 | `0x0e4296...d77dac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393699 | `0x211cc4...5fe5d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393700 | `0x28b69c...1b6b87` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393701 | `0x357510...cf4dbe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393702 | `0x3ec3fe...795b1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393703 | `0x5979d7...800529` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393704 | `0x5d3a1f...52ef34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393705 | `0x5eff59...221f17` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393706 | `0x7301a8...a3b871` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393707 | `0x806b9d...5bd55a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393708 | `0x82af49...3fbab1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393709 | `0x8b6d64...951fa8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393710 | `0x8cb5d5...35f13b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393711 | `0x912ce5...9e6548` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393712 | `0x91935e...531c50` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393713 | `0x95af0b...b8da48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393714 | `0x9ac841...d7cee5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393715 | `0xa65538...757d60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393716 | `0xaf88d0...8e5831` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393717 | `0xb2f30a...f38175` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393718 | `0xb36393...15416a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393719 | `0xb74da9...617124` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393720 | `0xd237f2...f1f3c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393721 | `0xd76296...edc659` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393722 | `0xd93544...1d36c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393724 | `0xe3ee09...5c19ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393725 | `0xe81be4...452365` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393726 | `0xfa86ab...a80232` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393790 | `0x00ab6b...84dbed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393791 | `0x0148f0...6c69cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393792 | `0x1c6dfe...370107` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393793 | `0x21fdb2...c21a2a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393794 | `0x410eec...97a5e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393795 | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393796 | `0x49ecf2...3d70f3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393797 | `0x4f908d...0db935` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393798 | `0x517a74...b52284` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393799 | `0x5ca6e1...c60edc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393800 | `0x5dc259...a80486` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393801 | `0x60c970...705678` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393802 | `0x682f0d...afeaae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393803 | `0x764f4c...f919a1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393804 | `0x7bf65a...59b822` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393805 | `0x8069c4...239d39` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393806 | `0x8608d5...064e6e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393807 | `0x86771c...856fab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393808 | `0x86b35f...e71985` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393809 | `0x961f69...b5416f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393810 | `0x9eb560...b145d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393811 | `0xa28719...f5d25a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393812 | `0xad2fe7...8fef72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393813 | `0xb3f05d...422a70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393814 | `0xb94c6e...f91528` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393815 | `0xc43708...ce3c30` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393816 | `0xc8ee21...0085f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393817 | `0xd4e93f...121f21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393818 | `0xe2c565...5a1e3e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393819 | `0xe51a5c...10fe3a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393820 | `0xf53ca6...250c8d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393727 | `0x12ae0d...9f7a73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393728 | `0x1b791d...47525e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393729 | `0x208b65...268815` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393730 | `0x26c9b8...872512` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393731 | `0x35e81e...2f5956` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393732 | `0x397493...91d818` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393733 | `0x3a1725...6cf243` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393734 | `0x415901...671f08` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393735 | `0x4aff59...ae37fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393736 | `0x546648...17dbfc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393737 | `0x711d4f...6a8a40` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393738 | `0x726cfb...aee78b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393739 | `0x75faf1...46aa4d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393740 | `0x764907...2a8e42` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393741 | `0x7b356e...4820e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393742 | `0x7fcad8...cd7699` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393743 | `0x88dcca...dbafff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393744 | `0x8db7e7...70cdb6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393745 | `0x93d645...fff041` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393746 | `0x980b62...f17c73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393747 | `0x9ac0a9...d13a8f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393748 | `0xa13dae...3906c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393749 | `0xa73a7b...bdb460` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393750 | `0xb1dca5...a1416d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393751 | `0xb3a0e9...2dc933` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393752 | `0xc555af...a686d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393753 | `0xcf4578...67182d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393754 | `0xd45eac...f0bd1b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393755 | `0xd58a25...1c7cbf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393756 | `0xda7b43...605ec9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393757 | `0xde0a47...0d01b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393758 | `0xe2c565...5a1e3e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393759 | `0xe487ad...325260` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393760 | `0xecbcb8...ed4f2a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393761 | `0xf3d410...3a6c87` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393677 | `0x07049d...d3517e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393678 | `0x079e7e...b1f9cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393679 | `0x08c1f6...28c25c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393680 | `0x286dda...506f35` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393681 | `0x29ba9b...467006` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393682 | `0x3a12e3...1a730e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393683 | `0x4ae41c...192245` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393684 | `0x5f75ea...49cbf0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393685 | `0x8715b7...7a0a8f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393686 | `0x94c535...bef776` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393687 | `0x961b26...db742c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393688 | `0xa86dcb...df98ca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393689 | `0xbee85d...6d8f2e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393690 | `0xc4c3fa...fb0a88` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393691 | `0xcb5d8f...114240` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393692 | `0xdbe114...2bafc2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393693 | `0xe2c565...5a1e3e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393694 | `0xea1ef4...fb54c3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393695 | `0xf87e23...57e67a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393696 | `0xfda819...b87106` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [iosiro.com/audits/synthetix-v3-smart-contract-audit](https://iosiro.com/audits/synthetix-v3-smart-contract-audit) | iosiro | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 42 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20635] iosiro.com/audits/synthetix-v3-smart-contract-audit — no match: Extracted contracts from scope section (modules and storage directories) and coverage table. Audit date is the end date of Phase 2 (2023-04-26).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| iosiro.com/audits/synthetix-v3-smart-contract-audit | AccountModule | unmatched — not counted | — | listed in scope and coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | AccountTokenModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | AssociateDebtModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | AssociatedSystemsModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | CollateralConfigurationModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | CollateralModule | unmatched — not counted | — | listed in scope and coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | FeatureFlagModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | IssueUSDModule | unmatched — not counted | — | listed in scope and coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | LiquidationModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | MarketCollateralModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | MarketManagerModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | MulticallModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | OwnerModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | PoolConfigurationModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | PoolModule | unmatched — not counted | — | listed in scope and coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | RewardsManagerModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | UpgradeModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | USDTokenModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | UtilsModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | VaultModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | Account | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | AccountRBAC | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | Collateral | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | CollateralConfiguration | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | CollateralLock | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | Config | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | Distribution | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | DistributionActor | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | Market | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | MarketConfiguration | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | MarketCreator | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | MarketPoolInfo | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | OracleManager | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | Pool | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | RewardDistribution | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | RewardDistributionClaimStatus | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | ScalableMapping | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | SystemAccountConfiguration | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | SystemPoolConfiguration | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | Vault | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | VaultEpoch | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | InitialModuleBundle | unmatched — not counted | — | listed in coverage table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xffffff...875847` | CoreRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xffffff...875847` | CoreRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x32c222...72c696` | CoreRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xffffff...875847` | CoreRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6c84a8...d0de40` | L2TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3acf16...38b2f5` | LegacyMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x19f03f...66170c` | LegacyMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0a2af9...e1c9ce` | PerpsMarketRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x8700da...7599b4` | ProxyERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9cb0b4...b1953a` | PythERC7412Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x45063d...1d6593` | RewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe92bcd...28263b` | RewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x181415...4caa61` | SpotMarketRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe2c565...5a1e3e` | TrustedMulticallForwarder | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe2c565...5a1e3e` | TrustedMulticallForwarder | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 161 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 42 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20635] iosiro.com/audits/synthetix-v3-smart-contract-audit

Fork inheritance lineage and inherited audits are included when available.
